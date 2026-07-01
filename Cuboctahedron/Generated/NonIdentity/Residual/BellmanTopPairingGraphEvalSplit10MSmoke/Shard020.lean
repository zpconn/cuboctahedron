import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard020

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [160, 168). -/
theorem valid_s0160 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (160 : State) label t gain ->
      gain + graphPotential t <= graphPotential (160 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0160 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0160] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (308 : State) <= graphPotential (160 : State)
    decide
  ·
    simp [graphSmokeNext_s0160, h_l0003] at h

theorem transition_ok_s0160 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (160 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (160 : State) := by
  intro h
  change graphSmokeNext_s0160 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0160] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (308 : State) <= graphPotential (160 : State)
      decide
  ·
    simp [graphSmokeNext_s0160, h_l0003] at h

theorem valid_s0161 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (161 : State) label t gain ->
      gain + graphPotential t <= graphPotential (161 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0161 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0161] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (309 : State) <= graphPotential (161 : State)
    decide
  ·
    simp [graphSmokeNext_s0161, h_l0003] at h

theorem transition_ok_s0161 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (161 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (161 : State) := by
  intro h
  change graphSmokeNext_s0161 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0161] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (309 : State) <= graphPotential (161 : State)
      decide
  ·
    simp [graphSmokeNext_s0161, h_l0003] at h

theorem valid_s0162 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (162 : State) label t gain ->
      gain + graphPotential t <= graphPotential (162 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0162 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0162] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (310 : State) <= graphPotential (162 : State)
    decide
  ·
    simp [graphSmokeNext_s0162, h_l0003] at h

theorem transition_ok_s0162 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (162 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (162 : State) := by
  intro h
  change graphSmokeNext_s0162 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0162] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (310 : State) <= graphPotential (162 : State)
      decide
  ·
    simp [graphSmokeNext_s0162, h_l0003] at h

theorem valid_s0163 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (163 : State) label t gain ->
      gain + graphPotential t <= graphPotential (163 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0163 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0163] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (311 : State) <= graphPotential (163 : State)
    decide
  ·
    simp [graphSmokeNext_s0163, h_l0003] at h

theorem transition_ok_s0163 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (163 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (163 : State) := by
  intro h
  change graphSmokeNext_s0163 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0163] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (311 : State) <= graphPotential (163 : State)
      decide
  ·
    simp [graphSmokeNext_s0163, h_l0003] at h

theorem valid_s0164 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (164 : State) label t gain ->
      gain + graphPotential t <= graphPotential (164 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0164 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0164] at h
    rcases h with ⟨rfl, rfl⟩
    change (114 : Int) + graphPotential (249 : State) <= graphPotential (164 : State)
    decide
  ·
    simp [graphSmokeNext_s0164, h_l0013] at h

theorem transition_ok_s0164 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (164 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (164 : State) := by
  intro h
  change graphSmokeNext_s0164 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0164] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (114 : Int) + graphPotential (249 : State) <= graphPotential (164 : State)
      decide
  ·
    simp [graphSmokeNext_s0164, h_l0013] at h

theorem valid_s0165 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (165 : State) label t gain ->
      gain + graphPotential t <= graphPotential (165 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0165 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0165] at h
    rcases h with ⟨rfl, rfl⟩
    change (114 : Int) + graphPotential (250 : State) <= graphPotential (165 : State)
    decide
  ·
    simp [graphSmokeNext_s0165, h_l0013] at h

theorem transition_ok_s0165 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (165 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (165 : State) := by
  intro h
  change graphSmokeNext_s0165 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0165] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (114 : Int) + graphPotential (250 : State) <= graphPotential (165 : State)
      decide
  ·
    simp [graphSmokeNext_s0165, h_l0013] at h

theorem valid_s0166 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (166 : State) label t gain ->
      gain + graphPotential t <= graphPotential (166 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0166 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0166] at h
    rcases h with ⟨rfl, rfl⟩
    change (114 : Int) + graphPotential (255 : State) <= graphPotential (166 : State)
    decide
  ·
    simp [graphSmokeNext_s0166, h_l0013] at h

theorem transition_ok_s0166 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (166 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (166 : State) := by
  intro h
  change graphSmokeNext_s0166 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0166] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (114 : Int) + graphPotential (255 : State) <= graphPotential (166 : State)
      decide
  ·
    simp [graphSmokeNext_s0166, h_l0013] at h

theorem valid_s0167 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (167 : State) label t gain ->
      gain + graphPotential t <= graphPotential (167 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0167 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0167] at h
    rcases h with ⟨rfl, rfl⟩
    change (114 : Int) + graphPotential (275 : State) <= graphPotential (167 : State)
    decide
  ·
    simp [graphSmokeNext_s0167, h_l0013] at h

theorem transition_ok_s0167 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (167 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (167 : State) := by
  intro h
  change graphSmokeNext_s0167 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0167] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (114 : Int) + graphPotential (275 : State) <= graphPotential (167 : State)
      decide
  ·
    simp [graphSmokeNext_s0167, h_l0013] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 160 <= s) (hhi : s < 168) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0160 h
  · exact valid_s0161 h
  · exact valid_s0162 h
  · exact valid_s0163 h
  · exact valid_s0164 h
  · exact valid_s0165 h
  · exact valid_s0166 h
  · exact valid_s0167 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 160 <= s) (hhi : s < 168) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0160 h
  · exact transition_ok_s0161 h
  · exact transition_ok_s0162 h
  · exact transition_ok_s0163 h
  · exact transition_ok_s0164 h
  · exact transition_ok_s0165 h
  · exact transition_ok_s0166 h
  · exact transition_ok_s0167 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard020
