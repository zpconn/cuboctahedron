"""Profile D4-symmetric interval compression for generated cuboctahedron evidence.

This script is deliberately untrusted.  It emits no Lean code and proves
nothing.  Its purpose is to answer an engineering question before generation:
does D4 transport plus semantic family sharing plausibly reduce the generated
coverage API to a small number of Lean leaves?
"""

from __future__ import annotations

import argparse
import hashlib
import json
import sys
from collections import Counter
from dataclasses import dataclass, field
from fractions import Fraction
from functools import lru_cache
from pathlib import Path
from typing import Any

from exact_profile import (
    EXPECTED_IDENTITY_WORDS,
    EXPECTED_PAIR_WORDS,
    EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS,
    IDENTITY,
    PAIR_COUNTS,
    PAIR_IDS,
    RPAIR,
    STARTED_SYMS,
    ZERO_VEC,
    counts_key,
    denom_pattern_key,
    final_axis_dot,
    first_axis_zero_index,
    fixed_part,
    forced_sequence_from_axis,
    impact_denom,
    mat_key,
    mat_mul,
    multinomial_count,
    normalized_constraints_key,
    one_dimensional_fixed_axis,
    path_prefix_affs,
    prefix_matrices,
    remaining_counts_after,
    seq_key,
    sign_pattern_key,
    sym_word,
    translation_constraints,
    translation_vector,
    transported_mask,
    vec_key,
)


REPO_ROOT = Path(__file__).resolve().parents[1]
DEFAULT_OUTPUT = REPO_ROOT / "scripts" / "generated" / "symmetry_compression_profile.json"
DEFAULT_PREFIX_KILL_OUTPUT = (
    REPO_ROOT / "scripts" / "generated" / "prefix_kill_tree_profile.json"
)
DEFAULT_TRANSLATION_FARKAS_OUTPUT = (
    REPO_ROOT / "scripts" / "generated" / "translation_farkas_compression_profile.json"
)
DEFAULT_TRANSLATION_BADDIR_OUTPUT = (
    REPO_ROOT / "scripts" / "generated" / "translation_baddir_compression_profile.json"
)
DEFAULT_TRANSLATION_BADDIR_FAMILY_OUTPUT = (
    REPO_ROOT / "scripts" / "generated" / "translation_baddir_family_profile.json"
)
DEFAULT_TRANSLATION_BADDIR_COMMON_IMPACT_OUTPUT = (
    REPO_ROOT / "scripts" / "generated" / "translation_baddir_common_impact_profile.json"
)
DEFAULT_TRANSLATION_SURVIVORS_OUTPUT = (
    REPO_ROOT / "scripts" / "generated" / "translation_survivors_profile.json"
)
DEFAULT_TRANSLATION_SURVIVOR_MASK_TREE_OUTPUT = (
    REPO_ROOT / "scripts" / "generated" / "translation_survivor_mask_tree_profile.json"
)


MASKS_BY_BIT_VALUE: tuple[tuple[int, int], ...] = tuple(
    (
        sum(1 << mask for mask in range(64) if not (mask & (1 << bit))),
        sum(1 << mask for mask in range(64) if mask & (1 << bit)),
    )
    for bit in range(6)
)


def stable_digest(text: str) -> str:
    return hashlib.sha256(text.encode("utf-8")).hexdigest()


def word_key(word: tuple[str, ...]) -> str:
    return ",".join(word)


def pair_order_key(word: tuple[str, ...] | list[str]) -> tuple[int, ...]:
    return tuple(PAIR_IDS.index(pair_id) for pair_id in word)


def translation_choice_order_key(choice: tuple[tuple[str, ...], int]) -> tuple[tuple[int, ...], int]:
    word, mask = choice
    return pair_order_key(word), mask


def canonical_word_with_symmetry(word: tuple[str, ...]) -> tuple[tuple[str, ...], int]:
    best_word: tuple[str, ...] | None = None
    best_sym_id = 0
    best_key: tuple[int, ...] | None = None
    raw = list(word)
    for sym_id, sym in enumerate(STARTED_SYMS):
        candidate = tuple(sym_word(sym, raw))
        candidate_key = pair_order_key(candidate)
        if best_key is None or candidate_key < best_key:
            best_word = candidate
            best_sym_id = sym_id
            best_key = candidate_key
    if best_word is None:
        raise RuntimeError("empty started symmetry list")
    return best_word, best_sym_id


def canonical_prefix_with_symmetry(prefix: tuple[str, ...]) -> tuple[tuple[str, ...], int]:
    return canonical_word_with_symmetry(prefix)


def canonical_translation_with_symmetry(
    word: tuple[str, ...],
    mask: int,
) -> tuple[tuple[str, ...], int, int]:
    best_choice: tuple[tuple[str, ...], int] | None = None
    best_sym_id = 0
    best_key: tuple[tuple[int, ...], int] | None = None
    raw = list(word)
    for sym_id, sym in enumerate(STARTED_SYMS):
        transported_word, transported_choice = transported_mask(sym, raw, mask)
        candidate = tuple(transported_word), transported_choice
        candidate_key = translation_choice_order_key(candidate)
        if best_key is None or candidate_key < best_key:
            best_choice = candidate
            best_sym_id = sym_id
            best_key = candidate_key
    if best_choice is None:
        raise RuntimeError("empty started symmetry list")
    return best_choice[0], best_choice[1], best_sym_id


def fraction_key(value: Fraction) -> str:
    if value.denominator == 1:
        return str(value.numerator)
    return f"{value.numerator}/{value.denominator}"


def bit_sign(mask: int, bit: int) -> int:
    return 1 if mask & (1 << bit) else -1


def denominator_polynomial_key(values: list[Fraction]) -> tuple[str, int]:
    """Return an exact sign-polynomial key and max nonzero degree.

    The six mask bits are encoded as signs in ``{-1,+1}``.  The Walsh
    expansion is exact on the Boolean cube and is used only for profiling.
    """

    if len(values) != 64:
        raise ValueError(f"expected 64 mask values, got {len(values)}")
    coeffs = list(values)
    step = 1
    while step < 64:
        block = step * 2
        for start in range(0, 64, block):
            for offset in range(step):
                lo = coeffs[start + offset]
                hi = coeffs[start + offset + step]
                coeffs[start + offset] = lo + hi
                coeffs[start + offset + step] = hi - lo
        step = block
    terms: list[str] = []
    max_degree = 0
    for subset, total in enumerate(coeffs):
        coeff = total / 64
        if coeff == 0:
            continue
        degree = subset.bit_count()
        max_degree = max(max_degree, degree)
        terms.append(f"{subset}:{fraction_key(coeff)}")
    return ";".join(terms), max_degree


@dataclass
class DistinctTracker:
    """Memory-safe distinct-key tracker.

    It tracks exact distinct counts up to ``cap``.  After overflow, it keeps a
    lower bound and samples, which is enough to reject an over-large strategy
    without risking a giant set.
    """

    cap: int
    sample_limit: int
    _digests: set[str] = field(default_factory=set)
    overflowed: bool = False
    overflow_at: int | None = None
    samples: list[str] = field(default_factory=list)

    def add(self, key: str) -> None:
        digest = stable_digest(key)
        if digest in self._digests:
            return
        if len(self.samples) < self.sample_limit:
            self.samples.append(key)
        if self.overflowed:
            return
        if len(self._digests) >= self.cap:
            self.overflowed = True
            self.overflow_at = self.cap + 1
            return
        self._digests.add(digest)

    @property
    def exact_count(self) -> int | None:
        if self.overflowed:
            return None
        return len(self._digests)

    @property
    def lower_bound(self) -> int:
        return self.overflow_at if self.overflowed and self.overflow_at is not None else len(self._digests)

    def payload(self) -> dict[str, Any]:
        return {
            "exact": not self.overflowed,
            "count": self.exact_count,
            "lower_bound": self.lower_bound,
            "cap": self.cap,
            "samples": self.samples,
        }


@dataclass
class TileAccumulator:
    target_hi: int
    sample_limit: int
    expected_next: int = 0
    covered_width: int = 0
    coalesced_tiles: int = 0
    max_tile_width: int = 0
    last_key: str | None = None
    last_kind: str | None = None
    last_lo: int | None = None
    last_hi: int | None = None
    gaps: list[dict[str, int]] = field(default_factory=list)
    overlaps: list[dict[str, int]] = field(default_factory=list)
    samples: list[dict[str, Any]] = field(default_factory=list)

    def add(self, lo: int, hi: int, kind: str, key: str) -> None:
        if hi <= lo:
            return
        if lo < self.expected_next:
            if len(self.overlaps) < self.sample_limit:
                self.overlaps.append({"lo": lo, "hi": hi, "expected_next": self.expected_next})
        elif lo > self.expected_next:
            if len(self.gaps) < self.sample_limit:
                self.gaps.append({"lo": self.expected_next, "hi": lo})
        self.covered_width += hi - lo
        self.expected_next = max(self.expected_next, hi)
        if self.last_key == key and self.last_kind == kind and self.last_hi == lo:
            self.last_hi = hi
            self.max_tile_width = max(self.max_tile_width, self.last_hi - (self.last_lo or lo))
            return
        self.coalesced_tiles += 1
        self.last_key = key
        self.last_kind = kind
        self.last_lo = lo
        self.last_hi = hi
        self.max_tile_width = max(self.max_tile_width, hi - lo)
        if len(self.samples) < self.sample_limit:
            self.samples.append({
                "lo": lo,
                "hi": hi,
                "kind": kind,
                "key_digest": stable_digest(key),
                "key_sample": key[:240],
            })

    def payload(self) -> dict[str, Any]:
        return {
            "covered_width": self.covered_width,
            "expected_next": self.expected_next,
            "target_hi": self.target_hi,
            "has_gaps": bool(self.gaps) or self.expected_next < self.target_hi,
            "has_overlaps": bool(self.overlaps),
            "gaps": self.gaps,
            "overlaps": self.overlaps,
            "coalesced_semantic_tiles": self.coalesced_tiles,
            "planned_public_interval_nodes": max(0, self.coalesced_tiles - 1),
            "max_tile_width": self.max_tile_width,
            "samples": self.samples,
        }


@dataclass(frozen=True)
class PrefixKillClassification:
    rank: int
    identity: bool
    kind: str
    signature: str
    family_key: str


@dataclass(frozen=True)
class PrefixKillCandidate:
    kind: str
    signature: str
    family_key: str
    rank_count: int
    nonidentity_count: int
    identity_count: int
    sample_rank: int


class PrefixKillTreeProfiler:
    """Dry-run profiler for non-identity prefix pruning.

    The profile is intentionally proof-agnostic: it does not emit Lean.  It
    answers whether exact prefix-level non-identity eliminators are likely to
    cover rank intervals with a small number of Lean-visible leaves.
    """

    def __init__(
        self,
        *,
        limit: int | None,
        max_lean_leaves: int,
        warn_lean_leaves: int,
        max_distinct_tracked: int,
        sample_limit: int,
        progress_interval: int,
        max_prefix_probe_ranks: int,
        max_residual_leaf_width: int,
        min_residual_depth: int,
        use_d4_transport: bool,
    ) -> None:
        self.target_hi = EXPECTED_PAIR_WORDS if limit is None else limit
        self.limit = limit
        self.max_lean_leaves = max_lean_leaves
        self.warn_lean_leaves = warn_lean_leaves
        self.sample_limit = sample_limit
        self.progress_interval = progress_interval
        self.max_prefix_probe_ranks = max_prefix_probe_ranks
        self.max_residual_leaf_width = max_residual_leaf_width
        self.min_residual_depth = min_residual_depth
        self.use_d4_transport = use_d4_transport
        self.prefix_nodes = 0
        self.prefix_nodes_by_depth: Counter[int] = Counter()
        self.max_depth = 0
        self.probed_prefixes = 0
        self.skipped_large_probes = 0
        self.pair_words_profiled = 0
        self.identity_vacuous_ranks = 0
        self.nonidentity_ranks = 0
        self.prefix_kill_counts: Counter[str] = Counter()
        self.prefix_kill_rank_counts: Counter[str] = Counter()
        self.residual_fallback_leaves = 0
        self.residual_fallback_width = 0
        self.max_prefix_kill_width = 0
        self.heavy_families = DistinctTracker(max_distinct_tracked, sample_limit)
        self.prefix_family_shapes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.tiles = TileAccumulator(self.target_hi, sample_limit)
        self.samples: list[dict[str, Any]] = []

    def full_family_key(
        self,
        prefix: tuple[str, ...],
        kind: str,
        signature: str,
    ) -> str:
        if not self.use_d4_transport:
            return f"{kind}|prefix={word_key(prefix)}|{signature}"
        canonical, _sym_id = canonical_prefix_with_symmetry(prefix)
        return (
            f"{kind}|canonicalPrefix={word_key(canonical)}"
            f"|{signature}"
        )

    def classify_word(
        self,
        rank: int,
        word: tuple[str, ...],
        pref: list,
        prefix: tuple[str, ...],
    ) -> PrefixKillClassification:
        matrix = mat_mul(pref[-1], RPAIR["x"])
        matrix_text = mat_key(matrix)
        if matrix == IDENTITY:
            return PrefixKillClassification(
                rank=rank,
                identity=True,
                kind="identityOnly",
                signature="identity",
                family_key=self.full_family_key(prefix, "identityOnly", "identity"),
            )
        try:
            axis = one_dimensional_fixed_axis(matrix)
        except ValueError:
            signature = f"M={matrix_text}|fixedPart={mat_key(fixed_part(matrix))}"
            return PrefixKillClassification(
                rank=rank,
                identity=False,
                kind="uniformNoFixedAxis",
                signature=signature,
                family_key=self.full_family_key(prefix, "uniformNoFixedAxis", signature),
            )

        final_dot = final_axis_dot(list(word), axis, pref)
        if final_dot < 0:
            axis = (-axis[0], -axis[1], -axis[2])
            final_dot = -final_dot
        if final_dot == 0:
            signature = f"M={matrix_text}|axis={vec_key(axis)}|zeroAt=final"
            return PrefixKillClassification(
                rank=rank,
                identity=False,
                kind="residualLeaf",
                signature=signature,
                family_key=self.full_family_key(prefix, "residualLeaf", signature),
            )

        zero_index = first_axis_zero_index(list(word), axis, pref)
        if zero_index is not None:
            signature = (
                f"M={matrix_text}|axis={vec_key(axis)}|zeroAt={zero_index}"
                f"|remaining={counts_key(remaining_counts_after(list(word), zero_index))}"
            )
            return PrefixKillClassification(
                rank=rank,
                identity=False,
                kind="uniformBadDirection",
                signature=signature,
                family_key=self.full_family_key(prefix, "uniformBadDirection", signature),
            )

        forced_seq = forced_sequence_from_axis(list(word), axis, pref)
        if len(set(forced_seq)) != 14:
            sign_pattern = sign_pattern_key(list(word), axis, pref)
            signature = (
                f"M={matrix_text}|axis={vec_key(axis)}"
                f"|signs={sign_pattern}|seq={seq_key(forced_seq)}"
            )
            return PrefixKillClassification(
                rank=rank,
                identity=False,
                kind="uniformBadBalance",
                signature=signature,
                family_key=self.full_family_key(prefix, "uniformBadBalance", signature),
            )

        signature = (
            f"M={matrix_text}|axis={vec_key(axis)}"
            f"|signs={sign_pattern_key(list(word), axis, pref)}"
            f"|seq={seq_key(forced_seq)}"
        )
        return PrefixKillClassification(
            rank=rank,
            identity=False,
            kind="residualLeaf",
            signature=signature,
            family_key=self.full_family_key(prefix, "residualLeaf", signature),
        )

    def enumerate_prefix_classifications(
        self,
        *,
        rank_lo: int,
        rank_hi: int,
        prefix: list[str],
        remaining: dict[str, int],
        pref: list,
    ) -> list[PrefixKillClassification]:
        out: list[PrefixKillClassification] = []
        local_prefix = list(prefix)
        local_remaining = dict(remaining)
        local_pref = list(pref)

        def rec(child_rank_lo: int) -> None:
            block_width = multinomial_count(local_remaining)
            child_rank_hi = child_rank_lo + block_width
            if child_rank_lo >= rank_hi or child_rank_hi <= rank_lo:
                return
            if len(local_prefix) == 13:
                if rank_lo <= child_rank_lo < rank_hi:
                    out.append(
                        self.classify_word(
                            child_rank_lo,
                            tuple(local_prefix),
                            list(local_pref),
                            tuple(prefix),
                        )
                    )
                return
            next_lo = child_rank_lo
            for pair_id in PAIR_IDS:
                if local_remaining[pair_id] <= 0:
                    continue
                local_remaining[pair_id] -= 1
                child_width = multinomial_count(local_remaining)
                local_prefix.append(pair_id)
                local_pref.append(mat_mul(local_pref[-1], RPAIR[pair_id]))
                if next_lo < rank_hi and next_lo + child_width > rank_lo:
                    rec(next_lo)
                local_pref.pop()
                local_prefix.pop()
                local_remaining[pair_id] += 1
                next_lo += child_width
                if next_lo >= rank_hi:
                    break

        rec(rank_lo)
        return out

    def summarize_candidate(
        self,
        classifications: list[PrefixKillClassification],
    ) -> PrefixKillCandidate | None:
        if not classifications:
            return None
        identity_count = sum(1 for item in classifications if item.identity)
        nonidentity = [item for item in classifications if not item.identity]
        if not nonidentity:
            first = classifications[0]
            return PrefixKillCandidate(
                kind="identityOnly",
                signature="identity",
                family_key=first.family_key,
                rank_count=len(classifications),
                nonidentity_count=0,
                identity_count=identity_count,
                sample_rank=first.rank,
            )
        kinds = {item.kind for item in nonidentity}
        signatures = {item.signature for item in nonidentity}
        if len(kinds) != 1 or len(signatures) != 1:
            return None
        kind = nonidentity[0].kind
        if kind not in {
            "uniformBadDirection",
            "uniformNoFixedAxis",
            "uniformBadBalance",
        }:
            return None
        family_keys = {item.family_key for item in nonidentity}
        if len(family_keys) != 1:
            return None
        return PrefixKillCandidate(
            kind=kind,
            signature=nonidentity[0].signature,
            family_key=nonidentity[0].family_key,
            rank_count=len(classifications),
            nonidentity_count=len(nonidentity),
            identity_count=identity_count,
            sample_rank=nonidentity[0].rank,
        )

    def record_classifications(
        self,
        classifications: list[PrefixKillClassification],
    ) -> None:
        for item in classifications:
            self.pair_words_profiled += 1
            if item.identity:
                self.identity_vacuous_ranks += 1
            else:
                self.nonidentity_ranks += 1

    def record_tile(
        self,
        *,
        lo: int,
        hi: int,
        depth: int,
        candidate: PrefixKillCandidate,
        source: str,
    ) -> None:
        self.tiles.add(lo, hi, candidate.kind, candidate.family_key)
        if candidate.kind != "identityOnly":
            self.heavy_families.add(candidate.family_key)
            self.prefix_family_shapes.add(candidate.family_key)
        self.prefix_kill_counts[candidate.kind] += 1
        self.prefix_kill_rank_counts[candidate.kind] += hi - lo
        if source == "residual":
            self.residual_fallback_leaves += 1
            self.residual_fallback_width += hi - lo
        else:
            self.max_prefix_kill_width = max(self.max_prefix_kill_width, hi - lo)
        if len(self.samples) < self.sample_limit:
            self.samples.append({
                "lo": lo,
                "hi": hi,
                "depth": depth,
                "kind": candidate.kind,
                "source": source,
                "rank_count": hi - lo,
                "identity_count": candidate.identity_count,
                "nonidentity_count": candidate.nonidentity_count,
                "sample_rank": candidate.sample_rank,
                "family_key_digest": stable_digest(candidate.family_key),
                "family_key_sample": candidate.family_key[:240],
            })

    def traverse(self) -> None:
        remaining = dict(PAIR_COUNTS)
        prefix: list[str] = []
        pref = [IDENTITY]

        def rec(rank_lo: int) -> None:
            block_width = multinomial_count(remaining)
            rank_hi = rank_lo + block_width
            if rank_lo >= self.target_hi:
                return
            clipped_hi = min(rank_hi, self.target_hi)
            depth = len(prefix)
            self.prefix_nodes += 1
            self.prefix_nodes_by_depth[depth] += 1
            self.max_depth = max(self.max_depth, depth)

            full_interval_inside_target = rank_hi <= self.target_hi
            if full_interval_inside_target:
                if block_width <= self.max_prefix_probe_ranks:
                    self.probed_prefixes += 1
                    classifications = self.enumerate_prefix_classifications(
                        rank_lo=rank_lo,
                        rank_hi=rank_hi,
                        prefix=prefix,
                        remaining=remaining,
                        pref=pref,
                    )
                    candidate = self.summarize_candidate(classifications)
                    if candidate is not None:
                        self.record_classifications(classifications)
                        self.record_tile(
                            lo=rank_lo,
                            hi=rank_hi,
                            depth=depth,
                            candidate=candidate,
                            source="prefix",
                        )
                        return
                    if (
                        block_width <= self.max_residual_leaf_width
                        and depth >= self.min_residual_depth
                    ):
                        self.record_classifications(classifications)
                        signature = (
                            f"prefix={word_key(tuple(prefix))}"
                            f"|width={block_width}|mixedResidual"
                        )
                        residual = PrefixKillCandidate(
                            kind="residualLeaf",
                            signature=signature,
                            family_key=self.full_family_key(
                                tuple(prefix), "residualLeaf", signature
                            ),
                            rank_count=block_width,
                            nonidentity_count=sum(
                                1 for item in classifications if not item.identity
                            ),
                            identity_count=sum(
                                1 for item in classifications if item.identity
                            ),
                            sample_rank=classifications[0].rank,
                        )
                        self.record_tile(
                            lo=rank_lo,
                            hi=rank_hi,
                            depth=depth,
                            candidate=residual,
                            source="residual",
                        )
                        return
                else:
                    self.skipped_large_probes += 1

            if len(prefix) == 13:
                classifications = self.enumerate_prefix_classifications(
                    rank_lo=rank_lo,
                    rank_hi=clipped_hi,
                    prefix=prefix,
                    remaining=remaining,
                    pref=pref,
                )
                self.record_classifications(classifications)
                candidate = self.summarize_candidate(classifications)
                if candidate is None:
                    item = classifications[0]
                    candidate = PrefixKillCandidate(
                        kind=item.kind,
                        signature=item.signature,
                        family_key=item.family_key,
                        rank_count=1,
                        nonidentity_count=0 if item.identity else 1,
                        identity_count=1 if item.identity else 0,
                        sample_rank=item.rank,
                    )
                self.record_tile(
                    lo=rank_lo,
                    hi=clipped_hi,
                    depth=depth,
                    candidate=candidate,
                    source="leaf",
                )
                return

            child_lo = rank_lo
            for pair_id in PAIR_IDS:
                if remaining[pair_id] <= 0:
                    continue
                remaining[pair_id] -= 1
                child_width = multinomial_count(remaining)
                prefix.append(pair_id)
                pref.append(mat_mul(pref[-1], RPAIR[pair_id]))
                if child_lo < self.target_hi:
                    rec(child_lo)
                pref.pop()
                prefix.pop()
                remaining[pair_id] += 1
                child_lo += child_width
                if child_lo >= self.target_hi:
                    break

        rec(0)

    def payload(
        self,
        *,
        elapsed_seconds: float,
        rejected: bool,
        reject_reasons: list[str],
    ) -> dict[str, Any]:
        heavy_exact = self.heavy_families.exact_count
        heavy_lower = self.heavy_families.lower_bound
        residual_ratio = (
            self.residual_fallback_width / self.target_hi
            if self.target_hi > 0 else 0
        )
        return {
            "schema_version": 1,
            "mode": "prefix-kill-tree-profile",
            "trusted_as_proof": False,
            "complete": self.limit is None and not rejected,
            "profile_limit": self.limit,
            "elapsed_seconds": elapsed_seconds,
            "options": {
                "branch": "nonidentity",
                "symmetry": "started-face D4" if self.use_d4_transport else "none",
                "max_lean_leaves": self.max_lean_leaves,
                "warn_lean_leaves": self.warn_lean_leaves,
                "max_prefix_probe_ranks": self.max_prefix_probe_ranks,
                "max_residual_leaf_width": self.max_residual_leaf_width,
                "min_residual_depth": self.min_residual_depth,
                "residual_fallback_rank_ratio_limit": 0.10,
            },
            "actual_counts": {
                "pair_words_profiled": self.pair_words_profiled,
                "identity_vacuous_ranks": self.identity_vacuous_ranks,
                "nonidentity_ranks": self.nonidentity_ranks,
            },
            "prefix": {
                "nodes_visited": self.prefix_nodes,
                "nodes_by_depth": dict(sorted(self.prefix_nodes_by_depth.items())),
                "max_depth": self.max_depth,
                "probed_prefixes": self.probed_prefixes,
                "skipped_large_probes": self.skipped_large_probes,
                "max_prefix_kill_width": self.max_prefix_kill_width,
            },
            "templates": {
                "counts": dict(sorted(self.prefix_kill_counts.items())),
                "rank_counts": dict(sorted(self.prefix_kill_rank_counts.items())),
                "residual_fallback_leaves": self.residual_fallback_leaves,
                "residual_fallback_width": self.residual_fallback_width,
                "residual_fallback_rank_ratio": residual_ratio,
                "samples": self.samples,
            },
            "tiling": {
                **self.tiles.payload(),
                "sum_hi_minus_lo": self.tiles.covered_width,
                "planned_lean_heavy_leaves_exact": heavy_exact,
                "planned_lean_heavy_leaves_lower_bound": heavy_lower,
                "planned_lean_heavy_leaves": heavy_exact
                if heavy_exact is not None
                else f">{heavy_lower - 1}",
                "heavy_families": self.heavy_families.payload(),
                "prefix_family_shapes": self.prefix_family_shapes.payload(),
            },
            "decision": {
                "status": "reject" if rejected else "pass",
                "reasons": reject_reasons,
            },
        }


