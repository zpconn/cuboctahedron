import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard027

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [432, 448). -/
theorem valid_s0432 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (432 : State) label t gain ->
      gain + graphPotential t <= graphPotential (432 : State) := by
  intro h
  change graphSmokeNext_s0432 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0432] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (548 : State) <= graphPotential (432 : State)
    decide
  ·
    simp [graphSmokeNext_s0432, h_l0009] at h

theorem valid_s0433 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (433 : State) label t gain ->
      gain + graphPotential t <= graphPotential (433 : State) := by
  intro h
  change graphSmokeNext_s0433 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0433] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (549 : State) <= graphPotential (433 : State)
    decide
  ·
    simp [graphSmokeNext_s0433, h_l0009] at h

theorem valid_s0434 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (434 : State) label t gain ->
      gain + graphPotential t <= graphPotential (434 : State) := by
  intro h
  change graphSmokeNext_s0434 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0434] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (550 : State) <= graphPotential (434 : State)
    decide
  ·
    simp [graphSmokeNext_s0434, h_l0009] at h

theorem valid_s0435 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (435 : State) label t gain ->
      gain + graphPotential t <= graphPotential (435 : State) := by
  intro h
  change graphSmokeNext_s0435 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0435] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (551 : State) <= graphPotential (435 : State)
    decide
  ·
    simp [graphSmokeNext_s0435, h_l0009] at h

theorem valid_s0436 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (436 : State) label t gain ->
      gain + graphPotential t <= graphPotential (436 : State) := by
  intro h
  change graphSmokeNext_s0436 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0436] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (552 : State) <= graphPotential (436 : State)
    decide
  ·
    simp [graphSmokeNext_s0436, h_l0009] at h

theorem valid_s0437 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (437 : State) label t gain ->
      gain + graphPotential t <= graphPotential (437 : State) := by
  intro h
  change graphSmokeNext_s0437 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0437] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (553 : State) <= graphPotential (437 : State)
    decide
  ·
    simp [graphSmokeNext_s0437, h_l0009] at h

theorem valid_s0438 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (438 : State) label t gain ->
      gain + graphPotential t <= graphPotential (438 : State) := by
  intro h
  change graphSmokeNext_s0438 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0438] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (554 : State) <= graphPotential (438 : State)
    decide
  ·
    simp [graphSmokeNext_s0438, h_l0009] at h

theorem valid_s0439 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (439 : State) label t gain ->
      gain + graphPotential t <= graphPotential (439 : State) := by
  intro h
  change graphSmokeNext_s0439 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0439] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (555 : State) <= graphPotential (439 : State)
    decide
  ·
    simp [graphSmokeNext_s0439, h_l0009] at h

theorem valid_s0440 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (440 : State) label t gain ->
      gain + graphPotential t <= graphPotential (440 : State) := by
  intro h
  change graphSmokeNext_s0440 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0440] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (556 : State) <= graphPotential (440 : State)
    decide
  ·
    simp [graphSmokeNext_s0440, h_l0009] at h

theorem valid_s0441 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (441 : State) label t gain ->
      gain + graphPotential t <= graphPotential (441 : State) := by
  intro h
  change graphSmokeNext_s0441 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0441] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (557 : State) <= graphPotential (441 : State)
    decide
  ·
    simp [graphSmokeNext_s0441, h_l0009] at h

theorem valid_s0442 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (442 : State) label t gain ->
      gain + graphPotential t <= graphPotential (442 : State) := by
  intro h
  change graphSmokeNext_s0442 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0442] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (558 : State) <= graphPotential (442 : State)
    decide
  ·
    simp [graphSmokeNext_s0442, h_l0009] at h

theorem valid_s0443 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (443 : State) label t gain ->
      gain + graphPotential t <= graphPotential (443 : State) := by
  intro h
  change graphSmokeNext_s0443 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0443] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (559 : State) <= graphPotential (443 : State)
    decide
  ·
    simp [graphSmokeNext_s0443, h_l0009] at h

theorem valid_s0444 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (444 : State) label t gain ->
      gain + graphPotential t <= graphPotential (444 : State) := by
  intro h
  change graphSmokeNext_s0444 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0444] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (560 : State) <= graphPotential (444 : State)
    decide
  ·
    simp [graphSmokeNext_s0444, h_l0009] at h

theorem valid_s0445 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (445 : State) label t gain ->
      gain + graphPotential t <= graphPotential (445 : State) := by
  intro h
  change graphSmokeNext_s0445 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0445] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (561 : State) <= graphPotential (445 : State)
    decide
  ·
    simp [graphSmokeNext_s0445, h_l0009] at h

theorem valid_s0446 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (446 : State) label t gain ->
      gain + graphPotential t <= graphPotential (446 : State) := by
  intro h
  change graphSmokeNext_s0446 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0446] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (562 : State) <= graphPotential (446 : State)
    decide
  ·
    simp [graphSmokeNext_s0446, h_l0009] at h

theorem valid_s0447 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (447 : State) label t gain ->
      gain + graphPotential t <= graphPotential (447 : State) := by
  intro h
  change graphSmokeNext_s0447 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0447] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (563 : State) <= graphPotential (447 : State)
    decide
  ·
    simp [graphSmokeNext_s0447, h_l0009] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 432 <= s) (hhi : s < 448) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0432 h
  · exact valid_s0433 h
  · exact valid_s0434 h
  · exact valid_s0435 h
  · exact valid_s0436 h
  · exact valid_s0437 h
  · exact valid_s0438 h
  · exact valid_s0439 h
  · exact valid_s0440 h
  · exact valid_s0441 h
  · exact valid_s0442 h
  · exact valid_s0443 h
  · exact valid_s0444 h
  · exact valid_s0445 h
  · exact valid_s0446 h
  · exact valid_s0447 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard027
