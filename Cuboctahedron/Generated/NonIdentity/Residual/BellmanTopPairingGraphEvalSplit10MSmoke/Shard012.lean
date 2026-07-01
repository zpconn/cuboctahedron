import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard012

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [96, 104). -/
theorem valid_s0096 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (96 : State) label t gain ->
      gain + graphPotential t <= graphPotential (96 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0096 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0096] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (232 : State) <= graphPotential (96 : State)
    decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0096] at h
      rcases h with ⟨rfl, rfl⟩
      change (-21 : Int) + graphPotential (218 : State) <= graphPotential (96 : State)
      decide
    ·
      simp [graphSmokeNext_s0096, h_l0001, h_l0010] at h

theorem transition_ok_s0096 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (96 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (96 : State) := by
  intro h
  change graphSmokeNext_s0096 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0096] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (232 : State) <= graphPotential (96 : State)
      decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0096] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-21 : Int) + graphPotential (218 : State) <= graphPotential (96 : State)
        decide
    ·
      simp [graphSmokeNext_s0096, h_l0001, h_l0010] at h

theorem valid_s0097 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (97 : State) label t gain ->
      gain + graphPotential t <= graphPotential (97 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0097 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0097] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (233 : State) <= graphPotential (97 : State)
    decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0097] at h
      rcases h with ⟨rfl, rfl⟩
      change (-21 : Int) + graphPotential (219 : State) <= graphPotential (97 : State)
      decide
    ·
      simp [graphSmokeNext_s0097, h_l0001, h_l0010] at h

theorem transition_ok_s0097 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (97 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (97 : State) := by
  intro h
  change graphSmokeNext_s0097 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0097] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (233 : State) <= graphPotential (97 : State)
      decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0097] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-21 : Int) + graphPotential (219 : State) <= graphPotential (97 : State)
        decide
    ·
      simp [graphSmokeNext_s0097, h_l0001, h_l0010] at h

theorem valid_s0098 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (98 : State) label t gain ->
      gain + graphPotential t <= graphPotential (98 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0098 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0098] at h
    rcases h with ⟨rfl, rfl⟩
    change (-21 : Int) + graphPotential (220 : State) <= graphPotential (98 : State)
    decide
  ·
    simp [graphSmokeNext_s0098, h_l0010] at h

theorem transition_ok_s0098 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (98 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (98 : State) := by
  intro h
  change graphSmokeNext_s0098 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0098] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-21 : Int) + graphPotential (220 : State) <= graphPotential (98 : State)
      decide
  ·
    simp [graphSmokeNext_s0098, h_l0010] at h

theorem valid_s0099 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (99 : State) label t gain ->
      gain + graphPotential t <= graphPotential (99 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0099 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0099] at h
    rcases h with ⟨rfl, rfl⟩
    change (-21 : Int) + graphPotential (221 : State) <= graphPotential (99 : State)
    decide
  ·
    simp [graphSmokeNext_s0099, h_l0010] at h

theorem transition_ok_s0099 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (99 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (99 : State) := by
  intro h
  change graphSmokeNext_s0099 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0099] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-21 : Int) + graphPotential (221 : State) <= graphPotential (99 : State)
      decide
  ·
    simp [graphSmokeNext_s0099, h_l0010] at h

theorem valid_s0100 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (100 : State) label t gain ->
      gain + graphPotential t <= graphPotential (100 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0100 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0100] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (235 : State) <= graphPotential (100 : State)
    decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0100] at h
      rcases h with ⟨rfl, rfl⟩
      change (-21 : Int) + graphPotential (222 : State) <= graphPotential (100 : State)
      decide
    ·
      simp [graphSmokeNext_s0100, h_l0001, h_l0010] at h

theorem transition_ok_s0100 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (100 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (100 : State) := by
  intro h
  change graphSmokeNext_s0100 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0100] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (235 : State) <= graphPotential (100 : State)
      decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0100] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-21 : Int) + graphPotential (222 : State) <= graphPotential (100 : State)
        decide
    ·
      simp [graphSmokeNext_s0100, h_l0001, h_l0010] at h

theorem valid_s0101 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (101 : State) label t gain ->
      gain + graphPotential t <= graphPotential (101 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0101 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0101] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (223 : State) <= graphPotential (101 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0101] at h
      rcases h with ⟨rfl, rfl⟩
      change (-10 : Int) + graphPotential (229 : State) <= graphPotential (101 : State)
      decide
    ·
      simp [graphSmokeNext_s0101, h_l0010, h_l0013] at h

theorem transition_ok_s0101 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (101 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (101 : State) := by
  intro h
  change graphSmokeNext_s0101 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0101] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (223 : State) <= graphPotential (101 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0101] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-10 : Int) + graphPotential (229 : State) <= graphPotential (101 : State)
        decide
    ·
      simp [graphSmokeNext_s0101, h_l0010, h_l0013] at h

theorem valid_s0102 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (102 : State) label t gain ->
      gain + graphPotential t <= graphPotential (102 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0102 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0102] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (225 : State) <= graphPotential (102 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0102] at h
      rcases h with ⟨rfl, rfl⟩
      change (-10 : Int) + graphPotential (234 : State) <= graphPotential (102 : State)
      decide
    ·
      simp [graphSmokeNext_s0102, h_l0010, h_l0013] at h

theorem transition_ok_s0102 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (102 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (102 : State) := by
  intro h
  change graphSmokeNext_s0102 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0102] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (225 : State) <= graphPotential (102 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0102] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-10 : Int) + graphPotential (234 : State) <= graphPotential (102 : State)
        decide
    ·
      simp [graphSmokeNext_s0102, h_l0010, h_l0013] at h

theorem valid_s0103 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (103 : State) label t gain ->
      gain + graphPotential t <= graphPotential (103 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0103 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0103] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (236 : State) <= graphPotential (103 : State)
    decide
  ·
    simp [graphSmokeNext_s0103, h_l0007] at h

theorem transition_ok_s0103 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (103 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (103 : State) := by
  intro h
  change graphSmokeNext_s0103 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0103] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (236 : State) <= graphPotential (103 : State)
      decide
  ·
    simp [graphSmokeNext_s0103, h_l0007] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 96 <= s) (hhi : s < 104) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0096 h
  · exact valid_s0097 h
  · exact valid_s0098 h
  · exact valid_s0099 h
  · exact valid_s0100 h
  · exact valid_s0101 h
  · exact valid_s0102 h
  · exact valid_s0103 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 96 <= s) (hhi : s < 104) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0096 h
  · exact transition_ok_s0097 h
  · exact transition_ok_s0098 h
  · exact transition_ok_s0099 h
  · exact transition_ok_s0100 h
  · exact transition_ok_s0101 h
  · exact transition_ok_s0102 h
  · exact transition_ok_s0103 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard012
