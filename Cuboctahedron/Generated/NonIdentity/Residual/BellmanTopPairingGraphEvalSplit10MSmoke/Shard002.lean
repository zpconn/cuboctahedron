import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard002

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [32, 48). -/
theorem valid_s0032 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (32 : State) label t gain ->
      gain + graphPotential t <= graphPotential (32 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0032 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0032] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (160 : State) <= graphPotential (32 : State)
    decide
  ·
    simp [graphSmokeNext_s0032, h_l0007] at h

theorem valid_s0033 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (33 : State) label t gain ->
      gain + graphPotential t <= graphPotential (33 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0033 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0033] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (162 : State) <= graphPotential (33 : State)
    decide
  ·
    simp [graphSmokeNext_s0033, h_l0007] at h

theorem valid_s0034 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (34 : State) label t gain ->
      gain + graphPotential t <= graphPotential (34 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0034 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0034] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (163 : State) <= graphPotential (34 : State)
    decide
  ·
    simp [graphSmokeNext_s0034, h_l0007] at h

theorem valid_s0035 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (35 : State) label t gain ->
      gain + graphPotential t <= graphPotential (35 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0035 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0035] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (115 : State) <= graphPotential (35 : State)
    decide
  ·
    simp [graphSmokeNext_s0035, h_l0012] at h

theorem valid_s0036 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (36 : State) label t gain ->
      gain + graphPotential t <= graphPotential (36 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0036 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0036] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (116 : State) <= graphPotential (36 : State)
    decide
  ·
    simp [graphSmokeNext_s0036, h_l0012] at h

theorem valid_s0037 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (37 : State) label t gain ->
      gain + graphPotential t <= graphPotential (37 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0037 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0037] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (118 : State) <= graphPotential (37 : State)
    decide
  ·
    simp [graphSmokeNext_s0037, h_l0012] at h

theorem valid_s0038 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (38 : State) label t gain ->
      gain + graphPotential t <= graphPotential (38 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0038 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0038] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (121 : State) <= graphPotential (38 : State)
    decide
  ·
    simp [graphSmokeNext_s0038, h_l0012] at h

theorem valid_s0039 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (39 : State) label t gain ->
      gain + graphPotential t <= graphPotential (39 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0039 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0039] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (125 : State) <= graphPotential (39 : State)
    decide
  ·
    simp [graphSmokeNext_s0039, h_l0012] at h

theorem valid_s0040 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (40 : State) label t gain ->
      gain + graphPotential t <= graphPotential (40 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0040 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0040] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (131 : State) <= graphPotential (40 : State)
    decide
  ·
    simp [graphSmokeNext_s0040, h_l0012] at h

theorem valid_s0041 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (41 : State) label t gain ->
      gain + graphPotential t <= graphPotential (41 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0041 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0041] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (137 : State) <= graphPotential (41 : State)
    decide
  ·
    simp [graphSmokeNext_s0041, h_l0012] at h

theorem valid_s0042 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (42 : State) label t gain ->
      gain + graphPotential t <= graphPotential (42 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0042 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0042] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (142 : State) <= graphPotential (42 : State)
    decide
  ·
    simp [graphSmokeNext_s0042, h_l0012] at h

theorem valid_s0043 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (43 : State) label t gain ->
      gain + graphPotential t <= graphPotential (43 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0043 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0043] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (149 : State) <= graphPotential (43 : State)
    decide
  ·
    simp [graphSmokeNext_s0043, h_l0012] at h

theorem valid_s0044 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (44 : State) label t gain ->
      gain + graphPotential t <= graphPotential (44 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0044 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0044] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (155 : State) <= graphPotential (44 : State)
    decide
  ·
    simp [graphSmokeNext_s0044, h_l0012] at h

theorem valid_s0045 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (45 : State) label t gain ->
      gain + graphPotential t <= graphPotential (45 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0045 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0045] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (167 : State) <= graphPotential (45 : State)
    decide
  ·
    simp [graphSmokeNext_s0045, h_l0002] at h

theorem valid_s0046 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (46 : State) label t gain ->
      gain + graphPotential t <= graphPotential (46 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0046 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0046] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (169 : State) <= graphPotential (46 : State)
    decide
  ·
    simp [graphSmokeNext_s0046, h_l0002] at h

theorem valid_s0047 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (47 : State) label t gain ->
      gain + graphPotential t <= graphPotential (47 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0047 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0047] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (171 : State) <= graphPotential (47 : State)
    decide
  ·
    simp [graphSmokeNext_s0047, h_l0002] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 32 <= s) (hhi : s < 48) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0032 h
  · exact valid_s0033 h
  · exact valid_s0034 h
  · exact valid_s0035 h
  · exact valid_s0036 h
  · exact valid_s0037 h
  · exact valid_s0038 h
  · exact valid_s0039 h
  · exact valid_s0040 h
  · exact valid_s0041 h
  · exact valid_s0042 h
  · exact valid_s0043 h
  · exact valid_s0044 h
  · exact valid_s0045 h
  · exact valid_s0046 h
  · exact valid_s0047 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard002
