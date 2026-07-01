import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard018

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [288, 304). -/
theorem valid_s0288 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (288 : State) label t gain ->
      gain + graphPotential t <= graphPotential (288 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0288 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0288] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (446 : State) <= graphPotential (288 : State)
    decide
  ·
    simp [graphSmokeNext_s0288, h_l0001] at h

theorem valid_s0289 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (289 : State) label t gain ->
      gain + graphPotential t <= graphPotential (289 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0289 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0289] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (448 : State) <= graphPotential (289 : State)
    decide
  ·
    simp [graphSmokeNext_s0289, h_l0001] at h

theorem valid_s0290 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (290 : State) label t gain ->
      gain + graphPotential t <= graphPotential (290 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0290 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0290] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (450 : State) <= graphPotential (290 : State)
    decide
  ·
    simp [graphSmokeNext_s0290, h_l0001] at h

theorem valid_s0291 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (291 : State) label t gain ->
      gain + graphPotential t <= graphPotential (291 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0291 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0291] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (452 : State) <= graphPotential (291 : State)
    decide
  ·
    simp [graphSmokeNext_s0291, h_l0001] at h

theorem valid_s0292 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (292 : State) label t gain ->
      gain + graphPotential t <= graphPotential (292 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0292 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0292] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (453 : State) <= graphPotential (292 : State)
    decide
  ·
    simp [graphSmokeNext_s0292, h_l0001] at h

theorem valid_s0293 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (293 : State) label t gain ->
      gain + graphPotential t <= graphPotential (293 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0293 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0293] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (460 : State) <= graphPotential (293 : State)
    decide
  ·
    simp [graphSmokeNext_s0293, h_l0001] at h

theorem valid_s0294 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (294 : State) label t gain ->
      gain + graphPotential t <= graphPotential (294 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0294 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0294] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (461 : State) <= graphPotential (294 : State)
    decide
  ·
    simp [graphSmokeNext_s0294, h_l0001] at h

theorem valid_s0295 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (295 : State) label t gain ->
      gain + graphPotential t <= graphPotential (295 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0295 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0295] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (463 : State) <= graphPotential (295 : State)
    decide
  ·
    simp [graphSmokeNext_s0295, h_l0001] at h

theorem valid_s0296 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (296 : State) label t gain ->
      gain + graphPotential t <= graphPotential (296 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0296 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0296] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (464 : State) <= graphPotential (296 : State)
    decide
  ·
    simp [graphSmokeNext_s0296, h_l0001] at h

theorem valid_s0297 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (297 : State) label t gain ->
      gain + graphPotential t <= graphPotential (297 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0297 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0297] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (465 : State) <= graphPotential (297 : State)
    decide
  ·
    simp [graphSmokeNext_s0297, h_l0001] at h

theorem valid_s0298 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (298 : State) label t gain ->
      gain + graphPotential t <= graphPotential (298 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0298 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0298] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (467 : State) <= graphPotential (298 : State)
    decide
  ·
    simp [graphSmokeNext_s0298, h_l0001] at h

theorem valid_s0299 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (299 : State) label t gain ->
      gain + graphPotential t <= graphPotential (299 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0299 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0299] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (470 : State) <= graphPotential (299 : State)
    decide
  ·
    simp [graphSmokeNext_s0299, h_l0001] at h

theorem valid_s0300 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (300 : State) label t gain ->
      gain + graphPotential t <= graphPotential (300 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0300 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0300] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (471 : State) <= graphPotential (300 : State)
    decide
  ·
    simp [graphSmokeNext_s0300, h_l0001] at h

theorem valid_s0301 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (301 : State) label t gain ->
      gain + graphPotential t <= graphPotential (301 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0301 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0301] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (473 : State) <= graphPotential (301 : State)
    decide
  ·
    simp [graphSmokeNext_s0301, h_l0001] at h

theorem valid_s0302 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (302 : State) label t gain ->
      gain + graphPotential t <= graphPotential (302 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0302 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0302] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (475 : State) <= graphPotential (302 : State)
    decide
  ·
    simp [graphSmokeNext_s0302, h_l0001] at h

theorem valid_s0303 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (303 : State) label t gain ->
      gain + graphPotential t <= graphPotential (303 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0303 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0303] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (476 : State) <= graphPotential (303 : State)
    decide
  ·
    simp [graphSmokeNext_s0303, h_l0001] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 288 <= s) (hhi : s < 304) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0288 h
  · exact valid_s0289 h
  · exact valid_s0290 h
  · exact valid_s0291 h
  · exact valid_s0292 h
  · exact valid_s0293 h
  · exact valid_s0294 h
  · exact valid_s0295 h
  · exact valid_s0296 h
  · exact valid_s0297 h
  · exact valid_s0298 h
  · exact valid_s0299 h
  · exact valid_s0300 h
  · exact valid_s0301 h
  · exact valid_s0302 h
  · exact valid_s0303 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard018
