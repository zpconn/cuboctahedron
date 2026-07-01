import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard054

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [864, 880). -/
theorem valid_s0864 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (864 : State) label t gain ->
      gain + graphPotential t <= graphPotential (864 : State) := by
  intro h
  change graphSmokeNext_s0864 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0864] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (957 : State) <= graphPotential (864 : State)
    decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0864] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (943 : State) <= graphPotential (864 : State)
      decide
    ·
      simp [graphSmokeNext_s0864, h_l0002, h_l0010] at h

theorem valid_s0865 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (865 : State) label t gain ->
      gain + graphPotential t <= graphPotential (865 : State) := by
  intro h
  change graphSmokeNext_s0865 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0865] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (958 : State) <= graphPotential (865 : State)
    decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0865] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (944 : State) <= graphPotential (865 : State)
      decide
    ·
      simp [graphSmokeNext_s0865, h_l0002, h_l0010] at h

theorem valid_s0866 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (866 : State) label t gain ->
      gain + graphPotential t <= graphPotential (866 : State) := by
  intro h
  change graphSmokeNext_s0866 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0866] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (959 : State) <= graphPotential (866 : State)
    decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0866] at h
      rcases h with ⟨rfl, rfl⟩
      change (-21 : Int) + graphPotential (948 : State) <= graphPotential (866 : State)
      decide
    ·
      by_cases h_l0012 : label = (12 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0866] at h
        rcases h with ⟨rfl, rfl⟩
        change (114 : Int) + graphPotential (956 : State) <= graphPotential (866 : State)
        decide
      ·
        simp [graphSmokeNext_s0866, h_l0001, h_l0010, h_l0012] at h

theorem valid_s0867 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (867 : State) label t gain ->
      gain + graphPotential t <= graphPotential (867 : State) := by
  intro h
  change graphSmokeNext_s0867 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0867] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (961 : State) <= graphPotential (867 : State)
    decide
  ·
    simp [graphSmokeNext_s0867, h_l0006] at h

theorem valid_s0868 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (868 : State) label t gain ->
      gain + graphPotential t <= graphPotential (868 : State) := by
  intro h
  change graphSmokeNext_s0868 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0868] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (962 : State) <= graphPotential (868 : State)
    decide
  ·
    simp [graphSmokeNext_s0868, h_l0006] at h

theorem valid_s0869 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (869 : State) label t gain ->
      gain + graphPotential t <= graphPotential (869 : State) := by
  intro h
  change graphSmokeNext_s0869 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0869] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (963 : State) <= graphPotential (869 : State)
    decide
  ·
    simp [graphSmokeNext_s0869, h_l0006] at h

theorem valid_s0870 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (870 : State) label t gain ->
      gain + graphPotential t <= graphPotential (870 : State) := by
  intro h
  change graphSmokeNext_s0870 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0870] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (964 : State) <= graphPotential (870 : State)
    decide
  ·
    simp [graphSmokeNext_s0870, h_l0006] at h

theorem valid_s0871 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (871 : State) label t gain ->
      gain + graphPotential t <= graphPotential (871 : State) := by
  intro h
  change graphSmokeNext_s0871 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0871] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (965 : State) <= graphPotential (871 : State)
    decide
  ·
    simp [graphSmokeNext_s0871, h_l0006] at h

theorem valid_s0872 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (872 : State) label t gain ->
      gain + graphPotential t <= graphPotential (872 : State) := by
  intro h
  change graphSmokeNext_s0872 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0872] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (966 : State) <= graphPotential (872 : State)
    decide
  ·
    simp [graphSmokeNext_s0872, h_l0002] at h

theorem valid_s0873 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (873 : State) label t gain ->
      gain + graphPotential t <= graphPotential (873 : State) := by
  intro h
  change graphSmokeNext_s0873 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0873] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (967 : State) <= graphPotential (873 : State)
    decide
  ·
    simp [graphSmokeNext_s0873, h_l0002] at h

theorem valid_s0874 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (874 : State) label t gain ->
      gain + graphPotential t <= graphPotential (874 : State) := by
  intro h
  change graphSmokeNext_s0874 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0874] at h
    rcases h with ⟨rfl, rfl⟩
    change (-54 : Int) + graphPotential (960 : State) <= graphPotential (874 : State)
    decide
  ·
    simp [graphSmokeNext_s0874, h_l0012] at h

theorem valid_s0875 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (875 : State) label t gain ->
      gain + graphPotential t <= graphPotential (875 : State) := by
  intro h
  change graphSmokeNext_s0875 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0875] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (969 : State) <= graphPotential (875 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0875] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (968 : State) <= graphPotential (875 : State)
      decide
    ·
      simp [graphSmokeNext_s0875, h_l0007, h_l0013] at h

theorem valid_s0876 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (876 : State) label t gain ->
      gain + graphPotential t <= graphPotential (876 : State) := by
  intro h
  change graphSmokeNext_s0876 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0876] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (3 : State) <= graphPotential (876 : State)
    decide
  ·
    simp [graphSmokeNext_s0876, h_l0002] at h

theorem valid_s0877 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (877 : State) label t gain ->
      gain + graphPotential t <= graphPotential (877 : State) := by
  intro h
  change graphSmokeNext_s0877 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0877] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (5 : State) <= graphPotential (877 : State)
    decide
  ·
    simp [graphSmokeNext_s0877, h_l0002] at h

theorem valid_s0878 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (878 : State) label t gain ->
      gain + graphPotential t <= graphPotential (878 : State) := by
  intro h
  change graphSmokeNext_s0878 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0878] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (6 : State) <= graphPotential (878 : State)
    decide
  ·
    simp [graphSmokeNext_s0878, h_l0002] at h

theorem valid_s0879 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (879 : State) label t gain ->
      gain + graphPotential t <= graphPotential (879 : State) := by
  intro h
  change graphSmokeNext_s0879 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0879] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (8 : State) <= graphPotential (879 : State)
    decide
  ·
    simp [graphSmokeNext_s0879, h_l0002] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 864 <= s) (hhi : s < 880) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0864 h
  · exact valid_s0865 h
  · exact valid_s0866 h
  · exact valid_s0867 h
  · exact valid_s0868 h
  · exact valid_s0869 h
  · exact valid_s0870 h
  · exact valid_s0871 h
  · exact valid_s0872 h
  · exact valid_s0873 h
  · exact valid_s0874 h
  · exact valid_s0875 h
  · exact valid_s0876 h
  · exact valid_s0877 h
  · exact valid_s0878 h
  · exact valid_s0879 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard054
