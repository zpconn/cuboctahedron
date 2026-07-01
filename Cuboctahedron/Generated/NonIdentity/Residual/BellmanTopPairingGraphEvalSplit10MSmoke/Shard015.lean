import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard015

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [240, 256). -/
theorem valid_s0240 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (240 : State) label t gain ->
      gain + graphPotential t <= graphPotential (240 : State) := by
  intro h
  change graphSmokeNext_s0240 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0240] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (370 : State) <= graphPotential (240 : State)
    decide
  ·
    simp [graphSmokeNext_s0240, h_l0005] at h

theorem valid_s0241 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (241 : State) label t gain ->
      gain + graphPotential t <= graphPotential (241 : State) := by
  intro h
  change graphSmokeNext_s0241 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0241] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (371 : State) <= graphPotential (241 : State)
    decide
  ·
    simp [graphSmokeNext_s0241, h_l0005] at h

theorem valid_s0242 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (242 : State) label t gain ->
      gain + graphPotential t <= graphPotential (242 : State) := by
  intro h
  change graphSmokeNext_s0242 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0242] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (372 : State) <= graphPotential (242 : State)
    decide
  ·
    simp [graphSmokeNext_s0242, h_l0005] at h

theorem valid_s0243 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (243 : State) label t gain ->
      gain + graphPotential t <= graphPotential (243 : State) := by
  intro h
  change graphSmokeNext_s0243 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0243] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (373 : State) <= graphPotential (243 : State)
    decide
  ·
    simp [graphSmokeNext_s0243, h_l0005] at h

theorem valid_s0244 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (244 : State) label t gain ->
      gain + graphPotential t <= graphPotential (244 : State) := by
  intro h
  change graphSmokeNext_s0244 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0244] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (375 : State) <= graphPotential (244 : State)
    decide
  ·
    simp [graphSmokeNext_s0244, h_l0005] at h

theorem valid_s0245 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (245 : State) label t gain ->
      gain + graphPotential t <= graphPotential (245 : State) := by
  intro h
  change graphSmokeNext_s0245 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0245] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (334 : State) <= graphPotential (245 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0245] at h
      rcases h with ⟨rfl, rfl⟩
      change (-10 : Int) + graphPotential (367 : State) <= graphPotential (245 : State)
      decide
    ·
      simp [graphSmokeNext_s0245, h_l0008, h_l0013] at h

theorem valid_s0246 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (246 : State) label t gain ->
      gain + graphPotential t <= graphPotential (246 : State) := by
  intro h
  change graphSmokeNext_s0246 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0246] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (337 : State) <= graphPotential (246 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0246] at h
      rcases h with ⟨rfl, rfl⟩
      change (-10 : Int) + graphPotential (374 : State) <= graphPotential (246 : State)
      decide
    ·
      simp [graphSmokeNext_s0246, h_l0008, h_l0013] at h

theorem valid_s0247 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (247 : State) label t gain ->
      gain + graphPotential t <= graphPotential (247 : State) := by
  intro h
  change graphSmokeNext_s0247 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0247] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (376 : State) <= graphPotential (247 : State)
    decide
  ·
    simp [graphSmokeNext_s0247, h_l0001] at h

theorem valid_s0248 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (248 : State) label t gain ->
      gain + graphPotential t <= graphPotential (248 : State) := by
  intro h
  change graphSmokeNext_s0248 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0248] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (378 : State) <= graphPotential (248 : State)
    decide
  ·
    simp [graphSmokeNext_s0248, h_l0001] at h

theorem valid_s0249 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (249 : State) label t gain ->
      gain + graphPotential t <= graphPotential (249 : State) := by
  intro h
  change graphSmokeNext_s0249 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0249] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (380 : State) <= graphPotential (249 : State)
    decide
  ·
    simp [graphSmokeNext_s0249, h_l0001] at h

theorem valid_s0250 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (250 : State) label t gain ->
      gain + graphPotential t <= graphPotential (250 : State) := by
  intro h
  change graphSmokeNext_s0250 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0250] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (384 : State) <= graphPotential (250 : State)
    decide
  ·
    simp [graphSmokeNext_s0250, h_l0001] at h

theorem valid_s0251 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (251 : State) label t gain ->
      gain + graphPotential t <= graphPotential (251 : State) := by
  intro h
  change graphSmokeNext_s0251 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0251] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (386 : State) <= graphPotential (251 : State)
    decide
  ·
    simp [graphSmokeNext_s0251, h_l0001] at h

theorem valid_s0252 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (252 : State) label t gain ->
      gain + graphPotential t <= graphPotential (252 : State) := by
  intro h
  change graphSmokeNext_s0252 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0252] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (388 : State) <= graphPotential (252 : State)
    decide
  ·
    simp [graphSmokeNext_s0252, h_l0001] at h

theorem valid_s0253 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (253 : State) label t gain ->
      gain + graphPotential t <= graphPotential (253 : State) := by
  intro h
  change graphSmokeNext_s0253 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0253] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (389 : State) <= graphPotential (253 : State)
    decide
  ·
    simp [graphSmokeNext_s0253, h_l0001] at h

theorem valid_s0254 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (254 : State) label t gain ->
      gain + graphPotential t <= graphPotential (254 : State) := by
  intro h
  change graphSmokeNext_s0254 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0254] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (391 : State) <= graphPotential (254 : State)
    decide
  ·
    simp [graphSmokeNext_s0254, h_l0001] at h

theorem valid_s0255 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (255 : State) label t gain ->
      gain + graphPotential t <= graphPotential (255 : State) := by
  intro h
  change graphSmokeNext_s0255 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0255] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (393 : State) <= graphPotential (255 : State)
    decide
  ·
    simp [graphSmokeNext_s0255, h_l0001] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 240 <= s) (hhi : s < 256) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0240 h
  · exact valid_s0241 h
  · exact valid_s0242 h
  · exact valid_s0243 h
  · exact valid_s0244 h
  · exact valid_s0245 h
  · exact valid_s0246 h
  · exact valid_s0247 h
  · exact valid_s0248 h
  · exact valid_s0249 h
  · exact valid_s0250 h
  · exact valid_s0251 h
  · exact valid_s0252 h
  · exact valid_s0253 h
  · exact valid_s0254 h
  · exact valid_s0255 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard015
