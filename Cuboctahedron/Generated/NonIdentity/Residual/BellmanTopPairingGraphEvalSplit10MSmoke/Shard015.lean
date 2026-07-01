import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard015

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [120, 128). -/
theorem valid_s0120 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (120 : State) label t gain ->
      gain + graphPotential t <= graphPotential (120 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0120 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0120] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (257 : State) <= graphPotential (120 : State)
    decide
  ·
    simp [graphSmokeNext_s0120, h_l0003] at h

theorem transition_ok_s0120 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (120 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (120 : State) := by
  intro h
  change graphSmokeNext_s0120 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0120] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (257 : State) <= graphPotential (120 : State)
      decide
  ·
    simp [graphSmokeNext_s0120, h_l0003] at h

theorem valid_s0121 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (121 : State) label t gain ->
      gain + graphPotential t <= graphPotential (121 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0121 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0121] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (258 : State) <= graphPotential (121 : State)
    decide
  ·
    simp [graphSmokeNext_s0121, h_l0003] at h

theorem transition_ok_s0121 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (121 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (121 : State) := by
  intro h
  change graphSmokeNext_s0121 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0121] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (258 : State) <= graphPotential (121 : State)
      decide
  ·
    simp [graphSmokeNext_s0121, h_l0003] at h

theorem valid_s0122 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (122 : State) label t gain ->
      gain + graphPotential t <= graphPotential (122 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0122 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0122] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (260 : State) <= graphPotential (122 : State)
    decide
  ·
    simp [graphSmokeNext_s0122, h_l0003] at h

theorem transition_ok_s0122 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (122 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (122 : State) := by
  intro h
  change graphSmokeNext_s0122 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0122] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (260 : State) <= graphPotential (122 : State)
      decide
  ·
    simp [graphSmokeNext_s0122, h_l0003] at h

theorem valid_s0123 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (123 : State) label t gain ->
      gain + graphPotential t <= graphPotential (123 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0123 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0123] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (261 : State) <= graphPotential (123 : State)
    decide
  ·
    simp [graphSmokeNext_s0123, h_l0003] at h

theorem transition_ok_s0123 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (123 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (123 : State) := by
  intro h
  change graphSmokeNext_s0123 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0123] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (261 : State) <= graphPotential (123 : State)
      decide
  ·
    simp [graphSmokeNext_s0123, h_l0003] at h

theorem valid_s0124 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (124 : State) label t gain ->
      gain + graphPotential t <= graphPotential (124 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0124 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0124] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (262 : State) <= graphPotential (124 : State)
    decide
  ·
    simp [graphSmokeNext_s0124, h_l0003] at h

theorem transition_ok_s0124 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (124 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (124 : State) := by
  intro h
  change graphSmokeNext_s0124 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0124] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (262 : State) <= graphPotential (124 : State)
      decide
  ·
    simp [graphSmokeNext_s0124, h_l0003] at h

theorem valid_s0125 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (125 : State) label t gain ->
      gain + graphPotential t <= graphPotential (125 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0125 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0125] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (263 : State) <= graphPotential (125 : State)
    decide
  ·
    simp [graphSmokeNext_s0125, h_l0003] at h

theorem transition_ok_s0125 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (125 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (125 : State) := by
  intro h
  change graphSmokeNext_s0125 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0125] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (263 : State) <= graphPotential (125 : State)
      decide
  ·
    simp [graphSmokeNext_s0125, h_l0003] at h

theorem valid_s0126 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (126 : State) label t gain ->
      gain + graphPotential t <= graphPotential (126 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0126 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0126] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (265 : State) <= graphPotential (126 : State)
    decide
  ·
    simp [graphSmokeNext_s0126, h_l0003] at h

theorem transition_ok_s0126 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (126 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (126 : State) := by
  intro h
  change graphSmokeNext_s0126 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0126] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (265 : State) <= graphPotential (126 : State)
      decide
  ·
    simp [graphSmokeNext_s0126, h_l0003] at h

theorem valid_s0127 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (127 : State) label t gain ->
      gain + graphPotential t <= graphPotential (127 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0127 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0127] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (266 : State) <= graphPotential (127 : State)
    decide
  ·
    simp [graphSmokeNext_s0127, h_l0003] at h

theorem transition_ok_s0127 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (127 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (127 : State) := by
  intro h
  change graphSmokeNext_s0127 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0127] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (266 : State) <= graphPotential (127 : State)
      decide
  ·
    simp [graphSmokeNext_s0127, h_l0003] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 120 <= s) (hhi : s < 128) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0120 h
  · exact valid_s0121 h
  · exact valid_s0122 h
  · exact valid_s0123 h
  · exact valid_s0124 h
  · exact valid_s0125 h
  · exact valid_s0126 h
  · exact valid_s0127 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 120 <= s) (hhi : s < 128) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0120 h
  · exact transition_ok_s0121 h
  · exact transition_ok_s0122 h
  · exact transition_ok_s0123 h
  · exact transition_ok_s0124 h
  · exact transition_ok_s0125 h
  · exact transition_ok_s0126 h
  · exact transition_ok_s0127 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard015
