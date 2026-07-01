import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard077

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [616, 624). -/
theorem valid_s0616 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (616 : State) label t gain ->
      gain + graphPotential t <= graphPotential (616 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0616 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0616] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (632 : State) <= graphPotential (616 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0616] at h
      rcases h with ⟨rfl, rfl⟩
      change (-73 : Int) + graphPotential (625 : State) <= graphPotential (616 : State)
      decide
    ·
      by_cases h_l0013 : label = (13 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0616] at h
        rcases h with ⟨rfl, rfl⟩
        change (-10 : Int) + graphPotential (628 : State) <= graphPotential (616 : State)
        decide
      ·
        simp [graphSmokeNext_s0616, h_l0003, h_l0011, h_l0013] at h

theorem transition_ok_s0616 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (616 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (616 : State) := by
  intro h
  change graphSmokeNext_s0616 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0616] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (632 : State) <= graphPotential (616 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0616] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-73 : Int) + graphPotential (625 : State) <= graphPotential (616 : State)
        decide
    ·
      by_cases h_l0013 : label = (13 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0616] at h
        rcases h with ⟨rfl, rfl⟩
        constructor
        · decide
        · change (-10 : Int) + graphPotential (628 : State) <= graphPotential (616 : State)
          decide
      ·
        simp [graphSmokeNext_s0616, h_l0003, h_l0011, h_l0013] at h

theorem valid_s0617 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (617 : State) label t gain ->
      gain + graphPotential t <= graphPotential (617 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0617 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0617] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (633 : State) <= graphPotential (617 : State)
    decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0617] at h
      rcases h with ⟨rfl, rfl⟩
      change (-51 : Int) + graphPotential (626 : State) <= graphPotential (617 : State)
      decide
    ·
      by_cases h_l0012 : label = (12 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0617] at h
        rcases h with ⟨rfl, rfl⟩
        change (114 : Int) + graphPotential (629 : State) <= graphPotential (617 : State)
        decide
      ·
        simp [graphSmokeNext_s0617, h_l0006, h_l0010, h_l0012] at h

theorem transition_ok_s0617 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (617 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (617 : State) := by
  intro h
  change graphSmokeNext_s0617 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0617] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (633 : State) <= graphPotential (617 : State)
      decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0617] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-51 : Int) + graphPotential (626 : State) <= graphPotential (617 : State)
        decide
    ·
      by_cases h_l0012 : label = (12 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0617] at h
        rcases h with ⟨rfl, rfl⟩
        constructor
        · decide
        · change (114 : Int) + graphPotential (629 : State) <= graphPotential (617 : State)
          decide
      ·
        simp [graphSmokeNext_s0617, h_l0006, h_l0010, h_l0012] at h

theorem valid_s0618 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (618 : State) label t gain ->
      gain + graphPotential t <= graphPotential (618 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0618 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0618] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (635 : State) <= graphPotential (618 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0618] at h
      rcases h with ⟨rfl, rfl⟩
      change (114 : Int) + graphPotential (631 : State) <= graphPotential (618 : State)
      decide
    ·
      simp [graphSmokeNext_s0618, h_l0006, h_l0012] at h

theorem transition_ok_s0618 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (618 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (618 : State) := by
  intro h
  change graphSmokeNext_s0618 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0618] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (635 : State) <= graphPotential (618 : State)
      decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0618] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (114 : Int) + graphPotential (631 : State) <= graphPotential (618 : State)
        decide
    ·
      simp [graphSmokeNext_s0618, h_l0006, h_l0012] at h

theorem valid_s0619 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (619 : State) label t gain ->
      gain + graphPotential t <= graphPotential (619 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0619 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0619] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (637 : State) <= graphPotential (619 : State)
    decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0619] at h
      rcases h with ⟨rfl, rfl⟩
      change (-73 : Int) + graphPotential (628 : State) <= graphPotential (619 : State)
      decide
    ·
      simp [graphSmokeNext_s0619, h_l0000, h_l0010] at h

theorem transition_ok_s0619 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (619 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (619 : State) := by
  intro h
  change graphSmokeNext_s0619 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0619] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (637 : State) <= graphPotential (619 : State)
      decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0619] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-73 : Int) + graphPotential (628 : State) <= graphPotential (619 : State)
        decide
    ·
      simp [graphSmokeNext_s0619, h_l0000, h_l0010] at h

theorem valid_s0620 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (620 : State) label t gain ->
      gain + graphPotential t <= graphPotential (620 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0620 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0620] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (638 : State) <= graphPotential (620 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0620] at h
      rcases h with ⟨rfl, rfl⟩
      change (-51 : Int) + graphPotential (629 : State) <= graphPotential (620 : State)
      decide
    ·
      by_cases h_l0013 : label = (13 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0620] at h
        rcases h with ⟨rfl, rfl⟩
        change (114 : Int) + graphPotential (636 : State) <= graphPotential (620 : State)
        decide
      ·
        simp [graphSmokeNext_s0620, h_l0005, h_l0011, h_l0013] at h

