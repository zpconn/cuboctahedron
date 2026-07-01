import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard005

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [80, 96). -/
theorem valid_s0080 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (80 : State) label t gain ->
      gain + graphPotential t <= graphPotential (80 : State) := by
  intro h
  change graphSmokeNext_s0080 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0080] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (211 : State) <= graphPotential (80 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0080] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (146 : State) <= graphPotential (80 : State)
      decide
    ·
      simp [graphSmokeNext_s0080, h_l0001, h_l0011] at h

theorem valid_s0081 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (81 : State) label t gain ->
      gain + graphPotential t <= graphPotential (81 : State) := by
  intro h
  change graphSmokeNext_s0081 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0081] at h
    rcases h with ⟨rfl, rfl⟩
    change (-117 : Int) + graphPotential (147 : State) <= graphPotential (81 : State)
    decide
  ·
    simp [graphSmokeNext_s0081, h_l0011] at h

theorem valid_s0082 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (82 : State) label t gain ->
      gain + graphPotential t <= graphPotential (82 : State) := by
  intro h
  change graphSmokeNext_s0082 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0082] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (212 : State) <= graphPotential (82 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0082] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (155 : State) <= graphPotential (82 : State)
      decide
    ·
      simp [graphSmokeNext_s0082, h_l0001, h_l0011] at h

theorem valid_s0083 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (83 : State) label t gain ->
      gain + graphPotential t <= graphPotential (83 : State) := by
  intro h
  change graphSmokeNext_s0083 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0083] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (213 : State) <= graphPotential (83 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0083] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (161 : State) <= graphPotential (83 : State)
      decide
    ·
      simp [graphSmokeNext_s0083, h_l0001, h_l0011] at h

theorem valid_s0084 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (84 : State) label t gain ->
      gain + graphPotential t <= graphPotential (84 : State) := by
  intro h
  change graphSmokeNext_s0084 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0084] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (226 : State) <= graphPotential (84 : State)
    decide
  ·
    simp [graphSmokeNext_s0084, h_l0002] at h

theorem valid_s0085 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (85 : State) label t gain ->
      gain + graphPotential t <= graphPotential (85 : State) := by
  intro h
  change graphSmokeNext_s0085 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0085] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (228 : State) <= graphPotential (85 : State)
    decide
  ·
    simp [graphSmokeNext_s0085, h_l0002] at h

theorem valid_s0086 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (86 : State) label t gain ->
      gain + graphPotential t <= graphPotential (86 : State) := by
  intro h
  change graphSmokeNext_s0086 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0086] at h
    rcases h with ⟨rfl, rfl⟩
    change (-21 : Int) + graphPotential (164 : State) <= graphPotential (86 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0086] at h
      rcases h with ⟨rfl, rfl⟩
      change (114 : Int) + graphPotential (214 : State) <= graphPotential (86 : State)
      decide
    ·
      simp [graphSmokeNext_s0086, h_l0011, h_l0013] at h

theorem valid_s0087 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (87 : State) label t gain ->
      gain + graphPotential t <= graphPotential (87 : State) := by
  intro h
  change graphSmokeNext_s0087 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0087] at h
    rcases h with ⟨rfl, rfl⟩
    change (-21 : Int) + graphPotential (168 : State) <= graphPotential (87 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0087] at h
      rcases h with ⟨rfl, rfl⟩
      change (114 : Int) + graphPotential (220 : State) <= graphPotential (87 : State)
      decide
    ·
      simp [graphSmokeNext_s0087, h_l0011, h_l0013] at h

theorem valid_s0088 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (88 : State) label t gain ->
      gain + graphPotential t <= graphPotential (88 : State) := by
  intro h
  change graphSmokeNext_s0088 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0088] at h
    rcases h with ⟨rfl, rfl⟩
    change (-21 : Int) + graphPotential (177 : State) <= graphPotential (88 : State)
    decide
  ·
    simp [graphSmokeNext_s0088, h_l0011] at h