class TranslationFarkasTreeProfiler:
    """Dry-run profiler for translation/Farkas family sharing.

    This mode intentionally ignores the non-identity branch except for counting
    and rank coverage.  It asks whether identity-linear translation sign masks
    collapse to a small number of Lean-visible families once started-face D4
    transport and normalized Farkas-shape sharing are applied.
    """

    def __init__(
        self,
        *,
        limit: int | None,
        max_lean_leaves: int,
        warn_lean_leaves: int,
        max_distinct_tracked: int,
        sample_limit: int,
        progress_interval: int,
        use_d4_transport: bool,
    ) -> None:
        self.target_hi = EXPECTED_PAIR_WORDS if limit is None else limit
        self.limit = limit
        self.max_lean_leaves = max_lean_leaves
        self.warn_lean_leaves = warn_lean_leaves
        self.sample_limit = sample_limit
        self.progress_interval = progress_interval
        self.use_d4_transport = use_d4_transport
        self.pair_words_scanned = 0
        self.identity_words = 0
        self.nonidentity_words_skipped = 0
        self.translation_sign_assignments = 0
        self.translation_failure_counts: Counter[str] = Counter()
        self.translation_mask_orbit_histogram: Counter[int] = Counter()
        self.translation_canonical_choices = DistinctTracker(max_distinct_tracked, sample_limit)
        self.heavy_families = DistinctTracker(max_distinct_tracked, sample_limit)
        self.bad_vector_families = DistinctTracker(max_distinct_tracked, sample_limit)
        self.bad_direction_families = DistinctTracker(max_distinct_tracked, sample_limit)
        self.farkas_shapes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.farkas_shape_reuse_counts: Counter[str] = Counter()
        self.farkas_shape_reuse_samples: dict[str, dict[str, Any]] = {}
        self.tiles = TileAccumulator(self.target_hi, sample_limit)
        self.samples: list[dict[str, Any]] = []

    def canonical_translation_choice(
        self,
        word: tuple[str, ...],
        mask: int,
    ) -> tuple[tuple[str, ...], int, int]:
        if self.use_d4_transport:
            return canonical_translation_with_symmetry(word, mask)
        return word, mask, 0

    @lru_cache(maxsize=200_000)
    def classify_translation_canonical(self, word: tuple[str, ...], mask: int) -> tuple[str, str, str | None]:
        raw_word = list(word)
        pref = prefix_matrices(raw_word)
        b, seq = translation_vector(raw_word, mask, pref)
        prefixes = path_prefix_affs(seq)
        b_text = vec_key(b)
        seq_text = seq_key(seq)
        denom_pattern = denom_pattern_key(seq, b, prefixes)
        base = f"trans|b={b_text}|seq={seq_text}|denoms={denom_pattern}"
        if b == ZERO_VEC:
            return "badTranslationVector", f"{base}|badTranslationVector", None
        if any(impact_denom(seq, b, impact, prefixes) <= 0 for impact in range(1, 14)):
            return "badDirectionSign", f"{base}|badDirectionSign", None
        shape = normalized_constraints_key(translation_constraints(seq, b))
        shape_digest = stable_digest(shape)
        return "needsFarkas", f"{base}|needsFarkas|shape={shape_digest}", shape

    def mask_orbit_size(self, word: tuple[str, ...], mask: int) -> int:
        if not self.use_d4_transport:
            return 1
        return len({
            (tuple(transported_word), transported_choice)
            for sym in STARTED_SYMS
            for transported_word, transported_choice in [transported_mask(sym, list(word), mask)]
        })

    def record_translation_case(
        self,
        *,
        rank: int,
        word: tuple[str, ...],
        mask: int,
    ) -> str:
        canonical_word, canonical_mask, mask_sym_id = self.canonical_translation_choice(word, mask)
        canonical_choice_key = f"{word_key(canonical_word)}#{canonical_mask}"
        self.translation_canonical_choices.add(canonical_choice_key)
        self.translation_mask_orbit_histogram[self.mask_orbit_size(word, mask)] += 1

        failure, family_key, shape = self.classify_translation_canonical(
            canonical_word,
            canonical_mask,
        )
        self.translation_failure_counts[failure] += 1
        self.translation_sign_assignments += 1

        if shape is None:
            transported_family_key = f"sym={mask_sym_id}|mask={canonical_mask}|{family_key}"
            if failure == "badTranslationVector":
                self.bad_vector_families.add(family_key)
            elif failure == "badDirectionSign":
                self.bad_direction_families.add(family_key)
            else:
                raise AssertionError(f"unexpected translation failure without shape: {failure}")
            self.heavy_families.add(family_key)
            leaf_key = transported_family_key
        else:
            shape_digest = stable_digest(shape)
            self.farkas_shapes.add(shape)
            self.farkas_shape_reuse_counts[shape_digest] += 1
            self.farkas_shape_reuse_samples.setdefault(shape_digest, {
                "shape_digest": shape_digest,
                "raw_rank": rank,
                "raw_word": word_key(word),
                "raw_mask": mask,
                "canonical_word": word_key(canonical_word),
                "canonical_mask": canonical_mask,
                "failure_key_digest": stable_digest(family_key),
            })
            self.heavy_families.add(f"farkasShape|{shape_digest}")
            leaf_key = f"sym={mask_sym_id}|mask={canonical_mask}|farkasShape|{shape_digest}"

        if len(self.samples) < self.sample_limit:
            self.samples.append({
                "rank": rank,
                "mask": mask,
                "failure": failure,
                "canonical_word": word_key(canonical_word),
                "canonical_mask": canonical_mask,
                "family_key_digest": stable_digest(family_key),
                "shape_digest": stable_digest(shape) if shape is not None else None,
            })
        return leaf_key

    def classify_leaf(self, rank: int, word: tuple[str, ...], pref: list) -> None:
        self.pair_words_scanned += 1
        if self.progress_interval and self.pair_words_scanned % self.progress_interval == 0:
            print(f"profiled {self.pair_words_scanned:,} pair words", file=sys.stderr)
        matrix = mat_mul(pref[-1], RPAIR["x"])
        if matrix != IDENTITY:
            self.nonidentity_words_skipped += 1
            self.tiles.add(rank, rank + 1, "nonidentitySkipped", "nonidentitySkipped")
            return

        self.identity_words += 1
        mask_family_digests: list[str] = []
        for mask in range(64):
            leaf_key = self.record_translation_case(rank=rank, word=word, mask=mask)
            mask_family_digests.append(stable_digest(leaf_key))
        rank_family_key = (
            f"translationRank|word={word_key(word)}"
            f"|maskFamilies={stable_digest('|'.join(sorted(mask_family_digests)))}"
        )
        self.tiles.add(rank, rank + 1, "translation", rank_family_key)

    def traverse(self) -> None:
        remaining = dict(PAIR_COUNTS)
        prefix: list[str] = []
        pref = [IDENTITY]

        def rec(rank_lo: int) -> None:
            block_width = multinomial_count(remaining)
            rank_hi = rank_lo + block_width
            if rank_lo >= self.target_hi:
                return
            if len(prefix) == 13:
                self.classify_leaf(rank_lo, tuple(prefix), list(pref))
                return
            child_lo = rank_lo
            for pair_id in PAIR_IDS:
                if remaining[pair_id] <= 0:
                    continue
                remaining[pair_id] -= 1
                child_width = multinomial_count(remaining)
                prefix.append(pair_id)
                pref.append(mat_mul(pref[-1], RPAIR[pair_id]))
                if child_lo < self.target_hi:
                    rec(child_lo)
                pref.pop()
                prefix.pop()
                remaining[pair_id] += 1
                child_lo += child_width
                if child_lo >= self.target_hi:
                    break

        rec(0)

    def farkas_shape_reuse_payload(self) -> dict[str, Any]:
        total = sum(self.farkas_shape_reuse_counts.values())
        shared = sorted(
            (
                (digest, count)
                for digest, count in self.farkas_shape_reuse_counts.items()
                if count > 1
            ),
            key=lambda item: (-item[1], item[0]),
        )
        sample_shared_shapes: list[dict[str, Any]] = []
        for digest, count in shared[: self.sample_limit]:
            sample = dict(self.farkas_shape_reuse_samples.get(digest, {}))
            sample["shape_digest"] = digest
            sample["count"] = count
            sample_shared_shapes.append(sample)
        return {
            "needs_farkas_cases": total,
            "shape_count": len(self.farkas_shape_reuse_counts),
            "shared_shape_count": len(shared),
            "max_reuse": max(self.farkas_shape_reuse_counts.values(), default=0),
            "sample_shared_shapes": sample_shared_shapes,
        }

    def payload(
        self,
        *,
        elapsed_seconds: float,
        rejected: bool,
        reject_reasons: list[str],
    ) -> dict[str, Any]:
        heavy_exact = self.heavy_families.exact_count
        heavy_lower = self.heavy_families.lower_bound
        assignments = self.translation_sign_assignments
        exact_ratio = (
            assignments / heavy_exact
            if heavy_exact not in {None, 0}
            else None
        )
        lower_ratio = assignments / heavy_lower if heavy_lower > 0 else None
        return {
            "schema_version": 1,
            "mode": "translation-farkas-tree-profile",
            "trusted_as_proof": False,
            "complete": self.limit is None and not rejected,
            "profile_limit": self.limit,
            "elapsed_seconds": elapsed_seconds,
            "options": {
                "branch": "translation",
                "symmetry": "started-face D4" if self.use_d4_transport else "none",
                "max_lean_leaves": self.max_lean_leaves,
                "warn_lean_leaves": self.warn_lean_leaves,
                "progress_interval": self.progress_interval,
                "case_to_leaf_compression_ratio_min": 8.0,
            },
            "expected_counts": {
                "pair_words": EXPECTED_PAIR_WORDS,
                "identity_linear_words": EXPECTED_IDENTITY_WORDS,
                "translation_sign_assignments": EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS,
            },
            "actual_counts": {
                "pair_words_scanned": self.pair_words_scanned,
                "identity_linear_words": self.identity_words,
                "nonidentity_words_skipped": self.nonidentity_words_skipped,
                "translation_sign_assignments": self.translation_sign_assignments,
            },
            "classification": {
                "translation_failure_counts": dict(sorted(self.translation_failure_counts.items())),
                "translation_cases_after_symmetry": self.translation_canonical_choices.payload(),
                "bad_vector_families": self.bad_vector_families.payload(),
                "bad_direction_families": self.bad_direction_families.payload(),
                "unique_normalized_farkas_shapes": self.farkas_shapes.payload(),
                "farkas_shape_reuse": self.farkas_shape_reuse_payload(),
                "samples": self.samples,
            },
            "d4": {
                "translation_mask_orbit_histogram": dict(sorted(self.translation_mask_orbit_histogram.items())),
            },
            "tiling": {
                **self.tiles.payload(),
                "sum_hi_minus_lo": self.tiles.covered_width,
                "planned_lean_heavy_leaves_exact": heavy_exact,
                "planned_lean_heavy_leaves_lower_bound": heavy_lower,
                "planned_lean_heavy_leaves": heavy_exact
                if heavy_exact is not None
                else f">{heavy_lower - 1}",
                "heavy_families": self.heavy_families.payload(),
                "case_to_leaf_compression_ratio_exact": exact_ratio,
                "case_to_leaf_compression_ratio_lower_bound": lower_ratio,
            },
            "decision": {
                "status": "reject" if rejected else "pass",
                "reasons": reject_reasons,
            },
        }


