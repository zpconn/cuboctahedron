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


def write_payload(payload: dict[str, Any], output: Path) -> None:
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n", encoding="utf-8")


def print_summary(payload: dict[str, Any]) -> None:
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
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    parser.add_argument(
        "--allow-reject",
        action="store_true",
        help="write rejected profiles with exit code 0 for exploratory runs",
    )
    args = parser.parse_args()
    validate_options(args)

    import time

    start = time.monotonic()
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
    write_payload(payload, args.output)
    print_summary(payload)
    if rejected and not args.allow_reject:
        raise SystemExit(1)


if __name__ == "__main__":
    main()