theorem valid_s0089 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (89 : State) label t gain ->
      gain + graphPotential t <= graphPotential (89 : State) := by
  intro h
  change graphSmokeNext_s0089 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0089] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (188 : State) <= graphPotential (89 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0089] at h
      rcases h with ⟨rfl, rfl⟩
      change (-10 : Int) + graphPotential (223 : State) <= graphPotential (89 : State)
      decide
    ·
      simp [graphSmokeNext_s0089, h_l0011, h_l0012] at h

theorem valid_s0090 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (90 : State) label t gain ->
      gain + graphPotential t <= graphPotential (90 : State) := by
  intro h
  change graphSmokeNext_s0090 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0090] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (189 : State) <= graphPotential (90 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0090] at h
      rcases h with ⟨rfl, rfl⟩
      change (-10 : Int) + graphPotential (224 : State) <= graphPotential (90 : State)
      decide
    ·
      simp [graphSmokeNext_s0090, h_l0011, h_l0012] at h

theorem valid_s0091 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (91 : State) label t gain ->
      gain + graphPotential t <= graphPotential (91 : State) := by
  intro h
  change graphSmokeNext_s0091 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0091] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (197 : State) <= graphPotential (91 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0091] at h
      rcases h with ⟨rfl, rfl⟩
      change (-10 : Int) + graphPotential (227 : State) <= graphPotential (91 : State)
      decide
    ·
      simp [graphSmokeNext_s0091, h_l0011, h_l0012] at h

theorem valid_s0092 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (92 : State) label t gain ->
      gain + graphPotential t <= graphPotential (92 : State) := by
  intro h
  change graphSmokeNext_s0092 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0092] at h
    rcases h with ⟨rfl, rfl⟩
    change (-21 : Int) + graphPotential (214 : State) <= graphPotential (92 : State)
    decide
  ·
    simp [graphSmokeNext_s0092, h_l0010] at h

theorem valid_s0093 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (93 : State) label t gain ->
      gain + graphPotential t <= graphPotential (93 : State) := by
  intro h
  change graphSmokeNext_s0093 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0093] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (230 : State) <= graphPotential (93 : State)
    decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0093] at h
      rcases h with ⟨rfl, rfl⟩
      change (-21 : Int) + graphPotential (215 : State) <= graphPotential (93 : State)
      decide
    ·
      simp [graphSmokeNext_s0093, h_l0001, h_l0010] at h

theorem valid_s0094 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (94 : State) label t gain ->
      gain + graphPotential t <= graphPotential (94 : State) := by
  intro h
  change graphSmokeNext_s0094 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0094] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (231 : State) <= graphPotential (94 : State)
    decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0094] at h
      rcases h with ⟨rfl, rfl⟩
      change (-21 : Int) + graphPotential (216 : State) <= graphPotential (94 : State)
      decide
    ·
      simp [graphSmokeNext_s0094, h_l0001, h_l0010] at h

theorem valid_s0095 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (95 : State) label t gain ->
      gain + graphPotential t <= graphPotential (95 : State) := by
  intro h
  change graphSmokeNext_s0095 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0095] at h
    rcases h with ⟨rfl, rfl⟩
    change (-21 : Int) + graphPotential (217 : State) <= graphPotential (95 : State)
    decide
  ·
    simp [graphSmokeNext_s0095, h_l0010] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 80 <= s) (hhi : s < 96) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0080 h
  · exact valid_s0081 h
  · exact valid_s0082 h
  · exact valid_s0083 h
  · exact valid_s0084 h
  · exact valid_s0085 h
  · exact valid_s0086 h
  · exact valid_s0087 h
  · exact valid_s0088 h
  · exact valid_s0089 h
  · exact valid_s0090 h
  · exact valid_s0091 h
  · exact valid_s0092 h
  · exact valid_s0093 h
  · exact valid_s0094 h
  · exact valid_s0095 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard005
