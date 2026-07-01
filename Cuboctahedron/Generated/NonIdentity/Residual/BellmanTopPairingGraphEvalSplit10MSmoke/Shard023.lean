import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard023

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [368, 384). -/
theorem valid_s0368 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (368 : State) label t gain ->
      gain + graphPotential t <= graphPotential (368 : State) := by
  intro h
  change graphSmokeNext_s0368 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0368] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (457 : State) <= graphPotential (368 : State)
    decide
  ·
    simp [graphSmokeNext_s0368, h_l0008] at h

theorem valid_s0369 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (369 : State) label t gain ->
      gain + graphPotential t <= graphPotential (369 : State) := by
  intro h
  change graphSmokeNext_s0369 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0369] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (458 : State) <= graphPotential (369 : State)
    decide
  ·
    simp [graphSmokeNext_s0369, h_l0008] at h

theorem valid_s0370 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (370 : State) label t gain ->
      gain + graphPotential t <= graphPotential (370 : State) := by
  intro h
  change graphSmokeNext_s0370 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0370] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (459 : State) <= graphPotential (370 : State)
    decide
  ·
    simp [graphSmokeNext_s0370, h_l0008] at h

theorem valid_s0371 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (371 : State) label t gain ->
      gain + graphPotential t <= graphPotential (371 : State) := by
  intro h
  change graphSmokeNext_s0371 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0371] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (466 : State) <= graphPotential (371 : State)
    decide
  ·
    simp [graphSmokeNext_s0371, h_l0008] at h

theorem valid_s0372 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (372 : State) label t gain ->
      gain + graphPotential t <= graphPotential (372 : State) := by
  intro h
  change graphSmokeNext_s0372 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0372] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (468 : State) <= graphPotential (372 : State)
    decide
  ·
    simp [graphSmokeNext_s0372, h_l0008] at h

theorem valid_s0373 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (373 : State) label t gain ->
      gain + graphPotential t <= graphPotential (373 : State) := by
  intro h
  change graphSmokeNext_s0373 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0373] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (469 : State) <= graphPotential (373 : State)
    decide
  ·
    simp [graphSmokeNext_s0373, h_l0008] at h

theorem valid_s0374 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (374 : State) label t gain ->
      gain + graphPotential t <= graphPotential (374 : State) := by
  intro h
  change graphSmokeNext_s0374 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0374] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (482 : State) <= graphPotential (374 : State)
    decide
  ·
    simp [graphSmokeNext_s0374, h_l0008] at h

theorem valid_s0375 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (375 : State) label t gain ->
      gain + graphPotential t <= graphPotential (375 : State) := by
  intro h
  change graphSmokeNext_s0375 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0375] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (489 : State) <= graphPotential (375 : State)
    decide
  ·
    simp [graphSmokeNext_s0375, h_l0008] at h

theorem valid_s0376 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (376 : State) label t gain ->
      gain + graphPotential t <= graphPotential (376 : State) := by
  intro h
  change graphSmokeNext_s0376 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0376] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (492 : State) <= graphPotential (376 : State)
    decide
  ·
    simp [graphSmokeNext_s0376, h_l0009] at h

theorem valid_s0377 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (377 : State) label t gain ->
      gain + graphPotential t <= graphPotential (377 : State) := by
  intro h
  change graphSmokeNext_s0377 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0377] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (493 : State) <= graphPotential (377 : State)
    decide
  ·
    simp [graphSmokeNext_s0377, h_l0009] at h

theorem valid_s0378 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (378 : State) label t gain ->
      gain + graphPotential t <= graphPotential (378 : State) := by
  intro h
  change graphSmokeNext_s0378 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0378] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (494 : State) <= graphPotential (378 : State)
    decide
  ·
    simp [graphSmokeNext_s0378, h_l0009] at h

theorem valid_s0379 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (379 : State) label t gain ->
      gain + graphPotential t <= graphPotential (379 : State) := by
  intro h
  change graphSmokeNext_s0379 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0379] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (495 : State) <= graphPotential (379 : State)
    decide
  ·
    simp [graphSmokeNext_s0379, h_l0009] at h

theorem valid_s0380 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (380 : State) label t gain ->
      gain + graphPotential t <= graphPotential (380 : State) := by
  intro h
  change graphSmokeNext_s0380 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0380] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (496 : State) <= graphPotential (380 : State)
    decide
  ·
    simp [graphSmokeNext_s0380, h_l0009] at h

theorem valid_s0381 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (381 : State) label t gain ->
      gain + graphPotential t <= graphPotential (381 : State) := by
  intro h
  change graphSmokeNext_s0381 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0381] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (497 : State) <= graphPotential (381 : State)
    decide
  ·
    simp [graphSmokeNext_s0381, h_l0009] at h

theorem valid_s0382 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (382 : State) label t gain ->
      gain + graphPotential t <= graphPotential (382 : State) := by
  intro h
  change graphSmokeNext_s0382 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0382] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (498 : State) <= graphPotential (382 : State)
    decide
  ·
    simp [graphSmokeNext_s0382, h_l0009] at h

theorem valid_s0383 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (383 : State) label t gain ->
      gain + graphPotential t <= graphPotential (383 : State) := by
  intro h
  change graphSmokeNext_s0383 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0383] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (499 : State) <= graphPotential (383 : State)
    decide
  ·
    simp [graphSmokeNext_s0383, h_l0009] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 368 <= s) (hhi : s < 384) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0368 h
  · exact valid_s0369 h
  · exact valid_s0370 h
  · exact valid_s0371 h
  · exact valid_s0372 h
  · exact valid_s0373 h
  · exact valid_s0374 h
  · exact valid_s0375 h
  · exact valid_s0376 h
  · exact valid_s0377 h
  · exact valid_s0378 h
  · exact valid_s0379 h
  · exact valid_s0380 h
  · exact valid_s0381 h
  · exact valid_s0382 h
  · exact valid_s0383 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard023
