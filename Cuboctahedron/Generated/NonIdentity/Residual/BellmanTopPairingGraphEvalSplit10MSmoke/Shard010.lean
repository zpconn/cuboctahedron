import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard010

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [160, 176). -/
theorem valid_s0160 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (160 : State) label t gain ->
      gain + graphPotential t <= graphPotential (160 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0160 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0160] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (308 : State) <= graphPotential (160 : State)
    decide
  ·
    simp [graphSmokeNext_s0160, h_l0003] at h

theorem valid_s0161 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (161 : State) label t gain ->
      gain + graphPotential t <= graphPotential (161 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0161 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0161] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (309 : State) <= graphPotential (161 : State)
    decide
  ·
    simp [graphSmokeNext_s0161, h_l0003] at h

theorem valid_s0162 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (162 : State) label t gain ->
      gain + graphPotential t <= graphPotential (162 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0162 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0162] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (310 : State) <= graphPotential (162 : State)
    decide
  ·
    simp [graphSmokeNext_s0162, h_l0003] at h

theorem valid_s0163 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (163 : State) label t gain ->
      gain + graphPotential t <= graphPotential (163 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0163 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0163] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (311 : State) <= graphPotential (163 : State)
    decide
  ·
    simp [graphSmokeNext_s0163, h_l0003] at h

theorem valid_s0164 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (164 : State) label t gain ->
      gain + graphPotential t <= graphPotential (164 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0164 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0164] at h
    rcases h with ⟨rfl, rfl⟩
    change (114 : Int) + graphPotential (249 : State) <= graphPotential (164 : State)
    decide
  ·
    simp [graphSmokeNext_s0164, h_l0013] at h

theorem valid_s0165 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (165 : State) label t gain ->
      gain + graphPotential t <= graphPotential (165 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0165 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0165] at h
    rcases h with ⟨rfl, rfl⟩
    change (114 : Int) + graphPotential (250 : State) <= graphPotential (165 : State)
    decide
  ·
    simp [graphSmokeNext_s0165, h_l0013] at h

theorem valid_s0166 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (166 : State) label t gain ->
      gain + graphPotential t <= graphPotential (166 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0166 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0166] at h
    rcases h with ⟨rfl, rfl⟩
    change (114 : Int) + graphPotential (255 : State) <= graphPotential (166 : State)
    decide
  ·
    simp [graphSmokeNext_s0166, h_l0013] at h

theorem valid_s0167 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (167 : State) label t gain ->
      gain + graphPotential t <= graphPotential (167 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0167 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0167] at h
    rcases h with ⟨rfl, rfl⟩
    change (114 : Int) + graphPotential (275 : State) <= graphPotential (167 : State)
    decide
  ·
    simp [graphSmokeNext_s0167, h_l0013] at h

theorem valid_s0168 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (168 : State) label t gain ->
      gain + graphPotential t <= graphPotential (168 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0168 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0168] at h
    rcases h with ⟨rfl, rfl⟩
    change (114 : Int) + graphPotential (276 : State) <= graphPotential (168 : State)
    decide
  ·
    simp [graphSmokeNext_s0168, h_l0013] at h

theorem valid_s0169 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (169 : State) label t gain ->
      gain + graphPotential t <= graphPotential (169 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0169 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0169] at h
    rcases h with ⟨rfl, rfl⟩
    change (114 : Int) + graphPotential (277 : State) <= graphPotential (169 : State)
    decide
  ·
    simp [graphSmokeNext_s0169, h_l0013] at h

theorem valid_s0170 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (170 : State) label t gain ->
      gain + graphPotential t <= graphPotential (170 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0170 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0170] at h
    rcases h with ⟨rfl, rfl⟩
    change (114 : Int) + graphPotential (280 : State) <= graphPotential (170 : State)
    decide
  ·
    simp [graphSmokeNext_s0170, h_l0013] at h

theorem valid_s0171 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (171 : State) label t gain ->
      gain + graphPotential t <= graphPotential (171 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0171 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0171] at h
    rcases h with ⟨rfl, rfl⟩
    change (114 : Int) + graphPotential (284 : State) <= graphPotential (171 : State)
    decide
  ·
    simp [graphSmokeNext_s0171, h_l0013] at h

theorem valid_s0172 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (172 : State) label t gain ->
      gain + graphPotential t <= graphPotential (172 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0172 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0172] at h
    rcases h with ⟨rfl, rfl⟩
    change (114 : Int) + graphPotential (287 : State) <= graphPotential (172 : State)
    decide
  ·
    simp [graphSmokeNext_s0172, h_l0013] at h

theorem valid_s0173 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (173 : State) label t gain ->
      gain + graphPotential t <= graphPotential (173 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0173 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0173] at h
    rcases h with ⟨rfl, rfl⟩
    change (114 : Int) + graphPotential (295 : State) <= graphPotential (173 : State)
    decide
  ·
    simp [graphSmokeNext_s0173, h_l0013] at h

theorem valid_s0174 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (174 : State) label t gain ->
      gain + graphPotential t <= graphPotential (174 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0174 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0174] at h
    rcases h with ⟨rfl, rfl⟩
    change (114 : Int) + graphPotential (302 : State) <= graphPotential (174 : State)
    decide
  ·
    simp [graphSmokeNext_s0174, h_l0013] at h

theorem valid_s0175 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (175 : State) label t gain ->
      gain + graphPotential t <= graphPotential (175 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0175 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0175] at h
    rcases h with ⟨rfl, rfl⟩
    change (114 : Int) + graphPotential (307 : State) <= graphPotential (175 : State)
    decide
  ·
    simp [graphSmokeNext_s0175, h_l0013] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 160 <= s) (hhi : s < 176) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0160 h
  · exact valid_s0161 h
  · exact valid_s0162 h
  · exact valid_s0163 h
  · exact valid_s0164 h
  · exact valid_s0165 h
  · exact valid_s0166 h
  · exact valid_s0167 h
  · exact valid_s0168 h
  · exact valid_s0169 h
  · exact valid_s0170 h
  · exact valid_s0171 h
  · exact valid_s0172 h
  · exact valid_s0173 h
  · exact valid_s0174 h
  · exact valid_s0175 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard010
