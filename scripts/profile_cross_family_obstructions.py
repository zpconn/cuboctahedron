"""Profile cross-family obstruction templates after the Phase 6S atlas.

This script is deliberately untrusted and emits no Lean evidence.  It asks
whether the two unstable Phase 6S blockers,

* ``translation.farkas_survivor``
* ``nonidentity.forced_zero_denominator``

share enough semantic structure to justify a later Lean theorem family.
"""

from __future__ import annotations

import argparse
import json
import sys
import time
from collections import Counter, defaultdict
from pathlib import Path
from typing import Any

from exact_profile import (
    EXPECTED_PAIR_WORDS,
    FACE_TO_PAIR_SIGN,
    IDENTITY,
    NORMALS,
    PAIR_COUNTS,
    PAIR_IDS,
    RPAIR,
    counts_key,
    final_axis_dot,
    first_axis_zero_index,
    impact_denom,
    impact_face,
    impact_plane_normal_offset,
    mat_key,
    mat_mul,
    mat_vec,
    multinomial_count,
    normalize_strict_constraint,
    normalized_constraints_key,
    one_dimensional_fixed_axis,
    path_prefix_affs,
    remaining_counts_after,
    seq_key,
    translation_constraints,
    translation_vector,
    vec,
    vec_key,
)
from profile_symmetry_compression import (
    canonical_translation_with_symmetry,
    denominator_polynomial_coeffs,
    integer_normalized_polynomial_coeffs,
    normalized_axis_key,
    quadratic_problem_key,
    quadratic_row_from_coeffs,
    stable_digest,
    word_key,
)


REPO_ROOT = Path(__file__).resolve().parents[1]
GENERATED_DIR = REPO_ROOT / "scripts" / "generated"
DEFAULT_WINDOWS = (
    (0, 100_000),
    (10_000_000, 10_100_000),
    (30_000_000, 30_100_000),
    (60_000_000, 60_100_000),
    (90_000_000, 90_100_000),
)
DEFAULT_K_VALUES = (10, 25, 50, 100, 250, 500)
DEFAULT_MAX_TEMPLATE_FAMILIES = 4


def output_json_path(start: int, end: int) -> Path:
    return GENERATED_DIR / f"cross_family_obstructions_{start:09d}_{end:09d}.json"


def output_md_path(start: int, end: int) -> Path:
    return GENERATED_DIR / f"cross_family_obstructions_{start:09d}_{end:09d}.md"


def proof_usable_output_json_path(start: int, end: int) -> Path:
    return GENERATED_DIR / f"cross_family_obstructions_phase6u_split_{start:09d}_{end:09d}.json"


def proof_usable_output_md_path(start: int, end: int) -> Path:
    return GENERATED_DIR / f"cross_family_obstructions_phase6u_split_{start:09d}_{end:09d}.md"


def cross_summary_json_path() -> Path:
    return GENERATED_DIR / "cross_family_obstructions_cross_window_summary.json"


def cross_summary_md_path() -> Path:
    return GENERATED_DIR / "cross_family_obstructions_cross_window_summary.md"


def proof_usable_summary_json_path() -> Path:
    return GENERATED_DIR / "cross_family_obstructions_phase6u_split_summary.json"


def proof_usable_summary_md_path() -> Path:
    return GENERATED_DIR / "cross_family_obstructions_phase6u_split_summary.md"


def display_path(path: Path) -> str:
    try:
        return str(path.relative_to(REPO_ROOT))
    except ValueError:
        return str(path)


def write_text(path: Path, text: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text, encoding="utf-8")


def write_json(path: Path, payload: dict[str, Any]) -> None:
    write_text(path, json.dumps(payload, indent=2, sort_keys=True) + "\n")


def load_json(path: Path) -> dict[str, Any]:
    with path.open("r", encoding="utf-8") as handle:
        return json.load(handle)


def sign_key(value: int) -> str:
    if value > 0:
        return "+"
    if value < 0:
        return "-"
    return "0"


def constraint_support_key(constraints: list[tuple]) -> str:
    rows: list[str] = []
    for constraint in constraints:
        normalized = normalize_strict_constraint(constraint)
        rows.append(",".join(sign_key(int(value)) for value in normalized))
    rows.sort()
    return "|".join(rows)


