import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard055

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [880, 896). -/
theorem valid_s0880 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (880 : State) label t gain ->
      gain + graphPotential t <= graphPotential (880 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0880 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0880] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (9 : State) <= graphPotential (880 : State)
    decide
  ·
    simp [graphSmokeNext_s0880, h_l0002] at h

theorem valid_s0881 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (881 : State) label t gain ->
      gain + graphPotential t <= graphPotential (881 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0881 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0881] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (10 : State) <= graphPotential (881 : State)
    decide
  ·
    simp [graphSmokeNext_s0881, h_l0002] at h

theorem valid_s0882 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (882 : State) label t gain ->
      gain + graphPotential t <= graphPotential (882 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0882 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0882] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (11 : State) <= graphPotential (882 : State)
    decide
  ·
    simp [graphSmokeNext_s0882, h_l0002] at h

theorem valid_s0883 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (883 : State) label t gain ->
      gain + graphPotential t <= graphPotential (883 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0883 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0883] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (13 : State) <= graphPotential (883 : State)
    decide
  ·
    simp [graphSmokeNext_s0883, h_l0002] at h

theorem valid_s0884 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (884 : State) label t gain ->
      gain + graphPotential t <= graphPotential (884 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0884 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0884] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (14 : State) <= graphPotential (884 : State)
    decide
  ·
    simp [graphSmokeNext_s0884, h_l0002] at h

theorem valid_s0885 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (885 : State) label t gain ->
      gain + graphPotential t <= graphPotential (885 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0885 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0885] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (15 : State) <= graphPotential (885 : State)
    decide
  ·
    simp [graphSmokeNext_s0885, h_l0002] at h

theorem valid_s0886 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (886 : State) label t gain ->
      gain + graphPotential t <= graphPotential (886 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0886 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0886] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (16 : State) <= graphPotential (886 : State)
    decide
  ·
    simp [graphSmokeNext_s0886, h_l0002] at h

theorem valid_s0887 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (887 : State) label t gain ->
      gain + graphPotential t <= graphPotential (887 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0887 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0887] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (18 : State) <= graphPotential (887 : State)
    decide
  ·
    simp [graphSmokeNext_s0887, h_l0002] at h

theorem valid_s0888 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (888 : State) label t gain ->
      gain + graphPotential t <= graphPotential (888 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0888 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0888] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (19 : State) <= graphPotential (888 : State)
    decide
  ·
    simp [graphSmokeNext_s0888, h_l0002] at h

theorem valid_s0889 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (889 : State) label t gain ->
      gain + graphPotential t <= graphPotential (889 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0889 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0889] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (20 : State) <= graphPotential (889 : State)
    decide
  ·
    simp [graphSmokeNext_s0889, h_l0002] at h

theorem valid_s0890 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (890 : State) label t gain ->
      gain + graphPotential t <= graphPotential (890 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0890 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0890] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (21 : State) <= graphPotential (890 : State)
    decide
  ·
    simp [graphSmokeNext_s0890, h_l0002] at h

theorem valid_s0891 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (891 : State) label t gain ->
      gain + graphPotential t <= graphPotential (891 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0891 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0891] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (23 : State) <= graphPotential (891 : State)
    decide
  ·
    simp [graphSmokeNext_s0891, h_l0002] at h

theorem valid_s0892 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (892 : State) label t gain ->
      gain + graphPotential t <= graphPotential (892 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0892 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0892] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (24 : State) <= graphPotential (892 : State)
    decide
  ·
    simp [graphSmokeNext_s0892, h_l0002] at h

theorem valid_s0893 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (893 : State) label t gain ->
      gain + graphPotential t <= graphPotential (893 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0893 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0893] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (25 : State) <= graphPotential (893 : State)
    decide
  ·
    simp [graphSmokeNext_s0893, h_l0002] at h

theorem valid_s0894 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (894 : State) label t gain ->
      gain + graphPotential t <= graphPotential (894 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0894 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0894] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (26 : State) <= graphPotential (894 : State)
    decide
  ·
    simp [graphSmokeNext_s0894, h_l0002] at h

theorem valid_s0895 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (895 : State) label t gain ->
      gain + graphPotential t <= graphPotential (895 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0895 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0895] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (28 : State) <= graphPotential (895 : State)
    decide
  ·
    simp [graphSmokeNext_s0895, h_l0002] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 880 <= s) (hhi : s < 896) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0880 h
  · exact valid_s0881 h
  · exact valid_s0882 h
  · exact valid_s0883 h
  · exact valid_s0884 h
  · exact valid_s0885 h
  · exact valid_s0886 h
  · exact valid_s0887 h
  · exact valid_s0888 h
  · exact valid_s0889 h
  · exact valid_s0890 h
  · exact valid_s0891 h
  · exact valid_s0892 h
  · exact valid_s0893 h
  · exact valid_s0894 h
  · exact valid_s0895 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard055
