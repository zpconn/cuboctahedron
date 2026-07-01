import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard030

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [480, 496). -/
theorem valid_s0480 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (480 : State) label t gain ->
      gain + graphPotential t <= graphPotential (480 : State) := by
  intro h
  change graphSmokeNext_s0480 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0480] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (596 : State) <= graphPotential (480 : State)
    decide
  ·
    simp [graphSmokeNext_s0480, h_l0009] at h

theorem valid_s0481 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (481 : State) label t gain ->
      gain + graphPotential t <= graphPotential (481 : State) := by
  intro h
  change graphSmokeNext_s0481 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0481] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (597 : State) <= graphPotential (481 : State)
    decide
  ·
    simp [graphSmokeNext_s0481, h_l0009] at h

theorem valid_s0482 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (482 : State) label t gain ->
      gain + graphPotential t <= graphPotential (482 : State) := by
  intro h
  change graphSmokeNext_s0482 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0482] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (598 : State) <= graphPotential (482 : State)
    decide
  ·
    simp [graphSmokeNext_s0482, h_l0009] at h

theorem valid_s0483 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (483 : State) label t gain ->
      gain + graphPotential t <= graphPotential (483 : State) := by
  intro h
  change graphSmokeNext_s0483 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0483] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (599 : State) <= graphPotential (483 : State)
    decide
  ·
    simp [graphSmokeNext_s0483, h_l0009] at h

theorem valid_s0484 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (484 : State) label t gain ->
      gain + graphPotential t <= graphPotential (484 : State) := by
  intro h
  change graphSmokeNext_s0484 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0484] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (600 : State) <= graphPotential (484 : State)
    decide
  ·
    simp [graphSmokeNext_s0484, h_l0009] at h

theorem valid_s0485 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (485 : State) label t gain ->
      gain + graphPotential t <= graphPotential (485 : State) := by
  intro h
  change graphSmokeNext_s0485 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0485] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (601 : State) <= graphPotential (485 : State)
    decide
  ·
    simp [graphSmokeNext_s0485, h_l0009] at h

theorem valid_s0486 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (486 : State) label t gain ->
      gain + graphPotential t <= graphPotential (486 : State) := by
  intro h
  change graphSmokeNext_s0486 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0486] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (602 : State) <= graphPotential (486 : State)
    decide
  ·
    simp [graphSmokeNext_s0486, h_l0009] at h

theorem valid_s0487 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (487 : State) label t gain ->
      gain + graphPotential t <= graphPotential (487 : State) := by
  intro h
  change graphSmokeNext_s0487 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0487] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (603 : State) <= graphPotential (487 : State)
    decide
  ·
    simp [graphSmokeNext_s0487, h_l0009] at h

theorem valid_s0488 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (488 : State) label t gain ->
      gain + graphPotential t <= graphPotential (488 : State) := by
  intro h
  change graphSmokeNext_s0488 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0488] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (604 : State) <= graphPotential (488 : State)
    decide
  ·
    simp [graphSmokeNext_s0488, h_l0009] at h

theorem valid_s0489 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (489 : State) label t gain ->
      gain + graphPotential t <= graphPotential (489 : State) := by
  intro h
  change graphSmokeNext_s0489 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0489] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (605 : State) <= graphPotential (489 : State)
    decide
  ·
    simp [graphSmokeNext_s0489, h_l0009] at h

theorem valid_s0490 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (490 : State) label t gain ->
      gain + graphPotential t <= graphPotential (490 : State) := by
  intro h
  change graphSmokeNext_s0490 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0490] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (606 : State) <= graphPotential (490 : State)
    decide
  ·
    simp [graphSmokeNext_s0490, h_l0009] at h

theorem valid_s0491 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (491 : State) label t gain ->
      gain + graphPotential t <= graphPotential (491 : State) := by
  intro h
  change graphSmokeNext_s0491 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0491] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (607 : State) <= graphPotential (491 : State)
    decide
  ·
    simp [graphSmokeNext_s0491, h_l0009] at h

theorem valid_s0492 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (492 : State) label t gain ->
      gain + graphPotential t <= graphPotential (492 : State) := by
  intro h
  change graphSmokeNext_s0492 label = some (t, gain) at h
  simp [graphSmokeNext_s0492] at h

theorem valid_s0493 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (493 : State) label t gain ->
      gain + graphPotential t <= graphPotential (493 : State) := by
  intro h
  change graphSmokeNext_s0493 label = some (t, gain) at h
  simp [graphSmokeNext_s0493] at h

theorem valid_s0494 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (494 : State) label t gain ->
      gain + graphPotential t <= graphPotential (494 : State) := by
  intro h
  change graphSmokeNext_s0494 label = some (t, gain) at h
  simp [graphSmokeNext_s0494] at h

theorem valid_s0495 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (495 : State) label t gain ->
      gain + graphPotential t <= graphPotential (495 : State) := by
  intro h
  change graphSmokeNext_s0495 label = some (t, gain) at h
  simp [graphSmokeNext_s0495] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 480 <= s) (hhi : s < 496) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0480 h
  · exact valid_s0481 h
  · exact valid_s0482 h
  · exact valid_s0483 h
  · exact valid_s0484 h
  · exact valid_s0485 h
  · exact valid_s0486 h
  · exact valid_s0487 h
  · exact valid_s0488 h
  · exact valid_s0489 h
  · exact valid_s0490 h
  · exact valid_s0491 h
  · exact valid_s0492 h
  · exact valid_s0493 h
  · exact valid_s0494 h
  · exact valid_s0495 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard030
