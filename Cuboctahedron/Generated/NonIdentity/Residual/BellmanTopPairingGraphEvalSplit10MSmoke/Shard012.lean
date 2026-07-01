import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard012

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [192, 208). -/
theorem valid_s0192 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (192 : State) label t gain ->
      gain + graphPotential t <= graphPotential (192 : State) := by
  intro h
  change graphSmokeNext_s0192 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0192] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (317 : State) <= graphPotential (192 : State)
    decide
  ·
    simp [graphSmokeNext_s0192, h_l0012] at h

theorem valid_s0193 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (193 : State) label t gain ->
      gain + graphPotential t <= graphPotential (193 : State) := by
  intro h
  change graphSmokeNext_s0193 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0193] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (318 : State) <= graphPotential (193 : State)
    decide
  ·
    simp [graphSmokeNext_s0193, h_l0012] at h

theorem valid_s0194 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (194 : State) label t gain ->
      gain + graphPotential t <= graphPotential (194 : State) := by
  intro h
  change graphSmokeNext_s0194 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0194] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (319 : State) <= graphPotential (194 : State)
    decide
  ·
    simp [graphSmokeNext_s0194, h_l0012] at h

theorem valid_s0195 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (195 : State) label t gain ->
      gain + graphPotential t <= graphPotential (195 : State) := by
  intro h
  change graphSmokeNext_s0195 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0195] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (320 : State) <= graphPotential (195 : State)
    decide
  ·
    simp [graphSmokeNext_s0195, h_l0012] at h

theorem valid_s0196 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (196 : State) label t gain ->
      gain + graphPotential t <= graphPotential (196 : State) := by
  intro h
  change graphSmokeNext_s0196 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0196] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (321 : State) <= graphPotential (196 : State)
    decide
  ·
    simp [graphSmokeNext_s0196, h_l0012] at h

theorem valid_s0197 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (197 : State) label t gain ->
      gain + graphPotential t <= graphPotential (197 : State) := by
  intro h
  change graphSmokeNext_s0197 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0197] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (332 : State) <= graphPotential (197 : State)
    decide
  ·
    simp [graphSmokeNext_s0197, h_l0012] at h

theorem valid_s0198 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (198 : State) label t gain ->
      gain + graphPotential t <= graphPotential (198 : State) := by
  intro h
  change graphSmokeNext_s0198 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0198] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (333 : State) <= graphPotential (198 : State)
    decide
  ·
    simp [graphSmokeNext_s0198, h_l0012] at h

theorem valid_s0199 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (199 : State) label t gain ->
      gain + graphPotential t <= graphPotential (199 : State) := by
  intro h
  change graphSmokeNext_s0199 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0199] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (334 : State) <= graphPotential (199 : State)
    decide
  ·
    simp [graphSmokeNext_s0199, h_l0012] at h

theorem valid_s0200 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (200 : State) label t gain ->
      gain + graphPotential t <= graphPotential (200 : State) := by
  intro h
  change graphSmokeNext_s0200 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0200] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (335 : State) <= graphPotential (200 : State)
    decide
  ·
    simp [graphSmokeNext_s0200, h_l0012] at h

theorem valid_s0201 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (201 : State) label t gain ->
      gain + graphPotential t <= graphPotential (201 : State) := by
  intro h
  change graphSmokeNext_s0201 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0201] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (336 : State) <= graphPotential (201 : State)
    decide
  ·
    simp [graphSmokeNext_s0201, h_l0012] at h

theorem valid_s0202 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (202 : State) label t gain ->
      gain + graphPotential t <= graphPotential (202 : State) := by
  intro h
  change graphSmokeNext_s0202 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0202] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (342 : State) <= graphPotential (202 : State)
    decide
  ·
    simp [graphSmokeNext_s0202, h_l0003] at h

theorem valid_s0203 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (203 : State) label t gain ->
      gain + graphPotential t <= graphPotential (203 : State) := by
  intro h
  change graphSmokeNext_s0203 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0203] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (346 : State) <= graphPotential (203 : State)
    decide
  ·
    simp [graphSmokeNext_s0203, h_l0003] at h

theorem valid_s0204 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (204 : State) label t gain ->
      gain + graphPotential t <= graphPotential (204 : State) := by
  intro h
  change graphSmokeNext_s0204 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0204] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (348 : State) <= graphPotential (204 : State)
    decide
  ·
    simp [graphSmokeNext_s0204, h_l0003] at h

theorem valid_s0205 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (205 : State) label t gain ->
      gain + graphPotential t <= graphPotential (205 : State) := by
  intro h
  change graphSmokeNext_s0205 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0205] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (349 : State) <= graphPotential (205 : State)
    decide
  ·
    simp [graphSmokeNext_s0205, h_l0003] at h

theorem valid_s0206 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (206 : State) label t gain ->
      gain + graphPotential t <= graphPotential (206 : State) := by
  intro h
  change graphSmokeNext_s0206 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0206] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (351 : State) <= graphPotential (206 : State)
    decide
  ·
    simp [graphSmokeNext_s0206, h_l0003] at h

theorem valid_s0207 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (207 : State) label t gain ->
      gain + graphPotential t <= graphPotential (207 : State) := by
  intro h
  change graphSmokeNext_s0207 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0207] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (355 : State) <= graphPotential (207 : State)
    decide
  ·
    simp [graphSmokeNext_s0207, h_l0003] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 192 <= s) (hhi : s < 208) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0192 h
  · exact valid_s0193 h
  · exact valid_s0194 h
  · exact valid_s0195 h
  · exact valid_s0196 h
  · exact valid_s0197 h
  · exact valid_s0198 h
  · exact valid_s0199 h
  · exact valid_s0200 h
  · exact valid_s0201 h
  · exact valid_s0202 h
  · exact valid_s0203 h
  · exact valid_s0204 h
  · exact valid_s0205 h
  · exact valid_s0206 h
  · exact valid_s0207 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard012
