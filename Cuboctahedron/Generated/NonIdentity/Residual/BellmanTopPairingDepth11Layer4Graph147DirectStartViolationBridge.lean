import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147TargetTailLabels
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace027StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace028StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace032StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace033StartViolationProvider

/-!
Direct start-violation bridge for the graph147 target-tail semantic cases.

The graph147 target-tail language has exactly two semantic tails.  Combined
with the `yp,zm` and `zm,yp` layer-4 branches, these are accepted traces 028,
027, 033, and 032.  This bridge enters the existing checked trace
start-violation providers through the semantic label equalities from
`BellmanTopPairingDepth11Layer4Graph147TargetTailLabels`.

No sampled ranks, selected-prefix ids, accepted-trace membership tables, exact
affine RHS keys, or raw graph paths are introduced here.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147DirectStartViolationBridge

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4ClassifierSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147DirectEvalSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147RankedEvalSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147TargetTailLabels
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalGate
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge

def objectStartViolationMarginCert_of_graph147_yp_zm_targetTailZp
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (obj : Graph147YpZmRankedEvalMarginObj sequenceBadFace)
    (hrest : obj.rest = graph147TargetTailZp) :
    ObjectStartViolationMarginCert obj.rank (scaledMargin obj.rank) :=
  BellmanTopPairingTrace028StartViolationProvider.objectStartViolationMarginCert_of_trace028
    (by
      simpa [graph147YpZmTargetTailZpLabels, graph147TargetTailZp,
        acceptedTraceOfId, acceptedFaceTrace_028]
        using graph147YpZm_labels_eq_targetTailZp obj hrest)

def objectStartViolationMarginCert_of_graph147_yp_zm_targetTailTmmp
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (obj : Graph147YpZmRankedEvalMarginObj sequenceBadFace)
    (hrest : obj.rest = graph147TargetTailTmmp) :
    ObjectStartViolationMarginCert obj.rank (scaledMargin obj.rank) :=
  BellmanTopPairingTrace027StartViolationProvider.objectStartViolationMarginCert_of_trace027
    (by
      simpa [graph147YpZmTargetTailTmmpLabels, graph147TargetTailTmmp,
        acceptedTraceOfId, acceptedFaceTrace_027]
        using graph147YpZm_labels_eq_targetTailTmmp obj hrest)

def objectStartViolationMarginCert_of_graph147_zm_yp_targetTailZp
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (obj : Graph147ZmYpRankedEvalMarginObj sequenceBadFace)
    (hrest : obj.rest = graph147TargetTailZp) :
    ObjectStartViolationMarginCert obj.rank (scaledMargin obj.rank) :=
  BellmanTopPairingTrace033StartViolationProvider.objectStartViolationMarginCert_of_trace033
    (by
      simpa [graph147ZmYpTargetTailZpLabels, graph147TargetTailZp,
        acceptedTraceOfId, acceptedFaceTrace_033]
        using graph147ZmYp_labels_eq_targetTailZp obj hrest)

def objectStartViolationMarginCert_of_graph147_zm_yp_targetTailTmmp
    {scaledMargin : Fin numPairWords -> Int}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (obj : Graph147ZmYpRankedEvalMarginObj sequenceBadFace)
    (hrest : obj.rest = graph147TargetTailTmmp) :
    ObjectStartViolationMarginCert obj.rank (scaledMargin obj.rank) :=
  BellmanTopPairingTrace032StartViolationProvider.objectStartViolationMarginCert_of_trace032
    (by
      simpa [graph147ZmYpTargetTailTmmpLabels, graph147TargetTailTmmp,
        acceptedTraceOfId, acceptedFaceTrace_032]
        using graph147ZmYp_labels_eq_targetTailTmmp obj hrest)

theorem nonIdentityRankKilled_of_graph147_yp_zm_targetTailZp
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (obj : Graph147YpZmRankedEvalMarginObj sequenceBadFace)
    (hrest : obj.rest = graph147TargetTailZp) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled obj.rank := by
  let zeroMargin : Fin numPairWords -> Int := fun _ => 0
  exact nonIdentityRankKilled_of_startViolationMarginCert
    (objectStartViolationMarginCert_of_graph147_yp_zm_targetTailZp
      (scaledMargin := zeroMargin) obj hrest)

theorem nonIdentityRankKilled_of_graph147_yp_zm_targetTailTmmp
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (obj : Graph147YpZmRankedEvalMarginObj sequenceBadFace)
    (hrest : obj.rest = graph147TargetTailTmmp) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled obj.rank := by
  let zeroMargin : Fin numPairWords -> Int := fun _ => 0
  exact nonIdentityRankKilled_of_startViolationMarginCert
    (objectStartViolationMarginCert_of_graph147_yp_zm_targetTailTmmp
      (scaledMargin := zeroMargin) obj hrest)

theorem nonIdentityRankKilled_of_graph147_zm_yp_targetTailZp
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (obj : Graph147ZmYpRankedEvalMarginObj sequenceBadFace)
    (hrest : obj.rest = graph147TargetTailZp) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled obj.rank := by
  let zeroMargin : Fin numPairWords -> Int := fun _ => 0
  exact nonIdentityRankKilled_of_startViolationMarginCert
    (objectStartViolationMarginCert_of_graph147_zm_yp_targetTailZp
      (scaledMargin := zeroMargin) obj hrest)

theorem nonIdentityRankKilled_of_graph147_zm_yp_targetTailTmmp
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    (obj : Graph147ZmYpRankedEvalMarginObj sequenceBadFace)
    (hrest : obj.rest = graph147TargetTailTmmp) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled obj.rank := by
  let zeroMargin : Fin numPairWords -> Int := fun _ => 0
  exact nonIdentityRankKilled_of_startViolationMarginCert
    (objectStartViolationMarginCert_of_graph147_zm_yp_targetTailTmmp
      (scaledMargin := zeroMargin) obj hrest)

theorem nonIdentityRankKilled_of_graph147_yp_zm_semantic_direct
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.yp Face.zm rest) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank := by
  let obj : Graph147YpZmRankedEvalMarginObj sequenceBadFace :=
    { rank := rank
      rest := rest
      strengthened := hstrengthened
      branchPrefix := hprefix }
  have htail :
      Graph147TargetCompletionTail rest :=
    graph147YpZm_targetCompletionTail_of_strengthened_prefix
      hstrengthened hprefix
  rcases graph147_targetCompletionTail_cases htail with hzp | htmmp
  · exact nonIdentityRankKilled_of_graph147_yp_zm_targetTailZp obj hzp
  · exact nonIdentityRankKilled_of_graph147_yp_zm_targetTailTmmp obj htmmp

theorem nonIdentityRankKilled_of_graph147_zm_yp_semantic_direct
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.yp rest) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank := by
  let obj : Graph147ZmYpRankedEvalMarginObj sequenceBadFace :=
    { rank := rank
      rest := rest
      strengthened := hstrengthened
      branchPrefix := hprefix }
  have htail :
      Graph147TargetCompletionTail rest :=
    graph147ZmYp_targetCompletionTail_of_strengthened_prefix
      hstrengthened hprefix
  rcases graph147_targetCompletionTail_cases htail with hzp | htmmp
  · exact nonIdentityRankKilled_of_graph147_zm_yp_targetTailZp obj hzp
  · exact nonIdentityRankKilled_of_graph147_zm_yp_targetTailTmmp obj htmmp

theorem graph147_direct_start_violation_bridge_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4Graph147DirectStartViolationBridge
