import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard019

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [304, 320). -/
theorem valid_s0304 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (304 : State) label t gain ->
      gain + graphPotential t <= graphPotential (304 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0304 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0304] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (477 : State) <= graphPotential (304 : State)
    decide
  ·
    simp [graphSmokeNext_s0304, h_l0001] at h

theorem valid_s0305 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (305 : State) label t gain ->
      gain + graphPotential t <= graphPotential (305 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0305 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0305] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (478 : State) <= graphPotential (305 : State)
    decide
  ·
    simp [graphSmokeNext_s0305, h_l0001] at h

theorem valid_s0306 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (306 : State) label t gain ->
      gain + graphPotential t <= graphPotential (306 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0306 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0306] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (479 : State) <= graphPotential (306 : State)
    decide
  ·
    simp [graphSmokeNext_s0306, h_l0001] at h

theorem valid_s0307 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (307 : State) label t gain ->
      gain + graphPotential t <= graphPotential (307 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0307 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0307] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (480 : State) <= graphPotential (307 : State)
    decide
  ·
    simp [graphSmokeNext_s0307, h_l0001] at h

theorem valid_s0308 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (308 : State) label t gain ->
      gain + graphPotential t <= graphPotential (308 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0308 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0308] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (481 : State) <= graphPotential (308 : State)
    decide
  ·
    simp [graphSmokeNext_s0308, h_l0001] at h

theorem valid_s0309 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (309 : State) label t gain ->
      gain + graphPotential t <= graphPotential (309 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0309 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0309] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (488 : State) <= graphPotential (309 : State)
    decide
  ·
    simp [graphSmokeNext_s0309, h_l0001] at h

theorem valid_s0310 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (310 : State) label t gain ->
      gain + graphPotential t <= graphPotential (310 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0310 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0310] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (490 : State) <= graphPotential (310 : State)
    decide
  ·
    simp [graphSmokeNext_s0310, h_l0001] at h

theorem valid_s0311 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (311 : State) label t gain ->
      gain + graphPotential t <= graphPotential (311 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0311 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0311] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (491 : State) <= graphPotential (311 : State)
    decide
  ·
    simp [graphSmokeNext_s0311, h_l0001] at h

theorem valid_s0312 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (312 : State) label t gain ->
      gain + graphPotential t <= graphPotential (312 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0312 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0312] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (379 : State) <= graphPotential (312 : State)
    decide
  ·
    simp [graphSmokeNext_s0312, h_l0013] at h

theorem valid_s0313 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (313 : State) label t gain ->
      gain + graphPotential t <= graphPotential (313 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0313 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0313] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (381 : State) <= graphPotential (313 : State)
    decide
  ·
    simp [graphSmokeNext_s0313, h_l0013] at h

theorem valid_s0314 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (314 : State) label t gain ->
      gain + graphPotential t <= graphPotential (314 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0314 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0314] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (382 : State) <= graphPotential (314 : State)
    decide
  ·
    simp [graphSmokeNext_s0314, h_l0013] at h

theorem valid_s0315 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (315 : State) label t gain ->
      gain + graphPotential t <= graphPotential (315 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0315 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0315] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (383 : State) <= graphPotential (315 : State)
    decide
  ·
    simp [graphSmokeNext_s0315, h_l0013] at h

theorem valid_s0316 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (316 : State) label t gain ->
      gain + graphPotential t <= graphPotential (316 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0316 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0316] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (387 : State) <= graphPotential (316 : State)
    decide
  ·
    simp [graphSmokeNext_s0316, h_l0013] at h

theorem valid_s0317 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (317 : State) label t gain ->
      gain + graphPotential t <= graphPotential (317 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0317 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0317] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (392 : State) <= graphPotential (317 : State)
    decide
  ·
    simp [graphSmokeNext_s0317, h_l0013] at h

theorem valid_s0318 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (318 : State) label t gain ->
      gain + graphPotential t <= graphPotential (318 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0318 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0318] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (398 : State) <= graphPotential (318 : State)
    decide
  ·
    simp [graphSmokeNext_s0318, h_l0013] at h

theorem valid_s0319 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (319 : State) label t gain ->
      gain + graphPotential t <= graphPotential (319 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0319 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0319] at h
    rcases h with ⟨rfl, rfl⟩
    change (-10 : Int) + graphPotential (405 : State) <= graphPotential (319 : State)
    decide
  ·
    simp [graphSmokeNext_s0319, h_l0013] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 304 <= s) (hhi : s < 320) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0304 h
  · exact valid_s0305 h
  · exact valid_s0306 h
  · exact valid_s0307 h
  · exact valid_s0308 h
  · exact valid_s0309 h
  · exact valid_s0310 h
  · exact valid_s0311 h
  · exact valid_s0312 h
  · exact valid_s0313 h
  · exact valid_s0314 h
  · exact valid_s0315 h
  · exact valid_s0316 h
  · exact valid_s0317 h
  · exact valid_s0318 h
  · exact valid_s0319 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard019