class TemplateTracker:
    def __init__(self, *, sample_limit: int) -> None:
        self.sample_limit = sample_limit
        self.case_counts: Counter[str] = Counter()
        self.leaves_by_template: dict[str, set[str]] = defaultdict(set)
        self.samples: dict[str, list[dict[str, Any]]] = defaultdict(list)

    def add(
        self,
        template: str,
        leaf: str,
        *,
        case_count: int = 1,
        sample: dict[str, Any] | None = None,
    ) -> None:
        self.case_counts[template] += case_count
        self.leaves_by_template[template].add(leaf)
        if sample is not None and len(self.samples[template]) < self.sample_limit:
            self.samples[template].append(sample)

    def rows(self, *, limit: int | None = None) -> list[dict[str, Any]]:
        rows = [
            {
                "template": template,
                "case_count": self.case_counts[template],
                "leaf_count": len(self.leaves_by_template[template]),
                "samples": self.samples.get(template, []),
            }
            for template in self.case_counts
        ]
        rows.sort(key=lambda row: (-row["leaf_count"], -row["case_count"], row["template"]))
        return rows if limit is None else rows[:limit]


class CrossFamilyObstructionProfiler:
    def __init__(
        self,
        *,
        rank_start: int,
        rank_end: int,
        max_lean_leaves: int,
        sample_limit: int,
        progress_interval: int,
    ) -> None:
        self.rank_start = rank_start
        self.rank_end = min(rank_end, EXPECTED_PAIR_WORDS)
        self.max_lean_leaves = max_lean_leaves
        self.sample_limit = sample_limit
        self.progress_interval = progress_interval

        self.pair_words_scanned = 0
        self.identity_words = 0
        self.nonidentity_words = 0
        self.translation_survivor_cases = 0
        self.nonidentity_forced_zero_cases = 0
        self.translation_denominator_nonpositive_masks = 0

        self.translation_leaves: set[str] = set()
        self.nonidentity_leaves: set[str] = set()
        self.all_templates = TemplateTracker(sample_limit=sample_limit)
        self.translation_templates = TemplateTracker(sample_limit=sample_limit)
        self.nonidentity_templates = TemplateTracker(sample_limit=sample_limit)
        self.cross_templates = TemplateTracker(sample_limit=sample_limit)
        self.proof_templates = TemplateTracker(sample_limit=sample_limit)
        self.zero_axis_fanout: dict[str, set[str]] = defaultdict(set)
        self.zero_remaining_fanout: dict[str, set[str]] = defaultdict(set)
        self.cross_pair_normal_translation_fanout: dict[str, set[str]] = defaultdict(set)
        self.cross_pair_normal_nonidentity_fanout: dict[str, set[str]] = defaultdict(set)
        self.constraint_cache: dict[tuple[str, str], tuple[str, str]] = {}
        self.normal_support_cache: dict[
            str,
            tuple[str, tuple[str, ...], tuple[str, ...], tuple[str, ...]],
        ] = {}

    def add_template(
        self,
        family: str,
        template: str,
        leaf: str,
        *,
        sample: dict[str, Any],
    ) -> None:
        full_template = f"{family}|{template}"
        self.all_templates.add(full_template, leaf, sample=sample)
        if family.startswith("translation."):
            self.translation_templates.add(full_template, leaf, sample=sample)
        elif family.startswith("nonidentity."):
            self.nonidentity_templates.add(full_template, leaf, sample=sample)
        elif family.startswith("cross."):
            self.cross_templates.add(full_template, leaf, sample=sample)

    def add_proof_template(
        self,
        family: str,
        template: str,
        leaf: str,
        *,
        sample: dict[str, Any],
    ) -> None:
        self.proof_templates.add(f"{family}|{template}", leaf, sample=sample)

    @staticmethod
    def fanout_rows(
        fanout: dict[str, set[str]],
        *,
        limit: int = 20,
    ) -> list[dict[str, Any]]:
        rows = [
            {
                "template": template,
                "concrete_obligations": len(obligations),
            }
            for template, obligations in fanout.items()
        ]
        rows.sort(key=lambda row: (-row["concrete_obligations"], row["template"]))
        return rows[:limit]

    @staticmethod
    def translation_denominator_problem(
        word: tuple[str, ...],
        pref: list,
    ) -> tuple[str, int, dict[int, tuple[tuple, tuple, list[str]]]]:
        impact_values: list[list] = [[] for _ in range(13)]
        survivor_bits = 0
        survivor_data: dict[int, tuple[tuple, tuple, list[str]]] = {}
        for mask in range(64):
            b, seq = translation_vector(list(word), mask, pref)
            prefixes = path_prefix_affs(seq)
            denoms = tuple(impact_denom(seq, b, impact, prefixes) for impact in range(1, 14))
            for index, denom in enumerate(denoms):
                impact_values[index].append(denom)
            if all(denom > 0 for denom in denoms):
                survivor_bits |= 1 << mask
                survivor_data[mask] = (denoms, b, seq)

        rows = []
        for values in impact_values:
            coeffs = denominator_polynomial_coeffs(values)
            integer_coeffs = integer_normalized_polynomial_coeffs(coeffs)
            rows.append(quadratic_row_from_coeffs(integer_coeffs))
        return quadratic_problem_key(tuple(rows)), survivor_bits, survivor_data

    def classify_translation_leaf(
        self,
        rank: int,
        word: tuple[str, ...],
        pref: list,
    ) -> None:
        self.identity_words += 1
        problem_key, survivor_bits, survivor_data = self.translation_denominator_problem(word, pref)
        problem_digest = stable_digest(problem_key)
        survivor_bitset_key = f"{survivor_bits:016x}"
        self.translation_denominator_nonpositive_masks += 64 - survivor_bits.bit_count()

        for mask, (_denoms, _b, _seq) in sorted(survivor_data.items()):
            canonical_word, canonical_mask, sym_id = canonical_translation_with_symmetry(word, mask)
            _raw_denoms, b, seq = survivor_data[mask]
            cache_key = (seq_key(seq), vec_key(b))
            if cache_key not in self.constraint_cache:
                constraints = translation_constraints(seq, b)
                self.constraint_cache[cache_key] = (
                    stable_digest(normalized_constraints_key(constraints)),
                    stable_digest(constraint_support_key(constraints)),
                )
            shape_digest, support_digest = self.constraint_cache[cache_key]
            leaf = f"translation.shape={shape_digest}"
            self.translation_leaves.add(leaf)
            self.translation_survivor_cases += 1

            seq_text = seq_key(seq)
            if seq_text not in self.normal_support_cache:
                prefixes = path_prefix_affs(seq)
                impact_supports: list[str] = []
                normal_classes: set[str] = set()
                pair_classes: set[str] = set()
                for impact in range(1, 14):
                    normal, _offset = impact_plane_normal_offset(seq, prefixes, impact)
                    normal_class = normalized_axis_key(normal)
                    face = impact_face(seq, impact)
                    pair_id, _sign = FACE_TO_PAIR_SIGN[face]
                    normal_classes.add(normal_class)
                    pair_classes.add(pair_id)
                    impact_supports.append(f"{impact}:pair={pair_id}|normal={normal_class}")
                self.normal_support_cache[seq_text] = (
                    stable_digest("|".join(sorted(impact_supports))),
                    tuple(sorted(normal_classes)),
                    tuple(sorted(pair_classes)),
                    tuple(sorted(
                        support.split(":", 1)[1] for support in impact_supports
                    )),
                )
            normal_support_digest, normal_classes, pair_classes, pair_normal_classes = (
                self.normal_support_cache[seq_text]
            )
            sample = {
                "rank": rank,
                "word": word_key(word),
                "mask": mask,
                "canonical_word": word_key(canonical_word),
                "canonical_mask": canonical_mask,
                "sym_id": sym_id,
                "shape_digest": shape_digest,
                "denominator_signature_digest": problem_digest,
                "survivor_bitset": survivor_bitset_key,
                "support_digest": support_digest,
                "normal_support_digest": normal_support_digest,
            }

            self.add_template(
                "translation.farkasShape",
                f"shape={shape_digest}",
                leaf,
                sample=sample,
            )
            self.add_proof_template(
                "translation.farkasShape",
                f"shape={shape_digest}",
                leaf,
                sample=sample,
            )
            self.add_template(
                "translation.denominatorSignature",
                f"sig={problem_digest}",
                leaf,
                sample=sample,
            )
            self.add_template(
                "translation.survivorBitset",
                f"bits={survivor_bitset_key}",
                leaf,
                sample=sample,
            )
            self.add_template(
                "translation.constraintSupport",
                f"support={support_digest}",
                leaf,
                sample=sample,
            )
            self.add_template(
                "translation.normalSupport",
                f"support={normal_support_digest}",
                leaf,
                sample=sample,
            )
            self.add_template(
                "translation.signatureSupport",
                f"sig={problem_digest}|support={support_digest}",
                leaf,
                sample=sample,
            )
            for pair_normal in pair_normal_classes:
                self.add_template(
                    "cross.pairNormal",
                    pair_normal,
                    leaf,
                    sample=sample,
                )
                self.cross_pair_normal_translation_fanout[pair_normal].add(
                    f"translation.farkasShape|shape={shape_digest}"
                )

    def classify_nonidentity_leaf(
        self,
        rank: int,
        word: tuple[str, ...],
        pref: list,
        matrix,
    ) -> None:
        self.nonidentity_words += 1
        try:
            axis = one_dimensional_fixed_axis(matrix)
        except ValueError:
            return

        final_dot = final_axis_dot(list(word), axis, pref)
        if final_dot < 0:
            axis = (-axis[0], -axis[1], -axis[2])
            final_dot = -final_dot
        if final_dot == 0:
            return

        zero_index = first_axis_zero_index(list(word), axis, pref)
        if zero_index is None:
            return

        pair_id = word[zero_index]
        transformed_normal = mat_vec(pref[zero_index], vec(NORMALS[pair_id]))
        normal_class = normalized_axis_key(transformed_normal)
        axis_class = normalized_axis_key(axis)
        prefix_digest = stable_digest(mat_key(pref[zero_index]))
        remaining_key = counts_key(remaining_counts_after(list(word), zero_index))
        leaf_key = (
            f"zeroAt={zero_index}|pair={pair_id}"
            f"|normalClass={normal_class}|axisClass={axis_class}"
        )
        leaf = f"nonidentity.forcedZero={leaf_key}"
        self.nonidentity_leaves.add(leaf)
        self.nonidentity_forced_zero_cases += 1

        sample = {
            "rank": rank,
            "word": word_key(word),
            "axis": vec_key(axis),
            "axis_class": axis_class,
            "zero_at": zero_index,
            "pair": pair_id,
            "normal_class": normal_class,
            "prefix_digest": prefix_digest,
            "remaining_counts": remaining_key,
        }
        self.add_template(
            "nonidentity.zeroShape",
            leaf_key,
            leaf,
            sample=sample,
        )
        self.add_proof_template(
            "nonidentity.zeroNormalWitness",
            leaf_key,
            leaf,
            sample=sample,
        )
        self.add_template(
            "nonidentity.zeroNormal",
            f"normal={normal_class}",
            leaf,
            sample=sample,
        )
        self.add_template(
            "nonidentity.zeroPairNormal",
            f"pair={pair_id}|normal={normal_class}",
            leaf,
            sample=sample,
        )
        self.add_template(
            "nonidentity.zeroPrefixState",
            f"zeroAt={zero_index}|pair={pair_id}|prefix={prefix_digest}",
            leaf,
            sample=sample,
        )
        self.add_template(
            "nonidentity.zeroRemainingCounts",
            f"pair={pair_id}|remaining={remaining_key}",
            leaf,
            sample=sample,
        )
        self.zero_remaining_fanout[
            f"pair={pair_id}|remaining={remaining_key}"
        ].add(leaf_key)
        self.add_template(
            "nonidentity.zeroAxis",
            f"axis={axis_class}",
            leaf,
            sample=sample,
        )
        self.zero_axis_fanout[f"axis={axis_class}"].add(leaf_key)
        self.add_template(
            "cross.pairNormal",
            f"pair={pair_id}|normal={normal_class}",
            leaf,
            sample=sample,
        )
        self.cross_pair_normal_nonidentity_fanout[
            f"pair={pair_id}|normal={normal_class}"
        ].add(f"nonidentity.zeroNormalWitness|{leaf_key}")

    def classify_leaf(self, rank: int, word: tuple[str, ...], pref: list) -> None:
        self.pair_words_scanned += 1
        if self.progress_interval and self.pair_words_scanned % self.progress_interval == 0:
            print(
                f"cross-family scanned {self.pair_words_scanned:,} pair words",
                file=sys.stderr,
            )
        matrix = mat_mul(pref[-1], RPAIR["x"])
        if matrix == IDENTITY:
            self.classify_translation_leaf(rank, word, pref)
        else:
            self.classify_nonidentity_leaf(rank, word, pref, matrix)

    def traverse(self) -> None:
        remaining = dict(PAIR_COUNTS)
        prefix: list[str] = []
        pref = [IDENTITY]

        def rec(rank_lo: int) -> None:
            block_width = multinomial_count(remaining)
            rank_hi = rank_lo + block_width
            if rank_hi <= self.rank_start or rank_lo >= self.rank_end:
                return
            if len(prefix) == 13:
                if self.rank_start <= rank_lo < self.rank_end:
                    self.classify_leaf(rank_lo, tuple(prefix), list(pref))
                return
            child_lo = rank_lo
            for pair_id in PAIR_IDS:
                if remaining[pair_id] <= 0:
                    continue
                remaining[pair_id] -= 1
                child_width = multinomial_count(remaining)
                child_hi = child_lo + child_width
                if child_hi > self.rank_start and child_lo < self.rank_end:
                    prefix.append(pair_id)
                    pref.append(mat_mul(pref[-1], RPAIR[pair_id]))
                    rec(child_lo)
                    pref.pop()
                    prefix.pop()
                remaining[pair_id] += 1
                child_lo = child_hi

        rec(0)

    def greedy_projection(
        self,
        k_values: tuple[int, ...],
        *,
        proof_usable: bool = False,
    ) -> dict[str, Any]:
        universe = set(self.translation_leaves) | set(self.nonidentity_leaves)
        uncovered = set(universe)
        selected: list[dict[str, Any]] = []
        by_k: dict[str, dict[str, Any]] = {}
        tracker = self.proof_templates if proof_usable else self.all_templates
        candidates = {
            template: set(leaves)
            for template, leaves in tracker.leaves_by_template.items()
        }
        max_k = max(k_values, default=0)
        for step in range(1, max_k + 1):
            best_template = None
            best_cover: set[str] = set()
            for template, leaves in candidates.items():
                cover = leaves & uncovered
                if (
                    len(cover) > len(best_cover)
                    or (
                        len(cover) == len(best_cover)
                        and best_template is not None
                        and template < best_template
                    )
                ):
                    best_template = template
                    best_cover = cover
            if best_template is None or not best_cover:
                break
            uncovered -= best_cover
            selected.append({
                "rank": step,
                "template": best_template,
                "new_leaf_coverage": len(best_cover),
                "remaining_leaves": len(uncovered),
                "total_case_count": tracker.case_counts[best_template],
                "template_leaf_count": len(candidates[best_template]),
            })
            if step in k_values:
                by_k[str(step)] = {
                    "selected_templates": step,
                    "remaining_leaves": len(uncovered),
                    "covered_leaves": len(universe) - len(uncovered),
                    "passes_gate": len(uncovered) <= self.max_lean_leaves,
                }

        for value in k_values:
            by_k.setdefault(str(value), {
                "selected_templates": len(selected),
                "remaining_leaves": len(uncovered),
                "covered_leaves": len(universe) - len(uncovered),
                "passes_gate": len(uncovered) <= self.max_lean_leaves,
            })

        selected_family_counts = Counter(
            row["template"].split("|", 1)[0] for row in selected
        )
        return {
            "initial_leaves": len(universe),
            "translation_leaves": len(self.translation_leaves),
            "nonidentity_leaves": len(self.nonidentity_leaves),
            "selected_template_count": len(selected),
            "selected_template_families": sorted(selected_family_counts),
            "selected_template_family_counts": dict(sorted(selected_family_counts.items())),
            "selected_prefix": selected[:25],
            "by_k": by_k,
        }

    def payload(
        self,
        *,
        elapsed_seconds: float,
        k_values: tuple[int, ...],
        proof_usable: bool,
    ) -> dict[str, Any]:
        raw_projection = self.greedy_projection(k_values, proof_usable=False)
        proof_projection = self.greedy_projection(k_values, proof_usable=True)
        projection = proof_projection if proof_usable else raw_projection
        largest_k = str(max(k_values, default=0))
        accepted = projection["by_k"].get(largest_k, {}).get("passes_gate", False)
        return {
            "schema_version": 1,
            "mode": (
                "cross-family-obstruction-proof-usable-profile"
                if proof_usable else
                "cross-family-obstruction-profile"
            ),
            "proof_usable_portfolio": proof_usable,
            "trusted_as_proof": False,
            "emits_lean_evidence": False,
            "rank_window": {
                "start": self.rank_start,
                "end": self.rank_end,
                "width": self.rank_end - self.rank_start,
            },
            "elapsed_seconds": elapsed_seconds,
            "max_lean_leaves": self.max_lean_leaves,
            "k_values": list(k_values),
            "counts": {
                "pair_words_scanned": self.pair_words_scanned,
                "identity_words": self.identity_words,
                "nonidentity_words": self.nonidentity_words,
                "translation_survivor_cases": self.translation_survivor_cases,
                "translation_denominator_nonpositive_masks":
                    self.translation_denominator_nonpositive_masks,
                "nonidentity_forced_zero_cases": self.nonidentity_forced_zero_cases,
            },
            "projection": projection,
            "raw_projection": raw_projection,
            "proof_projection": proof_projection,
            "top_translation_templates": self.translation_templates.rows(limit=20),
            "top_nonidentity_templates": self.nonidentity_templates.rows(limit=20),
            "top_cross_templates": self.cross_templates.rows(limit=20),
            "top_proof_templates": self.proof_templates.rows(limit=30),
            "top_all_templates": self.all_templates.rows(limit=30),
            "proof_usable_fanout": {
                "zero_axis_to_zero_normal_witnesses":
                    self.fanout_rows(self.zero_axis_fanout),
                "zero_remaining_counts_to_zero_normal_witnesses":
                    self.fanout_rows(self.zero_remaining_fanout),
                "cross_pair_normal_to_translation_farkas_shapes":
                    self.fanout_rows(self.cross_pair_normal_translation_fanout),
                "cross_pair_normal_to_nonidentity_zero_normal_witnesses":
                    self.fanout_rows(self.cross_pair_normal_nonidentity_fanout),
            },
            "decision": {
                "status": (
                    ("phase6u_split_window_passes" if accepted else "phase6u_split_window_rejected")
                    if proof_usable else
                    ("phase6t_window_passes" if accepted else "phase6t_window_rejected")
                ),
                "passes_at_max_k": accepted,
                "max_k": int(largest_k) if largest_k else 0,
                "remaining_leaves_at_max_k":
                    projection["by_k"].get(largest_k, {}).get("remaining_leaves"),
            },
        }


