import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard026

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [208, 216). -/
theorem valid_s0208 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (208 : State) label t gain ->
      gain + graphPotential t <= graphPotential (208 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0208 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0208] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (357 : State) <= graphPotential (208 : State)
    decide
  ·
    simp [graphSmokeNext_s0208, h_l0003] at h

theorem transition_ok_s0208 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (208 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (208 : State) := by
  intro h
  change graphSmokeNext_s0208 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0208] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (357 : State) <= graphPotential (208 : State)
      decide
  ·
    simp [graphSmokeNext_s0208, h_l0003] at h

theorem valid_s0209 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (209 : State) label t gain ->
      gain + graphPotential t <= graphPotential (209 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0209 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0209] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (358 : State) <= graphPotential (209 : State)
    decide
  ·
    simp [graphSmokeNext_s0209, h_l0003] at h

theorem transition_ok_s0209 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (209 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (209 : State) := by
  intro h
  change graphSmokeNext_s0209 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0209] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (358 : State) <= graphPotential (209 : State)
      decide
  ·
    simp [graphSmokeNext_s0209, h_l0003] at h

theorem valid_s0210 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (210 : State) label t gain ->
      gain + graphPotential t <= graphPotential (210 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0210 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0210] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (359 : State) <= graphPotential (210 : State)
    decide
  ·
    simp [graphSmokeNext_s0210, h_l0003] at h

theorem transition_ok_s0210 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (210 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (210 : State) := by
  intro h
  change graphSmokeNext_s0210 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0210] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (359 : State) <= graphPotential (210 : State)
      decide
  ·
    simp [graphSmokeNext_s0210, h_l0003] at h

theorem valid_s0211 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (211 : State) label t gain ->
      gain + graphPotential t <= graphPotential (211 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0211 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0211] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (360 : State) <= graphPotential (211 : State)
    decide
  ·
    simp [graphSmokeNext_s0211, h_l0003] at h

theorem transition_ok_s0211 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (211 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (211 : State) := by
  intro h
  change graphSmokeNext_s0211 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0211] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (360 : State) <= graphPotential (211 : State)
      decide
  ·
    simp [graphSmokeNext_s0211, h_l0003] at h

theorem valid_s0212 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (212 : State) label t gain ->
      gain + graphPotential t <= graphPotential (212 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0212 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0212] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (361 : State) <= graphPotential (212 : State)
    decide
  ·
    simp [graphSmokeNext_s0212, h_l0003] at h

theorem transition_ok_s0212 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (212 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (212 : State) := by
  intro h
  change graphSmokeNext_s0212 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0212] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (361 : State) <= graphPotential (212 : State)
      decide
  ·
    simp [graphSmokeNext_s0212, h_l0003] at h

theorem valid_s0213 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (213 : State) label t gain ->
      gain + graphPotential t <= graphPotential (213 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0213 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0213] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (364 : State) <= graphPotential (213 : State)
    decide
  ·
    simp [graphSmokeNext_s0213, h_l0003] at h

theorem transition_ok_s0213 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (213 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (213 : State) := by
  intro h
  change graphSmokeNext_s0213 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0213] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (364 : State) <= graphPotential (213 : State)
      decide
  ·
    simp [graphSmokeNext_s0213, h_l0003] at h

theorem valid_s0214 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (214 : State) label t gain ->
      gain + graphPotential t <= graphPotential (214 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0214 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0214] at h
    rcases h with ⟨rfl, rfl⟩
    change (-21 : Int) + graphPotential (249 : State) <= graphPotential (214 : State)
    decide
  ·
    simp [graphSmokeNext_s0214, h_l0011] at h

theorem transition_ok_s0214 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (214 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (214 : State) := by
  intro h
  change graphSmokeNext_s0214 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0214] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-21 : Int) + graphPotential (249 : State) <= graphPotential (214 : State)
      decide
  ·
    simp [graphSmokeNext_s0214, h_l0011] at h

theorem valid_s0215 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (215 : State) label t gain ->
      gain + graphPotential t <= graphPotential (215 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0215 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0215] at h
    rcases h with ⟨rfl, rfl⟩
    change (-21 : Int) + graphPotential (250 : State) <= graphPotential (215 : State)
    decide
  ·
    simp [graphSmokeNext_s0215, h_l0011] at h

theorem transition_ok_s0215 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (215 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (215 : State) := by
  intro h
  change graphSmokeNext_s0215 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0215] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-21 : Int) + graphPotential (250 : State) <= graphPotential (215 : State)
      decide
  ·
    simp [graphSmokeNext_s0215, h_l0011] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 208 <= s) (hhi : s < 216) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0208 h
  · exact valid_s0209 h
  · exact valid_s0210 h
  · exact valid_s0211 h
  · exact valid_s0212 h
  · exact valid_s0213 h
  · exact valid_s0214 h
  · exact valid_s0215 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 208 <= s) (hhi : s < 216) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0208 h
  · exact transition_ok_s0209 h
  · exact transition_ok_s0210 h
  · exact transition_ok_s0211 h
  · exact transition_ok_s0212 h
  · exact transition_ok_s0213 h
  · exact transition_ok_s0214 h
  · exact transition_ok_s0215 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard026
