#!/usr/bin/env python3
"""Emit the first top-pairing trace-classifier generated smoke module.

This small emitter is deliberately modest: it regenerates the production-shaped
prefix smoke that consumes semantic closed-language membership and proves the
first deterministic face-label prefix.  It establishes the file/layout/template
surface for later state-DAG classifier shards without introducing sampled rank
or path evidence.
"""

from __future__ import annotations

import argparse
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
DEFAULT_OUTPUT = (
    ROOT
    / "Cuboctahedron/Generated/NonIdentity/Residual/"
    / "TopPairingTraceClassifier/PrefixSmoke.lean"
)


def render() -> str:
    return """import Cuboctahedron.Search.TopPairingBellmanObject

/-!
First generated-shape smoke for the top-pairing closed trace classifier.

The full classifier should prove that a semantic closed top-pairing object has
one of the two accepted closed face traces.  This file checks the intended
proof surface on the first deterministic prefix: it consumes only
`TopPairingClosedLanguageAtRank` / `TopPairingBellmanObj` facts and introduces
no sampled rank or path table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.PrefixSmoke

open Cuboctahedron

theorem closedRank_prefix_xm_ym
    {rank : Fin numPairWords} {badFace : Face}
    (h : TopPairingClosedLanguageAtRank rank badFace) :
    ∃ rest : List Face,
      faceLabelsInContributionOrder (fun f : Face => f)
          (canonicalSeqOfPairWord (unrankPairWord rank)) =
        Face.xm :: Face.ym :: rest :=
  topPairingStepScheduleLabels_prefix_xm_ym h.schedule

theorem closedObj_prefix_xm_ym
    {badFace : Face}
    (obj : TopPairingBellmanObj badFace) :
    ∃ rest : List Face,
      TopPairingBellmanObj.labels (fun f : Face => f) obj =
        Face.xm :: Face.ym :: rest :=
  closedRank_prefix_xm_ym obj.closed

theorem closedRank_prefix3
    {rank : Fin numPairWords} {badFace : Face}
    (h : TopPairingClosedLanguageAtRank rank badFace) :
    (∃ rest : List Face,
        faceLabelsInContributionOrder (fun f : Face => f)
            (canonicalSeqOfPairWord (unrankPairWord rank)) =
          Face.xm :: Face.ym :: Face.tmpm :: rest) \\/
      (∃ rest : List Face,
        faceLabelsInContributionOrder (fun f : Face => f)
            (canonicalSeqOfPairWord (unrankPairWord rank)) =
          Face.xm :: Face.ym :: Face.yp :: rest) \\/
        (∃ rest : List Face,
          faceLabelsInContributionOrder (fun f : Face => f)
              (canonicalSeqOfPairWord (unrankPairWord rank)) =
            Face.xm :: Face.ym :: Face.zm :: rest) :=
  topPairingStepScheduleLabels_prefix3 h.schedule

theorem closedObj_prefix3
    {badFace : Face}
    (obj : TopPairingBellmanObj badFace) :
    (∃ rest : List Face,
        TopPairingBellmanObj.labels (fun f : Face => f) obj =
          Face.xm :: Face.ym :: Face.tmpm :: rest) \\/
      (∃ rest : List Face,
        TopPairingBellmanObj.labels (fun f : Face => f) obj =
          Face.xm :: Face.ym :: Face.yp :: rest) \\/
        (∃ rest : List Face,
          TopPairingBellmanObj.labels (fun f : Face => f) obj =
            Face.xm :: Face.ym :: Face.zm :: rest) :=
  closedRank_prefix3 obj.closed

theorem prefixSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.PrefixSmoke
"""


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    args = parser.parse_args()

    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(render())
    print(f"wrote {args.output}")


if __name__ == "__main__":
    main()
