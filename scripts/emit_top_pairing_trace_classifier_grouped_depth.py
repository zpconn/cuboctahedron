#!/usr/bin/env python3
"""Emit grouped top-pairing trace-classifier shards for one depth.

This is the production-shaped successor to the depth-8 grouped emitter.  It is
parameterized by depth so we can advance the semantic terminal classifier one
bounded shard at a time, without introducing sampled ranks or sampled paths.
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
DEFAULT_BASE_OUTPUT_DIR = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "TopPairingTraceClassifier"
)
DEFAULT_SUMMARY_DIR = ROOT / "scripts/generated"


def shard_module(index: int) -> str:
    return f"Shard{index:03d}"


def namespace(depth: int) -> str:
    return f"{BASE_IMPORT}.Depth{depth}"


def output_dir(depth: int) -> Path:
    return DEFAULT_BASE_OUTPUT_DIR / f"Depth{depth}"


def summary_path(depth: int) -> Path:
    return DEFAULT_SUMMARY_DIR / f"top_pairing_trace_classifier_depth{depth}_grouped_summary.json"


def previous_import(depth: int) -> str:
    return f"{BASE_IMPORT}.Depth{depth - 1}.All"


def shard_import(depth: int, index: int) -> str:
    return f"{BASE_IMPORT}.Depth{depth}.{shard_module(index)}"


def parent_predicate(depth: int, index: int) -> str:
    return f"Depth{depth - 1}ParentShard{index:03d}Labels"


def child_predicate(depth: int, index: int) -> str:
    return f"Depth{depth}Shard{index:03d}Labels"


def shard_theorem(depth: int, index: int) -> str:
    return f"labels_prefix{depth}_shard_{index:03d}"


def chunks(items: list[tuple[str, ...]], size: int) -> list[list[tuple[str, ...]]]:
    return [items[index : index + size] for index in range(0, len(items), size)]


def indent(text: str, spaces: int) -> str:
    prefix = " " * spaces
    return "\n".join(prefix + line if line else line for line in text.splitlines())


def local_lift_cases(
    term_prefix: str,
    child_prefixes: list[tuple[str, ...]],
    shard_prefixes: list[tuple[str, ...]],
    indent_spaces: int = 4,
) -> str:
    pad = " " * indent_spaces
    if not child_prefixes:
        return f"{pad}exact False.elim {term_prefix}"
    if len(child_prefixes) == 1:
        return (
            f"{pad}exact "
            + prefix_smoke.or_injection(
                term_prefix,
                shard_prefixes.index(child_prefixes[0]),
                len(shard_prefixes),
            )
        )
    patterns = " | ".join(
        f"{term_prefix}_{index}" for index in range(len(child_prefixes))
    )
    branches = [
        f"{pad}· exact "
        + prefix_smoke.or_injection(
            f"{term_prefix}_{index}",
            shard_prefixes.index(prefix),
            len(shard_prefixes),
        )
        for index, prefix in enumerate(child_prefixes)
    ]
    return f"{pad}rcases {term_prefix} with {patterns}\n" + "\n".join(branches)


def disjunction_or_false(subject: str, prefixes: list[tuple[str, ...]]) -> str:
    if not prefixes:
        return "    False"
    return prefix_smoke.disjunction(subject, prefixes)


def local_split_branch_without_square(next_face: str) -> str:
    return f"""  rcases hprefix with ⟨rest2, rfl⟩
  cases rest2 with
  | nil =>
      rcases hs with ⟨hlen, _⟩
      norm_num at hlen
  | cons {next_face} rest =>
      cases {next_face} <;>
        try simp
      all_goals
        unfold TopPairingStepScheduleLabels at hs
        unfold TopPairingLocalAxisLabels at ha
        simp [TopPairingStepScheduleFrom, topPairingAllowedFacesAtStep,
          pairOfFace, TopPairingLocalAxisFrom,
          TopPairingLocalAxisAllows, normalQ, topPairingLocalAxis, matId,
          matVec, dot, matMul, reflM, matSub, scalarMat, outer] at hs ha ⊢
        try norm_num at ha

        try
          unfold TopPairingPairCountsLabels at hc
          simp [pairOfFace] at hc"""


def render_shard(
    depth: int,
    shard_index: int,
    parents: list[tuple[str, ...]],
    grouped_children: dict[tuple[str, ...], list[tuple[str, ...]]],
    use_squaregap_simp: bool,
) -> str:
    child_prefixes = [
        child for parent in parents for child in grouped_children.get(parent, [])
    ]
    parent_disj = disjunction_or_false("labels", parents)
    child_disj = disjunction_or_false("labels", child_prefixes)
    parent_patterns = " | ".join(f"h{index}" for index in range(len(parents)))
    next_face = f"f{depth - 1}"

    def render_parent_case(index: int, bullet: bool) -> str:
        prefix = "  · " if bullet else "  "
        cont = "    " if bullet else "  "
        parent_ref = f"h{index}"
        parent = parents[index]
        children = grouped_children.get(parent, [])
        local_child_disj = disjunction_or_false("labels", children)
        lift = local_lift_cases(
            "hchild", children, child_prefixes, indent_spaces=(4 if bullet else 2)
        )
        split_branch = (
            prefix_smoke.local_split_branch(next_face, use_pair_counts=True)
            if use_squaregap_simp
            else local_split_branch_without_square(next_face)
        )
        return f"""{prefix}have hprefix := {parent_ref}
{cont}have hchild :
{local_child_disj} := by
{indent(split_branch, 4)}
{lift}"""

    branches: list[str] = []
    if len(parents) == 1:
        branches_text = "  have h0 := hparent\n" + render_parent_case(0, bullet=False)
        parent_split = ""
    else:
        for index, _parent in enumerate(parents):
            branches.append(render_parent_case(index, bullet=True))
        branches_text = "\n".join(branches)
        parent_split = f"  rcases hparent with {parent_patterns}\n"
    ns = namespace(depth)
    return f"""import {BASE_IMPORT}.PrefixSmoke

