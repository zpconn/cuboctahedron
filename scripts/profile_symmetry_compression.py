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
        output = DEFAULT_PREFIX_KILL_OUTPUT if args.prefix_kill_tree else DEFAULT_OUTPUT

    import time

    start = time.monotonic()
    if args.prefix_kill_tree:
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
