import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard060

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [960, 970). -/
theorem valid_s0960 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (960 : State) label t gain ->
      gain + graphPotential t <= graphPotential (960 : State) := by
  intro h
  change graphSmokeNext_s0960 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0960] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (104 : State) <= graphPotential (960 : State)
    decide
  ·
    simp [graphSmokeNext_s0960, h_l0003] at h

theorem valid_s0961 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (961 : State) label t gain ->
      gain + graphPotential t <= graphPotential (961 : State) := by
  intro h
  change graphSmokeNext_s0961 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0961] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (105 : State) <= graphPotential (961 : State)
    decide
  ·
    simp [graphSmokeNext_s0961, h_l0003] at h

theorem valid_s0962 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (962 : State) label t gain ->
      gain + graphPotential t <= graphPotential (962 : State) := by
  intro h
  change graphSmokeNext_s0962 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0962] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (106 : State) <= graphPotential (962 : State)
    decide
  ·
    simp [graphSmokeNext_s0962, h_l0003] at h

theorem valid_s0963 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (963 : State) label t gain ->
      gain + graphPotential t <= graphPotential (963 : State) := by
  intro h
  change graphSmokeNext_s0963 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0963] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (107 : State) <= graphPotential (963 : State)
    decide
  ·
    simp [graphSmokeNext_s0963, h_l0003] at h

theorem valid_s0964 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (964 : State) label t gain ->
      gain + graphPotential t <= graphPotential (964 : State) := by
  intro h
  change graphSmokeNext_s0964 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0964] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (108 : State) <= graphPotential (964 : State)
    decide
  ·
    simp [graphSmokeNext_s0964, h_l0003] at h

theorem valid_s0965 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (965 : State) label t gain ->
      gain + graphPotential t <= graphPotential (965 : State) := by
  intro h
  change graphSmokeNext_s0965 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0965] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (109 : State) <= graphPotential (965 : State)
    decide
  ·
    simp [graphSmokeNext_s0965, h_l0003] at h

theorem valid_s0966 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (966 : State) label t gain ->
      gain + graphPotential t <= graphPotential (966 : State) := by
  intro h
  change graphSmokeNext_s0966 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0966] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (110 : State) <= graphPotential (966 : State)
    decide
  ·
    simp [graphSmokeNext_s0966, h_l0006] at h

theorem valid_s0967 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (967 : State) label t gain ->
      gain + graphPotential t <= graphPotential (967 : State) := by
  intro h
  change graphSmokeNext_s0967 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0967] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (112 : State) <= graphPotential (967 : State)
    decide
  ·
    simp [graphSmokeNext_s0967, h_l0006] at h

theorem valid_s0968 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (968 : State) label t gain ->
      gain + graphPotential t <= graphPotential (968 : State) := by
  intro h
  change graphSmokeNext_s0968 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0968] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (103 : State) <= graphPotential (968 : State)
    decide
  ·
    simp [graphSmokeNext_s0968, h_l0012] at h

theorem valid_s0969 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (969 : State) label t gain ->
      gain + graphPotential t <= graphPotential (969 : State) := by
  intro h
  change graphSmokeNext_s0969 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0969] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (113 : State) <= graphPotential (969 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0969] at h
      rcases h with ⟨rfl, rfl⟩
      change (114 : Int) + graphPotential (111 : State) <= graphPotential (969 : State)
      decide
    ·
      simp [graphSmokeNext_s0969, h_l0005, h_l0012] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 960 <= s) (hhi : s < 970) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0960 h
  · exact valid_s0961 h
  · exact valid_s0962 h
  · exact valid_s0963 h
  · exact valid_s0964 h
  · exact valid_s0965 h
  · exact valid_s0966 h
  · exact valid_s0967 h
  · exact valid_s0968 h
  · exact valid_s0969 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard060