class TranslationSurvivorProfiler:
    """Dry-run profiler for GoodDirection survivor masks.

    This is the Phase 6F measurement mode.  It deliberately omits generated
    evidence for bad-direction masks and records only masks whose internal
    impact denominators are all strictly positive.
    """

    def __init__(
        self,
        *,
        limit: int | None,
        max_lean_leaves: int,
        warn_lean_leaves: int,
        max_distinct_tracked: int,
        sample_limit: int,
        progress_interval: int,
        use_d4_transport: bool,
    ) -> None:
        self.target_hi = EXPECTED_PAIR_WORDS if limit is None else limit
        self.limit = limit
        self.max_lean_leaves = max_lean_leaves
        self.warn_lean_leaves = warn_lean_leaves
        self.sample_limit = sample_limit
        self.progress_interval = progress_interval
        self.use_d4_transport = use_d4_transport
        self.pair_words_scanned = 0
        self.identity_words = 0
        self.nonidentity_words_skipped = 0
        self.translation_sign_assignments = 0
        self.good_direction_masks = 0
        self.denominator_nonpositive_masks = 0
        self.zero_vector_masks = 0
        self.survivor_mask_histogram: Counter[int] = Counter()
        self.denominator_degree_histogram: Counter[int] = Counter()
        self.denominator_signatures = DistinctTracker(max_distinct_tracked, sample_limit)
        self.survivor_bitsets = DistinctTracker(max_distinct_tracked, sample_limit)
        self.survivor_shape_maps = DistinctTracker(max_distinct_tracked, sample_limit)
        self.farkas_shapes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.canonical_survivor_cases = DistinctTracker(max_distinct_tracked, sample_limit)
        self.farkas_shape_reuse_counts: Counter[str] = Counter()
        self.samples: list[dict[str, Any]] = []

    def canonical_translation_choice(
        self,
        word: tuple[str, ...],
        mask: int,
    ) -> tuple[tuple[str, ...], int, int]:
        if self.use_d4_transport:
            return canonical_translation_with_symmetry(word, mask)
        return word, mask, 0

    @staticmethod
    def denominator_values_for_choice(
        word: tuple[str, ...],
        mask: int,
        pref: list | None = None,
    ) -> tuple[tuple[Fraction, ...], tuple, list[str]]:
        b, seq = translation_vector(list(word), mask, pref)
        prefixes = path_prefix_affs(seq)
        denoms = tuple(impact_denom(seq, b, impact, prefixes) for impact in range(1, 14))
        return denoms, b, seq

    @lru_cache(maxsize=200_000)
    def survivor_case_shape(
        self,
        word: tuple[str, ...],
        mask: int,
    ) -> tuple[str, str]:
        denoms, b, seq = self.denominator_values_for_choice(word, mask)
        if not all(denom > 0 for denom in denoms):
            raise ValueError("survivor_case_shape called for non-survivor mask")
        shape = normalized_constraints_key(translation_constraints(seq, b))
        shape_digest = stable_digest(shape)
        return shape, shape_digest

    def denominator_signature_for_word(
        self,
        word: tuple[str, ...],
        pref: list,
    ) -> tuple[str, int, int, list[tuple[int, str]], dict[int, str]]:
        impact_values: list[list[Fraction]] = [[] for _ in range(13)]
        survivor_bits = 0
        survivor_shapes: list[tuple[int, str]] = []
        survivor_shape_by_mask: dict[int, str] = {}
        max_degree = 0
        for mask in range(64):
            denoms, _b, _seq = self.denominator_values_for_choice(word, mask, pref)
            for index, denom in enumerate(denoms):
                impact_values[index].append(denom)
            if all(denom > 0 for denom in denoms):
                survivor_bits |= 1 << mask
                canonical_word, canonical_mask, _sym_id = (
                    self.canonical_translation_choice(word, mask)
                )
                _shape, shape_digest = self.survivor_case_shape(
                    canonical_word,
                    canonical_mask,
                )
                survivor_shapes.append((mask, shape_digest))
                survivor_shape_by_mask[mask] = shape_digest
        impact_keys: list[str] = []
        for values in impact_values:
            key, degree = denominator_polynomial_key(values)
            max_degree = max(max_degree, degree)
            self.denominator_degree_histogram[degree] += 1
            impact_keys.append(key)
        signature_key = "|".join(
            f"{impact + 1}:{key}" for impact, key in enumerate(impact_keys)
        )
        return signature_key, survivor_bits, max_degree, survivor_shapes, survivor_shape_by_mask

    def classify_leaf(self, rank: int, word: tuple[str, ...], pref: list) -> None:
        self.pair_words_scanned += 1
        if self.progress_interval and self.pair_words_scanned % self.progress_interval == 0:
            print(f"profiled {self.pair_words_scanned:,} pair words", file=sys.stderr)
        matrix = mat_mul(pref[-1], RPAIR["x"])
        if matrix != IDENTITY:
            self.nonidentity_words_skipped += 1
            return

        self.identity_words += 1
        signature_key, survivor_bits, max_degree, survivor_shapes, survivor_shape_by_mask = (
            self.denominator_signature_for_word(word, pref)
        )
        survivor_count = len(survivor_shapes)
        self.survivor_mask_histogram[survivor_count] += 1
        self.denominator_signatures.add(signature_key)
        self.survivor_bitsets.add(str(survivor_bits))
        shape_map_key = "|".join(
            f"{mask}:{shape_digest}" for mask, shape_digest in survivor_shapes
        )
        self.survivor_shape_maps.add(
            f"sig={stable_digest(signature_key)}|survivors={survivor_bits}|{shape_map_key}"
        )
        for mask in range(64):
            self.translation_sign_assignments += 1
            if survivor_bits & (1 << mask):
                self.good_direction_masks += 1
                shape_digest = survivor_shape_by_mask[mask]
                self.farkas_shapes.add(shape_digest)
                self.farkas_shape_reuse_counts[shape_digest] += 1
                canonical_word, canonical_mask, sym_id = self.canonical_translation_choice(
                    word, mask
                )
                self.canonical_survivor_cases.add(
                    f"{word_key(canonical_word)}#{canonical_mask}"
                )
                if len(self.samples) < self.sample_limit:
                    self.samples.append({
                        "rank": rank,
                        "word": word_key(word),
                        "mask": mask,
                        "canonical_word": word_key(canonical_word),
                        "canonical_mask": canonical_mask,
                        "sym_id": sym_id,
                        "shape_digest": shape_digest,
                        "denominator_signature_digest": stable_digest(signature_key),
                        "max_denominator_degree": max_degree,
                    })
            else:
                self.denominator_nonpositive_masks += 1
                denoms, b, _seq = self.denominator_values_for_choice(word, mask, pref)
                if b == ZERO_VEC:
                    self.zero_vector_masks += 1
                elif all(denom > 0 for denom in denoms):
                    raise AssertionError("survivor bitset missed a GoodDirection mask")

    def traverse(self) -> None:
        remaining = dict(PAIR_COUNTS)
        prefix: list[str] = []
        pref = [IDENTITY]

        def rec(rank_lo: int) -> None:
            if rank_lo >= self.target_hi:
                return
            if len(prefix) == 13:
                self.classify_leaf(rank_lo, tuple(prefix), list(pref))
                return
            child_lo = rank_lo
            for pair_id in PAIR_IDS:
                if remaining[pair_id] <= 0:
                    continue
                remaining[pair_id] -= 1
                child_width = multinomial_count(remaining)
                prefix.append(pair_id)
                pref.append(mat_mul(pref[-1], RPAIR[pair_id]))
                if child_lo < self.target_hi:
                    rec(child_lo)
                pref.pop()
                prefix.pop()
                remaining[pair_id] += 1
                child_lo += child_width
                if child_lo >= self.target_hi:
                    break

        rec(0)

    def payload(self, *, elapsed_seconds: float) -> dict[str, Any]:
        survivor_maps_exact = self.survivor_shape_maps.exact_count
        survivor_maps_lower = self.survivor_shape_maps.lower_bound
        under_gate = (
            survivor_maps_exact is not None
            and survivor_maps_exact <= self.max_lean_leaves
        )
        warn_gate = (
            survivor_maps_exact is not None
            and survivor_maps_exact <= self.warn_lean_leaves
        )
        return {
            "schema_version": 1,
            "mode": "translation-survivors-profile",
            "trusted_as_proof": False,
            "complete": self.limit is None,
            "profile_limit": self.limit,
            "elapsed_seconds": elapsed_seconds,
            "options": {
                "branch": "translation",
                "symmetry": "started-face D4" if self.use_d4_transport else "none",
                "max_lean_leaves": self.max_lean_leaves,
                "warn_lean_leaves": self.warn_lean_leaves,
                "progress_interval": self.progress_interval,
                "good_direction_impacts": "1..13",
                "emits_bad_direction_evidence": False,
            },
            "expected_counts": {
                "pair_words": EXPECTED_PAIR_WORDS,
                "identity_linear_words": EXPECTED_IDENTITY_WORDS,
                "translation_sign_assignments": EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS,
            },
            "actual_counts": {
                "pair_words_scanned": self.pair_words_scanned,
                "identity_linear_words": self.identity_words,
                "nonidentity_words_skipped": self.nonidentity_words_skipped,
                "translation_sign_assignments": self.translation_sign_assignments,
                "good_direction_survivor_masks": self.good_direction_masks,
                "denominator_nonpositive_masks": self.denominator_nonpositive_masks,
                "zero_translation_vector_masks": self.zero_vector_masks,
                "bad_direction_generated_evidence": 0,
            },
            "survivors": {
                "survivor_density": (
                    self.good_direction_masks / self.translation_sign_assignments
                    if self.translation_sign_assignments
                    else None
                ),
                "survivor_mask_histogram": dict(
                    sorted(self.survivor_mask_histogram.items())
                ),
                "denominator_degree_histogram": dict(
                    sorted(self.denominator_degree_histogram.items())
                ),
                "unique_denominator_signatures": self.denominator_signatures.payload(),
                "unique_survivor_bitsets": self.survivor_bitsets.payload(),
                "unique_survivor_shape_maps": self.survivor_shape_maps.payload(),
                "unique_normalized_farkas_shapes": self.farkas_shapes.payload(),
                "canonical_survivor_cases": self.canonical_survivor_cases.payload(),
                "farkas_shape_reuse": {
                    "shape_count": len(self.farkas_shape_reuse_counts),
                    "shared_shape_count": sum(
                        1 for count in self.farkas_shape_reuse_counts.values()
                        if count > 1
                    ),
                    "max_reuse": max(
                        self.farkas_shape_reuse_counts.values(),
                        default=0,
                    ),
                },
                "samples": self.samples,
            },
            "decision": {
                "status": "profile",
                "accepted_for_phase_6g": under_gate,
                "within_warning_gate": warn_gate,
                "planned_lean_heavy_leaves_exact": survivor_maps_exact,
                "planned_lean_heavy_leaves_lower_bound": survivor_maps_lower,
                "notes": [
                    "This mode measures the GoodDirection survivor obligation.",
                    "A high survivor-map count means use a later compression phase before Lean emission.",
                ],
            },
        }


@dataclass(frozen=True)
class MaskTreeBuild:
    key: str
    leaf_keys: tuple[str, ...]
    leaf_count: int
    bad_cube_leaves: int
    farkas_leaves: int
    branch_nodes: int
    point_farkas_leaves: int
    max_depth: int
    max_masks_in_bad_cube: int
    max_survivors_in_farkas_leaf: int


class TranslationSurvivorMaskTreeProfiler(TranslationSurvivorProfiler):
    """Dry-run profiler for Phase 6H GoodDirection mask trees.

    This mode does not emit Lean.  It measures whether the survivor obligation
    can be represented as small Boolean trees over the six translation mask
    bits.  Bad leaves contain no GoodDirection masks; Farkas leaves contain only
    GoodDirection masks that share one normalized Farkas shape after the
    deterministic splits chosen by the profiler.
    """

    def __init__(
        self,
        *,
        limit: int | None,
        max_lean_leaves: int,
        warn_lean_leaves: int,
        max_distinct_tracked: int,
        sample_limit: int,
        progress_interval: int,
        use_d4_transport: bool,
    ) -> None:
        super().__init__(
            limit=limit,
            max_lean_leaves=max_lean_leaves,
            warn_lean_leaves=warn_lean_leaves,
            max_distinct_tracked=max_distinct_tracked,
            sample_limit=sample_limit,
            progress_interval=progress_interval,
            use_d4_transport=use_d4_transport,
        )
        self.mask_tree_shapes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.proof_tree_obligations = DistinctTracker(max_distinct_tracked, sample_limit)
        self.leaf_obligations = DistinctTracker(max_distinct_tracked, sample_limit)
        self.bad_cube_leaf_shapes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.farkas_leaf_shapes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.tree_leaf_histogram: Counter[int] = Counter()
        self.tree_depth_histogram: Counter[int] = Counter()
        self.max_survivors_per_farkas_leaf_histogram: Counter[int] = Counter()
        self.total_tree_leaves = 0
        self.total_bad_cube_leaves = 0
        self.total_farkas_leaves = 0
        self.total_branch_nodes = 0
        self.total_point_farkas_leaves = 0
        self.max_tree_depth = 0
        self.max_tree_leaves = 0
        self.max_masks_in_bad_cube = 0
        self.max_survivors_in_farkas_leaf = 0

    @staticmethod
    def iter_mask_bits(bits: int) -> list[int]:
        masks: list[int] = []
        current = bits
        while current:
            low = current & -current
            masks.append(low.bit_length() - 1)
            current ^= low
        return masks

    @staticmethod
    def available_split_bits(cube_bits: int) -> list[int]:
        bits: list[int] = []
        for bit, (zero_bits, one_bits) in enumerate(MASKS_BY_BIT_VALUE):
            if cube_bits & zero_bits and cube_bits & one_bits:
                bits.append(bit)
        return bits

    def build_mask_tree(
        self,
        *,
        survivor_bits: int,
        survivor_shape_by_mask: dict[int, str],
    ) -> MaskTreeBuild:
        @lru_cache(maxsize=None)
        def rec(cube_bits: int) -> MaskTreeBuild:
            survivor_subset = cube_bits & survivor_bits
            if survivor_subset == 0:
                cube_size = cube_bits.bit_count()
                key = f"B:{cube_bits:016x}"
                return MaskTreeBuild(
                    key=key,
                    leaf_keys=(key,),
                    leaf_count=1,
                    bad_cube_leaves=1,
                    farkas_leaves=0,
                    branch_nodes=0,
                    point_farkas_leaves=0,
                    max_depth=0,
                    max_masks_in_bad_cube=cube_size,
                    max_survivors_in_farkas_leaf=0,
                )

            survivor_masks = self.iter_mask_bits(survivor_subset)
            shape_set = {survivor_shape_by_mask[mask] for mask in survivor_masks}
            if len(shape_set) == 1:
                shape_digest = next(iter(shape_set))
                survivor_count = len(survivor_masks)
                cube_size = cube_bits.bit_count()
                key = (
                    f"F:{shape_digest}:cube={cube_bits:016x}:"
                    f"survivors={survivor_subset:016x}"
                )
                return MaskTreeBuild(
                    key=key,
                    leaf_keys=(key,),
                    leaf_count=1,
                    bad_cube_leaves=0,
                    farkas_leaves=1,
                    branch_nodes=0,
                    point_farkas_leaves=1 if cube_size == 1 else 0,
                    max_depth=0,
                    max_masks_in_bad_cube=0,
                    max_survivors_in_farkas_leaf=survivor_count,
                )

            candidates: list[tuple[tuple[int, int, int, int, str], MaskTreeBuild]] = []
            for bit in self.available_split_bits(cube_bits):
                zero_cube = cube_bits & MASKS_BY_BIT_VALUE[bit][0]
                one_cube = cube_bits & MASKS_BY_BIT_VALUE[bit][1]
                zero = rec(zero_cube)
                one = rec(one_cube)
                leaf_keys = zero.leaf_keys + one.leaf_keys
                key = f"S{bit}({zero.key},{one.key})"
                combined = MaskTreeBuild(
                    key=key,
                    leaf_keys=leaf_keys,
                    leaf_count=zero.leaf_count + one.leaf_count,
                    bad_cube_leaves=zero.bad_cube_leaves + one.bad_cube_leaves,
                    farkas_leaves=zero.farkas_leaves + one.farkas_leaves,
                    branch_nodes=zero.branch_nodes + one.branch_nodes + 1,
                    point_farkas_leaves=(
                        zero.point_farkas_leaves + one.point_farkas_leaves
                    ),
                    max_depth=max(zero.max_depth, one.max_depth) + 1,
                    max_masks_in_bad_cube=max(
                        zero.max_masks_in_bad_cube,
                        one.max_masks_in_bad_cube,
                    ),
                    max_survivors_in_farkas_leaf=max(
                        zero.max_survivors_in_farkas_leaf,
                        one.max_survivors_in_farkas_leaf,
                    ),
                )
                score = (
                    combined.leaf_count,
                    combined.farkas_leaves,
                    combined.branch_nodes,
                    combined.max_depth,
                    combined.key,
                )
                candidates.append((score, combined))

            if not candidates:
                raise AssertionError("mixed survivor shapes without available split bits")
            candidates.sort(key=lambda item: item[0])
            return candidates[0][1]

        return rec((1 << 64) - 1)

    def classify_leaf(self, rank: int, word: tuple[str, ...], pref: list) -> None:
        self.pair_words_scanned += 1
        if self.progress_interval and self.pair_words_scanned % self.progress_interval == 0:
            print(f"profiled {self.pair_words_scanned:,} pair words", file=sys.stderr)
        matrix = mat_mul(pref[-1], RPAIR["x"])
        if matrix != IDENTITY:
            self.nonidentity_words_skipped += 1
            return

        self.identity_words += 1
        signature_key, survivor_bits, max_degree, survivor_shapes, survivor_shape_by_mask = (
            self.denominator_signature_for_word(word, pref)
        )
        signature_digest = stable_digest(signature_key)
        survivor_count = len(survivor_shapes)
        self.survivor_mask_histogram[survivor_count] += 1
        self.denominator_signatures.add(signature_key)
        self.survivor_bitsets.add(str(survivor_bits))
        shape_map_key = "|".join(
            f"{mask}:{shape_digest}" for mask, shape_digest in survivor_shapes
        )
        self.survivor_shape_maps.add(
            f"sig={signature_digest}|survivors={survivor_bits}|{shape_map_key}"
        )

        tree = self.build_mask_tree(
            survivor_bits=survivor_bits,
            survivor_shape_by_mask=survivor_shape_by_mask,
        )
        self.mask_tree_shapes.add(tree.key)
        self.proof_tree_obligations.add(f"{signature_digest}|{tree.key}")
        for leaf_key in tree.leaf_keys:
            self.leaf_obligations.add(f"{signature_digest}|{leaf_key}")
            if leaf_key.startswith("B:"):
                self.bad_cube_leaf_shapes.add(leaf_key)
            else:
                self.farkas_leaf_shapes.add(leaf_key)

        self.tree_leaf_histogram[tree.leaf_count] += 1
        self.tree_depth_histogram[tree.max_depth] += 1
        self.max_survivors_per_farkas_leaf_histogram[
            tree.max_survivors_in_farkas_leaf
        ] += 1
        self.total_tree_leaves += tree.leaf_count
        self.total_bad_cube_leaves += tree.bad_cube_leaves
        self.total_farkas_leaves += tree.farkas_leaves
        self.total_branch_nodes += tree.branch_nodes
        self.total_point_farkas_leaves += tree.point_farkas_leaves
        self.max_tree_depth = max(self.max_tree_depth, tree.max_depth)
        self.max_tree_leaves = max(self.max_tree_leaves, tree.leaf_count)
        self.max_masks_in_bad_cube = max(
            self.max_masks_in_bad_cube,
            tree.max_masks_in_bad_cube,
        )
        self.max_survivors_in_farkas_leaf = max(
            self.max_survivors_in_farkas_leaf,
            tree.max_survivors_in_farkas_leaf,
        )

        for mask in range(64):
            self.translation_sign_assignments += 1
            if survivor_bits & (1 << mask):
                self.good_direction_masks += 1
                shape_digest = survivor_shape_by_mask[mask]
                self.farkas_shapes.add(shape_digest)
                self.farkas_shape_reuse_counts[shape_digest] += 1
                canonical_word, canonical_mask, sym_id = self.canonical_translation_choice(
                    word, mask
                )
                self.canonical_survivor_cases.add(
                    f"{word_key(canonical_word)}#{canonical_mask}"
                )
                if len(self.samples) < self.sample_limit:
                    self.samples.append({
                        "rank": rank,
                        "word": word_key(word),
                        "mask": mask,
                        "canonical_word": word_key(canonical_word),
                        "canonical_mask": canonical_mask,
                        "sym_id": sym_id,
                        "shape_digest": shape_digest,
                        "denominator_signature_digest": signature_digest,
                        "mask_tree_digest": stable_digest(tree.key),
                        "mask_tree_leaves": tree.leaf_count,
                        "max_denominator_degree": max_degree,
                    })
            else:
                self.denominator_nonpositive_masks += 1
                denoms, b, _seq = self.denominator_values_for_choice(word, mask, pref)
                if b == ZERO_VEC:
                    self.zero_vector_masks += 1
                elif all(denom > 0 for denom in denoms):
                    raise AssertionError("survivor bitset missed a GoodDirection mask")

    @staticmethod
    def planned_leaf_count(*trackers: DistinctTracker) -> tuple[int | None, int]:
        if any(tracker.exact_count is None for tracker in trackers):
            return None, max(tracker.lower_bound for tracker in trackers)
        return max(tracker.exact_count or 0 for tracker in trackers), max(
            tracker.lower_bound for tracker in trackers
        )

    def payload(self, *, elapsed_seconds: float) -> dict[str, Any]:
        planned_exact, planned_lower = self.planned_leaf_count(
            self.proof_tree_obligations,
            self.leaf_obligations,
        )
        accepted = planned_exact is not None and planned_exact <= self.max_lean_leaves
        within_warning = (
            planned_exact is not None and planned_exact <= self.warn_lean_leaves
        )
        return {
            "schema_version": 1,
            "mode": "translation-survivor-mask-tree-profile",
            "trusted_as_proof": False,
            "complete": self.limit is None,
            "profile_limit": self.limit,
            "elapsed_seconds": elapsed_seconds,
            "options": {
                "branch": "translation",
                "symmetry": "started-face D4" if self.use_d4_transport else "none",
                "max_lean_leaves": self.max_lean_leaves,
                "warn_lean_leaves": self.warn_lean_leaves,
                "progress_interval": self.progress_interval,
                "good_direction_impacts": "1..13",
                "emits_bad_direction_evidence": False,
                "denominator_model": (
                    "exact 64-mask truth tables; no linearity assumption"
                ),
            },
            "expected_counts": {
                "pair_words": EXPECTED_PAIR_WORDS,
                "identity_linear_words": EXPECTED_IDENTITY_WORDS,
                "translation_sign_assignments": EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS,
            },
            "actual_counts": {
                "pair_words_scanned": self.pair_words_scanned,
                "identity_linear_words": self.identity_words,
                "nonidentity_words_skipped": self.nonidentity_words_skipped,
                "translation_sign_assignments": self.translation_sign_assignments,
                "good_direction_survivor_masks": self.good_direction_masks,
                "denominator_nonpositive_masks": self.denominator_nonpositive_masks,
                "zero_translation_vector_masks": self.zero_vector_masks,
                "bad_direction_generated_evidence": 0,
            },
            "survivors": {
                "survivor_density": (
                    self.good_direction_masks / self.translation_sign_assignments
                    if self.translation_sign_assignments
                    else None
                ),
                "survivor_mask_histogram": dict(
                    sorted(self.survivor_mask_histogram.items())
                ),
                "denominator_degree_histogram": dict(
                    sorted(self.denominator_degree_histogram.items())
                ),
                "unique_denominator_signatures": self.denominator_signatures.payload(),
                "unique_survivor_bitsets": self.survivor_bitsets.payload(),
                "unique_survivor_shape_maps": self.survivor_shape_maps.payload(),
                "unique_normalized_farkas_shapes": self.farkas_shapes.payload(),
                "canonical_survivor_cases": self.canonical_survivor_cases.payload(),
                "farkas_shape_reuse": {
                    "shape_count": len(self.farkas_shape_reuse_counts),
                    "shared_shape_count": sum(
                        1 for count in self.farkas_shape_reuse_counts.values()
                        if count > 1
                    ),
                    "max_reuse": max(
                        self.farkas_shape_reuse_counts.values(),
                        default=0,
                    ),
                },
                "samples": self.samples,
            },
            "mask_tree": {
                "total_tree_leaves": self.total_tree_leaves,
                "total_bad_cube_leaves": self.total_bad_cube_leaves,
                "total_farkas_leaves": self.total_farkas_leaves,
                "total_branch_nodes": self.total_branch_nodes,
                "total_point_farkas_leaves": self.total_point_farkas_leaves,
                "max_tree_depth": self.max_tree_depth,
                "max_tree_leaves": self.max_tree_leaves,
                "max_masks_in_bad_cube": self.max_masks_in_bad_cube,
                "max_survivors_in_farkas_leaf": self.max_survivors_in_farkas_leaf,
                "tree_leaf_histogram": dict(sorted(self.tree_leaf_histogram.items())),
                "tree_depth_histogram": dict(sorted(self.tree_depth_histogram.items())),
                "max_survivors_per_farkas_leaf_histogram": dict(
                    sorted(self.max_survivors_per_farkas_leaf_histogram.items())
                ),
                "unique_structural_tree_shapes": self.mask_tree_shapes.payload(),
                "unique_signature_tree_obligations": (
                    self.proof_tree_obligations.payload()
                ),
                "unique_signature_leaf_obligations": self.leaf_obligations.payload(),
                "unique_bad_cube_leaf_shapes": self.bad_cube_leaf_shapes.payload(),
                "unique_farkas_leaf_shapes": self.farkas_leaf_shapes.payload(),
            },
            "decision": {
                "status": "profile",
                "accepted_for_phase_6h": accepted,
                "within_warning_gate": within_warning,
                "planned_lean_heavy_leaves_exact": planned_exact,
                "planned_lean_heavy_leaves_lower_bound": planned_lower,
                "notes": [
                    "This mode profiles mask-tree compression after GoodDirection.",
                    "It uses exact truth tables because denominator polynomials may be quadratic.",
                    "If signature-tree or leaf obligations remain above the gate, proceed to Phase 6I.",
                ],
            },
        }


