import Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge
import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Trace-level start-violation bridge for the top-pairing Bellman route.

The sampled smokes fill `ObjectStartViolationMarginCert.word_eq` with
rank-specific lemmas such as `cls0000_unrank_word`.  Production trace families
should instead prove a trace-level certificate whose word is `pairWordOfSeq` of
the semantic template.  If the rank's canonical contribution-order labels match
that template, the reusable top-pairing word bridge supplies the rank equality.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceStartViolationBridge

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge

def objectStartViolationMarginCert_of_traceCert
    {rank : Fin numPairWords}
    {template : Step14 -> Face}
    {margin : Int}
    (traceCert : TraceStartViolationMarginCert template margin)
    (hlabels :
      topPairingRankFaceLabels rank =
        faceLabelsInContributionOrder (fun f : Face => f) template) :
    ObjectStartViolationMarginCert rank margin :=
  traceCert.toObjectStartViolationMarginCert
    (pairWordOfSeq_eq_unrankPairWord_of_topPairingRankFaceLabels_eq
      hlabels)

theorem traceStartViolationBridge_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceStartViolationBridge
