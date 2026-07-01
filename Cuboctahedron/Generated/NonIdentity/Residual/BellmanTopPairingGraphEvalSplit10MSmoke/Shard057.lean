import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard057

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [912, 928). -/
theorem valid_s0912 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (912 : State) label t gain ->
      gain + graphPotential t <= graphPotential (912 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0912 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0912] at h
    rcases h with ⟨rfl, rfl⟩
    change (-54 : Int) + graphPotential (27 : State) <= graphPotential (912 : State)
    decide
  ·
    simp [graphSmokeNext_s0912, h_l0012] at h

theorem valid_s0913 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (913 : State) label t gain ->
      gain + graphPotential t <= graphPotential (913 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0913 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0913] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (50 : State) <= graphPotential (913 : State)
    decide
  ·
    simp [graphSmokeNext_s0913, h_l0006] at h

theorem valid_s0914 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (914 : State) label t gain ->
      gain + graphPotential t <= graphPotential (914 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0914 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0914] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (51 : State) <= graphPotential (914 : State)
    decide
  ·
    simp [graphSmokeNext_s0914, h_l0006] at h

theorem valid_s0915 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (915 : State) label t gain ->
      gain + graphPotential t <= graphPotential (915 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0915 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0915] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (52 : State) <= graphPotential (915 : State)
    decide
  ·
    simp [graphSmokeNext_s0915, h_l0006] at h

theorem valid_s0916 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (916 : State) label t gain ->
      gain + graphPotential t <= graphPotential (916 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0916 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0916] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (53 : State) <= graphPotential (916 : State)
    decide
  ·
    simp [graphSmokeNext_s0916, h_l0006] at h

theorem valid_s0917 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (917 : State) label t gain ->
      gain + graphPotential t <= graphPotential (917 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0917 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0917] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (54 : State) <= graphPotential (917 : State)
    decide
  ·
    simp [graphSmokeNext_s0917, h_l0006] at h

theorem valid_s0918 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (918 : State) label t gain ->
      gain + graphPotential t <= graphPotential (918 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0918 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0918] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (55 : State) <= graphPotential (918 : State)
    decide
  ·
    simp [graphSmokeNext_s0918, h_l0006] at h

theorem valid_s0919 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (919 : State) label t gain ->
      gain + graphPotential t <= graphPotential (919 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0919 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0919] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (56 : State) <= graphPotential (919 : State)
    decide
  ·
    simp [graphSmokeNext_s0919, h_l0006] at h

theorem valid_s0920 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (920 : State) label t gain ->
      gain + graphPotential t <= graphPotential (920 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0920 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0920] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (58 : State) <= graphPotential (920 : State)
    decide
  ·
    simp [graphSmokeNext_s0920, h_l0006] at h

theorem valid_s0921 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (921 : State) label t gain ->
      gain + graphPotential t <= graphPotential (921 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0921 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0921] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (60 : State) <= graphPotential (921 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0921] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (35 : State) <= graphPotential (921 : State)
      decide
    ·
      simp [graphSmokeNext_s0921, h_l0003, h_l0013] at h

theorem valid_s0922 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (922 : State) label t gain ->
      gain + graphPotential t <= graphPotential (922 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0922 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0922] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (61 : State) <= graphPotential (922 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0922] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (36 : State) <= graphPotential (922 : State)
      decide
    ·
      simp [graphSmokeNext_s0922, h_l0003, h_l0013] at h

theorem valid_s0923 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (923 : State) label t gain ->
      gain + graphPotential t <= graphPotential (923 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0923 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0923] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (62 : State) <= graphPotential (923 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0923] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (37 : State) <= graphPotential (923 : State)
      decide
    ·
      simp [graphSmokeNext_s0923, h_l0003, h_l0013] at h

theorem valid_s0924 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (924 : State) label t gain ->
      gain + graphPotential t <= graphPotential (924 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0924 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0924] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (63 : State) <= graphPotential (924 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0924] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (38 : State) <= graphPotential (924 : State)
      decide
    ·
      simp [graphSmokeNext_s0924, h_l0003, h_l0013] at h

theorem valid_s0925 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (925 : State) label t gain ->
      gain + graphPotential t <= graphPotential (925 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0925 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0925] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (64 : State) <= graphPotential (925 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0925] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (39 : State) <= graphPotential (925 : State)
      decide
    ·
      simp [graphSmokeNext_s0925, h_l0003, h_l0013] at h

theorem valid_s0926 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (926 : State) label t gain ->
      gain + graphPotential t <= graphPotential (926 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0926 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0926] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (65 : State) <= graphPotential (926 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0926] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (40 : State) <= graphPotential (926 : State)
      decide
    ·
      simp [graphSmokeNext_s0926, h_l0003, h_l0013] at h

theorem valid_s0927 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (927 : State) label t gain ->
      gain + graphPotential t <= graphPotential (927 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0927 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0927] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (66 : State) <= graphPotential (927 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0927] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (41 : State) <= graphPotential (927 : State)
      decide
    ·
      simp [graphSmokeNext_s0927, h_l0003, h_l0013] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 912 <= s) (hhi : s < 928) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0912 h
  · exact valid_s0913 h
  · exact valid_s0914 h
  · exact valid_s0915 h
  · exact valid_s0916 h
  · exact valid_s0917 h
  · exact valid_s0918 h
  · exact valid_s0919 h
  · exact valid_s0920 h
  · exact valid_s0921 h
  · exact valid_s0922 h
  · exact valid_s0923 h
  · exact valid_s0924 h
  · exact valid_s0925 h
  · exact valid_s0926 h
  · exact valid_s0927 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard057
