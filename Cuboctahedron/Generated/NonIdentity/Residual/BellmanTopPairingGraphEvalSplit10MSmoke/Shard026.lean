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

/-- Validity shard for source states [416, 432). -/
theorem valid_s0416 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (416 : State) label t gain ->
      gain + graphPotential t <= graphPotential (416 : State) := by
  intro h
  change graphSmokeNext_s0416 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0416] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (532 : State) <= graphPotential (416 : State)
    decide
  ·
    simp [graphSmokeNext_s0416, h_l0009] at h

theorem valid_s0417 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (417 : State) label t gain ->
      gain + graphPotential t <= graphPotential (417 : State) := by
  intro h
  change graphSmokeNext_s0417 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0417] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (533 : State) <= graphPotential (417 : State)
    decide
  ·
    simp [graphSmokeNext_s0417, h_l0009] at h

theorem valid_s0418 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (418 : State) label t gain ->
      gain + graphPotential t <= graphPotential (418 : State) := by
  intro h
  change graphSmokeNext_s0418 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0418] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (534 : State) <= graphPotential (418 : State)
    decide
  ·
    simp [graphSmokeNext_s0418, h_l0009] at h

theorem valid_s0419 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (419 : State) label t gain ->
      gain + graphPotential t <= graphPotential (419 : State) := by
  intro h
  change graphSmokeNext_s0419 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0419] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (535 : State) <= graphPotential (419 : State)
    decide
  ·
    simp [graphSmokeNext_s0419, h_l0009] at h

theorem valid_s0420 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (420 : State) label t gain ->
      gain + graphPotential t <= graphPotential (420 : State) := by
  intro h
  change graphSmokeNext_s0420 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0420] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (536 : State) <= graphPotential (420 : State)
    decide
  ·
    simp [graphSmokeNext_s0420, h_l0009] at h

theorem valid_s0421 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (421 : State) label t gain ->
      gain + graphPotential t <= graphPotential (421 : State) := by
  intro h
  change graphSmokeNext_s0421 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0421] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (537 : State) <= graphPotential (421 : State)
    decide
  ·
    simp [graphSmokeNext_s0421, h_l0009] at h

theorem valid_s0422 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (422 : State) label t gain ->
      gain + graphPotential t <= graphPotential (422 : State) := by
  intro h
  change graphSmokeNext_s0422 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0422] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (538 : State) <= graphPotential (422 : State)
    decide
  ·
    simp [graphSmokeNext_s0422, h_l0009] at h

theorem valid_s0423 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (423 : State) label t gain ->
      gain + graphPotential t <= graphPotential (423 : State) := by
  intro h
  change graphSmokeNext_s0423 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0423] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (539 : State) <= graphPotential (423 : State)
    decide
  ·
    simp [graphSmokeNext_s0423, h_l0009] at h

theorem valid_s0424 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (424 : State) label t gain ->
      gain + graphPotential t <= graphPotential (424 : State) := by
  intro h
  change graphSmokeNext_s0424 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0424] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (540 : State) <= graphPotential (424 : State)
    decide
  ·
    simp [graphSmokeNext_s0424, h_l0009] at h

theorem valid_s0425 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (425 : State) label t gain ->
      gain + graphPotential t <= graphPotential (425 : State) := by
  intro h
  change graphSmokeNext_s0425 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0425] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (541 : State) <= graphPotential (425 : State)
    decide
  ·
    simp [graphSmokeNext_s0425, h_l0009] at h

theorem valid_s0426 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (426 : State) label t gain ->
      gain + graphPotential t <= graphPotential (426 : State) := by
  intro h
  change graphSmokeNext_s0426 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0426] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (542 : State) <= graphPotential (426 : State)
    decide
  ·
    simp [graphSmokeNext_s0426, h_l0009] at h

theorem valid_s0427 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (427 : State) label t gain ->
      gain + graphPotential t <= graphPotential (427 : State) := by
  intro h
  change graphSmokeNext_s0427 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0427] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (543 : State) <= graphPotential (427 : State)
    decide
  ·
    simp [graphSmokeNext_s0427, h_l0009] at h

theorem valid_s0428 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (428 : State) label t gain ->
      gain + graphPotential t <= graphPotential (428 : State) := by
  intro h
  change graphSmokeNext_s0428 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0428] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (544 : State) <= graphPotential (428 : State)
    decide
  ·
    simp [graphSmokeNext_s0428, h_l0009] at h

theorem valid_s0429 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (429 : State) label t gain ->
      gain + graphPotential t <= graphPotential (429 : State) := by
  intro h
  change graphSmokeNext_s0429 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0429] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (545 : State) <= graphPotential (429 : State)
    decide
  ·
    simp [graphSmokeNext_s0429, h_l0009] at h

theorem valid_s0430 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (430 : State) label t gain ->
      gain + graphPotential t <= graphPotential (430 : State) := by
  intro h
  change graphSmokeNext_s0430 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0430] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (546 : State) <= graphPotential (430 : State)
    decide
  ·
    simp [graphSmokeNext_s0430, h_l0009] at h

theorem valid_s0431 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (431 : State) label t gain ->
      gain + graphPotential t <= graphPotential (431 : State) := by
  intro h
  change graphSmokeNext_s0431 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0431] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (547 : State) <= graphPotential (431 : State)
    decide
  ·
    simp [graphSmokeNext_s0431, h_l0009] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 416 <= s) (hhi : s < 432) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0416 h
  · exact valid_s0417 h
  · exact valid_s0418 h
  · exact valid_s0419 h
  · exact valid_s0420 h
  · exact valid_s0421 h
  · exact valid_s0422 h
  · exact valid_s0423 h
  · exact valid_s0424 h
  · exact valid_s0425 h
  · exact valid_s0426 h
  · exact valid_s0427 h
  · exact valid_s0428 h
  · exact valid_s0429 h
  · exact valid_s0430 h
  · exact valid_s0431 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard026
