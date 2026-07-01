import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard022

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [352, 368). -/
theorem valid_s0352 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (352 : State) label t gain ->
      gain + graphPotential t <= graphPotential (352 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0352 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0352] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (405 : State) <= graphPotential (352 : State)
    decide
  ·
    simp [graphSmokeNext_s0352, h_l0011] at h

theorem valid_s0353 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (353 : State) label t gain ->
      gain + graphPotential t <= graphPotential (353 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0353 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0353] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (432 : State) <= graphPotential (353 : State)
    decide
  ·
    simp [graphSmokeNext_s0353, h_l0011] at h

theorem valid_s0354 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (354 : State) label t gain ->
      gain + graphPotential t <= graphPotential (354 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0354 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0354] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (433 : State) <= graphPotential (354 : State)
    decide
  ·
    simp [graphSmokeNext_s0354, h_l0011] at h

theorem valid_s0355 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (355 : State) label t gain ->
      gain + graphPotential t <= graphPotential (355 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0355 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0355] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (440 : State) <= graphPotential (355 : State)
    decide
  ·
    simp [graphSmokeNext_s0355, h_l0011] at h

theorem valid_s0356 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (356 : State) label t gain ->
      gain + graphPotential t <= graphPotential (356 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0356 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0356] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (442 : State) <= graphPotential (356 : State)
    decide
  ·
    simp [graphSmokeNext_s0356, h_l0011] at h

theorem valid_s0357 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (357 : State) label t gain ->
      gain + graphPotential t <= graphPotential (357 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0357 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0357] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (445 : State) <= graphPotential (357 : State)
    decide
  ·
    simp [graphSmokeNext_s0357, h_l0011] at h

theorem valid_s0358 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (358 : State) label t gain ->
      gain + graphPotential t <= graphPotential (358 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0358 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0358] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (447 : State) <= graphPotential (358 : State)
    decide
  ·
    simp [graphSmokeNext_s0358, h_l0011] at h

theorem valid_s0359 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (359 : State) label t gain ->
      gain + graphPotential t <= graphPotential (359 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0359 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0359] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (449 : State) <= graphPotential (359 : State)
    decide
  ·
    simp [graphSmokeNext_s0359, h_l0011] at h

theorem valid_s0360 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (360 : State) label t gain ->
      gain + graphPotential t <= graphPotential (360 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0360 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0360] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (451 : State) <= graphPotential (360 : State)
    decide
  ·
    simp [graphSmokeNext_s0360, h_l0011] at h

theorem valid_s0361 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (361 : State) label t gain ->
      gain + graphPotential t <= graphPotential (361 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0361 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0361] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (472 : State) <= graphPotential (361 : State)
    decide
  ·
    simp [graphSmokeNext_s0361, h_l0011] at h

theorem valid_s0362 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (362 : State) label t gain ->
      gain + graphPotential t <= graphPotential (362 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0362 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0362] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (474 : State) <= graphPotential (362 : State)
    decide
  ·
    simp [graphSmokeNext_s0362, h_l0011] at h

theorem valid_s0363 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (363 : State) label t gain ->
      gain + graphPotential t <= graphPotential (363 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0363 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0363] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (485 : State) <= graphPotential (363 : State)
    decide
  ·
    simp [graphSmokeNext_s0363, h_l0011] at h

theorem valid_s0364 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (364 : State) label t gain ->
      gain + graphPotential t <= graphPotential (364 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0364 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0364] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (487 : State) <= graphPotential (364 : State)
    decide
  ·
    simp [graphSmokeNext_s0364, h_l0011] at h

theorem valid_s0365 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (365 : State) label t gain ->
      gain + graphPotential t <= graphPotential (365 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0365 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0365] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (454 : State) <= graphPotential (365 : State)
    decide
  ·
    simp [graphSmokeNext_s0365, h_l0008] at h

theorem valid_s0366 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (366 : State) label t gain ->
      gain + graphPotential t <= graphPotential (366 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0366 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0366] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (455 : State) <= graphPotential (366 : State)
    decide
  ·
    simp [graphSmokeNext_s0366, h_l0008] at h

theorem valid_s0367 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (367 : State) label t gain ->
      gain + graphPotential t <= graphPotential (367 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0367 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0367] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (456 : State) <= graphPotential (367 : State)
    decide
  ·
    simp [graphSmokeNext_s0367, h_l0008] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 352 <= s) (hhi : s < 368) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0352 h
  · exact valid_s0353 h
  · exact valid_s0354 h
  · exact valid_s0355 h
  · exact valid_s0356 h
  · exact valid_s0357 h
  · exact valid_s0358 h
  · exact valid_s0359 h
  · exact valid_s0360 h
  · exact valid_s0361 h
  · exact valid_s0362 h
  · exact valid_s0363 h
  · exact valid_s0364 h
  · exact valid_s0365 h
  · exact valid_s0366 h
  · exact valid_s0367 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard022