/-!
Generated grouped depth-{depth} top-pairing trace-classifier shard.

This shard consumes semantic depth-{depth - 1} parent prefixes and proves the
local depth-{depth} alternatives for a bounded parent group.  It contains no
sampled rank or path table.
-/

namespace {ns}.{shard_module(shard_index)}

open Cuboctahedron

set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false
set_option linter.unusedSimpArgs false
set_option maxHeartbeats 0

def {parent_predicate(depth, shard_index)} (labels : List Face) : Prop :=
{parent_disj}

def {child_predicate(depth, shard_index)} (labels : List Face) : Prop :=
{child_disj}

theorem {shard_theorem(depth, shard_index)}
    {{labels : List Face}}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hparent : {parent_predicate(depth, shard_index)} labels) :
    {child_predicate(depth, shard_index)} labels := by
  unfold {parent_predicate(depth, shard_index)} at hparent
  unfold {child_predicate(depth, shard_index)}
{parent_split.rstrip()}
{branches_text}

theorem shard_builds : True := by
  exact True.intro

end {ns}.{shard_module(shard_index)}
"""


def render_root(
    depth: int,
    parent_prefixes: list[tuple[str, ...]],
    parent_groups: list[list[tuple[str, ...]]],
) -> str:
    imports = "\n".join(
        [f"import {previous_import(depth)}"]
        + [f"import {shard_import(depth, index)}" for index in range(len(parent_groups))]
    )
    depth_predicate = " \\/\n".join(
        f"    {shard_module(index)}.{child_predicate(depth, index)} labels"
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
            f"{shard_module(group_index)}.{shard_theorem(depth, group_index)} "
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
    ns = namespace(depth)
    return f"""{imports}

/-!
Generated grouped depth-{depth} top-pairing trace-classifier root.

This root routes the already-checked semantic depth-{depth - 1} theorem into
bounded depth-{depth} parent groups.  It is a production-shape slice for the
full terminal classifier, not final coverage.
-/

namespace {ns}

open Cuboctahedron

set_option maxRecDepth 4096
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false
set_option maxHeartbeats 0

def Depth{depth}TraceLabels (labels : List Face) : Prop :=
{depth_predicate}

theorem labels_prefix{depth}
    {{labels : List Face}}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels) :
    Depth{depth}TraceLabels labels := by
  unfold Depth{depth}TraceLabels
  rcases Depth{depth - 1}.labels_prefix{depth - 1} hs hg ha hc with {parent_patterns}
{branches_text}

theorem closedRank_prefix{depth}
    {{rank : Fin numPairWords}} {{badFace : Face}}
    (h : TopPairingClosedLanguageAtRank rank badFace) :
    Depth{depth}TraceLabels
      (faceLabelsInContributionOrder (fun f : Face => f)
        (canonicalSeqOfPairWord (unrankPairWord rank))) :=
  labels_prefix{depth} h.schedule h.squareGap h.localAxis
    (TopPairingClosedLanguageAtRank.pairCounts h)

theorem closedObj_prefix{depth}
    {{badFace : Face}}
    (obj : TopPairingBellmanObj badFace) :
    Depth{depth}TraceLabels (TopPairingBellmanObj.labels (fun f : Face => f) obj) :=
  closedRank_prefix{depth} obj.closed

