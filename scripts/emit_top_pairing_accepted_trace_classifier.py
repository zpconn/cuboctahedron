#!/usr/bin/env python3
r"""Emit the positive terminal-to-graph-accepted trace classifier.

This module is still a bounded Bellman classifier component, not full coverage.
It proves that the cancellation-ok terminal traces reduce to graph-accepted
traces once the strengthened semantic filters are assumed:

* actual-face omnihedrality (`Nodup` over the 14 faces);
* sequence/bad-face compatibility, represented here by excluding the
  graph-rejected terminal traces that still pass `Nodup`.

The generator emits no sampled ranks or path objects.
"""

from __future__ import annotations

import argparse
import json
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
    / "TopPairingTraceClassifier/Accepted.lean"
)
DEFAULT_SUMMARY = (
    ROOT / "scripts/generated/top_pairing_accepted_trace_classifier_summary.json"
)
NAMESPACE = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "TopPairingTraceClassifier.Accepted"
)
GATE_IMPORT = (
    "Cuboctahedron.Generated.NonIdentity.Residual."
    "BellmanTopPairingGraphAcceptedEvalGate"
)


def rejected_trace_name(index: int) -> str:
    return f"rejectedGraphTrace_{index:03d}"


def not_omni_name(index: int) -> str:
    return f"rejectedGraphTrace_{index:03d}_not_actualFaceOmni"


def render_trace_def(index: int, labels: list[str]) -> str:
    return (
        f"def {rejected_trace_name(index)} : List Face :=\n"
        f"  {prefix_smoke.lean_face_list(tuple(labels))}\n"
    )


def render_rejected_disjunction(subject: str, count: int) -> str:
    parts = [f"    {subject} = {rejected_trace_name(index)}" for index in range(count)]
    return " \\/\n".join(parts)


def render_badface_disjunction(subject: str, badface_indices: list[int]) -> str:
    parts = [
        f"    {subject} = {rejected_trace_name(index)}" for index in badface_indices
    ]
    return " \\/\n".join(parts) if parts else "    False"


def render_not_omni_theorem(index: int) -> str:
    return f"""
theorem {not_omni_name(index)} :
    ¬ TopPairingActualFaceOmniLabels {rejected_trace_name(index)} := by
  unfold TopPairingActualFaceOmniLabels
  decide
"""


def render_reject_branch(
    index: int,
    badface_indices: list[int],
) -> str:
    htrace = f"h{index}"
    if index in badface_indices:
        bad_index = badface_indices.index(index)
        injected = prefix_smoke.or_injection(htrace, bad_index, len(badface_indices))
        return f"""    · exfalso
      rcases hbad with ⟨_hbadFace, hnotBad⟩
      exact hnotBad ({injected})
"""
    return f"""    · exfalso
      rw [{htrace}] at homni
      exact {not_omni_name(index)} homni
"""


def labels_are_nodup(labels: list[str]) -> bool:
    return len(set(labels)) == len(labels)


def render_module(rejected: list[dict[str, object]]) -> str:
    trace_defs = "".join(
        render_trace_def(index, list(case["labels"]))
        for index, case in enumerate(rejected)
    )
    nodup_rejected = [
        index for index, case in enumerate(rejected)
        if labels_are_nodup(list(case["labels"]))
    ]
    not_omni_theorems = "".join(
        render_not_omni_theorem(index)
        for index in range(len(rejected))
        if index not in nodup_rejected
    )
    rejected_disj = render_rejected_disjunction("labels", len(rejected))
    badface_disj = render_badface_disjunction("labels", nodup_rejected)
    hpatterns = " | ".join(f"h{index}" for index in range(len(rejected)))
    branches = "".join(
        render_reject_branch(index, nodup_rejected)
        for index in range(len(rejected))
    )
    return f"""import {GATE_IMPORT}

/-!
Generated positive terminal classifier for top-pairing traces.

The current terminal enumerator leaves 47 cancellation-ok traces.  Of those,
37 are graph-accepted and 10 are graph-rejected.  This module proves that the
10 rejected traces are excluded by the strengthened semantic filters: nine fail
actual-face omnihedrality, and the remaining `Nodup` trace is excluded by the
sequence/bad-face compatibility predicate below.

No sampled ranks or sampled paths are emitted here.
-/

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096

namespace {NAMESPACE}

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate

{trace_defs}
{not_omni_theorems}
def GraphRejectedTraceLabels (labels : List Face) : Prop :=
{rejected_disj}

def GraphRejectedBadFaceTraceLabels (labels : List Face) : Prop :=
{badface_disj}

def TerminalOkTraceLabels (labels : List Face) : Prop :=
  GraphAcceptedTraceLabels labels \\/
    GraphRejectedTraceLabels labels

def SequenceBadFaceLabels (labels : List Face) (badFace : Face) : Prop :=
  badFace = Face.ym /\\
    ¬ GraphRejectedBadFaceTraceLabels labels

theorem graphAcceptedTraceLabels_of_terminalOk_filters
    {{labels : List Face}} {{badFace : Face}}
    (hterm : TerminalOkTraceLabels labels)
    (homni : TopPairingActualFaceOmniLabels labels)
    (hbad : SequenceBadFaceLabels labels badFace) :
    GraphAcceptedTraceLabels labels := by
  unfold TerminalOkTraceLabels at hterm
  rcases hterm with haccepted | hrejected
  · exact haccepted
  · unfold GraphRejectedTraceLabels at hrejected
    rcases hrejected with {hpatterns}
{branches}

theorem accepted_classifier_builds : True := by
  exact True.intro

end {NAMESPACE}
"""


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--audit-json", type=Path, default=DEFAULT_AUDIT_JSON)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    parser.add_argument("--summary-json", type=Path, default=DEFAULT_SUMMARY)
    args = parser.parse_args()

    data = json.loads(args.audit_json.read_text())
    rejected = list(data["first_rejections"])
    accepted = list(data["first_accepted"])
    if len(accepted) != 37:
        raise RuntimeError(f"expected 37 accepted traces, got {len(accepted)}")
    if len(rejected) != 10:
        raise RuntimeError(f"expected 10 rejected traces, got {len(rejected)}")
    nodup_rejected = [
        index for index, case in enumerate(rejected)
        if labels_are_nodup(list(case["labels"]))
    ]
    if not nodup_rejected:
        raise RuntimeError("expected at least one rejected trace requiring bad-face filter")

    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(render_module(rejected))

    summary = {
        "source": str(args.audit_json.relative_to(ROOT)),
        "accepted_trace_count": len(accepted),
        "rejected_trace_count": len(rejected),
        "rejected_not_actual_face_omni_count": len(rejected) - len(nodup_rejected),
        "rejected_bad_face_trace_count": len(nodup_rejected),
        "rejected_bad_face_trace_indices": nodup_rejected,
        "sampled_rank_or_path_data": False,
        "proof_shape": (
            "TerminalOkTraceLabels plus actual-face omnihedrality and "
            "sequence/bad-face compatibility implies GraphAcceptedTraceLabels"
        ),
        "output": str(args.output.relative_to(ROOT)),
    }
    args.summary_json.parent.mkdir(parents=True, exist_ok=True)
    args.summary_json.write_text(json.dumps(summary, indent=2, sort_keys=True) + "\n")
    print(f"wrote {args.output}")
    print(f"wrote {args.summary_json}")
    print(
        f"accepted={len(accepted)} rejected={len(rejected)} "
        f"bad-face-rejected={len(nodup_rejected)}"
    )


if __name__ == "__main__":
    main()
