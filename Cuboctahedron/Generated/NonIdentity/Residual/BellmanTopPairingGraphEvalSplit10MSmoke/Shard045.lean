import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard045

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [720, 736). -/
theorem valid_s0720 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (720 : State) label t gain ->
      gain + graphPotential t <= graphPotential (720 : State) := by
  intro h
  change graphSmokeNext_s0720 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0720] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (785 : State) <= graphPotential (720 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0720] at h
      rcases h with ⟨rfl, rfl⟩
      change (81 : Int) + graphPotential (767 : State) <= graphPotential (720 : State)
      decide
    ·
      simp [graphSmokeNext_s0720, h_l0005, h_l0011] at h

theorem valid_s0721 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (721 : State) label t gain ->
      gain + graphPotential t <= graphPotential (721 : State) := by
  intro h
  change graphSmokeNext_s0721 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0721] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (786 : State) <= graphPotential (721 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0721] at h
      rcases h with ⟨rfl, rfl⟩
      change (-63 : Int) + graphPotential (773 : State) <= graphPotential (721 : State)
      decide
    ·
      simp [graphSmokeNext_s0721, h_l0003, h_l0011] at h

theorem valid_s0722 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (722 : State) label t gain ->
      gain + graphPotential t <= graphPotential (722 : State) := by
  intro h
  change graphSmokeNext_s0722 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0722] at h
    rcases h with ⟨rfl, rfl⟩
    change (-63 : Int) + graphPotential (774 : State) <= graphPotential (722 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0722] at h
      rcases h with ⟨rfl, rfl⟩
      change (90 : Int) + graphPotential (781 : State) <= graphPotential (722 : State)
      decide
    ·
      simp [graphSmokeNext_s0722, h_l0011, h_l0012] at h

theorem valid_s0723 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (723 : State) label t gain ->
      gain + graphPotential t <= graphPotential (723 : State) := by
  intro h
  change graphSmokeNext_s0723 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0723] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (788 : State) <= graphPotential (723 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0723] at h
      rcases h with ⟨rfl, rfl⟩
      change (-63 : Int) + graphPotential (776 : State) <= graphPotential (723 : State)
      decide
    ·
      simp [graphSmokeNext_s0723, h_l0003, h_l0011] at h

theorem valid_s0724 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (724 : State) label t gain ->
      gain + graphPotential t <= graphPotential (724 : State) := by
  intro h
  change graphSmokeNext_s0724 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0724] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (789 : State) <= graphPotential (724 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0724] at h
      rcases h with ⟨rfl, rfl⟩
      change (81 : Int) + graphPotential (780 : State) <= graphPotential (724 : State)
      decide
    ·
      by_cases h_l0013 : label = (13 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0724] at h
        rcases h with ⟨rfl, rfl⟩
        change (-54 : Int) + graphPotential (787 : State) <= graphPotential (724 : State)
        decide
      ·
        simp [graphSmokeNext_s0724, h_l0007, h_l0011, h_l0013] at h

theorem valid_s0725 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (725 : State) label t gain ->
      gain + graphPotential t <= graphPotential (725 : State) := by
  intro h
  change graphSmokeNext_s0725 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0725] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (791 : State) <= graphPotential (725 : State)
    decide
  ·
    by_cases h_l0008 : label = (8 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0725] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (735 : State) <= graphPotential (725 : State)
      decide
    ·
      simp [graphSmokeNext_s0725, h_l0002, h_l0008] at h

theorem valid_s0726 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (726 : State) label t gain ->
      gain + graphPotential t <= graphPotential (726 : State) := by
  intro h
  change graphSmokeNext_s0726 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0726] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (792 : State) <= graphPotential (726 : State)
    decide
  ·
    by_cases h_l0008 : label = (8 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0726] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (736 : State) <= graphPotential (726 : State)
      decide
    ·
      simp [graphSmokeNext_s0726, h_l0002, h_l0008] at h

