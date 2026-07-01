import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard043

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [688, 704). -/
theorem valid_s0688 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (688 : State) label t gain ->
      gain + graphPotential t <= graphPotential (688 : State) := by
  intro h
  change graphSmokeNext_s0688 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0688] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (735 : State) <= graphPotential (688 : State)
    decide
  ·
    simp [graphSmokeNext_s0688, h_l0012] at h

theorem valid_s0689 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (689 : State) label t gain ->
      gain + graphPotential t <= graphPotential (689 : State) := by
  intro h
  change graphSmokeNext_s0689 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0689] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (737 : State) <= graphPotential (689 : State)
    decide
  ·
    simp [graphSmokeNext_s0689, h_l0012] at h

theorem valid_s0690 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (690 : State) label t gain ->
      gain + graphPotential t <= graphPotential (690 : State) := by
  intro h
  change graphSmokeNext_s0690 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0690] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (745 : State) <= graphPotential (690 : State)
    decide
  ·
    simp [graphSmokeNext_s0690, h_l0007] at h

theorem valid_s0691 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (691 : State) label t gain ->
      gain + graphPotential t <= graphPotential (691 : State) := by
  intro h
  change graphSmokeNext_s0691 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0691] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (747 : State) <= graphPotential (691 : State)
    decide
  ·
    simp [graphSmokeNext_s0691, h_l0007] at h

theorem valid_s0692 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (692 : State) label t gain ->
      gain + graphPotential t <= graphPotential (692 : State) := by
  intro h
  change graphSmokeNext_s0692 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0692] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (748 : State) <= graphPotential (692 : State)
    decide
  ·
    simp [graphSmokeNext_s0692, h_l0007] at h

theorem valid_s0693 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (693 : State) label t gain ->
      gain + graphPotential t <= graphPotential (693 : State) := by
  intro h
  change graphSmokeNext_s0693 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0693] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (749 : State) <= graphPotential (693 : State)
    decide
  ·
    simp [graphSmokeNext_s0693, h_l0007] at h

theorem valid_s0694 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (694 : State) label t gain ->
      gain + graphPotential t <= graphPotential (694 : State) := by
  intro h
  change graphSmokeNext_s0694 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0694] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (757 : State) <= graphPotential (694 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0694] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (750 : State) <= graphPotential (694 : State)
      decide
    ·
      simp [graphSmokeNext_s0694, h_l0005, h_l0013] at h

theorem valid_s0695 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (695 : State) label t gain ->
      gain + graphPotential t <= graphPotential (695 : State) := by
  intro h
  change graphSmokeNext_s0695 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0695] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (758 : State) <= graphPotential (695 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0695] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (751 : State) <= graphPotential (695 : State)
      decide
    ·
      simp [graphSmokeNext_s0695, h_l0005, h_l0013] at h

theorem valid_s0696 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (696 : State) label t gain ->
      gain + graphPotential t <= graphPotential (696 : State) := by
  intro h
  change graphSmokeNext_s0696 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0696] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (759 : State) <= graphPotential (696 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0696] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (752 : State) <= graphPotential (696 : State)
      decide
    ·
      simp [graphSmokeNext_s0696, h_l0005, h_l0013] at h

theorem valid_s0697 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (697 : State) label t gain ->
      gain + graphPotential t <= graphPotential (697 : State) := by
  intro h
  change graphSmokeNext_s0697 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0697] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (760 : State) <= graphPotential (697 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0697] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (753 : State) <= graphPotential (697 : State)
      decide
    ·
      simp [graphSmokeNext_s0697, h_l0005, h_l0013] at h

theorem valid_s0698 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (698 : State) label t gain ->
      gain + graphPotential t <= graphPotential (698 : State) := by
  intro h
  change graphSmokeNext_s0698 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0698] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (761 : State) <= graphPotential (698 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0698] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (754 : State) <= graphPotential (698 : State)
      decide
    ·
      simp [graphSmokeNext_s0698, h_l0005, h_l0013] at h

theorem valid_s0699 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (699 : State) label t gain ->
      gain + graphPotential t <= graphPotential (699 : State) := by
  intro h
  change graphSmokeNext_s0699 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0699] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (762 : State) <= graphPotential (699 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0699] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (755 : State) <= graphPotential (699 : State)
      decide
    ·
      simp [graphSmokeNext_s0699, h_l0005, h_l0013] at h

theorem valid_s0700 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (700 : State) label t gain ->
      gain + graphPotential t <= graphPotential (700 : State) := by
  intro h
  change graphSmokeNext_s0700 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0700] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (766 : State) <= graphPotential (700 : State)
    decide
  ·
    simp [graphSmokeNext_s0700, h_l0004] at h

theorem valid_s0701 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (701 : State) label t gain ->
      gain + graphPotential t <= graphPotential (701 : State) := by
  intro h
  change graphSmokeNext_s0701 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0701] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (768 : State) <= graphPotential (701 : State)
    decide
  ·
    simp [graphSmokeNext_s0701, h_l0004] at h

theorem valid_s0702 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (702 : State) label t gain ->
      gain + graphPotential t <= graphPotential (702 : State) := by
  intro h
  change graphSmokeNext_s0702 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0702] at h
    rcases h with ⟨rfl, rfl⟩
    change (45 : Int) + graphPotential (732 : State) <= graphPotential (702 : State)
    decide
  ·
    simp [graphSmokeNext_s0702, h_l0010] at h

theorem valid_s0703 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (703 : State) label t gain ->
      gain + graphPotential t <= graphPotential (703 : State) := by
  intro h
  change graphSmokeNext_s0703 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0703] at h
    rcases h with ⟨rfl, rfl⟩
    change (45 : Int) + graphPotential (737 : State) <= graphPotential (703 : State)
    decide
  ·
    simp [graphSmokeNext_s0703, h_l0010] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 688 <= s) (hhi : s < 704) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0688 h
  · exact valid_s0689 h
  · exact valid_s0690 h
  · exact valid_s0691 h
  · exact valid_s0692 h
  · exact valid_s0693 h
  · exact valid_s0694 h
  · exact valid_s0695 h
  · exact valid_s0696 h
  · exact valid_s0697 h
  · exact valid_s0698 h
  · exact valid_s0699 h
  · exact valid_s0700 h
  · exact valid_s0701 h
  · exact valid_s0702 h
  · exact valid_s0703 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard043
