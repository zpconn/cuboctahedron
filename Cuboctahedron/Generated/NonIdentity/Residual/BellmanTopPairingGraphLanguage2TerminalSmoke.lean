import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2GraphSmoke
import Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2TerminalSmoke

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2GraphSmoke

private def sampledObjectStartViolationCert :
    forall idx, sampledObjectAccepts idx ->
      Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge.ObjectStartViolationMarginCert
        (sampledRankOf idx)
        (sampledScaledMarginAtRank (sampledRankOf idx))
  | idx, _hAccept => by
      cases idx
      · refine {
          cert := cls0000PositiveCert,
          word_eq := ?_,
          kernel_check := cls0000PositiveCert_kernelCheck,
          solve_check := cls0000PositiveCert_axisSolveCheck,
          axis_forces := cls0000PositiveCert_axisForces,
          badFace := Face.ym,
          badFace_ne_xp := cls0000PositiveCert_badFace_ne_xp,
          badFace_violation := cls0000PositiveCert_badFaceViolation
        }
        change cls0000Word = unrankPairWord cls0000Rank
        exact cls0000_unrank_word.symm
      · refine {
          cert := cls0001PositiveCert,
          word_eq := ?_,
          kernel_check := cls0001PositiveCert_kernelCheck,
          solve_check := cls0001PositiveCert_axisSolveCheck,
          axis_forces := cls0001PositiveCert_axisForces,
          badFace := Face.ym,
          badFace_ne_xp := cls0001PositiveCert_badFace_ne_xp,
          badFace_violation := cls0001PositiveCert_badFaceViolation
        }
        change cls0001Word = unrankPairWord cls0001Rank
        exact cls0001_unrank_word.symm

theorem graphSmoke_sampled_axis_rank_killed
    {rank : Fin numPairWords} (hrank : sampledContainsRank rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge.nonIdentityRankKilled_of_object_nonpos_start_violation_margin_certs
    graphSmoke_sampled_axis_object_cover_eval_covers
    graphSmoke_sampled_axis_object_eval_scaled_margin_nonpos_at_object
    sampledObjectStartViolationCert hrank

theorem bellmanGraphTerminalSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2TerminalSmoke