class TranslationBadDirectionTreeProfiler:
    """Dry-run profiler for coarse translation bad-direction tiling.

    This mode does not emit Lean.  It tiles raw rank/mask cells that fail
    because some required translation impact denominator is nonpositive.  The
    tiling is intentionally rectangular so a future Lean emitter can target
    `TranslationCaseBox`-shaped evidence rather than one certificate per mask.
    """

    def __init__(
        self,
        *,
        limit: int | None,
        max_lean_leaves: int,
        warn_lean_leaves: int,
        sample_limit: int,
        progress_interval: int,
        audit_cell_cap: int = 2_000_000,
    ) -> None:
        self.target_hi = EXPECTED_PAIR_WORDS if limit is None else limit
        self.limit = limit
        self.max_lean_leaves = max_lean_leaves
        self.warn_lean_leaves = warn_lean_leaves
        self.sample_limit = sample_limit
        self.progress_interval = progress_interval
        self.audit_cell_cap = audit_cell_cap
        self.pair_words_scanned = 0
        self.identity_words = 0
        self.nonidentity_words_skipped = 0
        self.translation_sign_assignments = 0
        self.failure_counts: Counter[str] = Counter()
        self.bad_direction_by_impact: Counter[int] = Counter()
        self.row_patterns = DistinctTracker(100_000, sample_limit)
        self.open_tiles: dict[tuple[int, int, int], int] = {}
        self.tiles: list[dict[str, int]] = []
        self.tile_samples: list[dict[str, int]] = []
        self.max_rank_width = 0
        self.max_mask_width = 0
        self.bad_direction_cells = 0
        self.audit_bad_cells: set[tuple[int, int]] | None = set()
        self.audit_disabled_reason: str | None = None

    def first_bad_impact(self, seq: list[str], b: tuple) -> int | None:
        prefixes = path_prefix_affs(seq)
        for impact in range(1, 14):
            if impact_denom(seq, b, impact, prefixes) <= 0:
                return impact
        return None

    def classify_translation_case(
        self,
        word: tuple[str, ...],
        mask: int,
        pref: list,
    ) -> tuple[str, int | None]:
        b, seq = translation_vector(list(word), mask, pref)
        if b == ZERO_VEC:
            return "badTranslationVector", None
        bad_impact = self.first_bad_impact(seq, b)
        if bad_impact is not None:
            return "badDirectionSign", bad_impact
        return "needsFarkas", None

    def mask_runs(self, impacts_by_mask: list[int | None]) -> list[tuple[int, int, int]]:
        runs: list[tuple[int, int, int]] = []
        start: int | None = None
        impact: int | None = None
        for mask, current in enumerate(impacts_by_mask + [None]):
            if current is not None and start is None:
                start = mask
                impact = current
                continue
            if current is not None and current == impact:
                continue
            if start is not None and impact is not None:
                runs.append((start, mask, impact))
            if current is None:
                start = None
                impact = None
            else:
                start = mask
                impact = current
        return runs

    def record_bad_cell_for_audit(self, rank: int, mask: int) -> None:
        if self.audit_bad_cells is None:
            return
        if len(self.audit_bad_cells) >= self.audit_cell_cap:
            self.audit_disabled_reason = (
                f"bad-direction audit exceeded cap {self.audit_cell_cap}"
            )
            self.audit_bad_cells = None
            return
        self.audit_bad_cells.add((rank, mask))

    def finalize_tile(self, key: tuple[int, int, int], end_rank: int) -> None:
        start_rank = self.open_tiles.pop(key)
        start_mask, end_mask, impact = key
        if start_rank >= end_rank:
            return
        rank_width = end_rank - start_rank
        mask_width = end_mask - start_mask
        self.max_rank_width = max(self.max_rank_width, rank_width)
        self.max_mask_width = max(self.max_mask_width, mask_width)
        tile = {
            "start_rank": start_rank,
            "end_rank": end_rank,
            "start_mask": start_mask,
            "end_mask": end_mask,
            "impact": impact,
            "area": rank_width * mask_width,
        }
        self.tiles.append(tile)
        if len(self.tile_samples) < self.sample_limit:
            self.tile_samples.append(tile)

    def update_open_tiles(
        self,
        rank: int,
        runs: list[tuple[int, int, int]],
    ) -> None:
        active = set(runs)
        for key in list(self.open_tiles):
            if key not in active:
                self.finalize_tile(key, rank)
        for key in runs:
            self.open_tiles.setdefault(key, rank)

    def close_all_tiles(self, rank: int) -> None:
        for key in list(self.open_tiles):
            self.finalize_tile(key, rank)

    def classify_leaf(self, rank: int, word: tuple[str, ...], pref: list) -> None:
        self.pair_words_scanned += 1
        if self.progress_interval and self.pair_words_scanned % self.progress_interval == 0:
            print(f"profiled {self.pair_words_scanned:,} pair words", file=sys.stderr)
        matrix = mat_mul(pref[-1], RPAIR["x"])
        if matrix != IDENTITY:
            self.nonidentity_words_skipped += 1
            self.close_all_tiles(rank)
            return

        self.identity_words += 1
        impacts_by_mask: list[int | None] = []
        for mask in range(64):
            self.translation_sign_assignments += 1
            failure, impact = self.classify_translation_case(word, mask, pref)
            self.failure_counts[failure] += 1
            if failure == "badDirectionSign":
                if impact is None:
                    raise AssertionError("badDirectionSign without impact")
                impacts_by_mask.append(impact)
                self.bad_direction_by_impact[impact] += 1
                self.bad_direction_cells += 1
                self.record_bad_cell_for_audit(rank, mask)
            else:
                impacts_by_mask.append(None)

        runs = self.mask_runs(impacts_by_mask)
        self.row_patterns.add("|".join(f"{lo}-{hi}@{impact}" for lo, hi, impact in runs))
        self.update_open_tiles(rank, runs)

    def traverse(self) -> None:
        remaining = dict(PAIR_COUNTS)
        prefix: list[str] = []
        pref = [IDENTITY]

        def rec(rank_lo: int) -> None:
            block_width = multinomial_count(remaining)
            rank_hi = rank_lo + block_width
            if rank_lo >= self.target_hi:
                return
            if len(prefix) == 13:
                self.classify_leaf(rank_lo, tuple(prefix), list(pref))
                return
            child_lo = rank_lo
            for pair_id in PAIR_IDS:
                if remaining[pair_id] <= 0:
                    continue
                remaining[pair_id] -= 1
                child_width = multinomial_count(remaining)
                prefix.append(pair_id)
                pref.append(mat_mul(pref[-1], RPAIR[pair_id]))
                if child_lo < self.target_hi:
                    rec(child_lo)
                pref.pop()
                prefix.pop()
                remaining[pair_id] += 1
                child_lo += child_width
                if child_lo >= self.target_hi:
                    break

        rec(0)
        self.close_all_tiles(self.target_hi)

    def audit_payload(self) -> dict[str, Any]:
        tile_area = sum(tile["area"] for tile in self.tiles)
        payload: dict[str, Any] = {
            "bad_direction_cells": self.bad_direction_cells,
            "tile_area": tile_area,
            "area_matches_bad_direction_cells": tile_area == self.bad_direction_cells,
            "audit_exact": self.audit_bad_cells is not None,
            "audit_disabled_reason": self.audit_disabled_reason,
            "has_gaps": tile_area != self.bad_direction_cells,
            "has_overlaps": False,
        }
        if self.audit_bad_cells is not None:
            covered: set[tuple[int, int]] = set()
            overlaps = 0
            for tile in self.tiles:
                for rank in range(tile["start_rank"], tile["end_rank"]):
                    for mask in range(tile["start_mask"], tile["end_mask"]):
                        cell = (rank, mask)
                        if cell in covered:
                            overlaps += 1
                        covered.add(cell)
            missing = self.audit_bad_cells - covered
            extra = covered - self.audit_bad_cells
            payload.update({
                "covered_cells": len(covered),
                "missing_cells": len(missing),
                "extra_cells": len(extra),
                "overlap_cells": overlaps,
                "has_gaps": bool(missing),
                "has_overlaps": overlaps > 0 or bool(extra),
                "missing_samples": [
                    {"rank": rank, "mask": mask}
                    for rank, mask in sorted(missing)[: self.sample_limit]
                ],
                "extra_samples": [
                    {"rank": rank, "mask": mask}
                    for rank, mask in sorted(extra)[: self.sample_limit]
                ],
            })
        return payload

    def payload(
        self,
        *,
        elapsed_seconds: float,
        rejected: bool,
        reject_reasons: list[str],
    ) -> dict[str, Any]:
        tile_count = len(self.tiles)
        ratio = (
            self.bad_direction_cells / tile_count
            if tile_count > 0 else None
        )
        return {
            "schema_version": 1,
            "mode": "translation-baddir-tree-profile",
            "trusted_as_proof": False,
            "complete": self.limit is None and not rejected,
            "profile_limit": self.limit,
            "elapsed_seconds": elapsed_seconds,
            "options": {
                "branch": "translation.badDirectionSign",
                "symmetry": "raw rank/mask boxes; D4 transport not applied to boxes",
                "max_lean_leaves": self.max_lean_leaves,
                "warn_lean_leaves": self.warn_lean_leaves,
                "progress_interval": self.progress_interval,
                "cases_per_tile_ratio_min": 64.0,
                "audit_cell_cap": self.audit_cell_cap,
            },
            "expected_counts": {
                "pair_words": EXPECTED_PAIR_WORDS,
                "identity_linear_words": EXPECTED_IDENTITY_WORDS,
                "translation_sign_assignments": EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS,
            },
            "actual_counts": {
                "pair_words_scanned": self.pair_words_scanned,
                "identity_linear_words": self.identity_words,
                "nonidentity_words_skipped": self.nonidentity_words_skipped,
                "translation_sign_assignments": self.translation_sign_assignments,
            },
            "classification": {
                "translation_failure_counts": dict(sorted(self.failure_counts.items())),
                "bad_direction_by_impact": dict(sorted(self.bad_direction_by_impact.items())),
                "row_patterns": self.row_patterns.payload(),
            },
            "tiling": {
                "bad_direction_tiles": tile_count,
                "planned_lean_heavy_leaves": tile_count,
                "planned_lean_heavy_leaves_exact": tile_count,
                "max_rank_width": self.max_rank_width,
                "max_mask_width": self.max_mask_width,
                "cases_per_tile_ratio": ratio,
                "samples": self.tile_samples,
            },
            "audit": self.audit_payload(),
            "decision": {
                "status": "reject" if rejected else "pass",
                "reasons": reject_reasons,
            },
        }


@dataclass(frozen=True)
class TranslationBadDirectionCellLabel:
    kind: str
    impact: int | None = None

    def key(self) -> str:
        return f"{self.kind}:{self.impact if self.impact is not None else '-'}"


