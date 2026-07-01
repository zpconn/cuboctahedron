import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard025

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [400, 416). -/
theorem valid_s0400 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (400 : State) label t gain ->
      gain + graphPotential t <= graphPotential (400 : State) := by
  intro h
  change graphSmokeNext_s0400 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0400] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (516 : State) <= graphPotential (400 : State)
    decide
  ·
    simp [graphSmokeNext_s0400, h_l0009] at h

theorem valid_s0401 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (401 : State) label t gain ->
      gain + graphPotential t <= graphPotential (401 : State) := by
  intro h
  change graphSmokeNext_s0401 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0401] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (517 : State) <= graphPotential (401 : State)
    decide
  ·
    simp [graphSmokeNext_s0401, h_l0009] at h

theorem valid_s0402 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (402 : State) label t gain ->
      gain + graphPotential t <= graphPotential (402 : State) := by
  intro h
  change graphSmokeNext_s0402 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0402] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (518 : State) <= graphPotential (402 : State)
    decide
  ·
    simp [graphSmokeNext_s0402, h_l0009] at h

theorem valid_s0403 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (403 : State) label t gain ->
      gain + graphPotential t <= graphPotential (403 : State) := by
  intro h
  change graphSmokeNext_s0403 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0403] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (519 : State) <= graphPotential (403 : State)
    decide
  ·
    simp [graphSmokeNext_s0403, h_l0009] at h

theorem valid_s0404 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (404 : State) label t gain ->
      gain + graphPotential t <= graphPotential (404 : State) := by
  intro h
  change graphSmokeNext_s0404 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0404] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (520 : State) <= graphPotential (404 : State)
    decide
  ·
    simp [graphSmokeNext_s0404, h_l0009] at h

theorem valid_s0405 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (405 : State) label t gain ->
      gain + graphPotential t <= graphPotential (405 : State) := by
  intro h
  change graphSmokeNext_s0405 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0405] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (521 : State) <= graphPotential (405 : State)
    decide
  ·
    simp [graphSmokeNext_s0405, h_l0009] at h

theorem valid_s0406 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (406 : State) label t gain ->
      gain + graphPotential t <= graphPotential (406 : State) := by
  intro h
  change graphSmokeNext_s0406 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0406] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (522 : State) <= graphPotential (406 : State)
    decide
  ·
    simp [graphSmokeNext_s0406, h_l0009] at h

theorem valid_s0407 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (407 : State) label t gain ->
      gain + graphPotential t <= graphPotential (407 : State) := by
  intro h
  change graphSmokeNext_s0407 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0407] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (523 : State) <= graphPotential (407 : State)
    decide
  ·
    simp [graphSmokeNext_s0407, h_l0009] at h

theorem valid_s0408 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (408 : State) label t gain ->
      gain + graphPotential t <= graphPotential (408 : State) := by
  intro h
  change graphSmokeNext_s0408 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0408] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (524 : State) <= graphPotential (408 : State)
    decide
  ·
    simp [graphSmokeNext_s0408, h_l0009] at h

theorem valid_s0409 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (409 : State) label t gain ->
      gain + graphPotential t <= graphPotential (409 : State) := by
  intro h
  change graphSmokeNext_s0409 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0409] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (525 : State) <= graphPotential (409 : State)
    decide
  ·
    simp [graphSmokeNext_s0409, h_l0009] at h

theorem valid_s0410 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (410 : State) label t gain ->
      gain + graphPotential t <= graphPotential (410 : State) := by
  intro h
  change graphSmokeNext_s0410 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0410] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (526 : State) <= graphPotential (410 : State)
    decide
  ·
    simp [graphSmokeNext_s0410, h_l0009] at h

theorem valid_s0411 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (411 : State) label t gain ->
      gain + graphPotential t <= graphPotential (411 : State) := by
  intro h
  change graphSmokeNext_s0411 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0411] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (527 : State) <= graphPotential (411 : State)
    decide
  ·
    simp [graphSmokeNext_s0411, h_l0009] at h

theorem valid_s0412 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (412 : State) label t gain ->
      gain + graphPotential t <= graphPotential (412 : State) := by
  intro h
  change graphSmokeNext_s0412 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0412] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (528 : State) <= graphPotential (412 : State)
    decide
  ·
    simp [graphSmokeNext_s0412, h_l0009] at h

theorem valid_s0413 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (413 : State) label t gain ->
      gain + graphPotential t <= graphPotential (413 : State) := by
  intro h
  change graphSmokeNext_s0413 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0413] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (529 : State) <= graphPotential (413 : State)
    decide
  ·
    simp [graphSmokeNext_s0413, h_l0009] at h

theorem valid_s0414 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (414 : State) label t gain ->
      gain + graphPotential t <= graphPotential (414 : State) := by
  intro h
  change graphSmokeNext_s0414 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0414] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (530 : State) <= graphPotential (414 : State)
    decide
  ·
    simp [graphSmokeNext_s0414, h_l0009] at h

theorem valid_s0415 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (415 : State) label t gain ->
      gain + graphPotential t <= graphPotential (415 : State) := by
  intro h
  change graphSmokeNext_s0415 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0415] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (531 : State) <= graphPotential (415 : State)
    decide
  ·
    simp [graphSmokeNext_s0415, h_l0009] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 400 <= s) (hhi : s < 416) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0400 h
  · exact valid_s0401 h
  · exact valid_s0402 h
  · exact valid_s0403 h
  · exact valid_s0404 h
  · exact valid_s0405 h
  · exact valid_s0406 h
  · exact valid_s0407 h
  · exact valid_s0408 h
  · exact valid_s0409 h
  · exact valid_s0410 h
  · exact valid_s0411 h
  · exact valid_s0412 h
  · exact valid_s0413 h
  · exact valid_s0414 h
  · exact valid_s0415 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard025
