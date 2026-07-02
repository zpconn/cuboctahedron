import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Shard000
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Shard001
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Shard002
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Shard003
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Shard004
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Shard005
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Shard006

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Root

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Base

/-- Root validity dispatcher for all generated source-state shards.

The range premise is intentional at this smoke stage: the eventual
closed-language-to-evaluator bridge must prove the evaluator only visits
states inside this generated graph.  This root composes all local
potential inequalities without rebuilding the graph in one module. -/
theorem valid_of_lt {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hs : s < stateCount) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  by_cases hhi_000 : s < 32
  ·
    exact Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Shard000.valid_range (Nat.zero_le s) hhi_000 h
  ·
    by_cases hhi_001 : s < 64
    ·
      exact Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Shard001.valid_range (Nat.le_of_not_lt hhi_000) hhi_001 h
    ·
      by_cases hhi_002 : s < 96
      ·
        exact Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Shard002.valid_range (Nat.le_of_not_lt hhi_001) hhi_002 h
      ·
        by_cases hhi_003 : s < 128
        ·
          exact Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Shard003.valid_range (Nat.le_of_not_lt hhi_002) hhi_003 h
        ·
          by_cases hhi_004 : s < 160
          ·
            exact Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Shard004.valid_range (Nat.le_of_not_lt hhi_003) hhi_004 h
          ·
            by_cases hhi_005 : s < 192
            ·
              exact Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Shard005.valid_range (Nat.le_of_not_lt hhi_004) hhi_005 h
            ·
              by_cases hhi_006 : s < 223
              ·
                exact Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Shard006.valid_range (Nat.le_of_not_lt hhi_005) hhi_006 h
              ·
                exact False.elim ((Nat.not_lt_of_ge (Nat.le_of_not_lt hhi_006)) hs)

theorem valid {s : State} {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  exact valid_of_lt h.1 h

theorem transition_ok_of_lt {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hs : s < stateCount) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  by_cases hhi_t_000 : s < 32
  ·
    exact Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Shard000.transition_ok_range (Nat.zero_le s) hhi_t_000 h
  ·
    by_cases hhi_t_001 : s < 64
    ·
      exact Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Shard001.transition_ok_range (Nat.le_of_not_lt hhi_t_000) hhi_t_001 h
    ·
      by_cases hhi_t_002 : s < 96
      ·
        exact Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Shard002.transition_ok_range (Nat.le_of_not_lt hhi_t_001) hhi_t_002 h
      ·
        by_cases hhi_t_003 : s < 128
        ·
          exact Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Shard003.transition_ok_range (Nat.le_of_not_lt hhi_t_002) hhi_t_003 h
        ·
          by_cases hhi_t_004 : s < 160
          ·
            exact Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Shard004.transition_ok_range (Nat.le_of_not_lt hhi_t_003) hhi_t_004 h
          ·
            by_cases hhi_t_005 : s < 192
            ·
              exact Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Shard005.transition_ok_range (Nat.le_of_not_lt hhi_t_004) hhi_t_005 h
            ·
              by_cases hhi_t_006 : s < 223
              ·
                exact Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Shard006.transition_ok_range (Nat.le_of_not_lt hhi_t_005) hhi_t_006 h
              ·
                exact False.elim ((Nat.not_lt_of_ge (Nat.le_of_not_lt hhi_t_006)) hs)

theorem root_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Root
