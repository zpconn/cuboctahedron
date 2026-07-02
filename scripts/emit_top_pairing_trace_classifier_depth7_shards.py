#!/usr/bin/env python3
"""Emit multi-file depth-7 top-pairing trace-classifier shards.

This generator is the first layout smoke beyond the single-file prefix module.
It consumes only the semantic prefix enumerator from
`emit_top_pairing_trace_classifier_prefix_smoke.py`; the generated Lean files
still prove every statement from semantic predicates, not from sampled ranks or
paths.
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path

import emit_top_pairing_trace_classifier_prefix_smoke as prefix_smoke


ROOT = Path(__file__).resolve().parents[1]
BASE_IMPORT = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "TopPairingTraceClassifier.PrefixSmoke"
)
NAMESPACE = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "TopPairingTraceClassifier.Depth7"
)
DEFAULT_OUTPUT_DIR = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "TopPairingTraceClassifier/Depth7"
)
DEFAULT_SUMMARY = (
    ROOT / "scripts/generated/top_pairing_trace_classifier_depth7_summary.json"
)


def shard_module(index: int) -> str:
    return f"Shard{index:03d}"


def module_path(index: int) -> str:
    return f"{BASE_IMPORT.rsplit('.', 1)[0]}.Depth7.{shard_module(index)}"


def shard_theorem(index: int) -> str:
    return f"labels_prefix7_shard_{index:03d}"


def render_shard(
    index: int,
    parent: tuple[str, ...],
    child_prefixes: list[tuple[str, ...]],
) -> str:
    local_disjunction = prefix_smoke.disjunction("labels", child_prefixes)
    parent_hyp = (
        f"∃ rest : List Face, labels = {prefix_smoke.lean_face_list(parent)} ++ rest"
    )
    return f"""import {BASE_IMPORT}

/-!
Generated depth-7 top-pairing trace-classifier shard.

This shard proves the local child alternatives for one depth-6 parent prefix.
It consumes semantic closed-language fields only; it contains no sampled rank or
path table.
-/

namespace {NAMESPACE}.{shard_module(index)}

open Cuboctahedron

set_option linter.unusedTactic false
set_option linter.unreachableTactic false

theorem {shard_theorem(index)}
    {{labels : List Face}}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels)
    (hprefix : {parent_hyp}) :
{local_disjunction} := by
{prefix_smoke.local_split_branch("f6", use_pair_counts=True)}

end {NAMESPACE}.{shard_module(index)}
"""


def render_root(
    parent_prefixes: list[tuple[str, ...]],
    prefixes7: list[tuple[str, ...]],
) -> str:
    imports = "\n".join(f"import {module_path(index)}" for index in range(len(parent_prefixes)))
    global_disjunction = prefix_smoke.disjunction("labels", prefixes7)
    grouped = prefix_smoke.prefixes_by_parent(prefixes7, 6)
    global_index = {prefix: i for i, prefix in enumerate(prefixes7)}
    parent_patterns = " | ".join(f"h{index}" for index in range(len(parent_prefixes)))
    parent_cases: list[str] = []
    for index, parent in enumerate(parent_prefixes):
        children = grouped[parent]
        call = (
            f"{shard_module(index)}.{shard_theorem(index)} hs hg ha hc h{index}"
        )
        if len(children) == 1:
            injected = prefix_smoke.or_injection(
                call, global_index[children[0]], len(prefixes7)
            )
            parent_cases.append(f"  · exact {injected}")
            continue
        child_patterns = " | ".join(f"h{index}_{j}" for j in range(len(children)))
        branches = []
        for child_index, child in enumerate(children):
            branches.append(
                "    · exact "
                + prefix_smoke.or_injection(
                    f"h{index}_{child_index}",
                    global_index[child],
                    len(prefixes7),
                )
            )
        parent_cases.append(
            f"  · rcases {call} with {child_patterns}\n" + "\n".join(branches)
        )
    parent_cases_text = "\n".join(parent_cases)
    return f"""{imports}

/-!
Generated depth-7 top-pairing trace-classifier root.