def render_window_markdown(payload: dict[str, Any]) -> str:
    window = payload["rank_window"]
    projection = payload["projection"]
    proof_usable = payload.get("proof_usable_portfolio", False)
    lines = [
        (
            "# Phase 6U Proof-Usable Split Portfolio Profile"
            if proof_usable else
            "# Cross-Family Obstruction Profile"
        ),
        "",
        "This diagnostic report is not trusted proof and emits no Lean evidence.",
        "",
        f"- Window: `[{window['start']}, {window['end']})`",
        f"- Proof-usable portfolio mode: `{proof_usable}`",
        f"- Initial leaves: `{projection['initial_leaves']}`",
        f"- Translation leaves: `{projection['translation_leaves']}`",
        f"- Nonidentity leaves: `{projection['nonidentity_leaves']}`",
        f"- Decision: `{payload['decision']['status']}`",
        "",
        "## Greedy Projection",
        "",
        "| k | Remaining leaves | Passes gate |",
        "| ---: | ---: | --- |",
    ]
    for key, row in payload["projection"]["by_k"].items():
        lines.append(
            f"| {key} | {row['remaining_leaves']:,} | `{row['passes_gate']}` |"
        )
    lines.extend([
        "",
        "## Top Templates",
        "",
        "| Template | Leaves | Cases |",
        "| --- | ---: | ---: |",
    ])
    for row in payload["top_all_templates"][:12]:
        lines.append(
            f"| `{row['template']}` | {row['leaf_count']:,} | {row['case_count']:,} |"
        )
    if proof_usable:
        lines.extend([
            "",
            "## Top Proof-Usable Templates",
            "",
            "| Template | Leaves | Cases |",
            "| --- | ---: | ---: |",
        ])
        for row in payload["top_proof_templates"][:12]:
            lines.append(
                f"| `{row['template']}` | {row['leaf_count']:,} | {row['case_count']:,} |"
            )
        lines.extend([
            "",
            "## Fanout Diagnostics",
            "",
            "| Fanout | Template | Concrete obligations |",
            "| --- | --- | ---: |",
        ])
        for fanout_name, rows in payload["proof_usable_fanout"].items():
            for row in rows[:5]:
                lines.append(
                    f"| `{fanout_name}` | `{row['template']}` | "
                    f"{row['concrete_obligations']:,} |"
                )
    lines.append("")
    return "\n".join(lines)


