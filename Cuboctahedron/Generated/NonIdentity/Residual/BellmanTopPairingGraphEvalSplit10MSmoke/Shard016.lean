import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard016

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [128, 136). -/
theorem valid_s0128 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (128 : State) label t gain ->
      gain + graphPotential t <= graphPotential (128 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0128 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0128] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (267 : State) <= graphPotential (128 : State)
    decide
  ·
    simp [graphSmokeNext_s0128, h_l0003] at h

theorem transition_ok_s0128 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (128 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (128 : State) := by
  intro h
  change graphSmokeNext_s0128 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0128] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (267 : State) <= graphPotential (128 : State)
      decide
  ·
    simp [graphSmokeNext_s0128, h_l0003] at h

theorem valid_s0129 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (129 : State) label t gain ->
      gain + graphPotential t <= graphPotential (129 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0129 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0129] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (268 : State) <= graphPotential (129 : State)
    decide
  ·
    simp [graphSmokeNext_s0129, h_l0003] at h

theorem transition_ok_s0129 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (129 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (129 : State) := by
  intro h
  change graphSmokeNext_s0129 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0129] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (268 : State) <= graphPotential (129 : State)
      decide
  ·
    simp [graphSmokeNext_s0129, h_l0003] at h

theorem valid_s0130 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (130 : State) label t gain ->
      gain + graphPotential t <= graphPotential (130 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0130 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0130] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (269 : State) <= graphPotential (130 : State)
    decide
  ·
    simp [graphSmokeNext_s0130, h_l0003] at h

theorem transition_ok_s0130 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (130 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (130 : State) := by
  intro h
  change graphSmokeNext_s0130 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0130] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (269 : State) <= graphPotential (130 : State)
      decide
  ·
    simp [graphSmokeNext_s0130, h_l0003] at h

theorem valid_s0131 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (131 : State) label t gain ->
      gain + graphPotential t <= graphPotential (131 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0131 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0131] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (270 : State) <= graphPotential (131 : State)
    decide
  ·
    simp [graphSmokeNext_s0131, h_l0003] at h

theorem transition_ok_s0131 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (131 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (131 : State) := by
  intro h
  change graphSmokeNext_s0131 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0131] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (270 : State) <= graphPotential (131 : State)
      decide
  ·
    simp [graphSmokeNext_s0131, h_l0003] at h

theorem valid_s0132 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (132 : State) label t gain ->
      gain + graphPotential t <= graphPotential (132 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0132 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0132] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (271 : State) <= graphPotential (132 : State)
    decide
  ·
    simp [graphSmokeNext_s0132, h_l0003] at h

theorem transition_ok_s0132 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (132 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (132 : State) := by
  intro h
  change graphSmokeNext_s0132 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0132] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (271 : State) <= graphPotential (132 : State)
      decide
  ·
    simp [graphSmokeNext_s0132, h_l0003] at h

theorem valid_s0133 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (133 : State) label t gain ->
      gain + graphPotential t <= graphPotential (133 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0133 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0133] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (272 : State) <= graphPotential (133 : State)
    decide
  ·
    simp [graphSmokeNext_s0133, h_l0003] at h

theorem transition_ok_s0133 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (133 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (133 : State) := by
  intro h
  change graphSmokeNext_s0133 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0133] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (272 : State) <= graphPotential (133 : State)
      decide
  ·
    simp [graphSmokeNext_s0133, h_l0003] at h

theorem valid_s0134 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (134 : State) label t gain ->
      gain + graphPotential t <= graphPotential (134 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0134 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0134] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (273 : State) <= graphPotential (134 : State)
    decide
  ·
    simp [graphSmokeNext_s0134, h_l0003] at h

theorem transition_ok_s0134 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (134 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (134 : State) := by
  intro h
  change graphSmokeNext_s0134 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0134] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (273 : State) <= graphPotential (134 : State)
      decide
  ·
    simp [graphSmokeNext_s0134, h_l0003] at h

theorem valid_s0135 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (135 : State) label t gain ->
      gain + graphPotential t <= graphPotential (135 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0135 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0135] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (274 : State) <= graphPotential (135 : State)
    decide
  ·
    simp [graphSmokeNext_s0135, h_l0003] at h

theorem transition_ok_s0135 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (135 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (135 : State) := by
  intro h
  change graphSmokeNext_s0135 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0135] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (274 : State) <= graphPotential (135 : State)
      decide
  ·
    simp [graphSmokeNext_s0135, h_l0003] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 128 <= s) (hhi : s < 136) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0128 h
  · exact valid_s0129 h
  · exact valid_s0130 h
  · exact valid_s0131 h
  · exact valid_s0132 h
  · exact valid_s0133 h
  · exact valid_s0134 h
  · exact valid_s0135 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 128 <= s) (hhi : s < 136) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0128 h
  · exact transition_ok_s0129 h
  · exact transition_ok_s0130 h
  · exact transition_ok_s0131 h
  · exact transition_ok_s0132 h
  · exact transition_ok_s0133 h
  · exact transition_ok_s0134 h
  · exact transition_ok_s0135 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard016
