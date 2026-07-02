#!/usr/bin/env python3
"""Emit a semantic Bellman eval gate for graph-accepted top-pairing traces.

The current visible closed-language predicate is broader than the generated
Bellman graph language.  This emitter records the compact graph-accepted trace
surface: if a semantic object has one of the accepted face-label traces and the
matching trace-specific margin bound, then the deterministic Bellman evaluator
accepts it.  It emits no sampled rank/path objects.
"""

from __future__ import annotations

import argparse
import json
import re
from pathlib import Path

import emit_top_pairing_trace_classifier_prefix_smoke as prefix_smoke


ROOT = Path(__file__).resolve().parents[1]
DEFAULT_AUDIT_JSON = (
    ROOT
    / "scripts/generated/top_pairing_closed_graph_acceptance_all_examples_lean_aligned.json"
)
DEFAULT_OUTPUT = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraphAcceptedEvalGate.lean"
)
DEFAULT_SUMMARY = (
    ROOT
    / "scripts/generated/top_pairing_graph_accepted_eval_gate_summary.json"
)
NAMESPACE = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingGraphAcceptedEvalGate"
)
BASE_IMPORT = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingGraphEvalSplit10MSmoke.Base"
)
DEFAULT_BASE_LEAN = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "BellmanTopPairingGraphEvalSplit10MSmoke/Base.lean"
)
OBJECT_IMPORT = "Cuboctahedron.Search.TopPairingBellmanObject"


def trace_name(index: int) -> str:
    return f"acceptedFaceTrace_{index:03d}"


def eval_name(index: int) -> str:
    return f"acceptedTrace_{index:03d}_eval"


def final_name(index: int) -> str:
    return f"acceptedTrace_{index:03d}_final_nonneg"


def render_trace_def(index: int, labels: list[str]) -> str:
    return (
        f"def {trace_name(index)} : List Face :=\n"
        f"  {prefix_smoke.lean_face_list(tuple(labels))}\n"
    )


def read_graph_potential_values(path: Path) -> dict[int, int]:
    text = path.read_text()
    return {
        int(state): int(value)
        for state, value in re.findall(r"\|\s+(\d+)\s+=>\s+(-?\d+)", text)
    }


def render_eval_theorem(
    index: int,
    final_state: int,
    gain: int,
    potential_value: int,
) -> str:
    return f"""
private theorem {eval_name(index)} :
    evalLabelStepFn graphSmokeNext rootState
        ({trace_name(index)}.map smokeLabelOfFace) =
      some (({final_state} : State), ({gain} : Int)) := by
  rfl

private theorem {final_name(index)} :
    0 <= graphPotential ({final_state} : State) := by
  change 0 <= ({potential_value} : Int)
  norm_num
"""


def render_disjunction(cases: list[dict[str, object]]) -> str:
    parts = []
    for index, case in enumerate(cases):
        gain = int(case["gain"])
        parts.append(
            "    (TopPairingBellmanObj.labels (fun f : Face => f) obj = "
            f"{trace_name(index)} /\\\n"
            f"      scaledMargin obj.rank <= (176 : Int) + ({gain} : Int))"
        )
    return " \\/\n".join(parts)


def render_trace_labels_disjunction(cases: list[dict[str, object]]) -> str:
    parts = [
        f"    labels = {trace_name(index)}"
        for index, _case in enumerate(cases)
    ]
    return " \\/\n".join(parts)


def render_trace_labels_branch(index: int, total: int) -> str:
    injected = prefix_smoke.or_injection("htrace", index, total)
    return f"""  · rcases h{index} with ⟨htrace, _hmargin⟩
    exact {injected}
"""


def render_branch(index: int, final_state: int, gain: int) -> str:
    return f"""  · rcases h{index} with ⟨htrace, hmargin⟩
    refine ⟨(({final_state} : State), ({gain} : Int)), ?_, {final_name(index)}, hmargin⟩
    change
      evalLabelStepFn graphSmokeNext rootState
          (TopPairingBellmanObj.labels smokeLabelOfFace obj) =
        some (({final_state} : State), ({gain} : Int))
    rw [TopPairingBellmanObj.labels_map
      (g := smokeLabelOfFace) (labelOfFace := fun f : Face => f)]
    rw [htrace]
    exact {eval_name(index)}
"""


def render_margin_constructor(index: int, total: int, gain: int) -> str:
    injected = prefix_smoke.or_injection("⟨htrace, hmargin⟩", index, total)
    return f"""
theorem graphAcceptedTraceMargin_{index:03d}
    {{scaledMargin : Fin numPairWords -> Int}}
    {{obj : TopPairingBellmanObj Face.ym}}
    (htrace :
      TopPairingBellmanObj.labels (fun f : Face => f) obj =
        {trace_name(index)})
    (hmargin :
      scaledMargin obj.rank <= (176 : Int) + ({gain} : Int)) :
    GraphAcceptedTraceMargin scaledMargin obj := by
  unfold GraphAcceptedTraceMargin
  exact {injected}
"""


