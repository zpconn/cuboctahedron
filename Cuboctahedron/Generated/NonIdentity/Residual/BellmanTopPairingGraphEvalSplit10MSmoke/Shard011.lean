import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard011

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [88, 96). -/
theorem valid_s0088 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (88 : State) label t gain ->
      gain + graphPotential t <= graphPotential (88 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0088 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0088] at h
    rcases h with ⟨rfl, rfl⟩
    change (-21 : Int) + graphPotential (177 : State) <= graphPotential (88 : State)
    decide
  ·
    simp [graphSmokeNext_s0088, h_l0011] at h

theorem transition_ok_s0088 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (88 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (88 : State) := by
  intro h
  change graphSmokeNext_s0088 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0088] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-21 : Int) + graphPotential (177 : State) <= graphPotential (88 : State)
      decide
  ·
    simp [graphSmokeNext_s0088, h_l0011] at h

theorem valid_s0089 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (89 : State) label t gain ->
      gain + graphPotential t <= graphPotential (89 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0089 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0089] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (188 : State) <= graphPotential (89 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0089] at h
      rcases h with ⟨rfl, rfl⟩
      change (-10 : Int) + graphPotential (223 : State) <= graphPotential (89 : State)
      decide
    ·
      simp [graphSmokeNext_s0089, h_l0011, h_l0012] at h

theorem transition_ok_s0089 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (89 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (89 : State) := by
  intro h
  change graphSmokeNext_s0089 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0089] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (188 : State) <= graphPotential (89 : State)
      decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0089] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-10 : Int) + graphPotential (223 : State) <= graphPotential (89 : State)
        decide
    ·
      simp [graphSmokeNext_s0089, h_l0011, h_l0012] at h

theorem valid_s0090 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (90 : State) label t gain ->
      gain + graphPotential t <= graphPotential (90 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0090 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0090] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (189 : State) <= graphPotential (90 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0090] at h
      rcases h with ⟨rfl, rfl⟩
      change (-10 : Int) + graphPotential (224 : State) <= graphPotential (90 : State)
      decide
    ·
      simp [graphSmokeNext_s0090, h_l0011, h_l0012] at h

theorem transition_ok_s0090 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (90 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (90 : State) := by
  intro h
  change graphSmokeNext_s0090 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0090] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (189 : State) <= graphPotential (90 : State)
      decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0090] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-10 : Int) + graphPotential (224 : State) <= graphPotential (90 : State)
        decide
    ·
      simp [graphSmokeNext_s0090, h_l0011, h_l0012] at h

theorem valid_s0091 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (91 : State) label t gain ->
      gain + graphPotential t <= graphPotential (91 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0091 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0091] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (197 : State) <= graphPotential (91 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0091] at h
      rcases h with ⟨rfl, rfl⟩
      change (-10 : Int) + graphPotential (227 : State) <= graphPotential (91 : State)
      decide
    ·
      simp [graphSmokeNext_s0091, h_l0011, h_l0012] at h

theorem transition_ok_s0091 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (91 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (91 : State) := by
  intro h
  change graphSmokeNext_s0091 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0091] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (197 : State) <= graphPotential (91 : State)
      decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0091] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-10 : Int) + graphPotential (227 : State) <= graphPotential (91 : State)
        decide
    ·
      simp [graphSmokeNext_s0091, h_l0011, h_l0012] at h

theorem valid_s0092 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (92 : State) label t gain ->
      gain + graphPotential t <= graphPotential (92 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0092 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0092] at h
    rcases h with ⟨rfl, rfl⟩
    change (-21 : Int) + graphPotential (214 : State) <= graphPotential (92 : State)
    decide
  ·
    simp [graphSmokeNext_s0092, h_l0010] at h

theorem transition_ok_s0092 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (92 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (92 : State) := by
  intro h
  change graphSmokeNext_s0092 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0092] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-21 : Int) + graphPotential (214 : State) <= graphPotential (92 : State)
      decide
  ·
    simp [graphSmokeNext_s0092, h_l0010] at h

theorem valid_s0093 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (93 : State) label t gain ->
      gain + graphPotential t <= graphPotential (93 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0093 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0093] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (230 : State) <= graphPotential (93 : State)
    decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0093] at h
      rcases h with ⟨rfl, rfl⟩
      change (-21 : Int) + graphPotential (215 : State) <= graphPotential (93 : State)
      decide
    ·
      simp [graphSmokeNext_s0093, h_l0001, h_l0010] at h

theorem transition_ok_s0093 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (93 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (93 : State) := by
  intro h
  change graphSmokeNext_s0093 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0093] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (230 : State) <= graphPotential (93 : State)
      decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0093] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-21 : Int) + graphPotential (215 : State) <= graphPotential (93 : State)
        decide
    ·
      simp [graphSmokeNext_s0093, h_l0001, h_l0010] at h

theorem valid_s0094 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (94 : State) label t gain ->
      gain + graphPotential t <= graphPotential (94 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0094 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0094] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (231 : State) <= graphPotential (94 : State)
    decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0094] at h
      rcases h with ⟨rfl, rfl⟩
      change (-21 : Int) + graphPotential (216 : State) <= graphPotential (94 : State)
      decide
    ·
      simp [graphSmokeNext_s0094, h_l0001, h_l0010] at h

theorem transition_ok_s0094 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (94 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (94 : State) := by
  intro h
  change graphSmokeNext_s0094 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0094] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (231 : State) <= graphPotential (94 : State)
      decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0094] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-21 : Int) + graphPotential (216 : State) <= graphPotential (94 : State)
        decide
    ·
      simp [graphSmokeNext_s0094, h_l0001, h_l0010] at h

theorem valid_s0095 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (95 : State) label t gain ->
      gain + graphPotential t <= graphPotential (95 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0095 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0095] at h
    rcases h with ⟨rfl, rfl⟩
    change (-21 : Int) + graphPotential (217 : State) <= graphPotential (95 : State)
    decide
  ·
    simp [graphSmokeNext_s0095, h_l0010] at h

theorem transition_ok_s0095 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (95 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (95 : State) := by
  intro h
  change graphSmokeNext_s0095 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0095] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-21 : Int) + graphPotential (217 : State) <= graphPotential (95 : State)
      decide
  ·
    simp [graphSmokeNext_s0095, h_l0010] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 88 <= s) (hhi : s < 96) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0088 h
  · exact valid_s0089 h
  · exact valid_s0090 h
  · exact valid_s0091 h
  · exact valid_s0092 h
  · exact valid_s0093 h
  · exact valid_s0094 h
  · exact valid_s0095 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 88 <= s) (hhi : s < 96) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0088 h
  · exact transition_ok_s0089 h
  · exact transition_ok_s0090 h
  · exact transition_ok_s0091 h
  · exact transition_ok_s0092 h
  · exact transition_ok_s0093 h
  · exact transition_ok_s0094 h
  · exact transition_ok_s0095 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard011