theorem transition_ok_s0620 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (620 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (620 : State) := by
  intro h
  change graphSmokeNext_s0620 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0620] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (638 : State) <= graphPotential (620 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0620] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-51 : Int) + graphPotential (629 : State) <= graphPotential (620 : State)
        decide
    ·
      by_cases h_l0013 : label = (13 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0620] at h
        rcases h with ⟨rfl, rfl⟩
        constructor
        · decide
        · change (114 : Int) + graphPotential (636 : State) <= graphPotential (620 : State)
          decide
      ·
        simp [graphSmokeNext_s0620, h_l0005, h_l0011, h_l0013] at h

theorem valid_s0621 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (621 : State) label t gain ->
      gain + graphPotential t <= graphPotential (621 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0621 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0621] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (640 : State) <= graphPotential (621 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0621] at h
      rcases h with ⟨rfl, rfl⟩
      change (-51 : Int) + graphPotential (630 : State) <= graphPotential (621 : State)
      decide
    ·
      simp [graphSmokeNext_s0621, h_l0005, h_l0011] at h

theorem transition_ok_s0621 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (621 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (621 : State) := by
  intro h
  change graphSmokeNext_s0621 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0621] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (640 : State) <= graphPotential (621 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0621] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-51 : Int) + graphPotential (630 : State) <= graphPotential (621 : State)
        decide
    ·
      simp [graphSmokeNext_s0621, h_l0005, h_l0011] at h

theorem valid_s0622 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (622 : State) label t gain ->
      gain + graphPotential t <= graphPotential (622 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0622 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0622] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (641 : State) <= graphPotential (622 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0622] at h
      rcases h with ⟨rfl, rfl⟩
      change (45 : Int) + graphPotential (634 : State) <= graphPotential (622 : State)
      decide
    ·
      by_cases h_l0013 : label = (13 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0622] at h
        rcases h with ⟨rfl, rfl⟩
        change (-18 : Int) + graphPotential (639 : State) <= graphPotential (622 : State)
        decide
      ·
        simp [graphSmokeNext_s0622, h_l0006, h_l0011, h_l0013] at h

theorem transition_ok_s0622 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (622 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (622 : State) := by
  intro h
  change graphSmokeNext_s0622 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0622] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (641 : State) <= graphPotential (622 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0622] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (45 : Int) + graphPotential (634 : State) <= graphPotential (622 : State)
        decide
    ·
      by_cases h_l0013 : label = (13 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0622] at h
        rcases h with ⟨rfl, rfl⟩
        constructor
        · decide
        · change (-18 : Int) + graphPotential (639 : State) <= graphPotential (622 : State)
          decide
      ·
        simp [graphSmokeNext_s0622, h_l0006, h_l0011, h_l0013] at h

theorem valid_s0623 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (623 : State) label t gain ->
      gain + graphPotential t <= graphPotential (623 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0623 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0623] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (643 : State) <= graphPotential (623 : State)
    decide
  ·
    by_cases h_l0008 : label = (8 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0623] at h
      rcases h with ⟨rfl, rfl⟩
      change (103 : Int) + graphPotential (625 : State) <= graphPotential (623 : State)
      decide
    ·
      by_cases h_l0013 : label = (13 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0623] at h
        rcases h with ⟨rfl, rfl⟩
        change (-10 : Int) + graphPotential (642 : State) <= graphPotential (623 : State)
        decide
      ·
        simp [graphSmokeNext_s0623, h_l0005, h_l0008, h_l0013] at h

theorem transition_ok_s0623 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (623 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (623 : State) := by
  intro h
  change graphSmokeNext_s0623 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0623] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (643 : State) <= graphPotential (623 : State)
      decide
  ·
    by_cases h_l0008 : label = (8 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0623] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (103 : Int) + graphPotential (625 : State) <= graphPotential (623 : State)
        decide
    ·
      by_cases h_l0013 : label = (13 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0623] at h
        rcases h with ⟨rfl, rfl⟩
        constructor
        · decide
        · change (-10 : Int) + graphPotential (642 : State) <= graphPotential (623 : State)
          decide
      ·
        simp [graphSmokeNext_s0623, h_l0005, h_l0008, h_l0013] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 616 <= s) (hhi : s < 624) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0616 h
  · exact valid_s0617 h
  · exact valid_s0618 h
  · exact valid_s0619 h
  · exact valid_s0620 h
  · exact valid_s0621 h
  · exact valid_s0622 h
  · exact valid_s0623 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 616 <= s) (hhi : s < 624) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0616 h
  · exact transition_ok_s0617 h
  · exact transition_ok_s0618 h
  · exact transition_ok_s0619 h
  · exact transition_ok_s0620 h
  · exact transition_ok_s0621 h
  · exact transition_ok_s0622 h
  · exact transition_ok_s0623 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard077
