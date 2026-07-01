import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard042

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [672, 688). -/
theorem valid_s0672 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (672 : State) label t gain ->
      gain + graphPotential t <= graphPotential (672 : State) := by
  intro h
  change graphSmokeNext_s0672 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0672] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (723 : State) <= graphPotential (672 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0672] at h
      rcases h with ⟨rfl, rfl⟩
      change (81 : Int) + graphPotential (708 : State) <= graphPotential (672 : State)
      decide
    ·
      simp [graphSmokeNext_s0672, h_l0004, h_l0011] at h

theorem valid_s0673 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (673 : State) label t gain ->
      gain + graphPotential t <= graphPotential (673 : State) := by
  intro h
  change graphSmokeNext_s0673 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0673] at h
    rcases h with ⟨rfl, rfl⟩
    change (81 : Int) + graphPotential (710 : State) <= graphPotential (673 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0673] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (717 : State) <= graphPotential (673 : State)
      decide
    ·
      simp [graphSmokeNext_s0673, h_l0011, h_l0012] at h

theorem valid_s0674 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (674 : State) label t gain ->
      gain + graphPotential t <= graphPotential (674 : State) := by
  intro h
  change graphSmokeNext_s0674 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0674] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (724 : State) <= graphPotential (674 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0674] at h
      rcases h with ⟨rfl, rfl⟩
      change (-63 : Int) + graphPotential (715 : State) <= graphPotential (674 : State)
      decide
    ·
      by_cases h_l0013 : label = (13 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0674] at h
        rcases h with ⟨rfl, rfl⟩
        change (90 : Int) + graphPotential (722 : State) <= graphPotential (674 : State)
        decide
      ·
        simp [graphSmokeNext_s0674, h_l0002, h_l0011, h_l0013] at h

theorem valid_s0675 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (675 : State) label t gain ->
      gain + graphPotential t <= graphPotential (675 : State) := by
  intro h
  change graphSmokeNext_s0675 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0675] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (726 : State) <= graphPotential (675 : State)
    decide
  ·
    simp [graphSmokeNext_s0675, h_l0000] at h

theorem valid_s0676 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (676 : State) label t gain ->
      gain + graphPotential t <= graphPotential (676 : State) := by
  intro h
  change graphSmokeNext_s0676 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0676] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (727 : State) <= graphPotential (676 : State)
    decide
  ·
    simp [graphSmokeNext_s0676, h_l0000] at h

theorem valid_s0677 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (677 : State) label t gain ->
      gain + graphPotential t <= graphPotential (677 : State) := by
  intro h
  change graphSmokeNext_s0677 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0677] at h
    rcases h with ⟨rfl, rfl⟩
    change (-117 : Int) + graphPotential (688 : State) <= graphPotential (677 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0677] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (725 : State) <= graphPotential (677 : State)
      decide
    ·
      simp [graphSmokeNext_s0677, h_l0008, h_l0012] at h

theorem valid_s0678 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (678 : State) label t gain ->
      gain + graphPotential t <= graphPotential (678 : State) := by
  intro h
  change graphSmokeNext_s0678 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0678] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (729 : State) <= graphPotential (678 : State)
    decide
  ·
    by_cases h_l0008 : label = (8 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0678] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (692 : State) <= graphPotential (678 : State)
      decide
    ·
      simp [graphSmokeNext_s0678, h_l0003, h_l0008] at h

theorem valid_s0679 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (679 : State) label t gain ->
      gain + graphPotential t <= graphPotential (679 : State) := by
  intro h
  change graphSmokeNext_s0679 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0679] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (730 : State) <= graphPotential (679 : State)
    decide
  ·
    simp [graphSmokeNext_s0679, h_l0003] at h

theorem valid_s0680 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (680 : State) label t gain ->
      gain + graphPotential t <= graphPotential (680 : State) := by
  intro h
  change graphSmokeNext_s0680 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0680] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (731 : State) <= graphPotential (680 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0680] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (728 : State) <= graphPotential (680 : State)
      decide
    ·
      simp [graphSmokeNext_s0680, h_l0001, h_l0013] at h

theorem valid_s0681 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (681 : State) label t gain ->
      gain + graphPotential t <= graphPotential (681 : State) := by
  intro h
  change graphSmokeNext_s0681 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0681] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (734 : State) <= graphPotential (681 : State)
    decide
  ·
    simp [graphSmokeNext_s0681, h_l0004] at h

theorem valid_s0682 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (682 : State) label t gain ->
      gain + graphPotential t <= graphPotential (682 : State) := by
  intro h
  change graphSmokeNext_s0682 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0682] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (738 : State) <= graphPotential (682 : State)
    decide
  ·
    simp [graphSmokeNext_s0682, h_l0004] at h

theorem valid_s0683 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (683 : State) label t gain ->
      gain + graphPotential t <= graphPotential (683 : State) := by
  intro h
  change graphSmokeNext_s0683 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0683] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (740 : State) <= graphPotential (683 : State)
    decide
  ·
    simp [graphSmokeNext_s0683, h_l0004] at h

theorem valid_s0684 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (684 : State) label t gain ->
      gain + graphPotential t <= graphPotential (684 : State) := by
  intro h
  change graphSmokeNext_s0684 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0684] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (741 : State) <= graphPotential (684 : State)
    decide
  ·
    simp [graphSmokeNext_s0684, h_l0007] at h

theorem valid_s0685 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (685 : State) label t gain ->
      gain + graphPotential t <= graphPotential (685 : State) := by
  intro h
  change graphSmokeNext_s0685 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0685] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (742 : State) <= graphPotential (685 : State)
    decide
  ·
    simp [graphSmokeNext_s0685, h_l0007] at h

theorem valid_s0686 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (686 : State) label t gain ->
      gain + graphPotential t <= graphPotential (686 : State) := by
  intro h
  change graphSmokeNext_s0686 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0686] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (732 : State) <= graphPotential (686 : State)
    decide
  ·
    simp [graphSmokeNext_s0686, h_l0012] at h

theorem valid_s0687 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (687 : State) label t gain ->
      gain + graphPotential t <= graphPotential (687 : State) := by
  intro h
  change graphSmokeNext_s0687 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0687] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (733 : State) <= graphPotential (687 : State)
    decide
  ·
    simp [graphSmokeNext_s0687, h_l0012] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 672 <= s) (hhi : s < 688) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0672 h
  · exact valid_s0673 h
  · exact valid_s0674 h
  · exact valid_s0675 h
  · exact valid_s0676 h
  · exact valid_s0677 h
  · exact valid_s0678 h
  · exact valid_s0679 h
  · exact valid_s0680 h
  · exact valid_s0681 h
  · exact valid_s0682 h
  · exact valid_s0683 h
  · exact valid_s0684 h
  · exact valid_s0685 h
  · exact valid_s0686 h
  · exact valid_s0687 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard042
