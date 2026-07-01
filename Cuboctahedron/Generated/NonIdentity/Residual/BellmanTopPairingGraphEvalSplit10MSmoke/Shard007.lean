import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard007

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [56, 64). -/
theorem valid_s0056 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (56 : State) label t gain ->
      gain + graphPotential t <= graphPotential (56 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0056 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0056] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (184 : State) <= graphPotential (56 : State)
    decide
  ·
    simp [graphSmokeNext_s0056, h_l0002] at h

theorem transition_ok_s0056 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (56 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (56 : State) := by
  intro h
  change graphSmokeNext_s0056 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0056] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (184 : State) <= graphPotential (56 : State)
      decide
  ·
    simp [graphSmokeNext_s0056, h_l0002] at h

theorem valid_s0057 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (57 : State) label t gain ->
      gain + graphPotential t <= graphPotential (57 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0057 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0057] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (185 : State) <= graphPotential (57 : State)
    decide
  ·
    simp [graphSmokeNext_s0057, h_l0002] at h

theorem transition_ok_s0057 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (57 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (57 : State) := by
  intro h
  change graphSmokeNext_s0057 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0057] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (185 : State) <= graphPotential (57 : State)
      decide
  ·
    simp [graphSmokeNext_s0057, h_l0002] at h

theorem valid_s0058 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (58 : State) label t gain ->
      gain + graphPotential t <= graphPotential (58 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0058 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0058] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (186 : State) <= graphPotential (58 : State)
    decide
  ·
    simp [graphSmokeNext_s0058, h_l0002] at h

theorem transition_ok_s0058 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (58 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (58 : State) := by
  intro h
  change graphSmokeNext_s0058 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0058] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (186 : State) <= graphPotential (58 : State)
      decide
  ·
    simp [graphSmokeNext_s0058, h_l0002] at h

theorem valid_s0059 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (59 : State) label t gain ->
      gain + graphPotential t <= graphPotential (59 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0059 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0059] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (187 : State) <= graphPotential (59 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0059] at h
      rcases h with ⟨rfl, rfl⟩
      change (114 : Int) + graphPotential (164 : State) <= graphPotential (59 : State)
      decide
    ·
      simp [graphSmokeNext_s0059, h_l0001, h_l0012] at h

theorem transition_ok_s0059 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (59 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (59 : State) := by
  intro h
  change graphSmokeNext_s0059 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0059] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (187 : State) <= graphPotential (59 : State)
      decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0059] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (114 : Int) + graphPotential (164 : State) <= graphPotential (59 : State)
        decide
    ·
      simp [graphSmokeNext_s0059, h_l0001, h_l0012] at h

theorem valid_s0060 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (60 : State) label t gain ->
      gain + graphPotential t <= graphPotential (60 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0060 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0060] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (190 : State) <= graphPotential (60 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0060] at h
      rcases h with ⟨rfl, rfl⟩
      change (114 : Int) + graphPotential (165 : State) <= graphPotential (60 : State)
      decide
    ·
      simp [graphSmokeNext_s0060, h_l0001, h_l0012] at h

theorem transition_ok_s0060 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (60 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (60 : State) := by
  intro h
  change graphSmokeNext_s0060 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0060] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (190 : State) <= graphPotential (60 : State)
      decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0060] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (114 : Int) + graphPotential (165 : State) <= graphPotential (60 : State)
        decide
    ·
      simp [graphSmokeNext_s0060, h_l0001, h_l0012] at h

theorem valid_s0061 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (61 : State) label t gain ->
      gain + graphPotential t <= graphPotential (61 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0061 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0061] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (191 : State) <= graphPotential (61 : State)
    decide
  ·
    simp [graphSmokeNext_s0061, h_l0001] at h

theorem transition_ok_s0061 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (61 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (61 : State) := by
  intro h
  change graphSmokeNext_s0061 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0061] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (191 : State) <= graphPotential (61 : State)
      decide
  ·
    simp [graphSmokeNext_s0061, h_l0001] at h

theorem valid_s0062 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (62 : State) label t gain ->
      gain + graphPotential t <= graphPotential (62 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0062 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0062] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (192 : State) <= graphPotential (62 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0062] at h
      rcases h with ⟨rfl, rfl⟩
      change (114 : Int) + graphPotential (166 : State) <= graphPotential (62 : State)
      decide
    ·
      simp [graphSmokeNext_s0062, h_l0001, h_l0012] at h

theorem transition_ok_s0062 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (62 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (62 : State) := by
  intro h
  change graphSmokeNext_s0062 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0062] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (192 : State) <= graphPotential (62 : State)
      decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0062] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (114 : Int) + graphPotential (166 : State) <= graphPotential (62 : State)
        decide
    ·
      simp [graphSmokeNext_s0062, h_l0001, h_l0012] at h

theorem valid_s0063 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (63 : State) label t gain ->
      gain + graphPotential t <= graphPotential (63 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0063 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0063] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (193 : State) <= graphPotential (63 : State)
    decide
  ·
    simp [graphSmokeNext_s0063, h_l0001] at h

theorem transition_ok_s0063 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (63 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (63 : State) := by
  intro h
  change graphSmokeNext_s0063 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0063] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (193 : State) <= graphPotential (63 : State)
      decide
  ·
    simp [graphSmokeNext_s0063, h_l0001] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 56 <= s) (hhi : s < 64) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0056 h
  · exact valid_s0057 h
  · exact valid_s0058 h
  · exact valid_s0059 h
  · exact valid_s0060 h
  · exact valid_s0061 h
  · exact valid_s0062 h
  · exact valid_s0063 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 56 <= s) (hhi : s < 64) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0056 h
  · exact transition_ok_s0057 h
  · exact transition_ok_s0058 h
  · exact transition_ok_s0059 h
  · exact transition_ok_s0060 h
  · exact transition_ok_s0061 h
  · exact transition_ok_s0062 h
  · exact transition_ok_s0063 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard007
