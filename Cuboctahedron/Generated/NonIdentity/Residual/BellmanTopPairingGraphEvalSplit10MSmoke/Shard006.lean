import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard006

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [96, 112). -/
theorem valid_s0096 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (96 : State) label t gain ->
      gain + graphPotential t <= graphPotential (96 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0096 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0096] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (232 : State) <= graphPotential (96 : State)
    decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0096] at h
      rcases h with ⟨rfl, rfl⟩
      change (-21 : Int) + graphPotential (218 : State) <= graphPotential (96 : State)
      decide
    ·
      simp [graphSmokeNext_s0096, h_l0001, h_l0010] at h

theorem valid_s0097 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (97 : State) label t gain ->
      gain + graphPotential t <= graphPotential (97 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0097 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0097] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (233 : State) <= graphPotential (97 : State)
    decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0097] at h
      rcases h with ⟨rfl, rfl⟩
      change (-21 : Int) + graphPotential (219 : State) <= graphPotential (97 : State)
      decide
    ·
      simp [graphSmokeNext_s0097, h_l0001, h_l0010] at h

theorem valid_s0098 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (98 : State) label t gain ->
      gain + graphPotential t <= graphPotential (98 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0098 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0098] at h
    rcases h with ⟨rfl, rfl⟩
    change (-21 : Int) + graphPotential (220 : State) <= graphPotential (98 : State)
    decide
  ·
    simp [graphSmokeNext_s0098, h_l0010] at h

theorem valid_s0099 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (99 : State) label t gain ->
      gain + graphPotential t <= graphPotential (99 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0099 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0099] at h
    rcases h with ⟨rfl, rfl⟩
    change (-21 : Int) + graphPotential (221 : State) <= graphPotential (99 : State)
    decide
  ·
    simp [graphSmokeNext_s0099, h_l0010] at h

theorem valid_s0100 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (100 : State) label t gain ->
      gain + graphPotential t <= graphPotential (100 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0100 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0100] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (235 : State) <= graphPotential (100 : State)
    decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0100] at h
      rcases h with ⟨rfl, rfl⟩
      change (-21 : Int) + graphPotential (222 : State) <= graphPotential (100 : State)
      decide
    ·
      simp [graphSmokeNext_s0100, h_l0001, h_l0010] at h

theorem valid_s0101 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (101 : State) label t gain ->
      gain + graphPotential t <= graphPotential (101 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0101 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0101] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (223 : State) <= graphPotential (101 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0101] at h
      rcases h with ⟨rfl, rfl⟩
      change (-10 : Int) + graphPotential (229 : State) <= graphPotential (101 : State)
      decide
    ·
      simp [graphSmokeNext_s0101, h_l0010, h_l0013] at h

theorem valid_s0102 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (102 : State) label t gain ->
      gain + graphPotential t <= graphPotential (102 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0102 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0102] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (225 : State) <= graphPotential (102 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0102] at h
      rcases h with ⟨rfl, rfl⟩
      change (-10 : Int) + graphPotential (234 : State) <= graphPotential (102 : State)
      decide
    ·
      simp [graphSmokeNext_s0102, h_l0010, h_l0013] at h

theorem valid_s0103 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (103 : State) label t gain ->
      gain + graphPotential t <= graphPotential (103 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0103 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0103] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (236 : State) <= graphPotential (103 : State)
    decide
  ·
    simp [graphSmokeNext_s0103, h_l0007] at h

theorem valid_s0104 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (104 : State) label t gain ->
      gain + graphPotential t <= graphPotential (104 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0104 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0104] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (238 : State) <= graphPotential (104 : State)
    decide
  ·
    simp [graphSmokeNext_s0104, h_l0007] at h

theorem valid_s0105 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (105 : State) label t gain ->
      gain + graphPotential t <= graphPotential (105 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0105 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0105] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (239 : State) <= graphPotential (105 : State)
    decide
  ·
    simp [graphSmokeNext_s0105, h_l0007] at h

theorem valid_s0106 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (106 : State) label t gain ->
      gain + graphPotential t <= graphPotential (106 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0106 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0106] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (240 : State) <= graphPotential (106 : State)
    decide
  ·
    simp [graphSmokeNext_s0106, h_l0007] at h

theorem valid_s0107 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (107 : State) label t gain ->
      gain + graphPotential t <= graphPotential (107 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0107 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0107] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (241 : State) <= graphPotential (107 : State)
    decide
  ·
    simp [graphSmokeNext_s0107, h_l0007] at h

theorem valid_s0108 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (108 : State) label t gain ->
      gain + graphPotential t <= graphPotential (108 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0108 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0108] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (243 : State) <= graphPotential (108 : State)
    decide
  ·
    simp [graphSmokeNext_s0108, h_l0007] at h

theorem valid_s0109 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (109 : State) label t gain ->
      gain + graphPotential t <= graphPotential (109 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0109 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0109] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (244 : State) <= graphPotential (109 : State)
    decide
  ·
    simp [graphSmokeNext_s0109, h_l0007] at h

theorem valid_s0110 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (110 : State) label t gain ->
      gain + graphPotential t <= graphPotential (110 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0110 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0110] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (246 : State) <= graphPotential (110 : State)
    decide
  ·
    simp [graphSmokeNext_s0110, h_l0004] at h

theorem valid_s0111 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (111 : State) label t gain ->
      gain + graphPotential t <= graphPotential (111 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0111 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0111] at h
    rcases h with ⟨rfl, rfl⟩
    change (114 : Int) + graphPotential (237 : State) <= graphPotential (111 : State)
    decide
  ·
    simp [graphSmokeNext_s0111, h_l0013] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 96 <= s) (hhi : s < 112) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0096 h
  · exact valid_s0097 h
  · exact valid_s0098 h
  · exact valid_s0099 h
  · exact valid_s0100 h
  · exact valid_s0101 h
  · exact valid_s0102 h
  · exact valid_s0103 h
  · exact valid_s0104 h
  · exact valid_s0105 h
  · exact valid_s0106 h
  · exact valid_s0107 h
  · exact valid_s0108 h
  · exact valid_s0109 h
  · exact valid_s0110 h
  · exact valid_s0111 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard006