class TranslationBadDirectionFamilyTreeProfiler:
    """Dry-run profiler for non-rectangular translation bad-direction families.

    This mode is deliberately profiler-only.  It searches for symbolic
    `(pair-word prefix, mask-bit cube, impact)` families that cover many
    identity-linear translation choices with the same nonpositive impact
    denominator.  It does not emit Lean and it does not rely on the rejected
    raw rectangular rank/mask tiling.
    """

    def __init__(
        self,
        *,
        limit: int | None,
        max_lean_leaves: int,
        warn_lean_leaves: int,
        sample_limit: int,
        progress_interval: int,
        min_cells_per_family: int = 64,
        audit_cell_cap: int = 2_000_000,
    ) -> None:
        self.target_hi = EXPECTED_PAIR_WORDS if limit is None else limit
        self.limit = limit
        self.max_lean_leaves = max_lean_leaves
        self.warn_lean_leaves = warn_lean_leaves
        self.sample_limit = sample_limit
        self.progress_interval = progress_interval
        self.min_cells_per_family = min_cells_per_family
        self.audit_cell_cap = audit_cell_cap
        self.pair_words_scanned = 0
        self.identity_words = 0
        self.nonidentity_words_skipped = 0
        self.translation_sign_assignments = 0
        self.failure_counts: Counter[str] = Counter()
        self.bad_direction_by_impact: Counter[int] = Counter()
        self.identity_rank_labels: dict[int, tuple[TranslationBadDirectionCellLabel, ...]] = {}
        self.identity_rank_words: dict[int, tuple[str, ...]] = {}
        self.identity_ranks: list[int] = []
        self.family_count = 0
        self.family_cells = 0
        self.fallback_bad_direction_cells = 0
        self.max_prefix_width = 0
        self.max_mask_cube_size = 0
        self.max_family_cells = 0
        self.split_counts: Counter[str] = Counter()
        self.nodes_visited = 0
        self.nodes_by_depth: Counter[int] = Counter()
        self.samples: list[dict[str, Any]] = []
        self.fallback_samples: list[dict[str, Any]] = []
        self.audit_bad_cells: set[tuple[int, int]] | None = set()
        self.audit_family_cells: set[tuple[int, int]] | None = set()
        self.audit_fallback_cells: set[tuple[int, int]] | None = set()
        self.audit_disabled_reason: str | None = None

    def first_bad_impact(self, seq: list[str], b: tuple) -> int | None:
        prefixes = path_prefix_affs(seq)
        for impact in range(1, 14):
            if impact_denom(seq, b, impact, prefixes) <= 0:
                return impact
        return None

    def classify_translation_case(
        self,
        word: tuple[str, ...],
        mask: int,
        pref: list,
    ) -> TranslationBadDirectionCellLabel:
        b, seq = translation_vector(list(word), mask, pref)
        if b == ZERO_VEC:
            return TranslationBadDirectionCellLabel("badTranslationVector")
        bad_impact = self.first_bad_impact(seq, b)
        if bad_impact is not None:
            return TranslationBadDirectionCellLabel("badDirectionSign", bad_impact)
        return TranslationBadDirectionCellLabel("needsFarkas")

    @staticmethod
    def cube_masks(known_bits: int, value_bits: int) -> list[int]:
        masks: list[int] = []
        for mask in range(64):
            if (mask & known_bits) == (value_bits & known_bits):
                masks.append(mask)
        return masks

    @staticmethod
    def cube_size(known_bits: int) -> int:
        return 1 << (6 - known_bits.bit_count())

    def record_audit_cell(self, store_name: str, rank: int, mask: int) -> None:
        store = getattr(self, store_name)
        if store is None:
            return
        if len(store) >= self.audit_cell_cap:
            self.audit_disabled_reason = (
                f"symbolic bad-direction audit exceeded cap {self.audit_cell_cap}"
            )
            self.audit_bad_cells = None
            self.audit_family_cells = None
            self.audit_fallback_cells = None
            return
        store.add((rank, mask))

    def scan_leaf(self, rank: int, word: tuple[str, ...], pref: list) -> None:
        self.pair_words_scanned += 1
        if self.progress_interval and self.pair_words_scanned % self.progress_interval == 0:
            print(f"profiled {self.pair_words_scanned:,} pair words", file=sys.stderr)
        matrix = mat_mul(pref[-1], RPAIR["x"])
        if matrix != IDENTITY:
            self.nonidentity_words_skipped += 1
            return

        self.identity_words += 1
        self.identity_ranks.append(rank)
        self.identity_rank_words[rank] = word
        labels: list[TranslationBadDirectionCellLabel] = []
        for mask in range(64):
            self.translation_sign_assignments += 1
            label = self.classify_translation_case(word, mask, pref)
            labels.append(label)
            self.failure_counts[label.kind] += 1
            if label.kind == "badDirectionSign":
                if label.impact is None:
                    raise AssertionError("badDirectionSign without impact")
                self.bad_direction_by_impact[label.impact] += 1
                self.record_audit_cell("audit_bad_cells", rank, mask)
        self.identity_rank_labels[rank] = tuple(labels)

    def scan(self) -> None:
        remaining = dict(PAIR_COUNTS)
        prefix: list[str] = []
        pref = [IDENTITY]

        def rec(rank_lo: int) -> None:
            block_width = multinomial_count(remaining)
            if rank_lo >= self.target_hi:
                return
            if len(prefix) == 13:
                self.scan_leaf(rank_lo, tuple(prefix), list(pref))
                return
            child_lo = rank_lo
            for pair_id in PAIR_IDS:
                if remaining[pair_id] <= 0:
                    continue
                remaining[pair_id] -= 1
                child_width = multinomial_count(remaining)
                prefix.append(pair_id)
                pref.append(mat_mul(pref[-1], RPAIR[pair_id]))
                if child_lo < self.target_hi:
                    rec(child_lo)
                pref.pop()
                prefix.pop()
                remaining[pair_id] += 1
                child_lo += child_width
                if child_lo >= self.target_hi:
                    break

        rec(0)

    def labels_for(
        self,
        ranks: list[int],
        masks: list[int],
    ) -> Counter[TranslationBadDirectionCellLabel]:
        counts: Counter[TranslationBadDirectionCellLabel] = Counter()
        for rank in ranks:
            row = self.identity_rank_labels[rank]
            for mask in masks:
                counts[row[mask]] += 1
        return counts

    @staticmethod
    def impurity_from_counts(counts: Counter[TranslationBadDirectionCellLabel]) -> int:
        total = sum(counts.values())
        if total == 0:
            return 0
        return total - max(counts.values())

    def child_rank_blocks(
        self,
        *,
        rank_lo: int,
        prefix: list[str],
        remaining: dict[str, int],
        ranks: list[int],
    ) -> list[tuple[str, int, int, list[int]]]:
        out: list[tuple[str, int, int, list[int]]] = []
        child_lo = rank_lo
        rank_index = 0
        for pair_id in PAIR_IDS:
            if remaining[pair_id] <= 0:
                continue
            trial = dict(remaining)
            trial[pair_id] -= 1
            child_width = multinomial_count(trial)
            child_hi = child_lo + child_width
            while rank_index < len(ranks) and ranks[rank_index] < child_lo:
                rank_index += 1
            start = rank_index
            while rank_index < len(ranks) and ranks[rank_index] < child_hi:
                rank_index += 1
            child_ranks = ranks[start:rank_index]
            if child_ranks:
                out.append((pair_id, child_lo, child_hi, child_ranks))
            child_lo = child_hi
        return out

    def best_mask_split(
        self,
        ranks: list[int],
        known_bits: int,
        value_bits: int,
    ) -> tuple[int, int] | None:
        best: tuple[int, int] | None = None
        for bit in range(6):
            bit_mask = 1 << bit
            if known_bits & bit_mask:
                continue
            left_masks = self.cube_masks(known_bits | bit_mask, value_bits & ~bit_mask)
            right_masks = self.cube_masks(known_bits | bit_mask, value_bits | bit_mask)
            impurity = (
                self.impurity_from_counts(self.labels_for(ranks, left_masks)) +
                self.impurity_from_counts(self.labels_for(ranks, right_masks))
            )
            if best is None or impurity < best[1]:
                best = (bit, impurity)
        return best

    def rank_split_impurity(
        self,
        children: list[tuple[str, int, int, list[int]]],
        masks: list[int],
    ) -> int:
        return sum(
            self.impurity_from_counts(self.labels_for(child_ranks, masks))
            for _pair_id, _lo, _hi, child_ranks in children
        )

    def record_family(
        self,
        *,
        rank_lo: int,
        rank_hi: int,
        prefix: list[str],
        ranks: list[int],
        masks: list[int],
        known_bits: int,
        value_bits: int,
        impact: int,
    ) -> None:
        cells = len(ranks) * len(masks)
        self.family_count += 1
        self.family_cells += cells
        self.max_prefix_width = max(self.max_prefix_width, rank_hi - rank_lo)
        self.max_mask_cube_size = max(self.max_mask_cube_size, len(masks))
        self.max_family_cells = max(self.max_family_cells, cells)
        for rank in ranks:
            for mask in masks:
                self.record_audit_cell("audit_family_cells", rank, mask)
        if len(self.samples) < self.sample_limit:
            self.samples.append({
                "rank_lo": rank_lo,
                "rank_hi": rank_hi,
                "prefix": word_key(tuple(prefix)),
                "prefix_depth": len(prefix),
                "identity_rank_count": len(ranks),
                "known_bits": known_bits,
                "value_bits": value_bits & known_bits,
                "mask_count": len(masks),
                "impact": impact,
                "cells": cells,
            })

    def record_fallback(
        self,
        *,
        rank_lo: int,
        rank_hi: int,
        prefix: list[str],
        ranks: list[int],
        masks: list[int],
        reason: str,
    ) -> None:
        count = 0
        for rank in ranks:
            row = self.identity_rank_labels[rank]
            for mask in masks:
                if row[mask].kind == "badDirectionSign":
                    count += 1
                    self.record_audit_cell("audit_fallback_cells", rank, mask)
        self.fallback_bad_direction_cells += count
        if count > 0 and len(self.fallback_samples) < self.sample_limit:
            self.fallback_samples.append({
                "rank_lo": rank_lo,
                "rank_hi": rank_hi,
                "prefix": word_key(tuple(prefix)),
                "prefix_depth": len(prefix),
                "mask_count": len(masks),
                "bad_direction_cells": count,
                "reason": reason,
            })

    def compress_node(
        self,
        *,
        rank_lo: int,
        rank_hi: int,
        prefix: list[str],
        remaining: dict[str, int],
        ranks: list[int],
        known_bits: int,
        value_bits: int,
    ) -> None:
        self.nodes_visited += 1
        self.nodes_by_depth[len(prefix)] += 1
        if not ranks:
            return
        masks = self.cube_masks(known_bits, value_bits)
        if not masks:
            return
        counts = self.labels_for(ranks, masks)
        bad_count = sum(
            count for label, count in counts.items()
            if label.kind == "badDirectionSign"
        )
        if bad_count == 0:
            return
        if len(counts) == 1:
            label = next(iter(counts))
            cells = counts[label]
            if label.kind == "badDirectionSign" and cells >= self.min_cells_per_family:
                if label.impact is None:
                    raise AssertionError("uniform badDirectionSign without impact")
                self.record_family(
                    rank_lo=rank_lo,
                    rank_hi=rank_hi,
                    prefix=prefix,
                    ranks=ranks,
                    masks=masks,
                    known_bits=known_bits,
                    value_bits=value_bits,
                    impact=label.impact,
                )
            else:
                self.record_fallback(
                    rank_lo=rank_lo,
                    rank_hi=rank_hi,
                    prefix=prefix,
                    ranks=ranks,
                    masks=masks,
                    reason="uniform family below cell gate",
                )
            return

        children = (
            self.child_rank_blocks(
                rank_lo=rank_lo,
                prefix=prefix,
                remaining=remaining,
                ranks=ranks,
            )
            if len(prefix) < 13 else []
        )
        rank_impurity = (
            self.rank_split_impurity(children, masks) if children else None
        )
        mask_split = self.best_mask_split(ranks, known_bits, value_bits)
        mask_impurity = mask_split[1] if mask_split is not None else None

        split_kind: str | None = None
        if rank_impurity is not None and mask_impurity is not None:
            if rank_impurity < mask_impurity:
                split_kind = "rank"
            elif mask_impurity < rank_impurity:
                split_kind = "mask"
            else:
                split_kind = "rank" if len(ranks) >= len(masks) else "mask"
        elif rank_impurity is not None:
            split_kind = "rank"
        elif mask_impurity is not None:
            split_kind = "mask"

        if split_kind == "rank":
            self.split_counts["rank"] += 1
            for pair_id, child_lo, child_hi, child_ranks in children:
                next_remaining = dict(remaining)
                next_remaining[pair_id] -= 1
                self.compress_node(
                    rank_lo=child_lo,
                    rank_hi=child_hi,
                    prefix=prefix + [pair_id],
                    remaining=next_remaining,
                    ranks=child_ranks,
                    known_bits=known_bits,
                    value_bits=value_bits,
                )
            return

        if split_kind == "mask" and mask_split is not None:
            self.split_counts["mask"] += 1
            bit = mask_split[0]
            bit_mask = 1 << bit
            self.compress_node(
                rank_lo=rank_lo,
                rank_hi=rank_hi,
                prefix=prefix,
                remaining=remaining,
                ranks=ranks,
                known_bits=known_bits | bit_mask,
                value_bits=value_bits & ~bit_mask,
            )
            self.compress_node(
                rank_lo=rank_lo,
                rank_hi=rank_hi,
                prefix=prefix,
                remaining=remaining,
                ranks=ranks,
                known_bits=known_bits | bit_mask,
                value_bits=value_bits | bit_mask,
            )
            return

        self.record_fallback(
            rank_lo=rank_lo,
            rank_hi=rank_hi,
            prefix=prefix,
            ranks=ranks,
            masks=masks,
            reason="no remaining symbolic split",
        )

    def compress(self) -> None:
        self.identity_ranks.sort()
        self.compress_node(
            rank_lo=0,
            rank_hi=self.target_hi,
            prefix=[],
            remaining=dict(PAIR_COUNTS),
            ranks=list(self.identity_ranks),
            known_bits=0,
            value_bits=0,
        )

    def traverse(self) -> None:
        self.scan()
        self.compress()

    def audit_payload(self) -> dict[str, Any]:
        bad_total = self.failure_counts["badDirectionSign"]
        covered = self.family_cells
        fallback = self.fallback_bad_direction_cells
        payload: dict[str, Any] = {
            "bad_direction_cells": bad_total,
            "family_cells": covered,
            "fallback_bad_direction_cells": fallback,
            "covered_plus_fallback_cells": covered + fallback,
            "area_matches_bad_direction_cells": covered + fallback == bad_total,
            "audit_exact": (
                self.audit_bad_cells is not None and
                self.audit_family_cells is not None and
                self.audit_fallback_cells is not None
            ),
            "audit_disabled_reason": self.audit_disabled_reason,
            "has_gaps": covered + fallback != bad_total,
            "has_overlaps": False,
        }
        if (
            self.audit_bad_cells is not None and
            self.audit_family_cells is not None and
            self.audit_fallback_cells is not None
        ):
            overlap = self.audit_family_cells & self.audit_fallback_cells
            union = self.audit_family_cells | self.audit_fallback_cells
            missing = self.audit_bad_cells - union
            extra = union - self.audit_bad_cells
            payload.update({
                "missing_cells": len(missing),
                "extra_cells": len(extra),
                "overlap_cells": len(overlap),
                "has_gaps": bool(missing),
                "has_overlaps": bool(extra) or bool(overlap),
                "missing_samples": [
                    {"rank": rank, "mask": mask}
                    for rank, mask in sorted(missing)[: self.sample_limit]
                ],
                "extra_samples": [
                    {"rank": rank, "mask": mask}
                    for rank, mask in sorted(extra)[: self.sample_limit]
                ],
                "overlap_samples": [
                    {"rank": rank, "mask": mask}
                    for rank, mask in sorted(overlap)[: self.sample_limit]
                ],
            })
        return payload

    def payload(
        self,
        *,
        elapsed_seconds: float,
        rejected: bool,
        reject_reasons: list[str],
    ) -> dict[str, Any]:
        ratio = (
            self.family_cells / self.family_count
            if self.family_count > 0 else None
        )
        return {
            "schema_version": 1,
            "mode": "translation-baddir-family-tree-profile",
            "trusted_as_proof": False,
            "complete": self.limit is None and not rejected,
            "profile_limit": self.limit,
            "elapsed_seconds": elapsed_seconds,
            "options": {
                "branch": "translation.badDirectionSign",
                "symmetry": "symbolic prefix and mask-bit cubes; D4 transport not yet applied",
                "max_lean_leaves": self.max_lean_leaves,
                "warn_lean_leaves": self.warn_lean_leaves,
                "progress_interval": self.progress_interval,
                "min_cells_per_family": self.min_cells_per_family,
                "audit_cell_cap": self.audit_cell_cap,
            },
            "expected_counts": {
                "pair_words": EXPECTED_PAIR_WORDS,
                "identity_linear_words": EXPECTED_IDENTITY_WORDS,
                "translation_sign_assignments": EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS,
            },
            "actual_counts": {
                "pair_words_scanned": self.pair_words_scanned,
                "identity_linear_words": self.identity_words,
                "nonidentity_words_skipped": self.nonidentity_words_skipped,
                "translation_sign_assignments": self.translation_sign_assignments,
            },
            "classification": {
                "translation_failure_counts": dict(sorted(self.failure_counts.items())),
                "bad_direction_by_impact": dict(sorted(self.bad_direction_by_impact.items())),
            },
            "symbolic_tree": {
                "nodes_visited": self.nodes_visited,
                "nodes_by_depth": dict(sorted(self.nodes_by_depth.items())),
                "split_counts": dict(sorted(self.split_counts.items())),
                "symbolic_families": self.family_count,
                "planned_lean_heavy_leaves": self.family_count,
                "planned_lean_heavy_leaves_exact": self.family_count,
                "family_cells": self.family_cells,
                "average_cells_per_family": ratio,
                "max_family_cells": self.max_family_cells,
                "max_prefix_width": self.max_prefix_width,
                "max_mask_cube_size": self.max_mask_cube_size,
                "fallback_bad_direction_cells": self.fallback_bad_direction_cells,
                "samples": self.samples,
                "fallback_samples": self.fallback_samples,
            },
            "audit": self.audit_payload(),
            "decision": {
                "status": "reject" if rejected else "pass",
                "reasons": reject_reasons,
            },
        }


@dataclass(frozen=True)
class TranslationBadDirectionCommonImpactLabel:
    kind: str
    bad_mask: int = 0

    def key(self) -> str:
        return f"{self.kind}:{self.bad_mask}"


