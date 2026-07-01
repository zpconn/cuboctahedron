import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard039

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [624, 640). -/
theorem valid_s0624 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (624 : State) label t gain ->
      gain + graphPotential t <= graphPotential (624 : State) := by
  intro h
  change graphSmokeNext_s0624 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0624] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (645 : State) <= graphPotential (624 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0624] at h
      rcases h with ⟨rfl, rfl⟩
      change (114 : Int) + graphPotential (644 : State) <= graphPotential (624 : State)
      decide
    ·
      simp [graphSmokeNext_s0624, h_l0000, h_l0012] at h

theorem valid_s0625 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (625 : State) label t gain ->
      gain + graphPotential t <= graphPotential (625 : State) := by
  intro h
  change graphSmokeNext_s0625 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0625] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (650 : State) <= graphPotential (625 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0625] at h
      rcases h with ⟨rfl, rfl⟩
      change (-10 : Int) + graphPotential (646 : State) <= graphPotential (625 : State)
      decide
    ·
      simp [graphSmokeNext_s0625, h_l0001, h_l0013] at h

theorem valid_s0626 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (626 : State) label t gain ->
      gain + graphPotential t <= graphPotential (626 : State) := by
  intro h
  change graphSmokeNext_s0626 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0626] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (652 : State) <= graphPotential (626 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0626] at h
      rcases h with ⟨rfl, rfl⟩
      change (114 : Int) + graphPotential (647 : State) <= graphPotential (626 : State)
      decide
    ·
      simp [graphSmokeNext_s0626, h_l0004, h_l0012] at h

theorem valid_s0627 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (627 : State) label t gain ->
      gain + graphPotential t <= graphPotential (627 : State) := by
  intro h
  change graphSmokeNext_s0627 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0627] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (654 : State) <= graphPotential (627 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0627] at h
      rcases h with ⟨rfl, rfl⟩
      change (114 : Int) + graphPotential (648 : State) <= graphPotential (627 : State)
      decide
    ·
      simp [graphSmokeNext_s0627, h_l0004, h_l0012] at h

theorem valid_s0628 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (628 : State) label t gain ->
      gain + graphPotential t <= graphPotential (628 : State) := by
  intro h
  change graphSmokeNext_s0628 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0628] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (658 : State) <= graphPotential (628 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0628] at h
      rcases h with ⟨rfl, rfl⟩
      change (-73 : Int) + graphPotential (646 : State) <= graphPotential (628 : State)
      decide
    ·
      simp [graphSmokeNext_s0628, h_l0002, h_l0011] at h

theorem valid_s0629 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (629 : State) label t gain ->
      gain + graphPotential t <= graphPotential (629 : State) := by
  intro h
  change graphSmokeNext_s0629 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0629] at h
    rcases h with ⟨rfl, rfl⟩
    change (-51 : Int) + graphPotential (647 : State) <= graphPotential (629 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0629] at h
      rcases h with ⟨rfl, rfl⟩
      change (114 : Int) + graphPotential (655 : State) <= graphPotential (629 : State)
      decide
    ·
      simp [graphSmokeNext_s0629, h_l0010, h_l0013] at h

theorem valid_s0630 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (630 : State) label t gain ->
      gain + graphPotential t <= graphPotential (630 : State) := by
  intro h
  change graphSmokeNext_s0630 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0630] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (660 : State) <= graphPotential (630 : State)
    decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0630] at h
      rcases h with ⟨rfl, rfl⟩
      change (-51 : Int) + graphPotential (649 : State) <= graphPotential (630 : State)
      decide
    ·
      simp [graphSmokeNext_s0630, h_l0007, h_l0010] at h

theorem valid_s0631 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (631 : State) label t gain ->
      gain + graphPotential t <= graphPotential (631 : State) := by
  intro h
  change graphSmokeNext_s0631 label = some (t, gain) at h
  by_cases h_l0013 : label = (13 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0631] at h
    rcases h with ⟨rfl, rfl⟩
    change (114 : Int) + graphPotential (657 : State) <= graphPotential (631 : State)
    decide
  ·
    simp [graphSmokeNext_s0631, h_l0013] at h

