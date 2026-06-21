#!/usr/bin/env python3
"""Dry-run D4-symmetric semantic tiling planner for generated evidence.

This script is deliberately untrusted.  It emits no Lean proof and should not
be used as a proof artifact.  Its job is to plan the Phase 7 generated-Lean
architecture by computing a memory-safe semantic interval tiling and rejecting
profiles whose Lean-visible node count is too large.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import sys
import time
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
    total_linear,
    translation_constraints,
    translation_vector,
    transported_mask,
    vec_key,
)
from profile_symmetry_compression import (
    DistinctTracker,
    canonical_translation_with_symmetry,
    canonical_word_with_symmetry,
    pair_order_key,
    stable_digest,
    word_key,
)


REPO_ROOT = Path(__file__).resolve().parents[1]
DEFAULT_OUTPUT = REPO_ROOT / "scripts" / "generated" / "symmetry_evidence_dry_run.json"


def stable_json(value: Any) -> str:
    return json.dumps(value, sort_keys=True, separators=(",", ":"))


def digest_json(value: Any) -> str:
    return hashlib.sha256(stable_json(value).encode("utf-8")).hexdigest()


def sym_id_inverse_map() -> dict[int, int]:
    basis = list(PAIR_IDS)
    inverse: dict[int, int] = {}
    for sym_id, sym in enumerate(STARTED_SYMS):
        image = sym_word(sym, basis)
        for inv_id, inv in enumerate(STARTED_SYMS):
            if sym_word(inv, image) == basis and sym_word(sym, sym_word(inv, basis)) == basis:
                inverse[sym_id] = inv_id
                break
        if sym_id not in inverse:
            raise RuntimeError(f"no inverse found for started symmetry {sym_id}")
    return inverse


INVERSE_SYM_ID = sym_id_inverse_map()


def prefix_interval(prefix: tuple[str, ...]) -> tuple[int, int, dict[str, int]]:
    remaining = dict(PAIR_COUNTS)
    lo = 0
    for pair_id in prefix:
        if pair_id not in remaining or remaining[pair_id] <= 0:
            raise ValueError(f"invalid pair-word prefix: {prefix}")
        pair_index = PAIR_IDS.index(pair_id)
        for smaller in PAIR_IDS[:pair_index]:
            if remaining[smaller] <= 0:
                continue
            trial = dict(remaining)
            trial[smaller] -= 1
            lo += multinomial_count(trial)
        remaining[pair_id] -= 1
    return lo, lo + multinomial_count(remaining), remaining


def remaining_key(remaining: dict[str, int]) -> tuple[int, ...]:
    return tuple(remaining[pair_id] for pair_id in PAIR_IDS)


@lru_cache(maxsize=200_000)
def identity_completion_count(remaining_tuple: tuple[int, ...], prefix_matrix: tuple) -> int:
    remaining = dict(zip(PAIR_IDS, remaining_tuple, strict=True))
    if sum(remaining.values()) == 0:
        return 1 if mat_mul(prefix_matrix, RPAIR["x"]) == IDENTITY else 0
    total = 0
    for pair_id in PAIR_IDS:
        if remaining[pair_id] <= 0:
            continue
        next_remaining = dict(remaining)
        next_remaining[pair_id] -= 1
        total += identity_completion_count(
            remaining_key(next_remaining),
            mat_mul(prefix_matrix, RPAIR[pair_id]),
        )
    return total


@dataclass
class SemanticTileAccumulator:
    target_hi: int
    sample_limit: int
    expected_next: int = 0
    raw_tiles: int = 0
    coalesced_tiles: int = 0
    covered_width: int = 0
    max_tile_width: int = 0
    gaps: list[dict[str, int]] = field(default_factory=list)
    overlaps: list[dict[str, int]] = field(default_factory=list)
    samples: list[dict[str, Any]] = field(default_factory=list)
    kind_counts: Counter[str] = field(default_factory=Counter)
    _digest: Any = field(default_factory=hashlib.sha256)
    _last: dict[str, Any] | None = None

    def _digest_closed_tile(self, tile: dict[str, Any]) -> None:
        digest_tile = {
            "lo": tile["lo"],
            "hi": tile["hi"],
            "kind": tile["kind"],
            "semantic_key_digest": tile["semantic_key_digest"],
            "transport": tile.get("transport"),
        }
        self._digest.update(stable_json(digest_tile).encode("utf-8"))
        self._digest.update(b"\n")

    def _close_last(self) -> None:
        if self._last is None:
            return
        self._digest_closed_tile(self._last)
        self._last = None

    def add(self, lo: int, hi: int, kind: str, semantic_key: str, sample: dict[str, Any]) -> None:
        if hi <= lo:
            return
        semantic_key_digest = stable_digest(semantic_key)
        self.raw_tiles += 1
        self.kind_counts[kind] += 1
        if lo < self.expected_next:
            if len(self.overlaps) < self.sample_limit:
                self.overlaps.append({"lo": lo, "hi": hi, "expected_next": self.expected_next})
        elif lo > self.expected_next:
            if len(self.gaps) < self.sample_limit:
                self.gaps.append({"lo": self.expected_next, "hi": lo})
        self.expected_next = max(self.expected_next, hi)
        self.covered_width += hi - lo

        transport = sample.get("transport")
        if (
            self._last is not None
            and self._last["hi"] == lo
            and self._last["kind"] == kind
            and self._last["semantic_key"] == semantic_key
            and self._last.get("transport") == transport
        ):
            self._last["hi"] = hi
            self.max_tile_width = max(self.max_tile_width, self._last["hi"] - self._last["lo"])
            return

        self._close_last()
        self.coalesced_tiles += 1
        self.max_tile_width = max(self.max_tile_width, hi - lo)
        self._last = {
            "lo": lo,
            "hi": hi,
            "kind": kind,
            "semantic_key": semantic_key,
            "semantic_key_digest": semantic_key_digest,
            "transport": transport,
        }
        if len(self.samples) < self.sample_limit:
            sample_payload = dict(sample)
            sample_payload.update({
                "lo": lo,
                "hi": hi,
                "kind": kind,
                "semantic_key_digest": semantic_key_digest,
                "semantic_key_sample": semantic_key[:240],
            })
            self.samples.append(sample_payload)

    def finalize(self) -> None:
        self._close_last()

    def payload(self) -> dict[str, Any]:
        self.finalize()
        return {
            "raw_tiles_seen": self.raw_tiles,
            "tiles_count": self.coalesced_tiles,
            "coalesced_semantic_tiles": self.coalesced_tiles,
            "planned_public_interval_nodes": max(0, self.coalesced_tiles - 1),
            "covered_width": self.covered_width,
            "sum_hi_minus_lo": self.covered_width,
            "expected_next": self.expected_next,
            "target_hi": self.target_hi,
            "has_gaps": bool(self.gaps) or self.expected_next < self.target_hi,
            "has_overlaps": bool(self.overlaps),
            "gaps": self.gaps,
            "overlaps": self.overlaps,
            "max_tile_width": self.max_tile_width,
            "tile_kind_counts": dict(sorted(self.kind_counts.items())),
            "partition_digest": self._digest.hexdigest(),
            "samples": self.samples,
        }


class SymmetryEvidencePlanner:
    def __init__(
        self,
        *,
        limit: int | None,
        max_lean_leaves: int,
        warn_lean_leaves: int,
        max_distinct_tracked: int,
        sample_limit: int,
        progress_interval: int,
        tile_key_mode: str,
    ) -> None:
        self.limit = limit
        self.target_hi = EXPECTED_PAIR_WORDS if limit is None else limit
        self.max_lean_leaves = max_lean_leaves
        self.warn_lean_leaves = warn_lean_leaves
        self.sample_limit = sample_limit
        self.progress_interval = progress_interval
        self.tile_key_mode = tile_key_mode
        self.tiles = SemanticTileAccumulator(self.target_hi, sample_limit)
        self.prefix_nodes = 0
        self.prefix_nodes_by_depth: Counter[int] = Counter()
        self.canonical_prefix_nodes = 0
        self.noncanonical_prefix_nodes = 0
        self.transport_prefix_tiles = 0
        self.canonical_terminal_words = 0
        self.max_depth = 0
        self.identity_words = 0
        self.nonidentity_words = 0
        self.translation_sign_assignments = 0
        self.failure_counts: Counter[str] = Counter()
        self.nonidentity_failure_counts: Counter[str] = Counter()
        self.translation_failure_counts: Counter[str] = Counter()
        self.pair_word_orbit_histogram: Counter[int] = Counter()
        self.translation_mask_orbit_histogram: Counter[int] = Counter()
        self.heavy_families = DistinctTracker(max_distinct_tracked, sample_limit)
        self.nonidentity_family_shapes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.nonidentity_bad_direction_shapes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.nonidentity_bad_balance_shapes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.nonidentity_residual_shapes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.translation_canonical_choices = DistinctTracker(max_distinct_tracked, sample_limit)
        self.farkas_shapes = DistinctTracker(max_distinct_tracked, sample_limit)
        self.farkas_shape_reuse_counts: Counter[str] = Counter()
        self.farkas_shape_reuse_samples: dict[str, dict[str, Any]] = {}

    def classify_nonidentity_canonical(self, word: tuple[str, ...]) -> tuple[str, str]:
        raw_word = list(word)
        pref = prefix_matrices(raw_word)
        matrix = total_linear(raw_word)
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

    def validate_prefix_transport(
        self,
        raw_prefix: tuple[str, ...],
        canonical_prefix: tuple[str, ...],
        raw_to_canonical_sym: int,
        canonical_to_raw_sym: int,
    ) -> None:
        if tuple(sym_word(STARTED_SYMS[raw_to_canonical_sym], list(raw_prefix))) != canonical_prefix:
            raise RuntimeError("raw-to-canonical prefix transport failed")
        if tuple(sym_word(STARTED_SYMS[canonical_to_raw_sym], list(canonical_prefix))) != raw_prefix:
            raise RuntimeError("canonical-to-raw prefix transport failed")

    def validate_translation_transport(
        self,
        raw_word: tuple[str, ...],
        raw_mask: int,
        canonical_word: tuple[str, ...],
        canonical_mask: int,
        raw_to_canonical_sym: int,
        canonical_to_raw_sym: int,
    ) -> None:
        cword, cmask = transported_mask(STARTED_SYMS[raw_to_canonical_sym], list(raw_word), raw_mask)
        if tuple(cword) != canonical_word or cmask != canonical_mask:
            raise RuntimeError("raw-to-canonical translation transport failed")
        rword, rmask = transported_mask(
            STARTED_SYMS[canonical_to_raw_sym], list(canonical_word), canonical_mask
        )
        if tuple(rword) != raw_word or rmask != raw_mask:
            raise RuntimeError("canonical-to-raw translation transport failed")

    def add_prefix_transport_tile(
        self,
        lo: int,
        hi: int,
        raw_prefix: tuple[str, ...],
        canonical_prefix: tuple[str, ...],
        raw_to_canonical_sym: int,
    ) -> None:
        canonical_to_raw_sym = INVERSE_SYM_ID[raw_to_canonical_sym]
        self.validate_prefix_transport(
            raw_prefix, canonical_prefix, raw_to_canonical_sym, canonical_to_raw_sym
        )
        canonical_lo, canonical_hi, _ = prefix_interval(canonical_prefix)
        semantic_key = (
            "symmetryTransport"
            f"|canonicalPrefix={word_key(canonical_prefix)}"
            f"|rawToCanonical={raw_to_canonical_sym}"
            f"|canonicalToRaw={canonical_to_raw_sym}"
            f"|canonicalInterval={canonical_lo}:{canonical_hi}"
        )
        self.tiles.add(
            lo,
            hi,
            "symmetryTransport",
            semantic_key,
            {
                "raw_prefix": word_key(raw_prefix),
                "canonical_prefix": word_key(canonical_prefix),
                "canonical_interval": [canonical_lo, canonical_hi],
                "transport": {
                    "raw_to_canonical_sym": raw_to_canonical_sym,
                    "canonical_to_raw_sym": canonical_to_raw_sym,
                },
            },
        )
        self.transport_prefix_tiles += 1

    def add_nonidentity_terminal_tile(self, rank: int, word: tuple[str, ...], failure: str, family_key: str) -> None:
        self.failure_counts[f"nonidentity.{failure}"] += 1
        self.nonidentity_failure_counts[failure] += 1
        self.heavy_families.add(family_key)
        self.nonidentity_family_shapes.add(family_key)
        if failure == "badDirectionSign":
            self.nonidentity_bad_direction_shapes.add(family_key)
        elif failure == "badPairBalance":
            self.nonidentity_bad_balance_shapes.add(family_key)
        else:
            self.nonidentity_residual_shapes.add(family_key)
        if self.tile_key_mode == "exact":
            semantic_key = f"canonicalNonIdentity|{family_key}"
        else:
            semantic_key = f"canonicalNonIdentityFamily|failure={failure}"
        self.tiles.add(
            rank,
            rank + 1,
            "nonidentity",
            semantic_key,
            {
                "raw_prefix": word_key(word),
                "canonical_prefix": word_key(word),
                "failure": failure,
                "tile_key_mode": self.tile_key_mode,
            },
        )

    def add_translation_terminal_tile(self, rank: int, word: tuple[str, ...]) -> None:
        mask_family_digests: list[str] = []
        raw_orbit_sizes: list[int] = []
        for mask in range(64):
            canonical_word, canonical_mask, raw_to_canonical_sym = canonical_translation_with_symmetry(word, mask)
            canonical_to_raw_sym = INVERSE_SYM_ID[raw_to_canonical_sym]
            self.validate_translation_transport(
                word, mask, canonical_word, canonical_mask,
                raw_to_canonical_sym, canonical_to_raw_sym,
            )
            self.translation_canonical_choices.add(f"{word_key(canonical_word)}#{canonical_mask}")
            orbit = {
                (tuple(transported_word), transported_choice)
                for sym in STARTED_SYMS
                for transported_word, transported_choice in [transported_mask(sym, list(word), mask)]
            }
            raw_orbit_sizes.append(len(orbit))
            failure, family_key, shape = self.classify_translation_canonical(canonical_word, canonical_mask)
            transported_family_key = (
                f"sym={raw_to_canonical_sym}|mask={canonical_mask}|{family_key}"
            )
            self.translation_failure_counts[failure] += 1
            self.failure_counts[f"translation.{failure}"] += 1
            if shape is None:
                self.heavy_families.add(family_key)
            else:
                shape_digest = stable_digest(shape)
                self.heavy_families.add(f"farkasShape|{shape_digest}")
                self.farkas_shapes.add(shape)
                self.farkas_shape_reuse_counts[shape_digest] += 1
                self.farkas_shape_reuse_samples.setdefault(shape_digest, {
                    "shape_digest": shape_digest,
                    "raw_rank": rank,
                    "raw_word": word_key(word),
                    "raw_mask": mask,
                    "canonical_word": word_key(canonical_word),
                    "canonical_mask": canonical_mask,
                    "raw_to_canonical_sym": raw_to_canonical_sym,
                    "canonical_to_raw_sym": canonical_to_raw_sym,
                    "failure_key_digest": stable_digest(family_key),
                })
            mask_family_digests.append(stable_digest(transported_family_key))
        for size in raw_orbit_sizes:
            self.translation_mask_orbit_histogram[size] += 1
        semantic_key = (
            f"canonicalTranslationRank|word={word_key(word)}"
            f"|maskFamilies={stable_digest('|'.join(sorted(mask_family_digests)))}"
        )
        self.tiles.add(
            rank,
            rank + 1,
            "translation",
            semantic_key,
            {
                "raw_prefix": word_key(word),
                "canonical_prefix": word_key(word),
                "mask_family_digest": stable_digest("|".join(sorted(mask_family_digests))),
            },
        )

    def record_skipped_counts(
        self,
        raw_prefix: tuple[str, ...],
        remaining: dict[str, int],
        prefix_matrix: tuple,
        width: int,
    ) -> None:
        _ = raw_prefix
        if self.limit is not None:
            return
        identity_count = identity_completion_count(remaining_key(remaining), prefix_matrix)
        self.identity_words += identity_count
        self.nonidentity_words += width - identity_count
        self.translation_sign_assignments += identity_count * 64

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
            raw_prefix = tuple(prefix)
            depth = len(raw_prefix)
            self.prefix_nodes += 1
            self.prefix_nodes_by_depth[depth] += 1
            self.max_depth = max(self.max_depth, depth)

            canonical_prefix, raw_to_canonical_sym = canonical_word_with_symmetry(raw_prefix)
            if canonical_prefix != raw_prefix:
                self.noncanonical_prefix_nodes += 1
                self.add_prefix_transport_tile(
                    rank_lo, clipped_hi, raw_prefix, canonical_prefix, raw_to_canonical_sym
                )
                if clipped_hi == rank_hi:
                    self.record_skipped_counts(raw_prefix, dict(remaining), pref[-1], block_width)
                return

            self.canonical_prefix_nodes += 1
            if depth == 13:
                self.canonical_terminal_words += 1
                orbit = {tuple(sym_word(sym, list(raw_prefix))) for sym in STARTED_SYMS}
                self.pair_word_orbit_histogram[len(orbit)] += 1
                matrix = mat_mul(pref[-1], RPAIR["x"])
                if matrix != IDENTITY:
                    self.nonidentity_words += 1
                    failure, family_key = self.classify_nonidentity_canonical(raw_prefix)
                    self.add_nonidentity_terminal_tile(rank_lo, raw_prefix, failure, family_key)
                else:
                    self.identity_words += 1
                    self.translation_sign_assignments += 64
                    self.add_translation_terminal_tile(rank_lo, raw_prefix)
                if self.progress_interval and (self.identity_words + self.nonidentity_words) % self.progress_interval == 0:
                    print(
                        f"covered {self.identity_words + self.nonidentity_words:,} terminal pair words",
                        file=sys.stderr,
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
        self.tiles.finalize()

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

    def decision(self) -> tuple[str, list[str]]:
        reasons: list[str] = []
        tiling = self.tiles.payload()
        if tiling["covered_width"] != self.target_hi:
            reasons.append(
                f"covered width {tiling['covered_width']} does not match target {self.target_hi}"
            )
        if tiling["has_gaps"]:
            reasons.append("rank coverage has gaps")
        if tiling["has_overlaps"]:
            reasons.append("rank coverage has overlaps")
        if tiling["planned_public_interval_nodes"] > self.max_lean_leaves:
            reasons.append(
                "planned public interval nodes "
                f"{tiling['planned_public_interval_nodes']} exceed max {self.max_lean_leaves}"
            )
        elif tiling["planned_public_interval_nodes"] > self.warn_lean_leaves:
            reasons.append(
                "warning: planned public interval nodes "
                f"{tiling['planned_public_interval_nodes']} exceed warning threshold "
                f"{self.warn_lean_leaves}"
            )
        reuse = self.farkas_shape_reuse_payload()
        if reuse["needs_farkas_cases"] > 0 and reuse["shared_shape_count"] == 0:
            reasons.append("no reused normalized Farkas shape observed")
        if self.limit is None:
            if self.identity_words + self.nonidentity_words != EXPECTED_PAIR_WORDS:
                reasons.append(
                    "classified/transport-counted pair words "
                    f"{self.identity_words + self.nonidentity_words} do not match "
                    f"{EXPECTED_PAIR_WORDS}"
                )
            if self.identity_words != EXPECTED_IDENTITY_WORDS:
                reasons.append(
                    f"identity-linear count {self.identity_words} does not match "
                    f"{EXPECTED_IDENTITY_WORDS}"
                )
            if self.translation_sign_assignments != EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS:
                reasons.append(
                    "translation sign-assignment count "
                    f"{self.translation_sign_assignments} does not match "
                    f"{EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS}"
                )
        rejected = any(not reason.startswith("warning:") for reason in reasons)
        return ("reject" if rejected else "accepted_for_lean_emission"), reasons

    def payload(self, *, elapsed_seconds: float) -> dict[str, Any]:
        status, reasons = self.decision()
        tiling = self.tiles.payload()
        return {
            "schema_version": 1,
            "mode": "symmetry-evidence-dry-run",
            "trusted_as_proof": False,
            "complete": self.limit is None and status == "accepted_for_lean_emission",
            "profile_limit": self.limit,
            "elapsed_seconds": elapsed_seconds,
            "options": {
                "symmetry": "started-face D4",
                "reversal_enabled": False,
                "max_lean_leaves": self.max_lean_leaves,
                "warn_lean_leaves": self.warn_lean_leaves,
                "progress_interval": self.progress_interval,
                "tile_key_mode": self.tile_key_mode,
            },
            "expected_counts": {
                "pair_words": EXPECTED_PAIR_WORDS,
                "identity_linear_words": EXPECTED_IDENTITY_WORDS,
                "translation_sign_assignments": EXPECTED_TRANSLATION_SIGN_ASSIGNMENTS,
            },
            "actual_counts": {
                "pair_words": tiling["covered_width"],
                "identity_linear_words": self.identity_words,
                "nonidentity_words": self.nonidentity_words,
                "translation_sign_assignments": self.translation_sign_assignments,
                "counts_exact": self.limit is None,
            },
            "prefix": {
                "nodes_visited": self.prefix_nodes,
                "nodes_by_depth": dict(sorted(self.prefix_nodes_by_depth.items())),
                "max_depth": self.max_depth,
                "canonical_prefix_nodes": self.canonical_prefix_nodes,
                "noncanonical_prefix_nodes_transported": self.noncanonical_prefix_nodes,
                "transport_prefix_tiles": self.transport_prefix_tiles,
                "canonical_dead_prefixes": 0,
                "canonical_depth13_residuals": self.canonical_terminal_words,
                "prefix_pruning_note": (
                    "Phase 6 performs D4 prefix transport and terminal semantic "
                    "classification; speculative prefix kills remain disabled."
                ),
            },
            "d4": {
                "symmetry_count": len(STARTED_SYMS),
                "inverse_symmetry_ids": INVERSE_SYM_ID,
                "pair_word_orbit_histogram": dict(sorted(self.pair_word_orbit_histogram.items())),
                "translation_mask_orbit_histogram": dict(sorted(self.translation_mask_orbit_histogram.items())),
            },
            "classification": {
                "failure_counts": dict(sorted(self.failure_counts.items())),
                "nonidentity_failure_counts": dict(sorted(self.nonidentity_failure_counts.items())),
                "translation_failure_counts": dict(sorted(self.translation_failure_counts.items())),
                "nonidentity_family_shapes": self.nonidentity_family_shapes.payload(),
                "bad_direction_family_candidates": self.nonidentity_bad_direction_shapes.payload(),
                "bad_balance_family_candidates": self.nonidentity_bad_balance_shapes.payload(),
                "residual_family_shapes": self.nonidentity_residual_shapes.payload(),
                "translation_cases_after_symmetry": self.translation_canonical_choices.payload(),
                "unique_normalized_farkas_shapes": self.farkas_shapes.payload(),
                "farkas_shape_reuse": self.farkas_shape_reuse_payload(),
                "heavy_families": self.heavy_families.payload(),
            },
            "tiling": tiling,
            "decision": {
                "status": status,
                "reasons": reasons,
            },
        }


def validate_options(args: argparse.Namespace) -> None:
    if args.emit_lean:
        raise SystemExit("--emit-lean belongs to Phase 7; Phase 6 is dry-run only")
    if not args.dry_run:
        raise SystemExit("Phase 6 only supports --dry-run")
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
    if args.tile_key_mode not in {"proof-family", "exact"}:
        raise SystemExit("--tile-key-mode must be proof-family or exact")


def write_payload(payload: dict[str, Any], output: Path) -> None:
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def print_summary(payload: dict[str, Any]) -> None:
    counts = payload["actual_counts"]
    prefix = payload["prefix"]
    tiling = payload["tiling"]
    reuse = payload["classification"]["farkas_shape_reuse"]
    decision = payload["decision"]
    print("symmetry evidence dry run")
    print(f"pair words covered: {counts['pair_words']:,}")
    print(f"canonical terminal words classified: {prefix['canonical_depth13_residuals']:,}")
    print(f"transport prefix tiles: {prefix['transport_prefix_tiles']:,}")
    print(f"coalesced semantic tiles: {tiling['coalesced_semantic_tiles']:,}")
    print(f"planned public interval nodes: {tiling['planned_public_interval_nodes']:,}")
    print(
        "shared normalized Farkas shapes: "
        f"{reuse['shared_shape_count']:,} (max reuse {reuse['max_reuse']})"
    )
    print(f"status: {decision['status']}")
    for reason in decision["reasons"]:
        print(f"- {reason}")


def main() -> None:
    parser = argparse.ArgumentParser(
        description="Plan D4-symmetric semantic interval coverage without emitting Lean."
    )
    parser.add_argument("--dry-run", action="store_true", help="required; Phase 6 emits JSON only")
    parser.add_argument("--emit-lean", action="store_true", help="rejected in Phase 6; reserved for Phase 7")
    parser.add_argument("--limit", type=int, default=None, help="cover only the first N pair-word ranks")
    parser.add_argument("--max-lean-leaves", type=int, default=2000)
    parser.add_argument("--warn-lean-leaves", type=int, default=900)
    parser.add_argument("--max-distinct-tracked", type=int, default=100_000)
    parser.add_argument("--sample-limit", type=int, default=16)
    parser.add_argument("--progress-interval", type=int, default=1_000_000)
    parser.add_argument(
        "--tile-key-mode",
        choices=["proof-family", "exact"],
        default="proof-family",
        help=(
            "proof-family estimates Phase 7 family leaves; exact keeps one "
            "semantic key per exact terminal obstruction"
        ),
    )
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    parser.add_argument(
        "--allow-reject",
        action="store_true",
        help="write rejected profiles with exit code 0 for exploratory runs",
    )
    args = parser.parse_args()
    validate_options(args)

    start = time.monotonic()
    planner = SymmetryEvidencePlanner(
        limit=args.limit,
        max_lean_leaves=args.max_lean_leaves,
        warn_lean_leaves=args.warn_lean_leaves,
        max_distinct_tracked=args.max_distinct_tracked,
        sample_limit=args.sample_limit,
        progress_interval=args.progress_interval,
        tile_key_mode=args.tile_key_mode,
    )
    planner.traverse()
    payload = planner.payload(elapsed_seconds=time.monotonic() - start)
    write_payload(payload, args.output)
    print_summary(payload)
    if payload["decision"]["status"] == "reject" and not args.allow_reject:
        raise SystemExit(1)


if __name__ == "__main__":
    main()
