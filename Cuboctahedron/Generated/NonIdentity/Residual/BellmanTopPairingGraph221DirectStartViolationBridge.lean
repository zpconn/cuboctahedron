import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph221SemanticTerminalBridge
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace029StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace030StartViolationProvider
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTrace031StartViolationProvider

/-!
Direct start-violation bridge for the graph221 `zm,tmpp` semantic lane.

The graph221 semantic terminal bridge proves that strengthened closed-language
semantics plus the `zm,tmpp` layer-4 prefix leaves only three deterministic
tails.  Those three tails are exactly accepted traces 029, 030, and 031.  This
file connects that semantic fact directly to the trace start-violation
providers, without importing the all-trace dispatcher and without introducing
sampled rank/path objects, selected-prefix ids, exact affine RHS keys, or stored
path tables.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph221DirectStartViolationBridge

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11Layer4ClassifierSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph221SemanticTerminalBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph221TerminalTailPrefixSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge

private theorem graph221_trace029_of_prefix_rest
    {rank : Fin numPairWords} {rest : List Face}
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest)
    (hrest :
      rest = graph221Layer4ForcedTailPrefixLabels ++ graph221Tail029) :
    topPairingRankFaceLabels rank =
      acceptedTraceOfId AcceptedTraceId.t029 := by
  have hlabels :
      topPairingRankFaceLabels rank =
        [Face.xm, Face.ym, Face.zm, Face.tmpp] ++ rest := by
    simpa [Depth11Layer4PrefixAtRank] using hprefix
  rw [hlabels, hrest]
  rfl

private theorem graph221_trace030_of_prefix_rest
    {rank : Fin numPairWords} {rest : List Face}
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest)
    (hrest :
      rest = graph221Layer4ForcedTailPrefixLabels ++ graph221Tail030) :
    topPairingRankFaceLabels rank =
      acceptedTraceOfId AcceptedTraceId.t030 := by
  have hlabels :
      topPairingRankFaceLabels rank =
        [Face.xm, Face.ym, Face.zm, Face.tmpp] ++ rest := by
    simpa [Depth11Layer4PrefixAtRank] using hprefix
  rw [hlabels, hrest]
  rfl

private theorem graph221_trace031_of_prefix_rest
    {rank : Fin numPairWords} {rest : List Face}
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest)
    (hrest :
      rest = graph221Layer4ForcedTailPrefixLabels ++ graph221Tail031) :
    topPairingRankFaceLabels rank =
      acceptedTraceOfId AcceptedTraceId.t031 := by
  have hlabels :
      topPairingRankFaceLabels rank =
        [Face.xm, Face.ym, Face.zm, Face.tmpp] ++ rest := by
    simpa [Depth11Layer4PrefixAtRank] using hprefix
  rw [hlabels, hrest]
  rfl

def objectStartViolationMarginCert_of_graph221_branch029
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords} {rest : List Face}
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest)
    (hrest :
      rest = graph221Layer4ForcedTailPrefixLabels ++ graph221Tail029) :
    ObjectStartViolationMarginCert rank (scaledMargin rank) :=
  BellmanTopPairingTrace029StartViolationProvider.objectStartViolationMarginCert_of_trace029
    (graph221_trace029_of_prefix_rest hprefix hrest)

def objectStartViolationMarginCert_of_graph221_branch030
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords} {rest : List Face}
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest)
    (hrest :
      rest = graph221Layer4ForcedTailPrefixLabels ++ graph221Tail030) :
    ObjectStartViolationMarginCert rank (scaledMargin rank) :=
  BellmanTopPairingTrace030StartViolationProvider.objectStartViolationMarginCert_of_trace030
    (graph221_trace030_of_prefix_rest hprefix hrest)

def objectStartViolationMarginCert_of_graph221_branch031
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords} {rest : List Face}
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest)
    (hrest :
      rest = graph221Layer4ForcedTailPrefixLabels ++ graph221Tail031) :
    ObjectStartViolationMarginCert rank (scaledMargin rank) :=
  BellmanTopPairingTrace031StartViolationProvider.objectStartViolationMarginCert_of_trace031
    (graph221_trace031_of_prefix_rest hprefix hrest)

theorem nonIdentityRankKilled_of_graph221_branch029
    {rank : Fin numPairWords} {rest : List Face}
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest)
    (hrest :
      rest = graph221Layer4ForcedTailPrefixLabels ++ graph221Tail029) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank := by
  let zeroMargin : Fin numPairWords -> Int := fun _ => 0
  exact nonIdentityRankKilled_of_startViolationMarginCert
    (objectStartViolationMarginCert_of_graph221_branch029
      (scaledMargin := zeroMargin) hprefix hrest)

theorem nonIdentityRankKilled_of_graph221_branch030
    {rank : Fin numPairWords} {rest : List Face}
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest)
    (hrest :
      rest = graph221Layer4ForcedTailPrefixLabels ++ graph221Tail030) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank := by
  let zeroMargin : Fin numPairWords -> Int := fun _ => 0
  exact nonIdentityRankKilled_of_startViolationMarginCert
    (objectStartViolationMarginCert_of_graph221_branch030
      (scaledMargin := zeroMargin) hprefix hrest)

theorem nonIdentityRankKilled_of_graph221_branch031
    {rank : Fin numPairWords} {rest : List Face}
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest)
    (hrest :
      rest = graph221Layer4ForcedTailPrefixLabels ++ graph221Tail031) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank := by
  let zeroMargin : Fin numPairWords -> Int := fun _ => 0
  exact nonIdentityRankKilled_of_startViolationMarginCert
    (objectStartViolationMarginCert_of_graph221_branch031
      (scaledMargin := zeroMargin) hprefix hrest)

/--
Semantic direct kill for the graph221 `zm,tmpp` branch.

The only case split is the already-proved three-way semantic suffix split for
graph221.  The proof does not route through selected-prefix coverage, sampled
rank membership, the all-trace start-violation dispatcher, or Bellman margin
tables.
-/
theorem nonIdentityRankKilled_of_graph221_zm_tmpp_semantic_direct
    {rank : Fin numPairWords} {rest : List Face}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym)
    (hprefix :
      Depth11Layer4PrefixAtRank rank Face.zm Face.tmpp rest) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank := by
  have htail :=
    graph151CompletionTail_of_strengthened_prefix_generic
      hstrengthened hprefix
  have hok : graph221Layer4AcceptedTailSuffixOk rest :=
    graph221Layer4AcceptedTailSuffixOk_of_graph151TargetCompletionTail htail
  rcases hok with ⟨tail, hrest, htailOk⟩
  rcases htailOk with h029 | h030 | h031
  · subst tail
    exact nonIdentityRankKilled_of_graph221_branch029 hprefix hrest
  · subst tail
    exact nonIdentityRankKilled_of_graph221_branch030 hprefix hrest
  · subst tail
    exact nonIdentityRankKilled_of_graph221_branch031 hprefix hrest

theorem graph221_direct_start_violation_bridge_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph221DirectStartViolationBridge
