import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard121

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [968, 970). -/
theorem valid_s0968 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (968 : State) label t gain ->
      gain + graphPotential t <= graphPotential (968 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0968 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0968] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (103 : State) <= graphPotential (968 : State)
    decide
  ·
    simp [graphSmokeNext_s0968, h_l0012] at h

theorem transition_ok_s0968 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (968 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (968 : State) := by
  intro h
  change graphSmokeNext_s0968 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0968] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-18 : Int) + graphPotential (103 : State) <= graphPotential (968 : State)
      decide
  ·
    simp [graphSmokeNext_s0968, h_l0012] at h

theorem valid_s0969 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (969 : State) label t gain ->
      gain + graphPotential t <= graphPotential (969 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0969 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0969] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (113 : State) <= graphPotential (969 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0969] at h
      rcases h with ⟨rfl, rfl⟩
      change (114 : Int) + graphPotential (111 : State) <= graphPotential (969 : State)
      decide
    ·
      simp [graphSmokeNext_s0969, h_l0005, h_l0012] at h

theorem transition_ok_s0969 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (969 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (969 : State) := by
  intro h
  change graphSmokeNext_s0969 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0969] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (113 : State) <= graphPotential (969 : State)
      decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0969] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (114 : Int) + graphPotential (111 : State) <= graphPotential (969 : State)
        decide
    ·
      simp [graphSmokeNext_s0969, h_l0005, h_l0012] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 968 <= s) (hhi : s < 970) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0968 h
  · exact valid_s0969 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 968 <= s) (hhi : s < 970) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0968 h
  · exact transition_ok_s0969 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard121