This root combines local semantic shards into the global depth-7 prefix
disjunction.  It is still a bounded smoke module, not final generated coverage.
-/

namespace {NAMESPACE}

open Cuboctahedron

theorem labels_prefix7
    {{labels : List Face}}
    (hs : TopPairingStepScheduleLabels labels)
    (hg : TopPairingSquareGapLabels labels)
    (ha : TopPairingLocalAxisLabels labels)
    (hc : TopPairingPairCountsLabels labels) :
{global_disjunction} := by
  rcases PrefixSmoke.labels_prefix6 hs hg ha hc with {parent_patterns}
{parent_cases_text}

theorem closedRank_prefix7
    {{rank : Fin numPairWords}} {{badFace : Face}}
    (h : TopPairingClosedLanguageAtRank rank badFace) :
{prefix_smoke.disjunction(
    "faceLabelsInContributionOrder (fun f : Face => f) "
    "(canonicalSeqOfPairWord (unrankPairWord rank))",
    prefixes7,
)} :=
  labels_prefix7 h.schedule h.squareGap h.localAxis
    (TopPairingClosedLanguageAtRank.pairCounts h)

theorem closedObj_prefix7
    {{badFace : Face}}
    (obj : TopPairingBellmanObj badFace) :
{prefix_smoke.disjunction(
    "TopPairingBellmanObj.labels (fun f : Face => f) obj",
    prefixes7,
)} :=
  closedRank_prefix7 obj.closed

end {NAMESPACE}
"""


def summary_payload(
    parent_prefixes: list[tuple[str, ...]],
    prefixes7: list[tuple[str, ...]],
) -> dict[str, object]:
    grouped = prefix_smoke.prefixes_by_parent(prefixes7, 6)
    child_counts = [len(grouped[parent]) for parent in parent_prefixes]
    return {
        "source": "exact semantic prefix enumerator",
        "depth": 7,
        "prefix_count": len(prefixes7),
        "parent_depth": 6,
        "parent_prefix_count": len(parent_prefixes),
        "shard_count": len(parent_prefixes),
        "min_children_per_shard": min(child_counts),
        "max_children_per_shard": max(child_counts),
        "sampled_rank_or_path_data": False,
        "semantic_components": [
            "TopPairingStepScheduleLabels",
            "TopPairingSquareGapLabels",
            "TopPairingLocalAxisLabels",
            "TopPairingPairCountsLabels",
        ],
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--output-dir", type=Path, default=DEFAULT_OUTPUT_DIR)
    parser.add_argument("--summary-json", type=Path, default=DEFAULT_SUMMARY)
    args = parser.parse_args()

    parent_prefixes = prefix_smoke.enumerate_semantic_prefixes(6)
    prefixes7 = prefix_smoke.enumerate_semantic_prefixes(7)
    if len(parent_prefixes) != 68:
        raise RuntimeError(f"expected 68 depth-6 parents, got {len(parent_prefixes)}")
    if len(prefixes7) != 209:
        raise RuntimeError(f"expected 209 depth-7 prefixes, got {len(prefixes7)}")

    grouped = prefix_smoke.prefixes_by_parent(prefixes7, 6)
    args.output_dir.mkdir(parents=True, exist_ok=True)
    for index, parent in enumerate(parent_prefixes):
        (args.output_dir / f"{shard_module(index)}.lean").write_text(
            render_shard(index, parent, grouped[parent])
        )
    (args.output_dir / "All.lean").write_text(render_root(parent_prefixes, prefixes7))

    args.summary_json.parent.mkdir(parents=True, exist_ok=True)
    args.summary_json.write_text(
        json.dumps(
            summary_payload(parent_prefixes, prefixes7),
            indent=2,
            sort_keys=True,
        )
        + "\n"
    )
    print(f"wrote {len(parent_prefixes)} shards under {args.output_dir}")
    print(f"wrote {args.output_dir / 'All.lean'}")
    print(f"wrote {args.summary_json}")


if __name__ == "__main__":
    main()
