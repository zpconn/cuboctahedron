import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147RankedEvalSocket
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147TargetTailCases

/-!
Case socket for the graph-147 target-tail object producer.

`Graph147TargetCompletionTail` is now known to have exactly two semantic
completions.  This adapter turns four concrete object-tail bounds
(two branch prefixes times two target tails) into the existing
`StrengthenedGraph147RankedEvalTargetTailObjectFamily` socket.

The module deliberately does not prove the arithmetic margin bound.  It only
shrinks the next producer surface to semantic tail cases, avoiding sampled
ranks, selected-prefix ids, accepted traces, exact affine keys, and stored
paths.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147TargetTailCaseSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147DirectEvalSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147RankedEvalSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke

def Graph147YpZmRankedEvalTailCaseBound
    (sequenceBadFace : Fin numPairWords -> Face -> Prop)
    (scaledMargin : Fin numPairWords -> Int)
    (tail : List Face) : Prop :=
  ∀ obj : Graph147YpZmRankedEvalMarginObj sequenceBadFace,
    obj.rest = tail ->
      Graph147YpZmRankedEvalMarginObj.marginBound scaledMargin obj

def Graph147ZmYpRankedEvalTailCaseBound
    (sequenceBadFace : Fin numPairWords -> Face -> Prop)
    (scaledMargin : Fin numPairWords -> Int)
    (tail : List Face) : Prop :=
  ∀ obj : Graph147ZmYpRankedEvalMarginObj sequenceBadFace,
    obj.rest = tail ->
      Graph147ZmYpRankedEvalMarginObj.marginBound scaledMargin obj

structure StrengthenedGraph147RankedEvalTargetTailCaseFamily
    (scaledMargin : Fin numPairWords -> Int)
    (sequenceBadFace : Fin numPairWords -> Face -> Prop) : Prop where
  yp_zm_zp :
    Graph147YpZmRankedEvalTailCaseBound
      sequenceBadFace scaledMargin graph147TargetTailZp
  yp_zm_tmmp :
    Graph147YpZmRankedEvalTailCaseBound
      sequenceBadFace scaledMargin graph147TargetTailTmmp
  zm_yp_zp :
    Graph147ZmYpRankedEvalTailCaseBound
      sequenceBadFace scaledMargin graph147TargetTailZp
  zm_yp_tmmp :
    Graph147ZmYpRankedEvalTailCaseBound
      sequenceBadFace scaledMargin graph147TargetTailTmmp

def yp_zm_targetTailObjectBound_of_tailCaseFamily
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (hfamily :
      StrengthenedGraph147RankedEvalTargetTailCaseFamily
        scaledMargin sequenceBadFace) :
    Graph147YpZmRankedEvalTargetTailObjectBound
      sequenceBadFace scaledMargin := by
  intro obj htail
  rcases graph147_targetCompletionTail_cases htail with hzp | htmmp
  · exact hfamily.yp_zm_zp obj hzp
  · exact hfamily.yp_zm_tmmp obj htmmp

def zm_yp_targetTailObjectBound_of_tailCaseFamily
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (hfamily :
      StrengthenedGraph147RankedEvalTargetTailCaseFamily
        scaledMargin sequenceBadFace) :
    Graph147ZmYpRankedEvalTargetTailObjectBound
      sequenceBadFace scaledMargin := by
  intro obj htail
  rcases graph147_targetCompletionTail_cases htail with hzp | htmmp
  · exact hfamily.zm_yp_zp obj hzp
  · exact hfamily.zm_yp_tmmp obj htmmp

def rankedEvalTargetTailObjectFamily_of_tailCaseFamily
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (hfamily :
      StrengthenedGraph147RankedEvalTargetTailCaseFamily
        scaledMargin sequenceBadFace) :
    StrengthenedGraph147RankedEvalTargetTailObjectFamily
      scaledMargin sequenceBadFace where
  yp_zm := yp_zm_targetTailObjectBound_of_tailCaseFamily hfamily
  zm_yp := zm_yp_targetTailObjectBound_of_tailCaseFamily hfamily

def rankedEvalMarginBundle_of_tailCaseFamily
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (hfamily :
      StrengthenedGraph147RankedEvalTargetTailCaseFamily
        scaledMargin sequenceBadFace) :
    StrengthenedGraph147RankedEvalMarginBundle
      scaledMargin sequenceBadFace :=
  rankedEvalMarginBundle_of_rankedEvalTargetTailObjectFamily
    (rankedEvalTargetTailObjectFamily_of_tailCaseFamily hfamily)

def rootMarginBundle_of_tailCaseFamily
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (hfamily :
      StrengthenedGraph147RankedEvalTargetTailCaseFamily
        scaledMargin sequenceBadFace) :
    StrengthenedGraph147RootMarginBundle
      scaledMargin sequenceBadFace :=
  rootMarginBundle_of_rankedEvalTargetTailObjectFamily
    (rankedEvalTargetTailObjectFamily_of_tailCaseFamily hfamily)

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147TargetTailCaseSocket