class TranslationBadDirectionCommonImpactTreeProfiler(
    TranslationBadDirectionFamilyTreeProfiler
):
    """Dry-run profiler for common-impact bad-direction families.

    A symbolic family is accepted when every cell in its prefix/mask domain has
    a common nonpositive impact denominator.  This relaxes the rejected Phase 6C
    "same first bad impact" rule while preserving a simple prospective Lean
    witness: one fixed impact index for the whole family.
    """

    ALL_IMPACTS_MASK = (1 << 13) - 1

    def __init__(self, **kwargs: Any) -> None:
        super().__init__(**kwargs)
        self.common_impact_counts: Counter[int] = Counter()

    @staticmethod
    def impact_bit(impact: int) -> int:
        if not (1 <= impact <= 13):
            raise ValueError(f"impact must be in 1..13, got {impact}")
        return 1 << (impact - 1)

    @staticmethod
    def first_impact_from_mask(mask: int) -> int:
        if mask == 0:
            raise ValueError("empty impact mask")
        return (mask & -mask).bit_length()

    def bad_impact_mask(self, seq: list[str], b: tuple) -> int:
        prefixes = path_prefix_affs(seq)
        mask = 0
        for impact in range(1, 14):
            if impact_denom(seq, b, impact, prefixes) <= 0:
                mask |= self.impact_bit(impact)
        return mask

    def classify_translation_case(
        self,
        word: tuple[str, ...],
        mask: int,
        pref: list,
    ) -> TranslationBadDirectionCommonImpactLabel:
        b, seq = translation_vector(list(word), mask, pref)
        if b == ZERO_VEC:
            return TranslationBadDirectionCommonImpactLabel("badTranslationVector")
        bad_mask = self.bad_impact_mask(seq, b)
        if bad_mask != 0:
            return TranslationBadDirectionCommonImpactLabel(
                "badDirectionSign", bad_mask
            )
        return TranslationBadDirectionCommonImpactLabel("needsFarkas")

    @staticmethod
    def impurity_from_counts(
        counts: Counter[TranslationBadDirectionCommonImpactLabel],
    ) -> int:
        total = sum(counts.values())
        if total == 0:
            return 0
        coverage_by_impact: Counter[int] = Counter()
        for label, count in counts.items():
            if label.kind != "badDirectionSign":
                continue
            for impact in range(1, 14):
                if label.bad_mask & TranslationBadDirectionCommonImpactTreeProfiler.impact_bit(impact):
                    coverage_by_impact[impact] += count
        best = max(coverage_by_impact.values(), default=0)
        return total - best

    def common_bad_mask(
        self,
        counts: Counter[TranslationBadDirectionCommonImpactLabel],
    ) -> int:
        if not counts:
            return 0
        mask = self.ALL_IMPACTS_MASK
        for label, count in counts.items():
            if count <= 0:
                continue
            if label.kind != "badDirectionSign":
                return 0
            mask &= label.bad_mask
            if mask == 0:
                return 0
        return mask

    def scan_leaf(self, rank: int, word: tuple[str, ...], pref: list) -> None:
        self.pair_words_scanned += 1
        if self.progress_interval and self.pair_words_scanned % self.progress_interval == 0:
            print(f"profiled {self.pair_words_scanned:,} pair words", file=sys.stderr)
        matrix = mat_mul(pref[-1], RPAIR["x"])
        if matrix != IDENTITY:
            self.nonidentity_words_skipped += 1
            return

        self.identity_words += 1
        self.identity_ranks.append(rank)
        self.identity_rank_words[rank] = word
        labels: list[TranslationBadDirectionCommonImpactLabel] = []
        for mask in range(64):
            self.translation_sign_assignments += 1
            label = self.classify_translation_case(word, mask, pref)
            labels.append(label)
            self.failure_counts[label.kind] += 1
            if label.kind == "badDirectionSign":
                for impact in range(1, 14):
                    if label.bad_mask & self.impact_bit(impact):
                        self.bad_direction_by_impact[impact] += 1
                self.record_audit_cell("audit_bad_cells", rank, mask)
        self.identity_rank_labels[rank] = tuple(labels)

    def record_family(
        self,
        *,
        rank_lo: int,
        rank_hi: int,
        prefix: list[str],
        ranks: list[int],
        masks: list[int],
        known_bits: int,
        value_bits: int,
        impact: int,
    ) -> None:
        self.common_impact_counts[impact] += 1
        super().record_family(
            rank_lo=rank_lo,
            rank_hi=rank_hi,
            prefix=prefix,
            ranks=ranks,
            masks=masks,
            known_bits=known_bits,
            value_bits=value_bits,
            impact=impact,
        )

    def compress_node(
        self,
        *,
        rank_lo: int,
        rank_hi: int,
        prefix: list[str],
        remaining: dict[str, int],
        ranks: list[int],
        known_bits: int,
        value_bits: int,
    ) -> None:
        self.nodes_visited += 1
        self.nodes_by_depth[len(prefix)] += 1
        if not ranks:
            return
        masks = self.cube_masks(known_bits, value_bits)
        if not masks:
            return
        counts = self.labels_for(ranks, masks)
        bad_count = sum(
            count for label, count in counts.items()
            if label.kind == "badDirectionSign"
        )
        if bad_count == 0:
            return

        common_mask = self.common_bad_mask(counts)
        cells = sum(counts.values())
        if common_mask != 0:
            if cells >= self.min_cells_per_family:
                self.record_family(
                    rank_lo=rank_lo,
                    rank_hi=rank_hi,
                    prefix=prefix,
                    ranks=ranks,
                    masks=masks,
                    known_bits=known_bits,
                    value_bits=value_bits,
                    impact=self.first_impact_from_mask(common_mask),
                )
            else:
                self.record_fallback(
                    rank_lo=rank_lo,
                    rank_hi=rank_hi,
                    prefix=prefix,
                    ranks=ranks,
                    masks=masks,
                    reason="common-impact family below cell gate",
                )
            return

        children = (
            self.child_rank_blocks(
                rank_lo=rank_lo,
                prefix=prefix,
                remaining=remaining,
                ranks=ranks,
            )
            if len(prefix) < 13 else []
        )
        rank_impurity = (
            self.rank_split_impurity(children, masks) if children else None
        )
        mask_split = self.best_mask_split(ranks, known_bits, value_bits)
        mask_impurity = mask_split[1] if mask_split is not None else None

        split_kind: str | None = None
        if rank_impurity is not None and mask_impurity is not None:
            if rank_impurity < mask_impurity:
                split_kind = "rank"
            elif mask_impurity < rank_impurity:
                split_kind = "mask"
            else:
                split_kind = "rank" if len(ranks) >= len(masks) else "mask"
        elif rank_impurity is not None:
            split_kind = "rank"
        elif mask_impurity is not None:
            split_kind = "mask"

        if split_kind == "rank":
            self.split_counts["rank"] += 1
            for pair_id, child_lo, child_hi, child_ranks in children:
                next_remaining = dict(remaining)
                next_remaining[pair_id] -= 1
                self.compress_node(
                    rank_lo=child_lo,
                    rank_hi=child_hi,
                    prefix=prefix + [pair_id],
                    remaining=next_remaining,
                    ranks=child_ranks,
                    known_bits=known_bits,
                    value_bits=value_bits,
                )
            return

        if split_kind == "mask" and mask_split is not None:
            self.split_counts["mask"] += 1
            bit = mask_split[0]
            bit_mask = 1 << bit
            self.compress_node(
                rank_lo=rank_lo,
                rank_hi=rank_hi,
                prefix=prefix,
                remaining=remaining,
                ranks=ranks,
                known_bits=known_bits | bit_mask,
                value_bits=value_bits & ~bit_mask,
            )
            self.compress_node(
                rank_lo=rank_lo,
                rank_hi=rank_hi,
                prefix=prefix,
                remaining=remaining,
                ranks=ranks,
                known_bits=known_bits | bit_mask,
                value_bits=value_bits | bit_mask,
            )
            return

        self.record_fallback(
            rank_lo=rank_lo,
            rank_hi=rank_hi,
            prefix=prefix,
            ranks=ranks,
            masks=masks,
            reason="no remaining common-impact split",
        )

    def payload(
        self,
        *,
        elapsed_seconds: float,
        rejected: bool,
        reject_reasons: list[str],
    ) -> dict[str, Any]:
        payload = super().payload(
            elapsed_seconds=elapsed_seconds,
            rejected=rejected,
            reject_reasons=reject_reasons,
        )
        payload["mode"] = "translation-baddir-common-impact-tree-profile"
        payload["options"]["symmetry"] = (
            "common-impact prefix and mask-bit cubes; D4 transport not yet applied"
        )
        payload["options"]["family_rule"] = (
            "all cells in a family share at least one nonpositive impact denominator"
        )
        payload["classification"]["bad_direction_by_impact"] = dict(
            sorted(self.bad_direction_by_impact.items())
        )
        payload["symbolic_tree"]["common_impact_family_counts"] = dict(
            sorted(self.common_impact_counts.items())
        )
        return payload


class SymmetryCompressionProfiler:
    def __init__(
        self,
        *,
        limit: int | None,
        max_lean_leaves: int,
        warn_lean_leaves: int,
        max_distinct_tracked: int,
        sample_limit: int,
        progress_interval: int,
    ) -> None:
        self.target_hi = EXPECTED_PAIR_WORDS if limit is None else limit
        self.limit = limit
        self.max_lean_leaves = max_lean_leaves
        self.warn_lean_leaves = warn_lean_leaves
        self.sample_limit = sample_limit
        self.progress_interval = progress_interval
        self.prefix_nodes = 0
        self.prefix_nodes_by_depth: Counter[int] = Counter()
        self.unique_canonical_prefixes_by_depth: dict[int, DistinctTracker] = {
            depth: DistinctTracker(max_distinct_tracked, sample_limit) for depth in range(14)
        }
        self.canonical_prefix_nodes = 0
        self.noncanonical_prefix_nodes = 0
        self.max_depth = 0
        self.pair_words = 0
        self.identity_words = 0
        self.nonidentity_words = 0
        self.translation_sign_assignments = 0
        self.nonidentity_canonical_words = DistinctTracker(max_distinct_tracked, sample_limit)
        self.translation_canonical_choices = DistinctTracker(max_distinct_tracked, sample_limit)
        self.heavy_families = DistinctTracker(max_distinct_tracked, sample_limit)
        self.nonidentity_family_shapes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.nonidentity_bad_direction_shapes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.nonidentity_bad_balance_shapes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.nonidentity_residual_shapes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.farkas_shapes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.farkas_shape_reuse_counts: Counter[str] = Counter()
        self.farkas_shape_reuse_samples: dict[str, dict[str, Any]] = {}
        self.failure_counts: Counter[str] = Counter()
        self.nonidentity_failure_counts: Counter[str] = Counter()
        self.translation_failure_counts: Counter[str] = Counter()
        self.translation_mask_orbit_histogram: Counter[int] = Counter()
        self.pair_word_orbit_histogram: Counter[int] = Counter()
        self.tiles = TileAccumulator(self.target_hi, sample_limit)

    def canonical_prefix(self, prefix: tuple[str, ...]) -> tuple[str, ...]:
        canonical, _ = canonical_word_with_symmetry(prefix)
        return canonical

    def record_prefix(self, prefix: tuple[str, ...], lo: int, hi: int) -> None:
        _ = lo, hi
        depth = len(prefix)
        self.prefix_nodes += 1
        self.prefix_nodes_by_depth[depth] += 1
        self.max_depth = max(self.max_depth, depth)
        canonical = self.canonical_prefix(prefix)
        self.unique_canonical_prefixes_by_depth[depth].add(word_key(canonical))
        if canonical == prefix:
            self.canonical_prefix_nodes += 1
        else:
            self.noncanonical_prefix_nodes += 1
        if depth == 13:
            orbit = {tuple(sym_word(sym, list(prefix))) for sym in STARTED_SYMS}
            self.pair_word_orbit_histogram[len(orbit)] += 1

    @lru_cache(maxsize=200_000)
    def classify_nonidentity_canonical(self, word: tuple[str, ...]) -> tuple[str, str]:
        raw_word = list(word)
        pref = prefix_matrices(raw_word)
        matrix = mat_mul(pref[-1], RPAIR["x"])
        matrix_text = mat_key(matrix)
        try:
            axis = one_dimensional_fixed_axis(matrix)
        except ValueError:
            return "noFixedAxis", f"nonid|noFixedAxis|M={matrix_text}"

        final_dot = final_axis_dot(raw_word, axis, pref)
        if final_dot < 0:
            axis = (-axis[0], -axis[1], -axis[2])
            final_dot = -final_dot
        sign_pattern = sign_pattern_key(raw_word, axis, pref)
        if final_dot == 0:
            return (
                "badDirectionSign",
                "nonid|badDirectionSign"
                f"|M={matrix_text}|axis={vec_key(axis)}|signs={sign_pattern}|zeroAt=final",
            )
        zero_index = first_axis_zero_index(raw_word, axis, pref)
        if zero_index is not None:
            return (
                "badDirectionSign",
                "nonid|badDirectionSign"
                f"|M={matrix_text}|axis={vec_key(axis)}|signs={sign_pattern}"
                f"|zeroAt={zero_index}|remaining={counts_key(remaining_counts_after(raw_word, zero_index))}",
            )
        forced_seq = forced_sequence_from_axis(raw_word, axis, pref)
        if len(set(forced_seq)) != 14:
            return (
                "badPairBalance",
                "nonid|badPairBalance"
                f"|M={matrix_text}|axis={vec_key(axis)}|signs={sign_pattern}"
                f"|seq={seq_key(forced_seq)}",
            )
        return (
            "needsAxisSolveOrSimulation",
            "nonid|needsAxisSolveOrSimulation"
            f"|M={matrix_text}|axis={vec_key(axis)}|signs={sign_pattern}"
            f"|seq={seq_key(forced_seq)}",
        )

    @lru_cache(maxsize=200_000)
    def classify_translation_canonical(self, word: tuple[str, ...], mask: int) -> tuple[str, str, str | None]:
        raw_word = list(word)
        pref = prefix_matrices(raw_word)
        b, seq = translation_vector(raw_word, mask, pref)
        prefixes = path_prefix_affs(seq)
        b_text = vec_key(b)
        seq_text = seq_key(seq)
        denom_pattern = denom_pattern_key(seq, b, prefixes)
        base = f"trans|b={b_text}|seq={seq_text}|denoms={denom_pattern}"
        if b == ZERO_VEC:
            return "badTranslationVector", f"{base}|badTranslationVector", None
        if any(impact_denom(seq, b, impact, prefixes) <= 0 for impact in range(1, 14)):
            return "badDirectionSign", f"{base}|badDirectionSign", None
        shape = normalized_constraints_key(translation_constraints(seq, b))
        shape_digest = stable_digest(shape)
        return "needsFarkas", f"{base}|needsFarkas|shape={shape_digest}", shape

    def classify_leaf(self, rank: int, word: tuple[str, ...], pref: list) -> None:
        self.pair_words += 1
        if self.progress_interval and self.pair_words % self.progress_interval == 0:
            print(f"profiled {self.pair_words:,} pair words", file=sys.stderr)
        matrix = mat_mul(pref[-1], RPAIR["x"])
        if matrix != IDENTITY:
            self.nonidentity_words += 1
            canonical_word, sym_id = canonical_word_with_symmetry(word)
            self.nonidentity_canonical_words.add(word_key(canonical_word))
            failure, family_key = self.classify_nonidentity_canonical(canonical_word)
            transported_family_key = f"sym={sym_id}|{family_key}"
            self.nonidentity_failure_counts[failure] += 1
            self.failure_counts[f"nonidentity.{failure}"] += 1
            self.heavy_families.add(family_key)
            self.nonidentity_family_shapes.add(family_key)
            if failure == "badDirectionSign":
                self.nonidentity_bad_direction_shapes.add(family_key)
            elif failure == "badPairBalance":
                self.nonidentity_bad_balance_shapes.add(family_key)
            else:
                self.nonidentity_residual_shapes.add(family_key)
            self.tiles.add(rank, rank + 1, "nonidentity", transported_family_key)
            return

        self.identity_words += 1
        canonical_pair_word, sym_id = canonical_word_with_symmetry(word)
        mask_family_digests: list[str] = []
        raw_orbit_sizes: list[int] = []
        for mask in range(64):
            self.translation_sign_assignments += 1
            canonical_word, canonical_mask, mask_sym_id = canonical_translation_with_symmetry(word, mask)
            self.translation_canonical_choices.add(f"{word_key(canonical_word)}#{canonical_mask}")
            orbit = {
                (tuple(transported_word), transported_choice)
                for sym in STARTED_SYMS
                for transported_word, transported_choice in [transported_mask(sym, list(word), mask)]
            }
            raw_orbit_sizes.append(len(orbit))
            failure, family_key, shape = self.classify_translation_canonical(canonical_word, canonical_mask)
            transported_family_key = f"sym={mask_sym_id}|mask={canonical_mask}|{family_key}"
            self.translation_failure_counts[failure] += 1
            self.failure_counts[f"translation.{failure}"] += 1
            if shape is None:
                self.heavy_families.add(family_key)
            else:
                self.heavy_families.add(f"farkasShape|{stable_digest(shape)}")
            mask_family_digests.append(stable_digest(transported_family_key))
            if shape is not None:
                self.farkas_shapes.add(shape)
                shape_digest = stable_digest(shape)
                self.farkas_shape_reuse_counts[shape_digest] += 1
                self.farkas_shape_reuse_samples.setdefault(shape_digest, {
                    "shape_digest": shape_digest,
                    "raw_rank": rank,
                    "raw_word": word_key(word),
                    "raw_mask": mask,
                    "canonical_word": word_key(canonical_word),
                    "canonical_mask": canonical_mask,
                    "failure_key_digest": stable_digest(family_key),
                })
        for size in raw_orbit_sizes:
            self.translation_mask_orbit_histogram[size] += 1
        rank_family_key = (
            f"translationRank|sym={sym_id}|word={word_key(canonical_pair_word)}"
            f"|maskFamilies={stable_digest('|'.join(sorted(mask_family_digests)))}"
        )
        self.tiles.add(rank, rank + 1, "translation", rank_family_key)

    def traverse(self) -> None:
        remaining = dict(PAIR_COUNTS)
        prefix: list[str] = []
        pref = [IDENTITY]

        def rec(rank_lo: int) -> None:
            block_width = multinomial_count(remaining)
            rank_hi = rank_lo + block_width
            if rank_lo >= self.target_hi:
                return
            clipped_hi = min(rank_hi, self.target_hi)
            self.record_prefix(tuple(prefix), rank_lo, clipped_hi)
            if len(prefix) == 13:
                self.classify_leaf(rank_lo, tuple(prefix), list(pref))
                return
            child_lo = rank_lo
            for pair_id in PAIR_IDS:
                if remaining[pair_id] <= 0:
                    continue
                remaining[pair_id] -= 1
                child_width = multinomial_count(remaining)
                prefix.append(pair_id)
                pref.append(mat_mul(pref[-1], RPAIR[pair_id]))
                if child_lo < self.target_hi:
                    rec(child_lo)
                pref.pop()
                prefix.pop()
                remaining[pair_id] += 1
                child_lo += child_width
                if child_lo >= self.target_hi:
                    break

        rec(0)

    def farkas_shape_reuse_payload(self) -> dict[str, Any]:
        total = sum(self.farkas_shape_reuse_counts.values())
        shared = sorted(
            (
                (digest, count)
                for digest, count in self.farkas_shape_reuse_counts.items()
                if count > 1
            ),
            key=lambda item: (-item[1], item[0]),
        )
        sample_shared_shapes: list[dict[str, Any]] = []
        for digest, count in shared[: self.sample_limit]:
            sample = dict(self.farkas_shape_reuse_samples.get(digest, {}))
            sample["shape_digest"] = digest
            sample["count"] = count
            sample_shared_shapes.append(sample)
        return {
            "needs_farkas_cases": total,
            "shape_count": len(self.farkas_shape_reuse_counts),
            "shared_shape_count": len(shared),
            "max_reuse": max(self.farkas_shape_reuse_counts.values(), default=0),
            "sample_shared_shapes": sample_shared_shapes,
        }

    def build_payload(self, *, elapsed_seconds: float, rejected: bool, reject_reasons: list[str]) -> dict[str, Any]:
        unique_prefix_payload = {
            str(depth): tracker.payload()
            for depth, tracker in self.unique_canonical_prefixes_by_depth.items()
            if self.prefix_nodes_by_depth[depth] > 0
        }
        planned_heavy_leaves = self.heavy_families.exact_count
        planned_heavy_lower = self.heavy_families.lower_bound
        return {
            "schema_version": 1,
            "mode": "symmetry-compression-profile",
            "trusted_as_proof": False,
            "complete": self.limit is None and not rejected,
            "profile_limit": self.limit,
            "elapsed_seconds": elapsed_seconds,
            "options": {
                "symmetry": "started-face D4",
                "reversal_enabled": False,
                "max_lean_leaves": self.max_lean_leaves,
                "warn_lean_leaves": self.warn_lean_leaves,
                "progress_interval": self.progress_interval,
            },
            "expected_counts": {
                "pair_words": EXPECTED_PAIR_WORDS,
                "identity_linear_words": EXPECTED_IDENTITY_WORDS,
                "translation_sign_assignments": EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS,
            },
            "actual_counts": {
                "pair_words": self.pair_words,
                "identity_linear_words": self.identity_words,
                "nonidentity_words": self.nonidentity_words,
                "translation_sign_assignments": self.translation_sign_assignments,
            },
            "prefix": {
                "nodes_visited": self.prefix_nodes,
                "nodes_by_depth": dict(sorted(self.prefix_nodes_by_depth.items())),
                "max_depth": self.max_depth,
                "canonical_prefixes_seen": self.canonical_prefix_nodes,
                "canonical_prefix_nodes": self.canonical_prefix_nodes,
                "noncanonical_prefix_nodes_transported": self.noncanonical_prefix_nodes,
                "noncanonical_prefixes_transported": self.noncanonical_prefix_nodes,
                "unique_canonical_prefixes_by_depth": unique_prefix_payload,
                "canonical_dead_prefixes": 0,
                "canonical_depth13_residuals": self.nonidentity_words + self.identity_words,
                "prefix_pruning_note": (
                    "Phase 3 profiler applies no speculative prefix kills; unsupported "
                    "prefixes are classified exactly at depth 13."
                ),
            },
            "d4": {
                "pair_word_orbit_histogram": dict(sorted(self.pair_word_orbit_histogram.items())),
                "translation_mask_orbit_histogram": dict(sorted(self.translation_mask_orbit_histogram.items())),
                "canonical_pair_words": self.nonidentity_canonical_words.payload(),
                "canonical_translation_choices": self.translation_canonical_choices.payload(),
            },
            "classification": {
                "failure_counts": dict(sorted(self.failure_counts.items())),
                "nonidentity_failure_counts": dict(sorted(self.nonidentity_failure_counts.items())),
                "translation_failure_counts": dict(sorted(self.translation_failure_counts.items())),
                "identity_linear_words": self.identity_words,
                "nonidentity_family_shapes": self.nonidentity_family_shapes.payload(),
                "bad_direction_family_candidates": self.nonidentity_bad_direction_shapes.payload(),
                "bad_balance_family_candidates": self.nonidentity_bad_balance_shapes.payload(),
                "residual_family_shapes": self.nonidentity_residual_shapes.payload(),
                "nonidentity_planned_heavy_leaves":
                    self.nonidentity_family_shapes.exact_count
                    if self.nonidentity_family_shapes.exact_count is not None
                    else f">{self.nonidentity_family_shapes.lower_bound - 1}",
                "translation_cases_after_symmetry": self.translation_canonical_choices.payload(),
                "unique_normalized_farkas_shapes": self.farkas_shapes.payload(),
                "farkas_shape_reuse": self.farkas_shape_reuse_payload(),
            },
            "tiling": {
                **self.tiles.payload(),
                "sum_hi_minus_lo": self.tiles.covered_width,
                "planned_lean_heavy_leaves_exact": planned_heavy_leaves,
                "planned_lean_heavy_leaves_lower_bound": planned_heavy_lower,
                "planned_lean_heavy_leaves": planned_heavy_leaves
                if planned_heavy_leaves is not None
                else f">{planned_heavy_lower - 1}",
                "heavy_families": self.heavy_families.payload(),
            },
            "decision": {
                "status": "reject" if rejected else "pass",
                "reasons": reject_reasons,
            },
        }