def render_module(
    cases: list[dict[str, object]],
    potential_values: dict[int, int],
) -> str:
    trace_defs = "".join(
        render_trace_def(index, list(case["labels"]))
        for index, case in enumerate(cases)
    )
    eval_theorems = "".join(
        render_eval_theorem(
            index,
            int(case["final_state"]),
            int(case["gain"]),
            potential_values[int(case["final_state"])],
        )
        for index, case in enumerate(cases)
    )
    disj = render_disjunction(cases)
    labels_disj = render_trace_labels_disjunction(cases)
    hpatterns = " | ".join(f"h{index}" for index in range(len(cases)))
    branches = "\n".join(
        render_branch(index, int(case["final_state"]), int(case["gain"]))
        for index, case in enumerate(cases)
    )
    labels_branches = "\n".join(
        render_trace_labels_branch(index, len(cases))
        for index, _case in enumerate(cases)
    )
    margin_constructors = "".join(
        render_margin_constructor(index, len(cases), int(case["gain"]))
        for index, case in enumerate(cases)
    )
    return f"""import {BASE_IMPORT}
import {OBJECT_IMPORT}

/-!
Generated semantic eval gate for graph-accepted top-pairing traces.

This module replaces the obsolete two-trace smoke gate with the corrected
Lean-aligned graph-accepted trace surface.  It does not prove that the current
closed-language predicate implies graph acceptance; instead it records the
compact production socket needed by a strengthened semantic language:
graph-accepted trace membership plus the matching margin bound implies
`BellmanEvalAccepts`.
-/

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096

namespace {NAMESPACE}

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

{trace_defs}
{eval_theorems}
def GraphAcceptedTraceLabels (labels : List Face) : Prop :=
{labels_disj}

def GraphAcceptedTraceMargin
    (scaledMargin : Fin numPairWords -> Int)
    (obj : TopPairingBellmanObj Face.ym) : Prop :=
{disj}

{margin_constructors}
theorem graphAcceptedTraceLabels_of_graphAcceptedTraceMargin
    {{scaledMargin : Fin numPairWords -> Int}}
    {{obj : TopPairingBellmanObj Face.ym}}
    (hgraph : GraphAcceptedTraceMargin scaledMargin obj) :
    GraphAcceptedTraceLabels
      (TopPairingBellmanObj.labels (fun f : Face => f) obj) := by
  unfold GraphAcceptedTraceMargin at hgraph
  unfold GraphAcceptedTraceLabels
  rcases hgraph with {hpatterns}
{labels_branches}

theorem bellmanEvalAccepts_of_graphAcceptedTraceMargin
    {{scaledMargin : Fin numPairWords -> Int}}
    (obj : TopPairingBellmanObj Face.ym)
    (hgraph : GraphAcceptedTraceMargin scaledMargin obj) :
    BellmanEvalAccepts graphPotential graphSmokeNext rootState (176 : Int)
      (fun obj : TopPairingBellmanObj Face.ym => scaledMargin obj.rank)
      (fun obj => TopPairingBellmanObj.labels smokeLabelOfFace obj)
      obj := by
  unfold GraphAcceptedTraceMargin at hgraph
  rcases hgraph with {hpatterns}
{branches}

theorem gate_builds : True := by
  exact True.intro

end {NAMESPACE}
"""


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--audit-json", type=Path, default=DEFAULT_AUDIT_JSON)
    parser.add_argument("--base-lean", type=Path, default=DEFAULT_BASE_LEAN)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    parser.add_argument("--summary-json", type=Path, default=DEFAULT_SUMMARY)
    args = parser.parse_args()

    data = json.loads(args.audit_json.read_text())
    cases = list(data["first_accepted"])
    expected = int(data["stats"]["accepted"])
    if len(cases) != expected:
        raise RuntimeError(f"expected {expected} accepted traces, got {len(cases)}")
    if expected != 37:
        raise RuntimeError(f"expected 37 accepted traces, got {expected}")
    potential_values = read_graph_potential_values(args.base_lean)
    missing = sorted(
        {int(case["final_state"]) for case in cases} - set(potential_values)
    )
    if missing:
        raise RuntimeError(f"missing graphPotential values for states {missing}")
    bad_finals = [
        int(case["final_state"])
        for case in cases
        if potential_values[int(case["final_state"])] < 0
    ]
    if bad_finals:
        raise RuntimeError(f"accepted traces have negative final potentials: {bad_finals}")

    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(render_module(cases, potential_values))

    summary = {
        "source": str(args.audit_json.relative_to(ROOT)),
        "accepted_trace_count": len(cases),
        "unique_final_states": sorted({int(case["final_state"]) for case in cases}),
        "unique_gains": sorted({int(case["gain"]) for case in cases}),
        "min_gain": min(int(case["gain"]) for case in cases),
        "max_gain": max(int(case["gain"]) for case in cases),
        "public_trace_defs": True,
        "exports_trace_labels_predicate": True,
        "exports_trace_margin_constructors": True,
        "sampled_rank_or_path_data": False,
        "proof_shape": (
            "semantic face-trace disjunction plus matching margin bound "
            "implies BellmanEvalAccepts"
        ),
        "output": str(args.output.relative_to(ROOT)),
    }
    args.summary_json.parent.mkdir(parents=True, exist_ok=True)
    args.summary_json.write_text(json.dumps(summary, indent=2, sort_keys=True) + "\n")

    print(f"wrote {args.output}")
    print(f"wrote {args.summary_json}")
    print(
        f"accepted traces={summary['accepted_trace_count']} "
        f"unique finals={len(summary['unique_final_states'])} "
        f"gain range=[{summary['min_gain']}, {summary['max_gain']}]"
    )


if __name__ == "__main__":
    main()