theorem valid_s0632 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (632 : State) label t gain ->
      gain + graphPotential t <= graphPotential (632 : State) := by
  intro h
  change graphSmokeNext_s0632 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0632] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (662 : State) <= graphPotential (632 : State)
    decide
  ·
    simp [graphSmokeNext_s0632, h_l0007] at h

theorem valid_s0633 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (633 : State) label t gain ->
      gain + graphPotential t <= graphPotential (633 : State) := by
  intro h
  change graphSmokeNext_s0633 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0633] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (666 : State) <= graphPotential (633 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0633] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (659 : State) <= graphPotential (633 : State)
      decide
    ·
      simp [graphSmokeNext_s0633, h_l0004, h_l0013] at h

theorem valid_s0634 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (634 : State) label t gain ->
      gain + graphPotential t <= graphPotential (634 : State) := by
  intro h
  change graphSmokeNext_s0634 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0634] at h
    rcases h with ⟨rfl, rfl⟩
    change (45 : Int) + graphPotential (651 : State) <= graphPotential (634 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0634] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (661 : State) <= graphPotential (634 : State)
      decide
    ·
      simp [graphSmokeNext_s0634, h_l0010, h_l0013] at h

theorem valid_s0635 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (635 : State) label t gain ->
      gain + graphPotential t <= graphPotential (635 : State) := by
  intro h
  change graphSmokeNext_s0635 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0635] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (667 : State) <= graphPotential (635 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0635] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (664 : State) <= graphPotential (635 : State)
      decide
    ·
      simp [graphSmokeNext_s0635, h_l0004, h_l0013] at h

theorem valid_s0636 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (636 : State) label t gain ->
      gain + graphPotential t <= graphPotential (636 : State) := by
  intro h
  change graphSmokeNext_s0636 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0636] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (669 : State) <= graphPotential (636 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0636] at h
      rcases h with ⟨rfl, rfl⟩
      change (-51 : Int) + graphPotential (655 : State) <= graphPotential (636 : State)
      decide
    ·
      simp [graphSmokeNext_s0636, h_l0004, h_l0011] at h

theorem valid_s0637 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (637 : State) label t gain ->
      gain + graphPotential t <= graphPotential (637 : State) := by
  intro h
  change graphSmokeNext_s0637 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0637] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (670 : State) <= graphPotential (637 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0637] at h
      rcases h with ⟨rfl, rfl⟩
      change (-51 : Int) + graphPotential (656 : State) <= graphPotential (637 : State)
      decide
    ·
      simp [graphSmokeNext_s0637, h_l0004, h_l0011] at h

theorem valid_s0638 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (638 : State) label t gain ->
      gain + graphPotential t <= graphPotential (638 : State) := by
  intro h
  change graphSmokeNext_s0638 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0638] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (671 : State) <= graphPotential (638 : State)
    decide
  ·
    simp [graphSmokeNext_s0638, h_l0007] at h

theorem valid_s0639 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (639 : State) label t gain ->
      gain + graphPotential t <= graphPotential (639 : State) := by
  intro h
  change graphSmokeNext_s0639 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0639] at h
    rcases h with ⟨rfl, rfl⟩
    change (45 : Int) + graphPotential (661 : State) <= graphPotential (639 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0639] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (668 : State) <= graphPotential (639 : State)
      decide
    ·
      simp [graphSmokeNext_s0639, h_l0011, h_l0012] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 624 <= s) (hhi : s < 640) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0624 h
  · exact valid_s0625 h
  · exact valid_s0626 h
  · exact valid_s0627 h
  · exact valid_s0628 h
  · exact valid_s0629 h
  · exact valid_s0630 h
  · exact valid_s0631 h
  · exact valid_s0632 h
  · exact valid_s0633 h
  · exact valid_s0634 h
  · exact valid_s0635 h
  · exact valid_s0636 h
  · exact valid_s0637 h
  · exact valid_s0638 h
  · exact valid_s0639 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard039
