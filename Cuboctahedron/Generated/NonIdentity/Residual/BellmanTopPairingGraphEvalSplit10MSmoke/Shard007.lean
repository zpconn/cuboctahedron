import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard007

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [112, 128). -/
theorem valid_s0112 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (112 : State) label t gain ->
      gain + graphPotential t <= graphPotential (112 : State) := by
  intro h
  change graphSmokeNext_s0112 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0112] at h
    rcases h with ⟨rfl, rfl⟩
    change (114 : Int) + graphPotential (242 : State) <= graphPotential (112 : State)
    decide
  ·
    simp [graphSmokeNext_s0112, h_l0013] at h

theorem valid_s0113 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (113 : State) label t gain ->
      gain + graphPotential t <= graphPotential (113 : State) := by
  intro h
  change graphSmokeNext_s0113 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0113] at h
    rcases h with ⟨rfl, rfl⟩
    change (-73 : Int) + graphPotential (199 : State) <= graphPotential (113 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0113] at h
      rcases h with ⟨rfl, rfl⟩
      change (-10 : Int) + graphPotential (245 : State) <= graphPotential (113 : State)
      decide
    ·
      simp [graphSmokeNext_s0113, h_l0008, h_l0012] at h

theorem valid_s0114 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (114 : State) label t gain ->
      gain + graphPotential t <= graphPotential (114 : State) := by
  intro h
  change graphSmokeNext_s0114 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0114] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (247 : State) <= graphPotential (114 : State)
    decide
  ·
    simp [graphSmokeNext_s0114, h_l0003] at h

theorem valid_s0115 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (115 : State) label t gain ->
      gain + graphPotential t <= graphPotential (115 : State) := by
  intro h
  change graphSmokeNext_s0115 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0115] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (248 : State) <= graphPotential (115 : State)
    decide
  ·
    simp [graphSmokeNext_s0115, h_l0003] at h

theorem valid_s0116 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (116 : State) label t gain ->
      gain + graphPotential t <= graphPotential (116 : State) := by
  intro h
  change graphSmokeNext_s0116 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0116] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (251 : State) <= graphPotential (116 : State)
    decide
  ·
    simp [graphSmokeNext_s0116, h_l0003] at h

theorem valid_s0117 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (117 : State) label t gain ->
      gain + graphPotential t <= graphPotential (117 : State) := by
  intro h
  change graphSmokeNext_s0117 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0117] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (253 : State) <= graphPotential (117 : State)
    decide
  ·
    simp [graphSmokeNext_s0117, h_l0003] at h

theorem valid_s0118 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (118 : State) label t gain ->
      gain + graphPotential t <= graphPotential (118 : State) := by
  intro h
  change graphSmokeNext_s0118 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0118] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (254 : State) <= graphPotential (118 : State)
    decide
  ·
    simp [graphSmokeNext_s0118, h_l0003] at h

theorem valid_s0119 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (119 : State) label t gain ->
      gain + graphPotential t <= graphPotential (119 : State) := by
  intro h
  change graphSmokeNext_s0119 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0119] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (256 : State) <= graphPotential (119 : State)
    decide
  ·
    simp [graphSmokeNext_s0119, h_l0003] at h

theorem valid_s0120 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (120 : State) label t gain ->
      gain + graphPotential t <= graphPotential (120 : State) := by
  intro h
  change graphSmokeNext_s0120 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0120] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (257 : State) <= graphPotential (120 : State)
    decide
  ·
    simp [graphSmokeNext_s0120, h_l0003] at h

theorem valid_s0121 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (121 : State) label t gain ->
      gain + graphPotential t <= graphPotential (121 : State) := by
  intro h
  change graphSmokeNext_s0121 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0121] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (258 : State) <= graphPotential (121 : State)
    decide
  ·
    simp [graphSmokeNext_s0121, h_l0003] at h

theorem valid_s0122 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (122 : State) label t gain ->
      gain + graphPotential t <= graphPotential (122 : State) := by
  intro h
  change graphSmokeNext_s0122 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0122] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (260 : State) <= graphPotential (122 : State)
    decide
  ·
    simp [graphSmokeNext_s0122, h_l0003] at h

theorem valid_s0123 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (123 : State) label t gain ->
      gain + graphPotential t <= graphPotential (123 : State) := by
  intro h
  change graphSmokeNext_s0123 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0123] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (261 : State) <= graphPotential (123 : State)
    decide
  ·
    simp [graphSmokeNext_s0123, h_l0003] at h

theorem valid_s0124 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (124 : State) label t gain ->
      gain + graphPotential t <= graphPotential (124 : State) := by
  intro h
  change graphSmokeNext_s0124 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0124] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (262 : State) <= graphPotential (124 : State)
    decide
  ·
    simp [graphSmokeNext_s0124, h_l0003] at h

theorem valid_s0125 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (125 : State) label t gain ->
      gain + graphPotential t <= graphPotential (125 : State) := by
  intro h
  change graphSmokeNext_s0125 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0125] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (263 : State) <= graphPotential (125 : State)
    decide
  ·
    simp [graphSmokeNext_s0125, h_l0003] at h

theorem valid_s0126 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (126 : State) label t gain ->
      gain + graphPotential t <= graphPotential (126 : State) := by
  intro h
  change graphSmokeNext_s0126 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0126] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (265 : State) <= graphPotential (126 : State)
    decide
  ·
    simp [graphSmokeNext_s0126, h_l0003] at h

theorem valid_s0127 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (127 : State) label t gain ->
      gain + graphPotential t <= graphPotential (127 : State) := by
  intro h
  change graphSmokeNext_s0127 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0127] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (266 : State) <= graphPotential (127 : State)
    decide
  ·
    simp [graphSmokeNext_s0127, h_l0003] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 112 <= s) (hhi : s < 128) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0112 h
  · exact valid_s0113 h
  · exact valid_s0114 h
  · exact valid_s0115 h
  · exact valid_s0116 h
  · exact valid_s0117 h
  · exact valid_s0118 h
  · exact valid_s0119 h
  · exact valid_s0120 h
  · exact valid_s0121 h
  · exact valid_s0122 h
  · exact valid_s0123 h
  · exact valid_s0124 h
  · exact valid_s0125 h
  · exact valid_s0126 h
  · exact valid_s0127 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard007
