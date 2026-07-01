import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard024

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [384, 400). -/
theorem valid_s0384 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (384 : State) label t gain ->
      gain + graphPotential t <= graphPotential (384 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0384 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0384] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (500 : State) <= graphPotential (384 : State)
    decide
  ·
    simp [graphSmokeNext_s0384, h_l0009] at h

theorem valid_s0385 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (385 : State) label t gain ->
      gain + graphPotential t <= graphPotential (385 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0385 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0385] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (501 : State) <= graphPotential (385 : State)
    decide
  ·
    simp [graphSmokeNext_s0385, h_l0009] at h

theorem valid_s0386 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (386 : State) label t gain ->
      gain + graphPotential t <= graphPotential (386 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0386 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0386] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (502 : State) <= graphPotential (386 : State)
    decide
  ·
    simp [graphSmokeNext_s0386, h_l0009] at h

theorem valid_s0387 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (387 : State) label t gain ->
      gain + graphPotential t <= graphPotential (387 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0387 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0387] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (503 : State) <= graphPotential (387 : State)
    decide
  ·
    simp [graphSmokeNext_s0387, h_l0009] at h

theorem valid_s0388 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (388 : State) label t gain ->
      gain + graphPotential t <= graphPotential (388 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0388 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0388] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (504 : State) <= graphPotential (388 : State)
    decide
  ·
    simp [graphSmokeNext_s0388, h_l0009] at h

theorem valid_s0389 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (389 : State) label t gain ->
      gain + graphPotential t <= graphPotential (389 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0389 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0389] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (505 : State) <= graphPotential (389 : State)
    decide
  ·
    simp [graphSmokeNext_s0389, h_l0009] at h

theorem valid_s0390 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (390 : State) label t gain ->
      gain + graphPotential t <= graphPotential (390 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0390 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0390] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (506 : State) <= graphPotential (390 : State)
    decide
  ·
    simp [graphSmokeNext_s0390, h_l0009] at h

theorem valid_s0391 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (391 : State) label t gain ->
      gain + graphPotential t <= graphPotential (391 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0391 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0391] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (507 : State) <= graphPotential (391 : State)
    decide
  ·
    simp [graphSmokeNext_s0391, h_l0009] at h

theorem valid_s0392 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (392 : State) label t gain ->
      gain + graphPotential t <= graphPotential (392 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0392 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0392] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (508 : State) <= graphPotential (392 : State)
    decide
  ·
    simp [graphSmokeNext_s0392, h_l0009] at h

theorem valid_s0393 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (393 : State) label t gain ->
      gain + graphPotential t <= graphPotential (393 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0393 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0393] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (509 : State) <= graphPotential (393 : State)
    decide
  ·
    simp [graphSmokeNext_s0393, h_l0009] at h

theorem valid_s0394 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (394 : State) label t gain ->
      gain + graphPotential t <= graphPotential (394 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0394 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0394] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (510 : State) <= graphPotential (394 : State)
    decide
  ·
    simp [graphSmokeNext_s0394, h_l0009] at h

theorem valid_s0395 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (395 : State) label t gain ->
      gain + graphPotential t <= graphPotential (395 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0395 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0395] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (511 : State) <= graphPotential (395 : State)
    decide
  ·
    simp [graphSmokeNext_s0395, h_l0009] at h

theorem valid_s0396 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (396 : State) label t gain ->
      gain + graphPotential t <= graphPotential (396 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0396 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0396] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (512 : State) <= graphPotential (396 : State)
    decide
  ·
    simp [graphSmokeNext_s0396, h_l0009] at h

theorem valid_s0397 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (397 : State) label t gain ->
      gain + graphPotential t <= graphPotential (397 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0397 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0397] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (513 : State) <= graphPotential (397 : State)
    decide
  ·
    simp [graphSmokeNext_s0397, h_l0009] at h

theorem valid_s0398 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (398 : State) label t gain ->
      gain + graphPotential t <= graphPotential (398 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0398 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0398] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (514 : State) <= graphPotential (398 : State)
    decide
  ·
    simp [graphSmokeNext_s0398, h_l0009] at h

theorem valid_s0399 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (399 : State) label t gain ->
      gain + graphPotential t <= graphPotential (399 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0399 label = some (t, gain) at h
  by_cases h_l0009 : label = (9 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0399] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (515 : State) <= graphPotential (399 : State)
    decide
  ·
    simp [graphSmokeNext_s0399, h_l0009] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 384 <= s) (hhi : s < 400) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0384 h
  · exact valid_s0385 h
  · exact valid_s0386 h
  · exact valid_s0387 h
  · exact valid_s0388 h
  · exact valid_s0389 h
  · exact valid_s0390 h
  · exact valid_s0391 h
  · exact valid_s0392 h
  · exact valid_s0393 h
  · exact valid_s0394 h
  · exact valid_s0395 h
  · exact valid_s0396 h
  · exact valid_s0397 h
  · exact valid_s0398 h
  · exact valid_s0399 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard024