def validate_options(args: argparse.Namespace) -> None:
    if not args.dry_run:
        raise SystemExit("Phase 3 only supports --dry-run; Lean emission belongs to a later phase")
    mode_count = sum([
        bool(args.prefix_kill_tree),
        bool(args.translation_farkas_tree),
        bool(args.translation_baddir_tree),
        bool(args.translation_baddir_family_tree),
        bool(args.translation_baddir_common_impact_tree),
        bool(args.translation_survivors),
        bool(args.translation_survivor_mask_tree),
    ])
    if mode_count > 1:
        raise SystemExit(
            "--prefix-kill-tree, --translation-farkas-tree, "
            "--translation-baddir-tree, --translation-baddir-family-tree, "
            "--translation-baddir-common-impact-tree, and "
            "--translation-survivors, and --translation-survivor-mask-tree "
            "are mutually exclusive"
        )
    if args.limit is not None and not (0 <= args.limit <= EXPECTED_PAIR_WORDS):
        raise SystemExit(f"--limit must be between 0 and {EXPECTED_PAIR_WORDS}")
    if args.max_lean_leaves <= 0:
        raise SystemExit("--max-lean-leaves must be positive")
    if args.warn_lean_leaves <= 0:
        raise SystemExit("--warn-lean-leaves must be positive")
    if args.sample_limit < 0:
        raise SystemExit("--sample-limit must be nonnegative")
    if args.max_distinct_tracked <= args.max_lean_leaves:
        raise SystemExit("--max-distinct-tracked must be greater than --max-lean-leaves")
    if args.max_prefix_probe_ranks <= 0:
        raise SystemExit("--max-prefix-probe-ranks must be positive")
    if args.max_residual_leaf_width < 0:
        raise SystemExit("--max-residual-leaf-width must be nonnegative")
    if not (0 <= args.min_residual_depth <= 13):
        raise SystemExit("--min-residual-depth must be between 0 and 13")


def decision_reasons(profiler: SymmetryCompressionProfiler) -> tuple[bool, list[str]]:
    reasons: list[str] = []
    coverage = profiler.tiles.payload()
    if coverage["covered_width"] != profiler.target_hi:
        reasons.append(
            f"covered width {coverage['covered_width']} does not match target {profiler.target_hi}"
        )
    if coverage["has_gaps"]:
        reasons.append("rank coverage has gaps")
    if coverage["has_overlaps"]:
        reasons.append("rank coverage has overlaps")
    reuse = profiler.farkas_shape_reuse_payload()
    if reuse["needs_farkas_cases"] > 0 and reuse["shared_shape_count"] == 0:
        reasons.append("no reused normalized Farkas shape observed in bounded sample")
    heavy_exact = profiler.heavy_families.exact_count
    heavy_lower = profiler.heavy_families.lower_bound
    if profiler.limit is None:
        if heavy_exact is None:
            reasons.append(
                "planned Lean heavy leaves exceeded tracking cap "
                f"(lower bound {heavy_lower})"
            )
        elif heavy_exact > profiler.max_lean_leaves:
            reasons.append(
                f"planned Lean heavy leaves {heavy_exact} exceed max {profiler.max_lean_leaves}"
            )
        elif heavy_exact > profiler.warn_lean_leaves:
            reasons.append(
                f"warning: planned Lean heavy leaves {heavy_exact} exceed warning threshold "
                f"{profiler.warn_lean_leaves}"
            )
        if profiler.pair_words != EXPECTED_PAIR_WORDS:
            reasons.append(
                f"pair-word count {profiler.pair_words} does not match expected {EXPECTED_PAIR_WORDS}"
            )
        if profiler.identity_words != EXPECTED_IDENTITY_WORDS:
            reasons.append(
                "identity-linear count "
                f"{profiler.identity_words} does not match expected {EXPECTED_IDENTITY_WORDS}"
            )
        if profiler.translation_sign_assignments != EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS:
            reasons.append(
                "translation sign-assignment count "
                f"{profiler.translation_sign_assignments} does not match expected "
                f"{EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS}"
            )
    rejected = any(not reason.startswith("warning:") for reason in reasons)
    return rejected, reasons


def prefix_kill_decision_reasons(
    profiler: PrefixKillTreeProfiler,
) -> tuple[bool, list[str]]:
    reasons: list[str] = []
    coverage = profiler.tiles.payload()
    if coverage["covered_width"] != profiler.target_hi:
        reasons.append(
            f"covered width {coverage['covered_width']} does not match target {profiler.target_hi}"
        )
    if coverage["has_gaps"]:
        reasons.append("rank coverage has gaps")
    if coverage["has_overlaps"]:
        reasons.append("rank coverage has overlaps")
    heavy_exact = profiler.heavy_families.exact_count
    heavy_lower = profiler.heavy_families.lower_bound
    if heavy_exact is None:
        reasons.append(
            "planned Lean heavy leaves exceeded tracking cap "
            f"(lower bound {heavy_lower})"
        )
    elif heavy_exact > profiler.max_lean_leaves:
        reasons.append(
            f"planned Lean heavy leaves {heavy_exact} exceed max {profiler.max_lean_leaves}"
        )
    elif heavy_exact > profiler.warn_lean_leaves:
        reasons.append(
            f"warning: planned Lean heavy leaves {heavy_exact} exceed warning threshold "
            f"{profiler.warn_lean_leaves}"
        )
    residual_ratio = (
        profiler.residual_fallback_width / profiler.target_hi
        if profiler.target_hi > 0 else 0
    )
    if residual_ratio > 0.10:
        reasons.append(
            "residual fallback rank ratio "
            f"{residual_ratio:.3f} exceeds max 0.100"
        )
    if profiler.max_prefix_kill_width <= 3 and profiler.target_hi >= 5000:
        reasons.append(
            "largest prefix kill width is still at most 3; prefix templates are too weak"
        )
    rejected = any(not reason.startswith("warning:") for reason in reasons)
    return rejected, reasons


def translation_farkas_decision_reasons(
    profiler: TranslationFarkasTreeProfiler,
) -> tuple[bool, list[str]]:
    reasons: list[str] = []
    coverage = profiler.tiles.payload()
    if coverage["covered_width"] != profiler.target_hi:
        reasons.append(
            f"covered width {coverage['covered_width']} does not match target {profiler.target_hi}"
        )
    if coverage["has_gaps"]:
        reasons.append("rank coverage has gaps")
    if coverage["has_overlaps"]:
        reasons.append("rank coverage has overlaps")
    if profiler.identity_words == 0:
        reasons.append("bounded profile saw no identity-linear translation ranks")

    heavy_exact = profiler.heavy_families.exact_count
    heavy_lower = profiler.heavy_families.lower_bound
    if heavy_exact is None:
        reasons.append(
            "planned Lean heavy leaves exceeded tracking cap "
            f"(lower bound {heavy_lower})"
        )
    elif heavy_exact > profiler.max_lean_leaves:
        reasons.append(
            f"planned Lean heavy leaves {heavy_exact} exceed max {profiler.max_lean_leaves}"
        )
    elif heavy_exact > profiler.warn_lean_leaves:
        reasons.append(
            f"warning: planned Lean heavy leaves {heavy_exact} exceed warning threshold "
            f"{profiler.warn_lean_leaves}"
        )

    reuse = profiler.farkas_shape_reuse_payload()
    if reuse["needs_farkas_cases"] > 0 and reuse["shared_shape_count"] == 0:
        reasons.append("no reused normalized Farkas shape observed in bounded sample")
    if reuse["needs_farkas_cases"] > 0 and reuse["max_reuse"] < 2:
        reasons.append("normalized Farkas shape sharing is too weak: max reuse is below 2")

    if heavy_exact not in {None, 0}:
        compression = profiler.translation_sign_assignments / heavy_exact
        if compression < 8.0:
            reasons.append(
                "case-to-heavy-leaf compression ratio "
                f"{compression:.3f} is below the D4-scale gate 8.000"
            )

    if profiler.limit is None:
        if profiler.pair_words_scanned != EXPECTED_PAIR_WORDS:
            reasons.append(
                f"pair-word count {profiler.pair_words_scanned} does not match expected "
                f"{EXPECTED_PAIR_WORDS}"
            )
        if profiler.identity_words != EXPECTED_IDENTITY_WORDS:
            reasons.append(
                "identity-linear count "
                f"{profiler.identity_words} does not match expected {EXPECTED_IDENTITY_WORDS}"
            )
        if profiler.translation_sign_assignments != EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS:
            reasons.append(
                "translation sign-assignment count "
                f"{profiler.translation_sign_assignments} does not match expected "
                f"{EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS}"
            )

    rejected = any(not reason.startswith("warning:") for reason in reasons)
    return rejected, reasons


def translation_baddir_decision_reasons(
    profiler: TranslationBadDirectionTreeProfiler,
) -> tuple[bool, list[str]]:
    reasons: list[str] = []
    audit = profiler.audit_payload()
    tile_count = len(profiler.tiles)
    if profiler.pair_words_scanned != profiler.target_hi:
        reasons.append(
            f"pair words scanned {profiler.pair_words_scanned} does not match target "
            f"{profiler.target_hi}"
        )
    if profiler.identity_words == 0:
        reasons.append("bounded profile saw no identity-linear translation ranks")
    if profiler.bad_direction_cells == 0:
        reasons.append("bounded profile saw no bad-direction translation cells")
    if audit["has_gaps"]:
        reasons.append("bad-direction tiling has gaps")
    if audit["has_overlaps"]:
        reasons.append("bad-direction tiling has overlaps or extra cells")
    if tile_count > profiler.max_lean_leaves:
        reasons.append(
            f"bad-direction tiles {tile_count} exceed max {profiler.max_lean_leaves}"
        )
    elif tile_count > profiler.warn_lean_leaves:
        reasons.append(
            f"warning: bad-direction tiles {tile_count} exceed warning threshold "
            f"{profiler.warn_lean_leaves}"
        )
    if tile_count > 0:
        ratio = profiler.bad_direction_cells / tile_count
        if ratio < 64.0:
            reasons.append(
                f"bad-direction cases per tile {ratio:.3f} is below gate 64.000"
            )
    if profiler.limit is None:
        if profiler.identity_words != EXPECTED_IDENTITY_WORDS:
            reasons.append(
                "identity-linear count "
                f"{profiler.identity_words} does not match expected {EXPECTED_IDENTITY_WORDS}"
            )
        if profiler.translation_sign_assignments != EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS:
            reasons.append(
                "translation sign-assignment count "
                f"{profiler.translation_sign_assignments} does not match expected "
                f"{EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS}"
            )
    rejected = any(not reason.startswith("warning:") for reason in reasons)
    return rejected, reasons


def translation_baddir_family_decision_reasons(
    profiler: TranslationBadDirectionFamilyTreeProfiler,
) -> tuple[bool, list[str]]:
    reasons: list[str] = []
    audit = profiler.audit_payload()
    if profiler.pair_words_scanned != profiler.target_hi:
        reasons.append(
            f"pair words scanned {profiler.pair_words_scanned} does not match target "
            f"{profiler.target_hi}"
        )
    if profiler.identity_words == 0:
        reasons.append("bounded profile saw no identity-linear translation ranks")
    if profiler.failure_counts["badDirectionSign"] == 0:
        reasons.append("bounded profile saw no bad-direction translation cells")
    if audit["has_gaps"]:
        reasons.append("symbolic bad-direction coverage has gaps")
    if audit["has_overlaps"]:
        reasons.append("symbolic bad-direction coverage has overlaps or extra cells")
    if profiler.fallback_bad_direction_cells > 0:
        reasons.append(
            "symbolic bad-direction fallback remains: "
            f"{profiler.fallback_bad_direction_cells} cells"
        )
    if profiler.family_count > profiler.max_lean_leaves:
        reasons.append(
            "symbolic bad-direction families "
            f"{profiler.family_count} exceed max {profiler.max_lean_leaves}"
        )
    elif profiler.family_count > profiler.warn_lean_leaves:
        reasons.append(
            "warning: symbolic bad-direction families "
            f"{profiler.family_count} exceed warning threshold "
            f"{profiler.warn_lean_leaves}"
        )
    if profiler.family_count > 0:
        ratio = profiler.family_cells / profiler.family_count
        if ratio < profiler.min_cells_per_family:
            reasons.append(
                "bad-direction cells per symbolic family "
                f"{ratio:.3f} is below gate {profiler.min_cells_per_family:.3f}"
            )
    if profiler.limit is None:
        if profiler.identity_words != EXPECTED_IDENTITY_WORDS:
            reasons.append(
                "identity-linear count "
                f"{profiler.identity_words} does not match expected {EXPECTED_IDENTITY_WORDS}"
            )
        if profiler.translation_sign_assignments != EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS:
            reasons.append(
                "translation sign-assignment count "
                f"{profiler.translation_sign_assignments} does not match expected "
                f"{EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS}"
            )
    rejected = any(not reason.startswith("warning:") for reason in reasons)
    return rejected, reasons


