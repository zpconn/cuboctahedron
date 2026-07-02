import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage

/-!
Prefix-frontier bridge for graph-accepted top-pairing traces.

The plain closed top-pairing language is intentionally a broad semantic
front-door.  In particular, schedule/gap/local-axis prefix classifiers can
still allow a fourth-face branch that is not present in the Bellman graph.
This module records the extra strengthened/graph-accepted filter needed by
the graph-suffix emitter: every graph-accepted trace has a prefix-4 branch in
the graph frontier consumed by `BellmanTopPairingGraphSuffixEmitter1MSmoke`.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedPrefixFrontier

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
open Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Accepted

def GraphPrefix4FrontierLabels (labels : List Face) : Prop :=
  labels.take 4 = [Face.xm, Face.ym, Face.tmpm, Face.tppm] \/
  labels.take 4 = [Face.xm, Face.ym, Face.tmpm, Face.zm] \/
  labels.take 4 = [Face.xm, Face.ym, Face.yp, Face.tmmm] \/
  labels.take 4 = [Face.xm, Face.ym, Face.yp, Face.zm] \/
  labels.take 4 = [Face.xm, Face.ym, Face.zm, Face.tmpp] \/
  labels.take 4 = [Face.xm, Face.ym, Face.zm, Face.yp] \/
  labels.take 4 = [Face.xm, Face.ym, Face.zm, Face.zp]

theorem graphPrefix4Frontier_of_graphAcceptedTraceLabels
    {labels : List Face}
    (hgraph : GraphAcceptedTraceLabels labels) :
    GraphPrefix4FrontierLabels labels := by
  unfold GraphAcceptedTraceLabels at hgraph
  rcases hgraph with
    h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7 | h8 | h9 |
    h10 | h11 | h12 | h13 | h14 | h15 | h16 | h17 | h18 |
    h19 | h20 | h21 | h22 | h23 | h24 | h25 | h26 | h27 |
    h28 | h29 | h30 | h31 | h32 | h33 | h34 | h35 | h36
  all_goals
    subst labels
    simp [GraphPrefix4FrontierLabels,
      acceptedFaceTrace_000, acceptedFaceTrace_001, acceptedFaceTrace_002,
      acceptedFaceTrace_003, acceptedFaceTrace_004, acceptedFaceTrace_005,
      acceptedFaceTrace_006, acceptedFaceTrace_007, acceptedFaceTrace_008,
      acceptedFaceTrace_009, acceptedFaceTrace_010, acceptedFaceTrace_011,
      acceptedFaceTrace_012, acceptedFaceTrace_013, acceptedFaceTrace_014,
      acceptedFaceTrace_015, acceptedFaceTrace_016, acceptedFaceTrace_017,
      acceptedFaceTrace_018, acceptedFaceTrace_019, acceptedFaceTrace_020,
      acceptedFaceTrace_021, acceptedFaceTrace_022, acceptedFaceTrace_023,
      acceptedFaceTrace_024, acceptedFaceTrace_025, acceptedFaceTrace_026,
      acceptedFaceTrace_027, acceptedFaceTrace_028, acceptedFaceTrace_029,
      acceptedFaceTrace_030, acceptedFaceTrace_031, acceptedFaceTrace_032,
      acceptedFaceTrace_033, acceptedFaceTrace_034, acceptedFaceTrace_035,
      acceptedFaceTrace_036]

theorem graphPrefix4Frontier_of_strengthened_terminal
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hterm :
      TerminalOkTraceLabels (topPairingRankFaceLabels rank)) :
    GraphPrefix4FrontierLabels (topPairingRankFaceLabels rank) :=
  graphPrefix4Frontier_of_graphAcceptedTraceLabels
    (graphAcceptedTraceLabels_of_strengthenedTerminalOk
      hstrengthened hterm)

theorem graphAcceptedPrefixFrontier_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedPrefixFrontier
