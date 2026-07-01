import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard047

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [752, 768). -/
theorem valid_s0752 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (752 : State) label t gain ->
      gain + graphPotential t <= graphPotential (752 : State) := by
  intro h
  change graphSmokeNext_s0752 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0752] at h
    rcases h with ⟨rfl, rfl⟩
    change (-54 : Int) + graphPotential (801 : State) <= graphPotential (752 : State)
    decide
  ·
    simp [graphSmokeNext_s0752, h_l0012] at h

theorem valid_s0753 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (753 : State) label t gain ->
      gain + graphPotential t <= graphPotential (753 : State) := by
  intro h
  change graphSmokeNext_s0753 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0753] at h
    rcases h with ⟨rfl, rfl⟩
    change (-54 : Int) + graphPotential (803 : State) <= graphPotential (753 : State)
    decide
  ·
    simp [graphSmokeNext_s0753, h_l0012] at h

theorem valid_s0754 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (754 : State) label t gain ->
      gain + graphPotential t <= graphPotential (754 : State) := by
  intro h
  change graphSmokeNext_s0754 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0754] at h
    rcases h with ⟨rfl, rfl⟩
    change (-54 : Int) + graphPotential (806 : State) <= graphPotential (754 : State)
    decide
  ·
    simp [graphSmokeNext_s0754, h_l0012] at h

theorem valid_s0755 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (755 : State) label t gain ->
      gain + graphPotential t <= graphPotential (755 : State) := by
  intro h
  change graphSmokeNext_s0755 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0755] at h
    rcases h with ⟨rfl, rfl⟩
    change (-54 : Int) + graphPotential (809 : State) <= graphPotential (755 : State)
    decide
  ·
    simp [graphSmokeNext_s0755, h_l0012] at h

theorem valid_s0756 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (756 : State) label t gain ->
      gain + graphPotential t <= graphPotential (756 : State) := by
  intro h
  change graphSmokeNext_s0756 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0756] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (833 : State) <= graphPotential (756 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0756] at h
      rcases h with ⟨rfl, rfl⟩
      change (90 : Int) + graphPotential (818 : State) <= graphPotential (756 : State)
      decide
    ·
      simp [graphSmokeNext_s0756, h_l0002, h_l0013] at h

theorem valid_s0757 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (757 : State) label t gain ->
      gain + graphPotential t <= graphPotential (757 : State) := by
  intro h
  change graphSmokeNext_s0757 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0757] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (834 : State) <= graphPotential (757 : State)
    decide
  ·
    simp [graphSmokeNext_s0757, h_l0002] at h

theorem valid_s0758 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (758 : State) label t gain ->
      gain + graphPotential t <= graphPotential (758 : State) := by
  intro h
  change graphSmokeNext_s0758 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0758] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (835 : State) <= graphPotential (758 : State)
    decide
  ·
    simp [graphSmokeNext_s0758, h_l0002] at h

theorem valid_s0759 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (759 : State) label t gain ->
      gain + graphPotential t <= graphPotential (759 : State) := by
  intro h
  change graphSmokeNext_s0759 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0759] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (836 : State) <= graphPotential (759 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0759] at h
      rcases h with ⟨rfl, rfl⟩
      change (90 : Int) + graphPotential (820 : State) <= graphPotential (759 : State)
      decide
    ·
      simp [graphSmokeNext_s0759, h_l0002, h_l0013] at h

theorem valid_s0760 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (760 : State) label t gain ->
      gain + graphPotential t <= graphPotential (760 : State) := by
  intro h
  change graphSmokeNext_s0760 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0760] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (837 : State) <= graphPotential (760 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0760] at h
      rcases h with ⟨rfl, rfl⟩
      change (90 : Int) + graphPotential (822 : State) <= graphPotential (760 : State)
      decide
    ·
      simp [graphSmokeNext_s0760, h_l0002, h_l0013] at h

theorem valid_s0761 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (761 : State) label t gain ->
      gain + graphPotential t <= graphPotential (761 : State) := by
  intro h
  change graphSmokeNext_s0761 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0761] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (838 : State) <= graphPotential (761 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0761] at h
      rcases h with ⟨rfl, rfl⟩
      change (90 : Int) + graphPotential (828 : State) <= graphPotential (761 : State)
      decide
    ·
      simp [graphSmokeNext_s0761, h_l0002, h_l0013] at h

theorem valid_s0762 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (762 : State) label t gain ->
      gain + graphPotential t <= graphPotential (762 : State) := by
  intro h
  change graphSmokeNext_s0762 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0762] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (839 : State) <= graphPotential (762 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0762] at h
      rcases h with ⟨rfl, rfl⟩
      change (90 : Int) + graphPotential (829 : State) <= graphPotential (762 : State)
      decide
    ·
      simp [graphSmokeNext_s0762, h_l0002, h_l0013] at h

theorem valid_s0763 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (763 : State) label t gain ->
      gain + graphPotential t <= graphPotential (763 : State) := by
  intro h
  change graphSmokeNext_s0763 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0763] at h
    rcases h with ⟨rfl, rfl⟩
    change (81 : Int) + graphPotential (798 : State) <= graphPotential (763 : State)
    decide
  ·
    simp [graphSmokeNext_s0763, h_l0010] at h

theorem valid_s0764 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (764 : State) label t gain ->
      gain + graphPotential t <= graphPotential (764 : State) := by
  intro h
  change graphSmokeNext_s0764 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0764] at h
    rcases h with ⟨rfl, rfl⟩
    change (81 : Int) + graphPotential (799 : State) <= graphPotential (764 : State)
    decide
  ·
    simp [graphSmokeNext_s0764, h_l0010] at h

theorem valid_s0765 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (765 : State) label t gain ->
      gain + graphPotential t <= graphPotential (765 : State) := by
  intro h
  change graphSmokeNext_s0765 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0765] at h
    rcases h with ⟨rfl, rfl⟩
    change (81 : Int) + graphPotential (801 : State) <= graphPotential (765 : State)
    decide
  ·
    simp [graphSmokeNext_s0765, h_l0010] at h

theorem valid_s0766 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (766 : State) label t gain ->
      gain + graphPotential t <= graphPotential (766 : State) := by
  intro h
  change graphSmokeNext_s0766 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0766] at h
    rcases h with ⟨rfl, rfl⟩
    change (81 : Int) + graphPotential (802 : State) <= graphPotential (766 : State)
    decide
  ·
    simp [graphSmokeNext_s0766, h_l0010] at h

theorem valid_s0767 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (767 : State) label t gain ->
      gain + graphPotential t <= graphPotential (767 : State) := by
  intro h
  change graphSmokeNext_s0767 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0767] at h
    rcases h with ⟨rfl, rfl⟩
    change (81 : Int) + graphPotential (809 : State) <= graphPotential (767 : State)
    decide
  ·
    simp [graphSmokeNext_s0767, h_l0010] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 752 <= s) (hhi : s < 768) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0752 h
  · exact valid_s0753 h
  · exact valid_s0754 h
  · exact valid_s0755 h
  · exact valid_s0756 h
  · exact valid_s0757 h
  · exact valid_s0758 h
  · exact valid_s0759 h
  · exact valid_s0760 h
  · exact valid_s0761 h
  · exact valid_s0762 h
  · exact valid_s0763 h
  · exact valid_s0764 h
  · exact valid_s0765 h
  · exact valid_s0766 h
  · exact valid_s0767 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard047