def summarize_windows(
    paths: list[Path],
    *,
    max_lean_leaves: int,
    max_template_families: int,
    proof_usable: bool,
) -> dict[str, Any]:
    windows = [load_json(path) for path in paths]
    all_pass = all(
        payload["decision"]["passes_at_max_k"]
        for payload in windows
    )
    selected_family_union = sorted({
        family
        for payload in windows
        for family in payload["projection"].get("selected_template_families", [])
    })
    small_selected_portfolio = len(selected_family_union) <= max_template_families
    aggregate: Counter[str] = Counter()
    aggregate_leaves: Counter[str] = Counter()
    for payload in windows:
        for row in payload["top_all_templates"]:
            aggregate[row["template"].split("|", 1)[0]] += row["case_count"]
            aggregate_leaves[row["template"].split("|", 1)[0]] += row["leaf_count"]
    aggregate_rows = [
        {
            "template_family": family,
            "case_count_sum": aggregate[family],
            "leaf_count_sum": aggregate_leaves[family],
        }
        for family in aggregate
    ]
    aggregate_rows.sort(
        key=lambda row: (-row["leaf_count_sum"], -row["case_count_sum"], row["template_family"])
    )
    return {
        "schema_version": 1,
        "mode": (
            "cross-family-obstruction-proof-usable-cross-window-summary"
            if proof_usable else
            "cross-family-obstruction-cross-window-summary"
        ),
        "proof_usable_portfolio": proof_usable,
        "trusted_as_proof": False,
        "emits_lean_evidence": False,
        "max_lean_leaves": max_lean_leaves,
        "max_template_families": max_template_families,
        "window_count": len(windows),
        "windows": [
            {
                "rank_window": payload["rank_window"],
                "initial_leaves": payload["projection"]["initial_leaves"],
                "remaining_leaves_at_max_k":
                    payload["decision"]["remaining_leaves_at_max_k"],
                "decision": payload["decision"]["status"],
                "selected_template_count":
                    payload["projection"].get("selected_template_count"),
                "selected_template_families":
                    payload["projection"].get("selected_template_families", []),
            }
            for payload in windows
        ],
        "selected_template_family_union": selected_family_union,
        "aggregate_template_families": aggregate_rows,
        "decision": {
            "status": (
                (
                    "phase6u_split_accepted"
                    if all_pass and small_selected_portfolio
                    else "phase6u_split_rejected"
                )
                if proof_usable else
                (
                    "phase6t_accepted"
                    if all_pass and small_selected_portfolio
                    else "phase6t_rejected"
                )
            ),
            "all_windows_pass_gate": all_pass,
            "small_selected_template_portfolio": small_selected_portfolio,
        },
    }


