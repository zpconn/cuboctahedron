import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard046

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [736, 752). -/
theorem valid_s0736 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (736 : State) label t gain ->
      gain + graphPotential t <= graphPotential (736 : State) := by
  intro h
  change graphSmokeNext_s0736 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0736] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (808 : State) <= graphPotential (736 : State)
    decide
  ·
    simp [graphSmokeNext_s0736, h_l0006] at h

theorem valid_s0737 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (737 : State) label t gain ->
      gain + graphPotential t <= graphPotential (737 : State) := by
  intro h
  change graphSmokeNext_s0737 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0737] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (810 : State) <= graphPotential (737 : State)
    decide
  ·
    simp [graphSmokeNext_s0737, h_l0006] at h

theorem valid_s0738 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (738 : State) label t gain ->
      gain + graphPotential t <= graphPotential (738 : State) := by
  intro h
  change graphSmokeNext_s0738 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0738] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (812 : State) <= graphPotential (738 : State)
    decide
  ·
    simp [graphSmokeNext_s0738, h_l0006] at h

theorem valid_s0739 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (739 : State) label t gain ->
      gain + graphPotential t <= graphPotential (739 : State) := by
  intro h
  change graphSmokeNext_s0739 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0739] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (813 : State) <= graphPotential (739 : State)
    decide
  ·
    simp [graphSmokeNext_s0739, h_l0006] at h

theorem valid_s0740 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (740 : State) label t gain ->
      gain + graphPotential t <= graphPotential (740 : State) := by
  intro h
  change graphSmokeNext_s0740 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0740] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (814 : State) <= graphPotential (740 : State)
    decide
  ·
    simp [graphSmokeNext_s0740, h_l0006] at h

theorem valid_s0741 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (741 : State) label t gain ->
      gain + graphPotential t <= graphPotential (741 : State) := by
  intro h
  change graphSmokeNext_s0741 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0741] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (816 : State) <= graphPotential (741 : State)
    decide
  ·
    simp [graphSmokeNext_s0741, h_l0004] at h

theorem valid_s0742 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (742 : State) label t gain ->
      gain + graphPotential t <= graphPotential (742 : State) := by
  intro h
  change graphSmokeNext_s0742 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0742] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (817 : State) <= graphPotential (742 : State)
    decide
  ·
    simp [graphSmokeNext_s0742, h_l0004] at h

theorem valid_s0743 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (743 : State) label t gain ->
      gain + graphPotential t <= graphPotential (743 : State) := by
  intro h
  change graphSmokeNext_s0743 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0743] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (821 : State) <= graphPotential (743 : State)
    decide
  ·
    simp [graphSmokeNext_s0743, h_l0004] at h

theorem valid_s0744 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (744 : State) label t gain ->
      gain + graphPotential t <= graphPotential (744 : State) := by
  intro h
  change graphSmokeNext_s0744 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0744] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (824 : State) <= graphPotential (744 : State)
    decide
  ·
    simp [graphSmokeNext_s0744, h_l0004] at h

theorem valid_s0745 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (745 : State) label t gain ->
      gain + graphPotential t <= graphPotential (745 : State) := by
  intro h
  change graphSmokeNext_s0745 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0745] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (825 : State) <= graphPotential (745 : State)
    decide
  ·
    simp [graphSmokeNext_s0745, h_l0004] at h

theorem valid_s0746 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (746 : State) label t gain ->
      gain + graphPotential t <= graphPotential (746 : State) := by
  intro h
  change graphSmokeNext_s0746 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0746] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (826 : State) <= graphPotential (746 : State)
    decide
  ·
    simp [graphSmokeNext_s0746, h_l0004] at h

theorem valid_s0747 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (747 : State) label t gain ->
      gain + graphPotential t <= graphPotential (747 : State) := by
  intro h
  change graphSmokeNext_s0747 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0747] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (827 : State) <= graphPotential (747 : State)
    decide
  ·
    simp [graphSmokeNext_s0747, h_l0004] at h

theorem valid_s0748 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (748 : State) label t gain ->
      gain + graphPotential t <= graphPotential (748 : State) := by
  intro h
  change graphSmokeNext_s0748 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0748] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (830 : State) <= graphPotential (748 : State)
    decide
  ·
    simp [graphSmokeNext_s0748, h_l0004] at h

theorem valid_s0749 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (749 : State) label t gain ->
      gain + graphPotential t <= graphPotential (749 : State) := by
  intro h
  change graphSmokeNext_s0749 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0749] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (831 : State) <= graphPotential (749 : State)
    decide
  ·
    simp [graphSmokeNext_s0749, h_l0004] at h

theorem valid_s0750 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (750 : State) label t gain ->
      gain + graphPotential t <= graphPotential (750 : State) := by
  intro h
  change graphSmokeNext_s0750 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0750] at h
    rcases h with ⟨rfl, rfl⟩
    change (-54 : Int) + graphPotential (798 : State) <= graphPotential (750 : State)
    decide
  ·
    simp [graphSmokeNext_s0750, h_l0012] at h

theorem valid_s0751 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (751 : State) label t gain ->
      gain + graphPotential t <= graphPotential (751 : State) := by
  intro h
  change graphSmokeNext_s0751 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0751] at h
    rcases h with ⟨rfl, rfl⟩
    change (-54 : Int) + graphPotential (799 : State) <= graphPotential (751 : State)
    decide
  ·
    simp [graphSmokeNext_s0751, h_l0012] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 736 <= s) (hhi : s < 752) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0736 h
  · exact valid_s0737 h
  · exact valid_s0738 h
  · exact valid_s0739 h
  · exact valid_s0740 h
  · exact valid_s0741 h
  · exact valid_s0742 h
  · exact valid_s0743 h
  · exact valid_s0744 h
  · exact valid_s0745 h
  · exact valid_s0746 h
  · exact valid_s0747 h
  · exact valid_s0748 h
  · exact valid_s0749 h
  · exact valid_s0750 h
  · exact valid_s0751 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard046
