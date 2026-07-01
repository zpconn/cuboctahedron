import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard050

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [800, 816). -/
theorem valid_s0800 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (800 : State) label t gain ->
      gain + graphPotential t <= graphPotential (800 : State) := by
  intro h
  change graphSmokeNext_s0800 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0800] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (882 : State) <= graphPotential (800 : State)
    decide
  ·
    simp [graphSmokeNext_s0800, h_l0005] at h

theorem valid_s0801 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (801 : State) label t gain ->
      gain + graphPotential t <= graphPotential (801 : State) := by
  intro h
  change graphSmokeNext_s0801 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0801] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (884 : State) <= graphPotential (801 : State)
    decide
  ·
    simp [graphSmokeNext_s0801, h_l0005] at h

theorem valid_s0802 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (802 : State) label t gain ->
      gain + graphPotential t <= graphPotential (802 : State) := by
  intro h
  change graphSmokeNext_s0802 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0802] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (886 : State) <= graphPotential (802 : State)
    decide
  ·
    simp [graphSmokeNext_s0802, h_l0005] at h

theorem valid_s0803 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (803 : State) label t gain ->
      gain + graphPotential t <= graphPotential (803 : State) := by
  intro h
  change graphSmokeNext_s0803 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0803] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (888 : State) <= graphPotential (803 : State)
    decide
  ·
    simp [graphSmokeNext_s0803, h_l0005] at h

theorem valid_s0804 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (804 : State) label t gain ->
      gain + graphPotential t <= graphPotential (804 : State) := by
  intro h
  change graphSmokeNext_s0804 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0804] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (889 : State) <= graphPotential (804 : State)
    decide
  ·
    simp [graphSmokeNext_s0804, h_l0005] at h

theorem valid_s0805 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (805 : State) label t gain ->
      gain + graphPotential t <= graphPotential (805 : State) := by
  intro h
  change graphSmokeNext_s0805 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0805] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (890 : State) <= graphPotential (805 : State)
    decide
  ·
    simp [graphSmokeNext_s0805, h_l0005] at h

theorem valid_s0806 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (806 : State) label t gain ->
      gain + graphPotential t <= graphPotential (806 : State) := by
  intro h
  change graphSmokeNext_s0806 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0806] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (892 : State) <= graphPotential (806 : State)
    decide
  ·
    simp [graphSmokeNext_s0806, h_l0005] at h

theorem valid_s0807 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (807 : State) label t gain ->
      gain + graphPotential t <= graphPotential (807 : State) := by
  intro h
  change graphSmokeNext_s0807 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0807] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (893 : State) <= graphPotential (807 : State)
    decide
  ·
    simp [graphSmokeNext_s0807, h_l0005] at h

theorem valid_s0808 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (808 : State) label t gain ->
      gain + graphPotential t <= graphPotential (808 : State) := by
  intro h
  change graphSmokeNext_s0808 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0808] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (894 : State) <= graphPotential (808 : State)
    decide
  ·
    simp [graphSmokeNext_s0808, h_l0005] at h

theorem valid_s0809 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (809 : State) label t gain ->
      gain + graphPotential t <= graphPotential (809 : State) := by
  intro h
  change graphSmokeNext_s0809 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0809] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (896 : State) <= graphPotential (809 : State)
    decide
  ·
    simp [graphSmokeNext_s0809, h_l0005] at h

theorem valid_s0810 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (810 : State) label t gain ->
      gain + graphPotential t <= graphPotential (810 : State) := by
  intro h
  change graphSmokeNext_s0810 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0810] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (897 : State) <= graphPotential (810 : State)
    decide
  ·
    simp [graphSmokeNext_s0810, h_l0005] at h

theorem valid_s0811 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (811 : State) label t gain ->
      gain + graphPotential t <= graphPotential (811 : State) := by
  intro h
  change graphSmokeNext_s0811 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0811] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (898 : State) <= graphPotential (811 : State)
    decide
  ·
    simp [graphSmokeNext_s0811, h_l0005] at h

theorem valid_s0812 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (812 : State) label t gain ->
      gain + graphPotential t <= graphPotential (812 : State) := by
  intro h
  change graphSmokeNext_s0812 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0812] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (899 : State) <= graphPotential (812 : State)
    decide
  ·
    simp [graphSmokeNext_s0812, h_l0005] at h

theorem valid_s0813 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (813 : State) label t gain ->
      gain + graphPotential t <= graphPotential (813 : State) := by
  intro h
  change graphSmokeNext_s0813 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0813] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (900 : State) <= graphPotential (813 : State)
    decide
  ·
    simp [graphSmokeNext_s0813, h_l0005] at h

theorem valid_s0814 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (814 : State) label t gain ->
      gain + graphPotential t <= graphPotential (814 : State) := by
  intro h
  change graphSmokeNext_s0814 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0814] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (901 : State) <= graphPotential (814 : State)
    decide
  ·
    simp [graphSmokeNext_s0814, h_l0005] at h

theorem valid_s0815 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (815 : State) label t gain ->
      gain + graphPotential t <= graphPotential (815 : State) := by
  intro h
  change graphSmokeNext_s0815 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0815] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (902 : State) <= graphPotential (815 : State)
    decide
  ·
    simp [graphSmokeNext_s0815, h_l0003] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 800 <= s) (hhi : s < 816) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0800 h
  · exact valid_s0801 h
  · exact valid_s0802 h
  · exact valid_s0803 h
  · exact valid_s0804 h
  · exact valid_s0805 h
  · exact valid_s0806 h
  · exact valid_s0807 h
  · exact valid_s0808 h
  · exact valid_s0809 h
  · exact valid_s0810 h
  · exact valid_s0811 h
  · exact valid_s0812 h
  · exact valid_s0813 h
  · exact valid_s0814 h
  · exact valid_s0815 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard050