def render_summary_markdown(summary: dict[str, Any]) -> str:
    proof_usable = summary.get("proof_usable_portfolio", False)
    lines = [
        (
            "# Phase 6U Proof-Usable Split Portfolio Cross-Window Summary"
            if proof_usable else
            "# Cross-Family Obstruction Cross-Window Summary"
        ),
        "",
        "This diagnostic report is not trusted proof and emits no Lean evidence.",
        "",
        f"- Status: `{summary['decision']['status']}`",
        f"- Proof-usable portfolio mode: `{proof_usable}`",
        f"- All windows pass gate: `{summary['decision']['all_windows_pass_gate']}`",
        f"- Small selected template portfolio: `{summary['decision']['small_selected_template_portfolio']}`",
        "- Selected template family union: "
        + ", ".join(f"`{family}`" for family in summary["selected_template_family_union"]),
        "",
        "## Windows",
        "",
        "| Window | Initial leaves | Remaining leaves | Selected templates | Decision |",
        "| --- | ---: | ---: | ---: | --- |",
    ]
    for row in summary["windows"]:
        window = row["rank_window"]
        lines.append(
            f"| [{window['start']}, {window['end']}) | "
            f"{row['initial_leaves']:,} | "
            f"{row['remaining_leaves_at_max_k']:,} | "
            f"{row['selected_template_count']:,} | "
            f"`{row['decision']}` |"
        )
    lines.extend([
        "",
        "## Aggregate Template Families",
        "",
        "| Family | Leaf sum | Case sum |",
        "| --- | ---: | ---: |",
    ])
    for row in summary["aggregate_template_families"][:12]:
        lines.append(
            f"| `{row['template_family']}` | "
            f"{row['leaf_count_sum']:,} | {row['case_count_sum']:,} |"
        )
    lines.append("")
    return "\n".join(lines)


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Profile cross-family obstruction templates.",
    )
    parser.add_argument("--start-rank", type=int, default=0)
    parser.add_argument("--end-rank", type=int)
    parser.add_argument("--max-lean-leaves", type=int, default=2_000)
    parser.add_argument("--max-template-families", type=int, default=DEFAULT_MAX_TEMPLATE_FAMILIES)
    parser.add_argument("--sample-limit", type=int, default=5)
    parser.add_argument("--progress-interval", type=int, default=10_000)
    parser.add_argument("--output-json", type=Path)
    parser.add_argument("--output-md", type=Path)
    parser.add_argument(
        "--compare-default-windows",
        action="store_true",
        help="summarize the default window outputs instead of traversing ranks",
    )
    parser.add_argument(
        "--proof-usable-portfolio",
        action="store_true",
        help="use only Phase 6U proof-usable split templates for the projection",
    )
    parser.add_argument(
        "--compare-proof-usable-windows",
        action="store_true",
        help="summarize the Phase 6U proof-usable default window outputs",
    )
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    if args.compare_default_windows or args.compare_proof_usable_windows:
        proof_usable_summary = args.compare_proof_usable_windows
        paths = [
            (
                proof_usable_output_json_path(start, end)
                if proof_usable_summary else
                output_json_path(start, end)
            )
            for start, end in DEFAULT_WINDOWS
        ]
        missing = [path for path in paths if not path.exists()]
        if missing:
            raise SystemExit(
                "missing window profiles: "
                + ", ".join(display_path(path) for path in missing)
            )
        summary = summarize_windows(
            paths,
            max_lean_leaves=args.max_lean_leaves,
            max_template_families=args.max_template_families,
            proof_usable=proof_usable_summary,
        )
        output_json = args.output_json or (
            proof_usable_summary_json_path()
            if proof_usable_summary else
            cross_summary_json_path()
        )
        output_md = args.output_md or (
            proof_usable_summary_md_path()
            if proof_usable_summary else
            cross_summary_md_path()
        )
        write_json(output_json, summary)
        write_text(output_md, render_summary_markdown(summary))
        print(
            "phase 6u proof-usable split cross-window summary"
            if proof_usable_summary else
            "cross-family obstruction cross-window summary"
        )
        print(f"status: {summary['decision']['status']}")
        print(f"json: {display_path(output_json)}")
        print(f"markdown: {display_path(output_md)}")
        return

    rank_end = args.end_rank
    if rank_end is None:
        raise SystemExit("--end-rank is required unless --compare-default-windows is used")
    if not (0 <= args.start_rank <= rank_end <= EXPECTED_PAIR_WORDS):
        raise SystemExit("invalid rank window")

    profiler = CrossFamilyObstructionProfiler(
        rank_start=args.start_rank,
        rank_end=rank_end,
        max_lean_leaves=args.max_lean_leaves,
        sample_limit=args.sample_limit,
        progress_interval=args.progress_interval,
    )
    started = time.monotonic()
    profiler.traverse()
    payload = profiler.payload(
        elapsed_seconds=time.monotonic() - started,
        k_values=DEFAULT_K_VALUES,
        proof_usable=args.proof_usable_portfolio,
    )
    output_json = args.output_json or (
        proof_usable_output_json_path(args.start_rank, rank_end)
        if args.proof_usable_portfolio else
        output_json_path(args.start_rank, rank_end)
    )
    output_md = args.output_md or (
        proof_usable_output_md_path(args.start_rank, rank_end)
        if args.proof_usable_portfolio else
        output_md_path(args.start_rank, rank_end)
    )
    write_json(output_json, payload)
    write_text(output_md, render_window_markdown(payload))

    print(
        "phase 6u proof-usable split portfolio profile"
        if args.proof_usable_portfolio else
        "cross-family obstruction profile"
    )
    print(f"rank window: [{args.start_rank:,}, {rank_end:,})")
    print(f"initial leaves: {payload['projection']['initial_leaves']:,}")
    max_k = str(max(DEFAULT_K_VALUES))
    print(
        "remaining leaves at k="
        f"{max_k}: {payload['projection']['by_k'][max_k]['remaining_leaves']:,}"
    )
    print(f"status: {payload['decision']['status']}")
    print(f"json: {display_path(output_json)}")
    print(f"markdown: {display_path(output_md)}")


if __name__ == "__main__":
    main()