theorem root_builds : True := by
  exact True.intro

end {ns}
"""


def summary_payload(
    depth: int,
    parent_prefixes: list[tuple[str, ...]],
    prefixes: list[tuple[str, ...]],
    parent_groups: list[list[tuple[str, ...]]],
    group_size: int,
    use_squaregap_simp: bool,
) -> dict[str, object]:
    grouped = prefix_smoke.prefixes_by_parent(prefixes, depth - 1)
    child_counts = [len(grouped.get(parent, [])) for parent in parent_prefixes]
    return {
        "source": "exact semantic prefix enumerator",
        "depth": depth,
        "previous_depth": depth - 1,
        "prefix_count": len(prefixes),
        "parent_prefix_count": len(parent_prefixes),
        "parent_group_size": group_size,
        "shard_count": len(parent_groups),
        "min_children_per_parent": min(child_counts),
        "max_children_per_parent": max(child_counts),
        "sampled_rank_or_path_data": False,
        "proof_shape": (
            f"semantic depth-{depth - 1} prefix theorem routed through grouped "
            f"parent predicates to grouped depth-{depth} trace predicates"
        ),
        "uses_squaregap_simp": use_squaregap_simp,
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--depth", type=int, required=True)
    parser.add_argument("--output-dir", type=Path)
    parser.add_argument("--summary-json", type=Path)
    parser.add_argument("--parent-group-size", type=int, default=4)
    parser.add_argument(
        "--max-shards",
        type=int,
        help="emit only the first N grouped shards for bounded smoke generation",
    )
    parser.add_argument("--expected-parent-count", type=int)
    parser.add_argument("--expected-prefix-count", type=int)
    parser.add_argument(
        "--omit-squaregap-simp",
        action="store_true",
        help=(
            "do not unfold TopPairingSquareGapLabels in local branch proofs; "
            "this is the faster depth-8 proof shape"
        ),
    )
    args = parser.parse_args()
    if args.depth < 8 or args.depth > 14:
        raise SystemExit("--depth must be between 8 and 14")
    if args.parent_group_size <= 0:
        raise SystemExit("--parent-group-size must be positive")

    parent_prefixes = prefix_smoke.enumerate_semantic_prefixes(args.depth - 1)
    prefixes = prefix_smoke.enumerate_semantic_prefixes(args.depth)
    if (
        args.expected_parent_count is not None
        and len(parent_prefixes) != args.expected_parent_count
    ):
        raise RuntimeError(
            f"expected {args.expected_parent_count} depth-{args.depth - 1} "
            f"parents, got {len(parent_prefixes)}"
        )
    if (
        args.expected_prefix_count is not None
        and len(prefixes) != args.expected_prefix_count
    ):
        raise RuntimeError(
            f"expected {args.expected_prefix_count} depth-{args.depth} "
            f"prefixes, got {len(prefixes)}"
        )

    grouped_children = prefix_smoke.prefixes_by_parent(prefixes, args.depth - 1)
    parent_groups = chunks(parent_prefixes, args.parent_group_size)
    emit_groups = (
        parent_groups
        if args.max_shards is None
        else parent_groups[: args.max_shards]
    )

    out_dir = args.output_dir or output_dir(args.depth)
    summary = args.summary_json or summary_path(args.depth)
    out_dir.mkdir(parents=True, exist_ok=True)
    for shard_index, parents in enumerate(emit_groups):
        (out_dir / f"{shard_module(shard_index)}.lean").write_text(
            render_shard(
                args.depth,
                shard_index,
                parents,
                grouped_children,
                use_squaregap_simp=not args.omit_squaregap_simp,
            )
        )
    if len(emit_groups) == len(parent_groups):
        (out_dir / "All.lean").write_text(
            render_root(args.depth, parent_prefixes, parent_groups)
        )

    summary.parent.mkdir(parents=True, exist_ok=True)
    payload = summary_payload(
        args.depth,
        parent_prefixes,
        prefixes,
        parent_groups,
        args.parent_group_size,
        use_squaregap_simp=not args.omit_squaregap_simp,
    )
    payload["emitted_shards"] = len(emit_groups)
    payload["root_emitted"] = len(emit_groups) == len(parent_groups)
    summary.write_text(json.dumps(payload, indent=2, sort_keys=True) + "\n")
    print(f"wrote {len(emit_groups)} grouped depth-{args.depth} shard(s) to {out_dir}")
    print(f"wrote {summary}")
    print(
        f"depth{args.depth} prefixes={payload['prefix_count']} "
        f"parents={payload['parent_prefix_count']} "
        f"shards={payload['shard_count']}"
    )


if __name__ == "__main__":
    main()
