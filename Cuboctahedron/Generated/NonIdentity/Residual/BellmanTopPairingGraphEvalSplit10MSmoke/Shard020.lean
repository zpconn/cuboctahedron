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

/-- Validity shard for source states [320, 336). -/
theorem valid_s0320 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (320 : State) label t gain ->
      gain + graphPotential t <= graphPotential (320 : State) := by
  intro h
  change graphSmokeNext_s0320 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0320] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (413 : State) <= graphPotential (320 : State)
    decide
  ·
    simp [graphSmokeNext_s0320, h_l0013] at h

theorem valid_s0321 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (321 : State) label t gain ->
      gain + graphPotential t <= graphPotential (321 : State) := by
  intro h
  change graphSmokeNext_s0321 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0321] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (423 : State) <= graphPotential (321 : State)
    decide
  ·
    simp [graphSmokeNext_s0321, h_l0013] at h

theorem valid_s0322 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (322 : State) label t gain ->
      gain + graphPotential t <= graphPotential (322 : State) := by
  intro h
  change graphSmokeNext_s0322 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0322] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (430 : State) <= graphPotential (322 : State)
    decide
  ·
    simp [graphSmokeNext_s0322, h_l0013] at h

theorem valid_s0323 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (323 : State) label t gain ->
      gain + graphPotential t <= graphPotential (323 : State) := by
  intro h
  change graphSmokeNext_s0323 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0323] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (431 : State) <= graphPotential (323 : State)
    decide
  ·
    simp [graphSmokeNext_s0323, h_l0013] at h

theorem valid_s0324 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (324 : State) label t gain ->
      gain + graphPotential t <= graphPotential (324 : State) := by
  intro h
  change graphSmokeNext_s0324 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0324] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (432 : State) <= graphPotential (324 : State)
    decide
  ·
    simp [graphSmokeNext_s0324, h_l0013] at h

theorem valid_s0325 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (325 : State) label t gain ->
      gain + graphPotential t <= graphPotential (325 : State) := by
  intro h
  change graphSmokeNext_s0325 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0325] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (433 : State) <= graphPotential (325 : State)
    decide
  ·
    simp [graphSmokeNext_s0325, h_l0013] at h

theorem valid_s0326 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (326 : State) label t gain ->
      gain + graphPotential t <= graphPotential (326 : State) := by
  intro h
  change graphSmokeNext_s0326 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0326] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (434 : State) <= graphPotential (326 : State)
    decide
  ·
    simp [graphSmokeNext_s0326, h_l0013] at h

theorem valid_s0327 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (327 : State) label t gain ->
      gain + graphPotential t <= graphPotential (327 : State) := by
  intro h
  change graphSmokeNext_s0327 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0327] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (435 : State) <= graphPotential (327 : State)
    decide
  ·
    simp [graphSmokeNext_s0327, h_l0013] at h

theorem valid_s0328 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (328 : State) label t gain ->
      gain + graphPotential t <= graphPotential (328 : State) := by
  intro h
  change graphSmokeNext_s0328 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0328] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (436 : State) <= graphPotential (328 : State)
    decide
  ·
    simp [graphSmokeNext_s0328, h_l0013] at h

theorem valid_s0329 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (329 : State) label t gain ->
      gain + graphPotential t <= graphPotential (329 : State) := by
  intro h
  change graphSmokeNext_s0329 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0329] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (437 : State) <= graphPotential (329 : State)
    decide
  ·
    simp [graphSmokeNext_s0329, h_l0013] at h

theorem valid_s0330 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (330 : State) label t gain ->
      gain + graphPotential t <= graphPotential (330 : State) := by
  intro h
  change graphSmokeNext_s0330 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0330] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (438 : State) <= graphPotential (330 : State)
    decide
  ·
    simp [graphSmokeNext_s0330, h_l0013] at h

theorem valid_s0331 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (331 : State) label t gain ->
      gain + graphPotential t <= graphPotential (331 : State) := by
  intro h
  change graphSmokeNext_s0331 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0331] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (439 : State) <= graphPotential (331 : State)
    decide
  ·
    simp [graphSmokeNext_s0331, h_l0013] at h

theorem valid_s0332 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (332 : State) label t gain ->
      gain + graphPotential t <= graphPotential (332 : State) := by
  intro h
  change graphSmokeNext_s0332 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0332] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (442 : State) <= graphPotential (332 : State)
    decide
  ·
    simp [graphSmokeNext_s0332, h_l0013] at h

theorem valid_s0333 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (333 : State) label t gain ->
      gain + graphPotential t <= graphPotential (333 : State) := by
  intro h
  change graphSmokeNext_s0333 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0333] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (443 : State) <= graphPotential (333 : State)
    decide
  ·
    simp [graphSmokeNext_s0333, h_l0013] at h

theorem valid_s0334 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (334 : State) label t gain ->
      gain + graphPotential t <= graphPotential (334 : State) := by
  intro h
  change graphSmokeNext_s0334 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0334] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (456 : State) <= graphPotential (334 : State)
    decide
  ·
    simp [graphSmokeNext_s0334, h_l0013] at h

theorem valid_s0335 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (335 : State) label t gain ->
      gain + graphPotential t <= graphPotential (335 : State) := by
  intro h
  change graphSmokeNext_s0335 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0335] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (462 : State) <= graphPotential (335 : State)
    decide
  ·
    simp [graphSmokeNext_s0335, h_l0013] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 320 <= s) (hhi : s < 336) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0320 h
  · exact valid_s0321 h
  · exact valid_s0322 h
  · exact valid_s0323 h
  · exact valid_s0324 h
  · exact valid_s0325 h
  · exact valid_s0326 h
  · exact valid_s0327 h
  · exact valid_s0328 h
  · exact valid_s0329 h
  · exact valid_s0330 h
  · exact valid_s0331 h
  · exact valid_s0332 h
  · exact valid_s0333 h
  · exact valid_s0334 h
  · exact valid_s0335 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard020
