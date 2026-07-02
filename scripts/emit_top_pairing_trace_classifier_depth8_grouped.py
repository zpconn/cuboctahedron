#!/usr/bin/env python3
"""Emit grouped depth-8 top-pairing trace-classifier shards.

This is the first production-shaped full-terminal classifier slice after the
depth-7 smoke.  It keeps the proof semantic: generated modules consume the
closed-language predicates and the existing depth-7 theorem, not sampled ranks
or sampled paths.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path

import emit_top_pairing_trace_classifier_prefix_smoke as prefix_smoke


ROOT = Path(__file__).resolve().parents[1]
BASE_IMPORT = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "TopPairingTraceClassifier"
)
PREVIOUS_IMPORT = f"{BASE_IMPORT}.Depth7.All"
SHARD_IMPORT = f"{BASE_IMPORT}.PrefixSmoke"
NAMESPACE = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "TopPairingTraceClassifier.Depth8"
)
DEFAULT_OUTPUT_DIR = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "TopPairingTraceClassifier/Depth8"
)
DEFAULT_SUMMARY = (
    ROOT
    / "scripts/generated/"
    / "top_pairing_trace_classifier_depth8_grouped_summary.json"
)


def shard_module(index: int) -> str:
    return f"Shard{index:03d}"


def module_path(index: int) -> str:
    return f"{BASE_IMPORT}.Depth8.{shard_module(index)}"


def parent_predicate(index: int) -> str:
    return f"Depth7ParentShard{index:03d}Labels"


def child_predicate(index: int) -> str:
    return f"Depth8Shard{index:03d}Labels"


def shard_theorem(index: int) -> str:
    return f"labels_prefix8_shard_{index:03d}"


def chunks(items: list[tuple[str, ...]], size: int) -> list[list[tuple[str, ...]]]:
    return [items[index : index + size] for index in range(0, len(items), size)]


def indent(text: str, spaces: int) -> str:
    prefix = " " * spaces
    return "\n".join(prefix + line if line else line for line in text.splitlines())


def local_lift_cases(
    term_prefix: str,
    child_prefixes: list[tuple[str, ...]],
    shard_prefixes: list[tuple[str, ...]],
) -> str:
    if len(child_prefixes) == 1:
        return (
            "    exact "
            + prefix_smoke.or_injection(
                term_prefix,
                shard_prefixes.index(child_prefixes[0]),
                len(shard_prefixes),
            )
        )
    patterns = " | ".join(f"{term_prefix}_{index}" for index in range(len(child_prefixes)))
    branches = [
        "    · exact "
        + prefix_smoke.or_injection(
            f"{term_prefix}_{index}",
            shard_prefixes.index(prefix),
            len(shard_prefixes),
        )
        for index, prefix in enumerate(child_prefixes)
    ]
    return f"    rcases {term_prefix} with {patterns}\n" + "\n".join(branches)


def render_shard(
    shard_index: int,
    parents: list[tuple[str, ...]],
    grouped_children: dict[tuple[str, ...], list[tuple[str, ...]]],
) -> str:
    child_prefixes = [
        child for parent in parents for child in grouped_children[parent]
    ]
    parent_disj = prefix_smoke.disjunction("labels", parents)
    child_disj = prefix_smoke.disjunction("labels", child_prefixes)
    parent_patterns = " | ".join(f"h{index}" for index in range(len(parents)))
    branches: list[str] = []
    for index, parent in enumerate(parents):
        children = grouped_children[parent]
        local_child_disj = prefix_smoke.disjunction("labels", children)
        lift = local_lift_cases("hchild", children, child_prefixes)
        branches.append(
            f"""  · have hprefix := h{index}
    have hchild :
{local_child_disj} := by
{indent(prefix_smoke.local_split_branch("f7", use_pair_counts=True), 4)}
{lift}"""
        )
    branches_text = "\n".join(branches)
    return f"""import {SHARD_IMPORT}

/-!
Generated grouped depth-8 top-pairing trace-classifier shard.

This shard consumes semantic depth-7 parent prefixes and proves the local
depth-8 alternatives for a bounded parent group.  It contains no sampled rank
or path table.
-/

namespace {NAMESPACE}.{shard_module(shard_index)}

open Cuboctahedron

set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false
set_option maxHeartbeats 0

def {parent_predicate(shard_index)} (labels : List Face) : Prop :=
{parent_disj}

def {child_predicate(shard_index)} (labels : List Face) : Prop :=
{child_disj}

theorem {shard_theorem(shard_index)}
    {{labels : List Face}}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hparent : {parent_predicate(shard_index)} labels) :
    {child_predicate(shard_index)} labels := by
  unfold {parent_predicate(shard_index)} at hparent
  unfold {child_predicate(shard_index)}
  rcases hparent with {parent_patterns}
{branches_text}

theorem shard_builds : True := by
  exact True.intro

end {NAMESPACE}.{shard_module(shard_index)}
"""


def render_root(
    parent_prefixes: list[tuple[str, ...]],
    parent_groups: list[list[tuple[str, ...]]],
) -> str:
    imports = "\n".join(
        [f"import {PREVIOUS_IMPORT}"]
        + [f"import {module_path(index)}" for index in range(len(parent_groups))]
    )
    depth8_predicate = " \\/\n".join(
        f"    {shard_module(index)}.{child_predicate(index)} labels"
        for index in range(len(parent_groups))
    )
    parent_to_group: dict[tuple[str, ...], tuple[int, int]] = {}
    for group_index, group in enumerate(parent_groups):
        for local_index, parent in enumerate(group):
            parent_to_group[parent] = (group_index, local_index)
    parent_patterns = " | ".join(f"h{index}" for index in range(len(parent_prefixes)))
    branches: list[str] = []
    for parent_index, parent in enumerate(parent_prefixes):
        group_index, local_index = parent_to_group[parent]
        parent_term = prefix_smoke.or_injection(
            f"h{parent_index}",
            local_index,
            len(parent_groups[group_index]),
        )
        child_term = (
            f"{shard_module(group_index)}.{shard_theorem(group_index)} "
            f"hs hg ha hc ({parent_term})"
        )
        branches.append(
            "  · exact "
            + prefix_smoke.or_injection(
                f"({child_term})",
                group_index,
                len(parent_groups),
            )
        )
    branches_text = "\n".join(branches)
    return f"""{imports}

