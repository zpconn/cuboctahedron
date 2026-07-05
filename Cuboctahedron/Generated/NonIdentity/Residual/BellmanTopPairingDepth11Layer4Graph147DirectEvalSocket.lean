import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4ClassifierSocket
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedTargetCompletionLocalBranchTableShard000

/-!
Graph-147 direct semantic eval socket for the layer-4 Bellman route.

This file is the production-shaped replacement for routing the graph-147
branches through mapped class cases.  A future generator/proof should provide
only two semantic facts for the branch suffix:

* the suffix is a `Graph147TargetCompletionTail`;
* the root-gain margin bound holds for the deterministic evaluator result.

The adapter below turns those facts, together with the strengthened closed
language and the layer-4 prefix equation, into the public graph-exact eval
gate.  It mentions no sampled ranks, selected prefixes, accepted trace ids,
exact affine keys, or raw path tables.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147DirectEvalSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4ClassifierSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedTargetCompletionLocalBranchTableShard000
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Potential

/--
Semantic graph-147 target-completion family for the `yp, zm` layer-4 branch.

The hard future theorem is the `tail` field plus the `margin` field.  Both are
rank-semantic and parameterized by the strengthened closed-language proof; the
structure does not carry any per-rank object table.
-/
structure StrengthenedGraph147YpZmTargetCompletionFamily
    (scaledMargin : Fin numPairWords -> Int)
    (sequenceBadFace : Fin numPairWords -> Face -> Prop) : Prop where
  tail :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank Face.yp Face.zm rest ->
          Graph147TargetCompletionTail rest
  margin :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank Face.yp Face.zm rest ->
          Graph147TargetCompletionTail rest ->
          Graph147TargetCompletionTailRootMarginBound
            scaledMargin rank (-53 : Int) rest

/--
Semantic graph-147 target-completion family for the `zm, yp` layer-4 branch.
-/
structure StrengthenedGraph147ZmYpTargetCompletionFamily
    (scaledMargin : Fin numPairWords -> Int)
    (sequenceBadFace : Fin numPairWords -> Face -> Prop) : Prop where
  tail :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank Face.zm Face.yp rest ->
          Graph147TargetCompletionTail rest
  margin :
    ∀ rank,
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
        ∀ rest,
          Depth11Layer4PrefixAtRank rank Face.zm Face.yp rest ->
          Graph147TargetCompletionTail rest ->
          Graph147TargetCompletionTailRootMarginBound
            scaledMargin rank (-53 : Int) rest

/-- The two graph-147 branches packaged together for a future portfolio. -/
structure StrengthenedGraph147TargetCompletionBundle
    (scaledMargin : Fin numPairWords -> Int)
    (sequenceBadFace : Fin numPairWords -> Face -> Prop) : Prop where
  yp_zm :
    StrengthenedGraph147YpZmTargetCompletionFamily
      scaledMargin sequenceBadFace
  zm_yp :
    StrengthenedGraph147ZmYpTargetCompletionFamily
      scaledMargin sequenceBadFace

theorem graphExactEvalGateAtRank_of_yp_zm_targetCompletionFamily
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords} {rest : List Face}
    (hfamily :
      StrengthenedGraph147YpZmTargetCompletionFamily
        scaledMargin sequenceBadFace)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.yp Face.zm rest) :
    TopPairingGraphExactEvalGateAtRank
      (fun state : StrengthenedClosedEvalState => graphPotential state.graph)
      strengthenedClosedEvalNext
      (fun face : Face => face)
      strengthenedClosedEvalStart
      (176 : Int)
      scaledMargin
      rank
      Face.ym := by
  have hlabels :
      topPairingRankFaceLabels rank =
        [Face.xm, Face.ym, Face.yp, Face.zm] ++ rest := by
    simpa [Depth11Layer4PrefixAtRank] using hprefix
  have htail := hfamily.tail rank hstrengthened rest hprefix
  exact
    graph147YpZmStrengthenedGraphExactEvalGateAtRank_of_tail_margin
      hstrengthened hlabels htail
        (hfamily.margin rank hstrengthened rest hprefix htail)

theorem graphExactEvalGateAtRank_of_zm_yp_targetCompletionFamily
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords} {rest : List Face}
    (hfamily :
      StrengthenedGraph147ZmYpTargetCompletionFamily
        scaledMargin sequenceBadFace)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.zm Face.yp rest) :
    TopPairingGraphExactEvalGateAtRank
      (fun state : StrengthenedClosedEvalState => graphPotential state.graph)
      strengthenedClosedEvalNext
      (fun face : Face => face)
      strengthenedClosedEvalStart
      (176 : Int)
      scaledMargin
      rank
      Face.ym := by
  have hlabels :
      topPairingRankFaceLabels rank =
        [Face.xm, Face.ym, Face.zm, Face.yp] ++ rest := by
    simpa [Depth11Layer4PrefixAtRank] using hprefix
  have htail := hfamily.tail rank hstrengthened rest hprefix
  exact
    graph147ZmYpStrengthenedGraphExactEvalGateAtRank_of_tail_margin
      hstrengthened hlabels htail
        (hfamily.margin rank hstrengthened rest hprefix htail)

theorem graphExactEvalGateAtRank_of_bundle_yp_zm
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords} {rest : List Face}
    (hbundle :
      StrengthenedGraph147TargetCompletionBundle
        scaledMargin sequenceBadFace)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.yp Face.zm rest) :
    TopPairingGraphExactEvalGateAtRank
      (fun state : StrengthenedClosedEvalState => graphPotential state.graph)
      strengthenedClosedEvalNext
      (fun face : Face => face)
      strengthenedClosedEvalStart
      (176 : Int)
      scaledMargin
      rank
      Face.ym :=
  graphExactEvalGateAtRank_of_yp_zm_targetCompletionFamily
    hbundle.yp_zm hstrengthened hprefix

theorem graphExactEvalGateAtRank_of_bundle_zm_yp
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords} {rest : List Face}
    (hbundle :
      StrengthenedGraph147TargetCompletionBundle
        scaledMargin sequenceBadFace)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix : Depth11Layer4PrefixAtRank rank Face.zm Face.yp rest) :
    TopPairingGraphExactEvalGateAtRank
      (fun state : StrengthenedClosedEvalState => graphPotential state.graph)
      strengthenedClosedEvalNext
      (fun face : Face => face)
      strengthenedClosedEvalStart
      (176 : Int)
      scaledMargin
      rank
      Face.ym :=
  graphExactEvalGateAtRank_of_zm_yp_targetCompletionFamily
    hbundle.zm_yp hstrengthened hprefix

theorem graph147DirectEvalSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147DirectEvalSocket