theorem valid_s0727 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (727 : State) label t gain ->
      gain + graphPotential t <= graphPotential (727 : State) := by
  intro h
  change graphSmokeNext_s0727 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0727] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (793 : State) <= graphPotential (727 : State)
    decide
  ·
    by_cases h_l0008 : label = (8 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0727] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (739 : State) <= graphPotential (727 : State)
      decide
    ·
      simp [graphSmokeNext_s0727, h_l0002, h_l0008] at h

theorem valid_s0728 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (728 : State) label t gain ->
      gain + graphPotential t <= graphPotential (728 : State) := by
  intro h
  change graphSmokeNext_s0728 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0728] at h
    rcases h with ⟨rfl, rfl⟩
    change (-54 : Int) + graphPotential (790 : State) <= graphPotential (728 : State)
    decide
  ·
    simp [graphSmokeNext_s0728, h_l0012] at h

theorem valid_s0729 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (729 : State) label t gain ->
      gain + graphPotential t <= graphPotential (729 : State) := by
  intro h
  change graphSmokeNext_s0729 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0729] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (795 : State) <= graphPotential (729 : State)
    decide
  ·
    simp [graphSmokeNext_s0729, h_l0000] at h

theorem valid_s0730 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (730 : State) label t gain ->
      gain + graphPotential t <= graphPotential (730 : State) := by
  intro h
  change graphSmokeNext_s0730 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0730] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (796 : State) <= graphPotential (730 : State)
    decide
  ·
    simp [graphSmokeNext_s0730, h_l0000] at h

theorem valid_s0731 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (731 : State) label t gain ->
      gain + graphPotential t <= graphPotential (731 : State) := by
  intro h
  change graphSmokeNext_s0731 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0731] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (797 : State) <= graphPotential (731 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0731] at h
      rcases h with ⟨rfl, rfl⟩
      change (90 : Int) + graphPotential (794 : State) <= graphPotential (731 : State)
      decide
    ·
      simp [graphSmokeNext_s0731, h_l0006, h_l0013] at h

theorem valid_s0732 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (732 : State) label t gain ->
      gain + graphPotential t <= graphPotential (732 : State) := by
  intro h
  change graphSmokeNext_s0732 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0732] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (800 : State) <= graphPotential (732 : State)
    decide
  ·
    simp [graphSmokeNext_s0732, h_l0006] at h

theorem valid_s0733 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (733 : State) label t gain ->
      gain + graphPotential t <= graphPotential (733 : State) := by
  intro h
  change graphSmokeNext_s0733 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0733] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (804 : State) <= graphPotential (733 : State)
    decide
  ·
    simp [graphSmokeNext_s0733, h_l0006] at h

theorem valid_s0734 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (734 : State) label t gain ->
      gain + graphPotential t <= graphPotential (734 : State) := by
  intro h
  change graphSmokeNext_s0734 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0734] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (805 : State) <= graphPotential (734 : State)
    decide
  ·
    simp [graphSmokeNext_s0734, h_l0006] at h

theorem valid_s0735 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (735 : State) label t gain ->
      gain + graphPotential t <= graphPotential (735 : State) := by
  intro h
  change graphSmokeNext_s0735 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0735] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (807 : State) <= graphPotential (735 : State)
    decide
  ·
    simp [graphSmokeNext_s0735, h_l0006] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 720 <= s) (hhi : s < 736) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0720 h
  · exact valid_s0721 h
  · exact valid_s0722 h
  · exact valid_s0723 h
  · exact valid_s0724 h
  · exact valid_s0725 h
  · exact valid_s0726 h
  · exact valid_s0727 h
  · exact valid_s0728 h
  · exact valid_s0729 h
  · exact valid_s0730 h
  · exact valid_s0731 h
  · exact valid_s0732 h
  · exact valid_s0733 h
  · exact valid_s0734 h
  · exact valid_s0735 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard045
