import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard052

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [832, 848). -/
theorem valid_s0832 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (832 : State) label t gain ->
      gain + graphPotential t <= graphPotential (832 : State) := by
  intro h
  change graphSmokeNext_s0832 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0832] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (922 : State) <= graphPotential (832 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0832] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (905 : State) <= graphPotential (832 : State)
      decide
    ·
      simp [graphSmokeNext_s0832, h_l0007, h_l0013] at h

theorem valid_s0833 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (833 : State) label t gain ->
      gain + graphPotential t <= graphPotential (833 : State) := by
  intro h
  change graphSmokeNext_s0833 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0833] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (923 : State) <= graphPotential (833 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0833] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (906 : State) <= graphPotential (833 : State)
      decide
    ·
      simp [graphSmokeNext_s0833, h_l0007, h_l0013] at h

theorem valid_s0834 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (834 : State) label t gain ->
      gain + graphPotential t <= graphPotential (834 : State) := by
  intro h
  change graphSmokeNext_s0834 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0834] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (924 : State) <= graphPotential (834 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0834] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (907 : State) <= graphPotential (834 : State)
      decide
    ·
      simp [graphSmokeNext_s0834, h_l0007, h_l0013] at h

theorem valid_s0835 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (835 : State) label t gain ->
      gain + graphPotential t <= graphPotential (835 : State) := by
  intro h
  change graphSmokeNext_s0835 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0835] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (925 : State) <= graphPotential (835 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0835] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (908 : State) <= graphPotential (835 : State)
      decide
    ·
      simp [graphSmokeNext_s0835, h_l0007, h_l0013] at h

theorem valid_s0836 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (836 : State) label t gain ->
      gain + graphPotential t <= graphPotential (836 : State) := by
  intro h
  change graphSmokeNext_s0836 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0836] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (926 : State) <= graphPotential (836 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0836] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (909 : State) <= graphPotential (836 : State)
      decide
    ·
      simp [graphSmokeNext_s0836, h_l0007, h_l0013] at h

theorem valid_s0837 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (837 : State) label t gain ->
      gain + graphPotential t <= graphPotential (837 : State) := by
  intro h
  change graphSmokeNext_s0837 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0837] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (927 : State) <= graphPotential (837 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0837] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (910 : State) <= graphPotential (837 : State)
      decide
    ·
      simp [graphSmokeNext_s0837, h_l0007, h_l0013] at h

theorem valid_s0838 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (838 : State) label t gain ->
      gain + graphPotential t <= graphPotential (838 : State) := by
  intro h
  change graphSmokeNext_s0838 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0838] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (929 : State) <= graphPotential (838 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0838] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (911 : State) <= graphPotential (838 : State)
      decide
    ·
      simp [graphSmokeNext_s0838, h_l0007, h_l0013] at h

theorem valid_s0839 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (839 : State) label t gain ->
      gain + graphPotential t <= graphPotential (839 : State) := by
  intro h
  change graphSmokeNext_s0839 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0839] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (930 : State) <= graphPotential (839 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0839] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (912 : State) <= graphPotential (839 : State)
      decide
    ·
      simp [graphSmokeNext_s0839, h_l0007, h_l0013] at h

theorem valid_s0840 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (840 : State) label t gain ->
      gain + graphPotential t <= graphPotential (840 : State) := by
  intro h
  change graphSmokeNext_s0840 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0840] at h
    rcases h with ⟨rfl, rfl⟩
    change (-63 : Int) + graphPotential (876 : State) <= graphPotential (840 : State)
    decide
  ·
    simp [graphSmokeNext_s0840, h_l0010] at h

theorem valid_s0841 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (841 : State) label t gain ->
      gain + graphPotential t <= graphPotential (841 : State) := by
  intro h
  change graphSmokeNext_s0841 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0841] at h
    rcases h with ⟨rfl, rfl⟩
    change (-63 : Int) + graphPotential (877 : State) <= graphPotential (841 : State)
    decide
  ·
    simp [graphSmokeNext_s0841, h_l0010] at h

theorem valid_s0842 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (842 : State) label t gain ->
      gain + graphPotential t <= graphPotential (842 : State) := by
  intro h
  change graphSmokeNext_s0842 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0842] at h
    rcases h with ⟨rfl, rfl⟩
    change (-63 : Int) + graphPotential (879 : State) <= graphPotential (842 : State)
    decide
  ·
    simp [graphSmokeNext_s0842, h_l0010] at h

theorem valid_s0843 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (843 : State) label t gain ->
      gain + graphPotential t <= graphPotential (843 : State) := by
  intro h
  change graphSmokeNext_s0843 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0843] at h
    rcases h with ⟨rfl, rfl⟩
    change (-63 : Int) + graphPotential (881 : State) <= graphPotential (843 : State)
    decide
  ·
    simp [graphSmokeNext_s0843, h_l0010] at h

theorem valid_s0844 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (844 : State) label t gain ->
      gain + graphPotential t <= graphPotential (844 : State) := by
  intro h
  change graphSmokeNext_s0844 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0844] at h
    rcases h with ⟨rfl, rfl⟩
    change (-63 : Int) + graphPotential (887 : State) <= graphPotential (844 : State)
    decide
  ·
    simp [graphSmokeNext_s0844, h_l0010] at h

theorem valid_s0845 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (845 : State) label t gain ->
      gain + graphPotential t <= graphPotential (845 : State) := by
  intro h
  change graphSmokeNext_s0845 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0845] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (932 : State) <= graphPotential (845 : State)
    decide
  ·
    simp [graphSmokeNext_s0845, h_l0000] at h

theorem valid_s0846 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (846 : State) label t gain ->
      gain + graphPotential t <= graphPotential (846 : State) := by
  intro h
  change graphSmokeNext_s0846 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0846] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (933 : State) <= graphPotential (846 : State)
    decide
  ·
    simp [graphSmokeNext_s0846, h_l0000] at h

theorem valid_s0847 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (847 : State) label t gain ->
      gain + graphPotential t <= graphPotential (847 : State) := by
  intro h
  change graphSmokeNext_s0847 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0847] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (934 : State) <= graphPotential (847 : State)
    decide
  ·
    simp [graphSmokeNext_s0847, h_l0000] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 832 <= s) (hhi : s < 848) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0832 h
  · exact valid_s0833 h
  · exact valid_s0834 h
  · exact valid_s0835 h
  · exact valid_s0836 h
  · exact valid_s0837 h
  · exact valid_s0838 h
  · exact valid_s0839 h
  · exact valid_s0840 h
  · exact valid_s0841 h
  · exact valid_s0842 h
  · exact valid_s0843 h
  · exact valid_s0844 h
  · exact valid_s0845 h
  · exact valid_s0846 h
  · exact valid_s0847 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard052