def write_payload(payload: dict[str, Any], output: Path) -> None:
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def print_summary(payload: dict[str, Any]) -> None:
    if payload.get("mode") == "prefix-kill-tree-profile":
        counts = payload["actual_counts"]
        tiling = payload["tiling"]
        templates = payload["templates"]
        decision = payload["decision"]
        print("prefix-kill tree profile")
        print(f"pair words profiled: {counts['pair_words_profiled']:,}")
        print(f"nonidentity ranks: {counts['nonidentity_ranks']:,}")
        print(f"identity-vacuous ranks: {counts['identity_vacuous_ranks']:,}")
        print(f"coalesced semantic tiles: {tiling['coalesced_semantic_tiles']:,}")
        print(f"planned heavy Lean leaves: {tiling['planned_lean_heavy_leaves']}")
        print(f"max prefix kill width: {payload['prefix']['max_prefix_kill_width']:,}")
        print(
            "residual fallback: "
            f"{templates['residual_fallback_width']:,} ranks "
            f"({templates['residual_fallback_rank_ratio']:.3%})"
        )
        print(f"decision: {decision['status']}")
        for reason in decision["reasons"]:
            print(f"- {reason}")
        return

    if payload.get("mode") == "translation-farkas-tree-profile":
        counts = payload["actual_counts"]
        tiling = payload["tiling"]
        classification = payload["classification"]
        decision = payload["decision"]
        reuse = classification["farkas_shape_reuse"]
        print("translation/Farkas tree profile")
        print(f"pair words scanned: {counts['pair_words_scanned']:,}")
        print(f"identity-linear words: {counts['identity_linear_words']:,}")
        print(f"nonidentity words skipped: {counts['nonidentity_words_skipped']:,}")
        print(f"translation sign assignments: {counts['translation_sign_assignments']:,}")
        print(f"coalesced semantic tiles: {tiling['coalesced_semantic_tiles']:,}")
        print(f"planned heavy Lean leaves: {tiling['planned_lean_heavy_leaves']}")
        print(
            "case/heavy-leaf compression ratio: "
            f"{tiling['case_to_leaf_compression_ratio_exact']}"
        )
        print(
            "unique normalized Farkas shapes: "
            f"{classification['unique_normalized_farkas_shapes']['count']}"
        )
        print(
            "shared normalized Farkas shapes: "
            f"{reuse['shared_shape_count']} (max reuse {reuse['max_reuse']})"
        )
        print(f"decision: {decision['status']}")
        for reason in decision["reasons"]:
            print(f"- {reason}")
        return

    if payload.get("mode") == "translation-baddir-tree-profile":
        counts = payload["actual_counts"]
        tiling = payload["tiling"]
        audit = payload["audit"]
        decision = payload["decision"]
        print("translation bad-direction tree profile")
        print(f"pair words scanned: {counts['pair_words_scanned']:,}")
        print(f"identity-linear words: {counts['identity_linear_words']:,}")
        print(f"nonidentity words skipped: {counts['nonidentity_words_skipped']:,}")
        print(f"translation sign assignments: {counts['translation_sign_assignments']:,}")
        print(f"bad-direction cells: {audit['bad_direction_cells']:,}")
        print(f"bad-direction tiles: {tiling['bad_direction_tiles']:,}")
        print(f"max rank width: {tiling['max_rank_width']:,}")
        print(f"max mask width: {tiling['max_mask_width']:,}")
        print(f"cases per tile: {tiling['cases_per_tile_ratio']}")
        print(
            "audit: "
            f"gaps={audit['has_gaps']} overlaps={audit['has_overlaps']} "
            f"exact={audit['audit_exact']}"
        )
        print(f"decision: {decision['status']}")
        for reason in decision["reasons"]:
            print(f"- {reason}")
        return

    if payload.get("mode") == "translation-baddir-family-tree-profile":
        counts = payload["actual_counts"]
        tree = payload["symbolic_tree"]
        audit = payload["audit"]
        decision = payload["decision"]
        print("translation bad-direction symbolic family profile")
        print(f"pair words scanned: {counts['pair_words_scanned']:,}")
        print(f"identity-linear words: {counts['identity_linear_words']:,}")
        print(f"nonidentity words skipped: {counts['nonidentity_words_skipped']:,}")
        print(f"translation sign assignments: {counts['translation_sign_assignments']:,}")
        print(f"bad-direction cells: {audit['bad_direction_cells']:,}")
        print(f"symbolic families: {tree['symbolic_families']:,}")
        print(f"average cells per family: {tree['average_cells_per_family']}")
        print(f"max family cells: {tree['max_family_cells']:,}")
        print(f"max prefix width: {tree['max_prefix_width']:,}")
        print(f"max mask cube size: {tree['max_mask_cube_size']:,}")
        print(f"fallback bad-direction cells: {tree['fallback_bad_direction_cells']:,}")
        print(
            "audit: "
            f"gaps={audit['has_gaps']} overlaps={audit['has_overlaps']} "
            f"exact={audit['audit_exact']}"
        )
        print(f"decision: {decision['status']}")
        for reason in decision["reasons"]:
            print(f"- {reason}")
        return

    if payload.get("mode") == "translation-baddir-common-impact-tree-profile":
        counts = payload["actual_counts"]
        tree = payload["symbolic_tree"]
        audit = payload["audit"]
        decision = payload["decision"]
        print("translation bad-direction common-impact profile")
        print(f"pair words scanned: {counts['pair_words_scanned']:,}")
        print(f"identity-linear words: {counts['identity_linear_words']:,}")
        print(f"nonidentity words skipped: {counts['nonidentity_words_skipped']:,}")
        print(f"translation sign assignments: {counts['translation_sign_assignments']:,}")
        print(f"bad-direction cells: {audit['bad_direction_cells']:,}")
        print(f"common-impact families: {tree['symbolic_families']:,}")
        print(f"average cells per family: {tree['average_cells_per_family']}")
        print(f"max family cells: {tree['max_family_cells']:,}")
        print(f"max prefix width: {tree['max_prefix_width']:,}")
        print(f"max mask cube size: {tree['max_mask_cube_size']:,}")
        print(f"fallback bad-direction cells: {tree['fallback_bad_direction_cells']:,}")
        print(
            "audit: "
            f"gaps={audit['has_gaps']} overlaps={audit['has_overlaps']} "
            f"exact={audit['audit_exact']}"
        )
        print(f"decision: {decision['status']}")
        for reason in decision["reasons"]:
            print(f"- {reason}")
        return

    if payload.get("mode") == "translation-survivors-profile":
        counts = payload["actual_counts"]
        survivors = payload["survivors"]
        decision = payload["decision"]
        print("translation GoodDirection survivor profile")
        print(f"pair words scanned: {counts['pair_words_scanned']:,}")
        print(f"identity-linear words: {counts['identity_linear_words']:,}")
        print(f"nonidentity words skipped: {counts['nonidentity_words_skipped']:,}")
        print(f"translation sign assignments: {counts['translation_sign_assignments']:,}")
        print(f"GoodDirection survivor masks: {counts['good_direction_survivor_masks']:,}")
        print(f"denominator-nonpositive masks: {counts['denominator_nonpositive_masks']:,}")
        print(f"bad-direction generated evidence: {counts['bad_direction_generated_evidence']:,}")
        print(f"survivor density: {survivors['survivor_density']}")
        print(
            "unique denominator signatures: "
            f"{survivors['unique_denominator_signatures']['lower_bound']}"
        )
        print(
            "unique survivor bitsets: "
            f"{survivors['unique_survivor_bitsets']['lower_bound']}"
        )
        print(
            "unique survivor shape maps: "
            f"{survivors['unique_survivor_shape_maps']['lower_bound']}"
        )
        print(
            "unique normalized Farkas shapes: "
            f"{survivors['unique_normalized_farkas_shapes']['lower_bound']}"
        )
        planned_leaves = (
            str(decision["planned_lean_heavy_leaves_exact"])
            if decision["planned_lean_heavy_leaves_exact"] is not None
            else f">{decision['planned_lean_heavy_leaves_lower_bound'] - 1}"
        )
        print(f"planned heavy Lean leaves: {planned_leaves}")
        print(f"accepted for Phase 6G: {decision['accepted_for_phase_6g']}")
        for note in decision["notes"]:
            print(f"- {note}")
        return

    if payload.get("mode") == "translation-survivor-mask-tree-profile":
        counts = payload["actual_counts"]
        survivors = payload["survivors"]
        tree = payload["mask_tree"]
        decision = payload["decision"]
        print("translation GoodDirection survivor mask-tree profile")
        print(f"pair words scanned: {counts['pair_words_scanned']:,}")
        print(f"identity-linear words: {counts['identity_linear_words']:,}")
        print(f"nonidentity words skipped: {counts['nonidentity_words_skipped']:,}")
        print(f"translation sign assignments: {counts['translation_sign_assignments']:,}")
        print(f"GoodDirection survivor masks: {counts['good_direction_survivor_masks']:,}")
        print(f"denominator-nonpositive masks: {counts['denominator_nonpositive_masks']:,}")
        print(f"bad-direction generated evidence: {counts['bad_direction_generated_evidence']:,}")
        print(
            "unique denominator signatures: "
            f"{survivors['unique_denominator_signatures']['lower_bound']}"
        )
        print(
            "unique survivor shape maps: "
            f"{survivors['unique_survivor_shape_maps']['lower_bound']}"
        )
        print(f"total mask-tree leaves: {tree['total_tree_leaves']:,}")
        print(f"total bad-cube leaves: {tree['total_bad_cube_leaves']:,}")
        print(f"total Farkas leaves: {tree['total_farkas_leaves']:,}")
        print(
            "unique structural tree shapes: "
            f"{tree['unique_structural_tree_shapes']['lower_bound']}"
        )
        print(
            "unique signature tree obligations: "
            f"{tree['unique_signature_tree_obligations']['lower_bound']}"
        )
        print(
            "unique signature leaf obligations: "
            f"{tree['unique_signature_leaf_obligations']['lower_bound']}"
        )
        planned_leaves = (
            str(decision["planned_lean_heavy_leaves_exact"])
            if decision["planned_lean_heavy_leaves_exact"] is not None
            else f">{decision['planned_lean_heavy_leaves_lower_bound'] - 1}"
        )
        print(f"planned heavy Lean leaves: {planned_leaves}")
        print(f"accepted for Phase 6H: {decision['accepted_for_phase_6h']}")
        for note in decision["notes"]:
            print(f"- {note}")
        return

    counts = payload["actual_counts"]
    tiling = payload["tiling"]
    decision = payload["decision"]
    print("symmetry compression profile")
    print(f"pair words: {counts['pair_words']:,}")
    print(f"identity-linear words: {counts['identity_linear_words']:,}")
    print(f"translation sign assignments: {counts['translation_sign_assignments']:,}")
    print(f"coalesced semantic tiles: {tiling['coalesced_semantic_tiles']:,}")
    print(f"planned heavy Lean leaves: {tiling['planned_lean_heavy_leaves']}")
    print(f"unique normalized Farkas shapes: {payload['classification']['unique_normalized_farkas_shapes']['count']}")
    reuse = payload["classification"]["farkas_shape_reuse"]
    print(
        "shared normalized Farkas shapes: "
        f"{reuse['shared_shape_count']} (max reuse {reuse['max_reuse']})"
    )
    print(f"decision: {decision['status']}")
    for reason in decision["reasons"]:
        print(f"- {reason}")


def main() -> None:
    parser = argparse.ArgumentParser(
        description="Profile D4-symmetric semantic interval compression without emitting Lean."
    )
    parser.add_argument("--dry-run", action="store_true", help="required; Phase 3 emits profile JSON only")
    parser.add_argument("--limit", type=int, default=None, help="profile only the first N pair-word ranks")
    parser.add_argument("--max-lean-leaves", type=int, default=2000)
    parser.add_argument("--warn-lean-leaves", type=int, default=900)
    parser.add_argument("--max-distinct-tracked", type=int, default=100_000)
    parser.add_argument("--sample-limit", type=int, default=16)
    parser.add_argument("--progress-interval", type=int, default=1_000_000)
    parser.add_argument("--output", type=Path, default=None)
    parser.add_argument(
        "--prefix-kill-tree",
        action="store_true",
        help="profile nonidentity prefix-kill tiling before depth-13 leaves",
    )
    parser.add_argument(
        "--translation-farkas-tree",
        action="store_true",
        help="profile identity-linear translation/Farkas family sharing",
    )
    parser.add_argument(
        "--translation-baddir-tree",
        action="store_true",
        help="profile rectangular tiling for translation bad-direction cases",
    )
    parser.add_argument(
        "--translation-baddir-family-tree",
        action="store_true",
        help="profile symbolic prefix/mask-cube families for translation bad-direction cases",
    )
    parser.add_argument(
        "--translation-baddir-common-impact-tree",
        action="store_true",
        help="profile common-impact prefix/mask-cube families for translation bad-direction cases",
    )
    parser.add_argument(
        "--translation-survivors",
        action="store_true",
        help="profile GoodDirection survivor masks for the translation branch",
    )
    parser.add_argument(
        "--translation-survivor-mask-tree",
        action="store_true",
        help="profile exact mask-tree compression for GoodDirection survivor cases",
    )
    parser.add_argument("--max-prefix-probe-ranks", type=int, default=4096)
    parser.add_argument("--max-residual-leaf-width", type=int, default=128)
    parser.add_argument("--min-residual-depth", type=int, default=13)
    parser.add_argument(
        "--no-d4-transport",
        action="store_true",
        help="do not share family keys across started-face D4 canonical prefixes",
    )
    parser.add_argument(
        "--allow-reject",
        action="store_true",
        help="write rejected profiles with exit code 0 for exploratory runs",
    )
    args = parser.parse_args()
    validate_options(args)
    output = args.output
    if output is None:
        if args.translation_survivor_mask_tree:
            output = DEFAULT_TRANSLATION_SURVIVOR_MASK_TREE_OUTPUT
        elif args.translation_survivors:
            output = DEFAULT_TRANSLATION_SURVIVORS_OUTPUT
        elif args.translation_baddir_common_impact_tree:
            output = DEFAULT_TRANSLATION_BADDIR_COMMON_IMPACT_OUTPUT
        elif args.translation_baddir_family_tree:
            output = DEFAULT_TRANSLATION_BADDIR_FAMILY_OUTPUT
        elif args.translation_baddir_tree:
            output = DEFAULT_TRANSLATION_BADDIR_OUTPUT
        elif args.translation_farkas_tree:
            output = DEFAULT_TRANSLATION_FARKAS_OUTPUT
        elif args.prefix_kill_tree:
            output = DEFAULT_PREFIX_KILL_OUTPUT
        else:
            output = DEFAULT_OUTPUT

    import time

    start = time.monotonic()
    if args.translation_survivor_mask_tree:
        mask_tree_profiler = TranslationSurvivorMaskTreeProfiler(
            limit=args.limit,
            max_lean_leaves=args.max_lean_leaves,
            warn_lean_leaves=args.warn_lean_leaves,
            max_distinct_tracked=args.max_distinct_tracked,
            sample_limit=args.sample_limit,
            progress_interval=args.progress_interval,
            use_d4_transport=not args.no_d4_transport,
        )
        mask_tree_profiler.traverse()
        rejected = False
        payload = mask_tree_profiler.payload(
            elapsed_seconds=time.monotonic() - start,
        )
    elif args.translation_survivors:
        survivor_profiler = TranslationSurvivorProfiler(
            limit=args.limit,
            max_lean_leaves=args.max_lean_leaves,
            warn_lean_leaves=args.warn_lean_leaves,
            max_distinct_tracked=args.max_distinct_tracked,
            sample_limit=args.sample_limit,
            progress_interval=args.progress_interval,
            use_d4_transport=not args.no_d4_transport,
        )
        survivor_profiler.traverse()
        rejected = False
        payload = survivor_profiler.payload(
            elapsed_seconds=time.monotonic() - start,
        )
    elif args.translation_baddir_common_impact_tree:
        common_impact_profiler = TranslationBadDirectionCommonImpactTreeProfiler(
            limit=args.limit,
            max_lean_leaves=args.max_lean_leaves,
            warn_lean_leaves=args.warn_lean_leaves,
            sample_limit=args.sample_limit,
            progress_interval=args.progress_interval,
        )
        common_impact_profiler.traverse()
        rejected, reasons = translation_baddir_family_decision_reasons(
            common_impact_profiler
        )
        payload = common_impact_profiler.payload(
            elapsed_seconds=time.monotonic() - start,
            rejected=rejected,
            reject_reasons=reasons,
        )
    elif args.translation_baddir_family_tree:
        baddir_family_profiler = TranslationBadDirectionFamilyTreeProfiler(
            limit=args.limit,
            max_lean_leaves=args.max_lean_leaves,
            warn_lean_leaves=args.warn_lean_leaves,
            sample_limit=args.sample_limit,
            progress_interval=args.progress_interval,
        )
        baddir_family_profiler.traverse()
        rejected, reasons = translation_baddir_family_decision_reasons(
            baddir_family_profiler
        )
        payload = baddir_family_profiler.payload(
            elapsed_seconds=time.monotonic() - start,
            rejected=rejected,
            reject_reasons=reasons,
        )
    elif args.translation_baddir_tree:
        baddir_profiler = TranslationBadDirectionTreeProfiler(
            limit=args.limit,
            max_lean_leaves=args.max_lean_leaves,
            warn_lean_leaves=args.warn_lean_leaves,
            sample_limit=args.sample_limit,
            progress_interval=args.progress_interval,
        )
        baddir_profiler.traverse()
        rejected, reasons = translation_baddir_decision_reasons(baddir_profiler)
        payload = baddir_profiler.payload(
            elapsed_seconds=time.monotonic() - start,
            rejected=rejected,
            reject_reasons=reasons,
        )
    elif args.translation_farkas_tree:
        translation_profiler = TranslationFarkasTreeProfiler(
            limit=args.limit,
            max_lean_leaves=args.max_lean_leaves,
            warn_lean_leaves=args.warn_lean_leaves,
            max_distinct_tracked=args.max_distinct_tracked,
            sample_limit=args.sample_limit,
            progress_interval=args.progress_interval,
            use_d4_transport=not args.no_d4_transport,
        )
        translation_profiler.traverse()
        rejected, reasons = translation_farkas_decision_reasons(translation_profiler)
        payload = translation_profiler.payload(
            elapsed_seconds=time.monotonic() - start,
            rejected=rejected,
            reject_reasons=reasons,
        )
    elif args.prefix_kill_tree:
        prefix_profiler = PrefixKillTreeProfiler(
            limit=args.limit,
            max_lean_leaves=args.max_lean_leaves,
            warn_lean_leaves=args.warn_lean_leaves,
            max_distinct_tracked=args.max_distinct_tracked,
            sample_limit=args.sample_limit,
            progress_interval=args.progress_interval,
            max_prefix_probe_ranks=args.max_prefix_probe_ranks,
            max_residual_leaf_width=args.max_residual_leaf_width,
            min_residual_depth=args.min_residual_depth,
            use_d4_transport=not args.no_d4_transport,
        )
        prefix_profiler.traverse()
        rejected, reasons = prefix_kill_decision_reasons(prefix_profiler)
        payload = prefix_profiler.payload(
            elapsed_seconds=time.monotonic() - start,
            rejected=rejected,
            reject_reasons=reasons,
        )
    else:
        profiler = SymmetryCompressionProfiler(
            limit=args.limit,
            max_lean_leaves=args.max_lean_leaves,
            warn_lean_leaves=args.warn_lean_leaves,
            max_distinct_tracked=args.max_distinct_tracked,
            sample_limit=args.sample_limit,
            progress_interval=args.progress_interval,
        )
        profiler.traverse()
        rejected, reasons = decision_reasons(profiler)
        payload = profiler.build_payload(
            elapsed_seconds=time.monotonic() - start,
            rejected=rejected,
            reject_reasons=reasons,
        )
    write_payload(payload, output)
    print_summary(payload)
    if rejected and not args.allow_reject:
        raise SystemExit(1)


if __name__ == "__main__":
    main()
