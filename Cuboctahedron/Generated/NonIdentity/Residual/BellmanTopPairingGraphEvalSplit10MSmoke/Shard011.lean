import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard011

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [176, 192). -/
theorem valid_s0176 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (176 : State) label t gain ->
      gain + graphPotential t <= graphPotential (176 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0176 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0176] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (322 : State) <= graphPotential (176 : State)
    decide
  ·
    simp [graphSmokeNext_s0176, h_l0000] at h

theorem valid_s0177 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (177 : State) label t gain ->
      gain + graphPotential t <= graphPotential (177 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0177 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0177] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (323 : State) <= graphPotential (177 : State)
    decide
  ·
    simp [graphSmokeNext_s0177, h_l0000] at h

theorem valid_s0178 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (178 : State) label t gain ->
      gain + graphPotential t <= graphPotential (178 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0178 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0178] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (326 : State) <= graphPotential (178 : State)
    decide
  ·
    simp [graphSmokeNext_s0178, h_l0000] at h

theorem valid_s0179 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (179 : State) label t gain ->
      gain + graphPotential t <= graphPotential (179 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0179 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0179] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (327 : State) <= graphPotential (179 : State)
    decide
  ·
    simp [graphSmokeNext_s0179, h_l0000] at h

theorem valid_s0180 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (180 : State) label t gain ->
      gain + graphPotential t <= graphPotential (180 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0180 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0180] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (328 : State) <= graphPotential (180 : State)
    decide
  ·
    simp [graphSmokeNext_s0180, h_l0000] at h

theorem valid_s0181 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (181 : State) label t gain ->
      gain + graphPotential t <= graphPotential (181 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0181 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0181] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (329 : State) <= graphPotential (181 : State)
    decide
  ·
    simp [graphSmokeNext_s0181, h_l0000] at h

theorem valid_s0182 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (182 : State) label t gain ->
      gain + graphPotential t <= graphPotential (182 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0182 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0182] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (330 : State) <= graphPotential (182 : State)
    decide
  ·
    simp [graphSmokeNext_s0182, h_l0000] at h

theorem valid_s0183 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (183 : State) label t gain ->
      gain + graphPotential t <= graphPotential (183 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0183 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0183] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (331 : State) <= graphPotential (183 : State)
    decide
  ·
    simp [graphSmokeNext_s0183, h_l0000] at h

theorem valid_s0184 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (184 : State) label t gain ->
      gain + graphPotential t <= graphPotential (184 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0184 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0184] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (338 : State) <= graphPotential (184 : State)
    decide
  ·
    simp [graphSmokeNext_s0184, h_l0000] at h

theorem valid_s0185 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (185 : State) label t gain ->
      gain + graphPotential t <= graphPotential (185 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0185 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0185] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (339 : State) <= graphPotential (185 : State)
    decide
  ·
    simp [graphSmokeNext_s0185, h_l0000] at h

theorem valid_s0186 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (186 : State) label t gain ->
      gain + graphPotential t <= graphPotential (186 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0186 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0186] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (341 : State) <= graphPotential (186 : State)
    decide
  ·
    simp [graphSmokeNext_s0186, h_l0000] at h

theorem valid_s0187 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (187 : State) label t gain ->
      gain + graphPotential t <= graphPotential (187 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0187 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0187] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (312 : State) <= graphPotential (187 : State)
    decide
  ·
    simp [graphSmokeNext_s0187, h_l0012] at h

theorem valid_s0188 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (188 : State) label t gain ->
      gain + graphPotential t <= graphPotential (188 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0188 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0188] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (313 : State) <= graphPotential (188 : State)
    decide
  ·
    simp [graphSmokeNext_s0188, h_l0012] at h

theorem valid_s0189 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (189 : State) label t gain ->
      gain + graphPotential t <= graphPotential (189 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0189 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0189] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (314 : State) <= graphPotential (189 : State)
    decide
  ·
    simp [graphSmokeNext_s0189, h_l0012] at h

theorem valid_s0190 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (190 : State) label t gain ->
      gain + graphPotential t <= graphPotential (190 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0190 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0190] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (315 : State) <= graphPotential (190 : State)
    decide
  ·
    simp [graphSmokeNext_s0190, h_l0012] at h

theorem valid_s0191 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (191 : State) label t gain ->
      gain + graphPotential t <= graphPotential (191 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0191 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0191] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (316 : State) <= graphPotential (191 : State)
    decide
  ·
    simp [graphSmokeNext_s0191, h_l0012] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 176 <= s) (hhi : s < 192) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0176 h
  · exact valid_s0177 h
  · exact valid_s0178 h
  · exact valid_s0179 h
  · exact valid_s0180 h
  · exact valid_s0181 h
  · exact valid_s0182 h
  · exact valid_s0183 h
  · exact valid_s0184 h
  · exact valid_s0185 h
  · exact valid_s0186 h
  · exact valid_s0187 h
  · exact valid_s0188 h
  · exact valid_s0189 h
  · exact valid_s0190 h
  · exact valid_s0191 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard011
