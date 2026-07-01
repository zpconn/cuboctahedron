import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard041

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [656, 672). -/
theorem valid_s0656 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (656 : State) label t gain ->
      gain + graphPotential t <= graphPotential (656 : State) := by
  intro h
  change graphSmokeNext_s0656 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0656] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (701 : State) <= graphPotential (656 : State)
    decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0656] at h
      rcases h with ⟨rfl, rfl⟩
      change (-51 : Int) + graphPotential (682 : State) <= graphPotential (656 : State)
      decide
    ·
      simp [graphSmokeNext_s0656, h_l0006, h_l0010] at h

theorem valid_s0657 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (657 : State) label t gain ->
      gain + graphPotential t <= graphPotential (657 : State) := by
  intro h
  change graphSmokeNext_s0657 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0657] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (705 : State) <= graphPotential (657 : State)
    decide
  ·
    simp [graphSmokeNext_s0657, h_l0006] at h

theorem valid_s0658 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (658 : State) label t gain ->
      gain + graphPotential t <= graphPotential (658 : State) := by
  intro h
  change graphSmokeNext_s0658 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0658] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (706 : State) <= graphPotential (658 : State)
    decide
  ·
    simp [graphSmokeNext_s0658, h_l0006] at h

theorem valid_s0659 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (659 : State) label t gain ->
      gain + graphPotential t <= graphPotential (659 : State) := by
  intro h
  change graphSmokeNext_s0659 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0659] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (707 : State) <= graphPotential (659 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0659] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (700 : State) <= graphPotential (659 : State)
      decide
    ·
      simp [graphSmokeNext_s0659, h_l0005, h_l0012] at h

theorem valid_s0660 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (660 : State) label t gain ->
      gain + graphPotential t <= graphPotential (660 : State) := by
  intro h
  change graphSmokeNext_s0660 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0660] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (709 : State) <= graphPotential (660 : State)
    decide
  ·
    simp [graphSmokeNext_s0660, h_l0005] at h

theorem valid_s0661 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (661 : State) label t gain ->
      gain + graphPotential t <= graphPotential (661 : State) := by
  intro h
  change graphSmokeNext_s0661 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0661] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (712 : State) <= graphPotential (661 : State)
    decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0661] at h
      rcases h with ⟨rfl, rfl⟩
      change (45 : Int) + graphPotential (686 : State) <= graphPotential (661 : State)
      decide
    ·
      by_cases h_l0012 : label = (12 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0661] at h
        rcases h with ⟨rfl, rfl⟩
        change (-18 : Int) + graphPotential (702 : State) <= graphPotential (661 : State)
        decide
      ·
        simp [graphSmokeNext_s0661, h_l0005, h_l0010, h_l0012] at h

theorem valid_s0662 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (662 : State) label t gain ->
      gain + graphPotential t <= graphPotential (662 : State) := by
  intro h
  change graphSmokeNext_s0662 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0662] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (713 : State) <= graphPotential (662 : State)
    decide
  ·
    simp [graphSmokeNext_s0662, h_l0005] at h

theorem valid_s0663 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (663 : State) label t gain ->
      gain + graphPotential t <= graphPotential (663 : State) := by
  intro h
  change graphSmokeNext_s0663 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0663] at h
    rcases h with ⟨rfl, rfl⟩
    change (45 : Int) + graphPotential (690 : State) <= graphPotential (663 : State)
    decide
  ·
    simp [graphSmokeNext_s0663, h_l0010] at h

theorem valid_s0664 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (664 : State) label t gain ->
      gain + graphPotential t <= graphPotential (664 : State) := by
  intro h
  change graphSmokeNext_s0664 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0664] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (704 : State) <= graphPotential (664 : State)
    decide
  ·
    simp [graphSmokeNext_s0664, h_l0012] at h

theorem valid_s0665 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (665 : State) label t gain ->
      gain + graphPotential t <= graphPotential (665 : State) := by
  intro h
  change graphSmokeNext_s0665 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0665] at h
    rcases h with ⟨rfl, rfl⟩
    change (81 : Int) + graphPotential (694 : State) <= graphPotential (665 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0665] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (710 : State) <= graphPotential (665 : State)
      decide
    ·
      simp [graphSmokeNext_s0665, h_l0010, h_l0013] at h

theorem valid_s0666 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (666 : State) label t gain ->
      gain + graphPotential t <= graphPotential (666 : State) := by
  intro h
  change graphSmokeNext_s0666 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0666] at h
    rcases h with ⟨rfl, rfl⟩
    change (81 : Int) + graphPotential (696 : State) <= graphPotential (666 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0666] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (711 : State) <= graphPotential (666 : State)
      decide
    ·
      simp [graphSmokeNext_s0666, h_l0010, h_l0013] at h

theorem valid_s0667 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (667 : State) label t gain ->
      gain + graphPotential t <= graphPotential (667 : State) := by
  intro h
  change graphSmokeNext_s0667 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0667] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (716 : State) <= graphPotential (667 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0667] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (714 : State) <= graphPotential (667 : State)
      decide
    ·
      simp [graphSmokeNext_s0667, h_l0007, h_l0013] at h

theorem valid_s0668 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (668 : State) label t gain ->
      gain + graphPotential t <= graphPotential (668 : State) := by
  intro h
  change graphSmokeNext_s0668 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0668] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (718 : State) <= graphPotential (668 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0668] at h
      rcases h with ⟨rfl, rfl⟩
      change (45 : Int) + graphPotential (702 : State) <= graphPotential (668 : State)
      decide
    ·
      simp [graphSmokeNext_s0668, h_l0006, h_l0011] at h

theorem valid_s0669 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (669 : State) label t gain ->
      gain + graphPotential t <= graphPotential (669 : State) := by
  intro h
  change graphSmokeNext_s0669 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0669] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (719 : State) <= graphPotential (669 : State)
    decide
  ·
    simp [graphSmokeNext_s0669, h_l0006] at h

theorem valid_s0670 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (670 : State) label t gain ->
      gain + graphPotential t <= graphPotential (670 : State) := by
  intro h
  change graphSmokeNext_s0670 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0670] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (720 : State) <= graphPotential (670 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0670] at h
      rcases h with ⟨rfl, rfl⟩
      change (45 : Int) + graphPotential (703 : State) <= graphPotential (670 : State)
      decide
    ·
      simp [graphSmokeNext_s0670, h_l0006, h_l0011] at h

theorem valid_s0671 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (671 : State) label t gain ->
      gain + graphPotential t <= graphPotential (671 : State) := by
  intro h
  change graphSmokeNext_s0671 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0671] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (721 : State) <= graphPotential (671 : State)
    decide
  ·
    simp [graphSmokeNext_s0671, h_l0004] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 656 <= s) (hhi : s < 672) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0656 h
  · exact valid_s0657 h
  · exact valid_s0658 h
  · exact valid_s0659 h
  · exact valid_s0660 h
  · exact valid_s0661 h
  · exact valid_s0662 h
  · exact valid_s0663 h
  · exact valid_s0664 h
  · exact valid_s0665 h
  · exact valid_s0666 h
  · exact valid_s0667 h
  · exact valid_s0668 h
  · exact valid_s0669 h
  · exact valid_s0670 h
  · exact valid_s0671 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard041