/-!
Generated grouped depth-8 top-pairing trace-classifier root.

This root routes the already-checked semantic depth-7 theorem into bounded
depth-8 parent groups.  It is a production-shape slice for the full terminal
classifier, not final coverage.
-/

namespace {NAMESPACE}

open Cuboctahedron

set_option maxRecDepth 4096
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false
set_option maxHeartbeats 0

def Depth8TraceLabels (labels : List Face) : Prop :=
{depth8_predicate}

theorem labels_prefix8
    {{labels : List Face}}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels) :
    Depth8TraceLabels labels := by
  unfold Depth8TraceLabels
  rcases Depth7.labels_prefix7 hs hg ha hc with {parent_patterns}
{branches_text}

theorem closedRank_prefix8
    {{rank : Fin numPairWords}} {{badFace : Face}}
    (h : TopPairingClosedLanguageAtRank rank badFace) :
    Depth8TraceLabels
      (faceLabelsInContributionOrder (fun f : Face => f)
        (canonicalSeqOfPairWord (unrankPairWord rank))) :=
  labels_prefix8 h.schedule h.squareGap h.localAxis
    (TopPairingClosedLanguageAtRank.pairCounts h)

theorem closedObj_prefix8
    {{badFace : Face}}
    (obj : TopPairingBellmanObj badFace) :
    Depth8TraceLabels (TopPairingBellmanObj.labels (fun f : Face => f) obj) :=
  closedRank_prefix8 obj.closed

theorem root_builds : True := by
  exact True.intro

end {NAMESPACE}
"""


def summary_payload(
    parent_prefixes: list[tuple[str, ...]],
    prefixes8: list[tuple[str, ...]],
    parent_groups: list[list[tuple[str, ...]]],
    group_size: int,
) -> dict[str, object]:
    grouped = prefix_smoke.prefixes_by_parent(prefixes8, 7)
    child_counts = [len(grouped[parent]) for parent in parent_prefixes]
    return {
        "source": "exact semantic prefix enumerator",
        "depth": 8,
        "previous_depth": 7,
        "prefix_count": len(prefixes8),
        "parent_prefix_count": len(parent_prefixes),
        "parent_group_size": group_size,
        "shard_count": len(parent_groups),
        "min_children_per_parent": min(child_counts),
        "max_children_per_parent": max(child_counts),
        "sampled_rank_or_path_data": False,
        "proof_shape": (
            "semantic depth-7 prefix theorem routed through grouped parent "
            "predicates to grouped depth-8 trace predicates"
        ),
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--output-dir", type=Path, default=DEFAULT_OUTPUT_DIR)
    parser.add_argument("--summary-json", type=Path, default=DEFAULT_SUMMARY)
    parser.add_argument("--parent-group-size", type=int, default=4)
    parser.add_argument(
        "--max-shards",
        type=int,
        help="emit only the first N grouped shards for bounded smoke generation",
    )
    args = parser.parse_args()
    if args.parent_group_size <= 0:
        raise SystemExit("--parent-group-size must be positive")

    parent_prefixes = prefix_smoke.enumerate_semantic_prefixes(7)
    prefixes8 = prefix_smoke.enumerate_semantic_prefixes(8)
    if len(parent_prefixes) != 209:
        raise RuntimeError(f"expected 209 depth-7 parents, got {len(parent_prefixes)}")
    if len(prefixes8) != 595:
        raise RuntimeError(f"expected 595 depth-8 prefixes, got {len(prefixes8)}")

    grouped_children = prefix_smoke.prefixes_by_parent(prefixes8, 7)
    parent_groups = chunks(parent_prefixes, args.parent_group_size)
    emit_groups = (
        parent_groups
        if args.max_shards is None
        else parent_groups[: args.max_shards]
    )

    args.output_dir.mkdir(parents=True, exist_ok=True)
    for shard_index, parents in enumerate(emit_groups):
        (args.output_dir / f"{shard_module(shard_index)}.lean").write_text(
            render_shard(shard_index, parents, grouped_children)
        )
    if len(emit_groups) == len(parent_groups):
        (args.output_dir / "All.lean").write_text(
            render_root(parent_prefixes, parent_groups)
        )

    args.summary_json.parent.mkdir(parents=True, exist_ok=True)
    summary = summary_payload(
        parent_prefixes,
        prefixes8,
        parent_groups,
        args.parent_group_size,
    )
    summary["emitted_shards"] = len(emit_groups)
    summary["root_emitted"] = len(emit_groups) == len(parent_groups)
    args.summary_json.write_text(json.dumps(summary, indent=2, sort_keys=True) + "\n")
    print(f"wrote {len(emit_groups)} grouped depth-8 shard(s) to {args.output_dir}")
    print(f"wrote {args.summary_json}")
    print(
        f"depth8 prefixes={summary['prefix_count']} "
        f"parents={summary['parent_prefix_count']} "
        f"shards={summary['shard_count']}"
    )


if __name__ == "__main__":
    main()
