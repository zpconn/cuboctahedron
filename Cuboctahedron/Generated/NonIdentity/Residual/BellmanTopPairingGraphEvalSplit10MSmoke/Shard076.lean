import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard076

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [608, 616). -/
theorem valid_s0608 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (608 : State) label t gain ->
      gain + graphPotential t <= graphPotential (608 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0608 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0608] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (612 : State) <= graphPotential (608 : State)
    decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0608] at h
      rcases h with ⟨rfl, rfl⟩
      change (-73 : Int) + graphPotential (610 : State) <= graphPotential (608 : State)
      decide
    ·
      by_cases h_l0012 : label = (12 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0608] at h
        rcases h with ⟨rfl, rfl⟩
        change (-10 : Int) + graphPotential (611 : State) <= graphPotential (608 : State)
        decide
      ·
        simp [graphSmokeNext_s0608, h_l0000, h_l0010, h_l0012] at h

theorem transition_ok_s0608 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (608 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (608 : State) := by
  intro h
  change graphSmokeNext_s0608 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0608] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (612 : State) <= graphPotential (608 : State)
      decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0608] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-73 : Int) + graphPotential (610 : State) <= graphPotential (608 : State)
        decide
    ·
      by_cases h_l0012 : label = (12 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0608] at h
        rcases h with ⟨rfl, rfl⟩
        constructor
        · decide
        · change (-10 : Int) + graphPotential (611 : State) <= graphPotential (608 : State)
          decide
      ·
        simp [graphSmokeNext_s0608, h_l0000, h_l0010, h_l0012] at h

theorem valid_s0609 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (609 : State) label t gain ->
      gain + graphPotential t <= graphPotential (609 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0609 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0609] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (610 : State) <= graphPotential (609 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0609] at h
      rcases h with ⟨rfl, rfl⟩
      change (-73 : Int) + graphPotential (613 : State) <= graphPotential (609 : State)
      decide
    ·
      by_cases h_l0012 : label = (12 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0609] at h
        rcases h with ⟨rfl, rfl⟩
        change (-10 : Int) + graphPotential (614 : State) <= graphPotential (609 : State)
        decide
      ·
        simp [graphSmokeNext_s0609, h_l0008, h_l0011, h_l0012] at h

theorem transition_ok_s0609 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (609 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (609 : State) := by
  intro h
  change graphSmokeNext_s0609 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0609] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (610 : State) <= graphPotential (609 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0609] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-73 : Int) + graphPotential (613 : State) <= graphPotential (609 : State)
        decide
    ·
      by_cases h_l0012 : label = (12 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0609] at h
        rcases h with ⟨rfl, rfl⟩
        constructor
        · decide
        · change (-10 : Int) + graphPotential (614 : State) <= graphPotential (609 : State)
          decide
      ·
        simp [graphSmokeNext_s0609, h_l0008, h_l0011, h_l0012] at h

theorem valid_s0610 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (610 : State) label t gain ->
      gain + graphPotential t <= graphPotential (610 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0610 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0610] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (618 : State) <= graphPotential (610 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0610] at h
      rcases h with ⟨rfl, rfl⟩
      change (-73 : Int) + graphPotential (615 : State) <= graphPotential (610 : State)
      decide
    ·
      by_cases h_l0012 : label = (12 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0610] at h
        rcases h with ⟨rfl, rfl⟩
        change (-10 : Int) + graphPotential (616 : State) <= graphPotential (610 : State)
        decide
      ·
        simp [graphSmokeNext_s0610, h_l0002, h_l0011, h_l0012] at h

theorem transition_ok_s0610 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (610 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (610 : State) := by
  intro h
  change graphSmokeNext_s0610 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0610] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (618 : State) <= graphPotential (610 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0610] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-73 : Int) + graphPotential (615 : State) <= graphPotential (610 : State)
        decide
    ·
      by_cases h_l0012 : label = (12 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0610] at h
        rcases h with ⟨rfl, rfl⟩
        constructor
        · decide
        · change (-10 : Int) + graphPotential (616 : State) <= graphPotential (610 : State)
          decide
      ·
        simp [graphSmokeNext_s0610, h_l0002, h_l0011, h_l0012] at h

theorem valid_s0611 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (611 : State) label t gain ->
      gain + graphPotential t <= graphPotential (611 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0611 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0611] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (621 : State) <= graphPotential (611 : State)
    decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0611] at h
      rcases h with ⟨rfl, rfl⟩
      change (-73 : Int) + graphPotential (616 : State) <= graphPotential (611 : State)
      decide
    ·
      by_cases h_l0013 : label = (13 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0611] at h
        rcases h with ⟨rfl, rfl⟩
        change (-10 : Int) + graphPotential (619 : State) <= graphPotential (611 : State)
        decide
      ·
        simp [graphSmokeNext_s0611, h_l0001, h_l0010, h_l0013] at h

theorem transition_ok_s0611 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (611 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (611 : State) := by
  intro h
  change graphSmokeNext_s0611 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0611] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (621 : State) <= graphPotential (611 : State)
      decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0611] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-73 : Int) + graphPotential (616 : State) <= graphPotential (611 : State)
        decide
    ·
      by_cases h_l0013 : label = (13 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0611] at h
        rcases h with ⟨rfl, rfl⟩
        constructor
        · decide
        · change (-10 : Int) + graphPotential (619 : State) <= graphPotential (611 : State)
          decide
      ·
        simp [graphSmokeNext_s0611, h_l0001, h_l0010, h_l0013] at h

theorem valid_s0612 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (612 : State) label t gain ->
      gain + graphPotential t <= graphPotential (612 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0612 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0612] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (622 : State) <= graphPotential (612 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0612] at h
      rcases h with ⟨rfl, rfl⟩
      change (-51 : Int) + graphPotential (617 : State) <= graphPotential (612 : State)
      decide
    ·
      by_cases h_l0012 : label = (12 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0612] at h
        rcases h with ⟨rfl, rfl⟩
        change (114 : Int) + graphPotential (620 : State) <= graphPotential (612 : State)
        decide
      ·
        simp [graphSmokeNext_s0612, h_l0004, h_l0011, h_l0012] at h

theorem transition_ok_s0612 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (612 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (612 : State) := by
  intro h
  change graphSmokeNext_s0612 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0612] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (622 : State) <= graphPotential (612 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0612] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-51 : Int) + graphPotential (617 : State) <= graphPotential (612 : State)
        decide
    ·
      by_cases h_l0012 : label = (12 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0612] at h
        rcases h with ⟨rfl, rfl⟩
        constructor
        · decide
        · change (114 : Int) + graphPotential (620 : State) <= graphPotential (612 : State)
          decide
      ·
        simp [graphSmokeNext_s0612, h_l0004, h_l0011, h_l0012] at h

theorem valid_s0613 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (613 : State) label t gain ->
      gain + graphPotential t <= graphPotential (613 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0613 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0613] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (624 : State) <= graphPotential (613 : State)
    decide
  ·
    by_cases h_l0008 : label = (8 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0613] at h
      rcases h with ⟨rfl, rfl⟩
      change (103 : Int) + graphPotential (615 : State) <= graphPotential (613 : State)
      decide
    ·
      by_cases h_l0012 : label = (12 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0613] at h
        rcases h with ⟨rfl, rfl⟩
        change (-10 : Int) + graphPotential (623 : State) <= graphPotential (613 : State)
        decide
      ·
        simp [graphSmokeNext_s0613, h_l0004, h_l0008, h_l0012] at h

theorem transition_ok_s0613 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (613 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (613 : State) := by
  intro h
  change graphSmokeNext_s0613 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0613] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (624 : State) <= graphPotential (613 : State)
      decide
  ·
    by_cases h_l0008 : label = (8 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0613] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (103 : Int) + graphPotential (615 : State) <= graphPotential (613 : State)
        decide
    ·
      by_cases h_l0012 : label = (12 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0613] at h
        rcases h with ⟨rfl, rfl⟩
        constructor
        · decide
        · change (-10 : Int) + graphPotential (623 : State) <= graphPotential (613 : State)
          decide
      ·
        simp [graphSmokeNext_s0613, h_l0004, h_l0008, h_l0012] at h

theorem valid_s0614 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (614 : State) label t gain ->
      gain + graphPotential t <= graphPotential (614 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0614 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0614] at h
    rcases h with ⟨rfl, rfl⟩
    change (103 : Int) + graphPotential (616 : State) <= graphPotential (614 : State)
    decide
  ·
    simp [graphSmokeNext_s0614, h_l0008] at h

theorem transition_ok_s0614 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (614 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (614 : State) := by
  intro h
  change graphSmokeNext_s0614 label = some (t, gain) at h
  by_cases h_l0008 : label = (8 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0614] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (103 : Int) + graphPotential (616 : State) <= graphPotential (614 : State)
      decide
  ·
    simp [graphSmokeNext_s0614, h_l0008] at h

theorem valid_s0615 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (615 : State) label t gain ->
      gain + graphPotential t <= graphPotential (615 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0615 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0615] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (627 : State) <= graphPotential (615 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0615] at h
      rcases h with ⟨rfl, rfl⟩
      change (-10 : Int) + graphPotential (625 : State) <= graphPotential (615 : State)
      decide
    ·
      simp [graphSmokeNext_s0615, h_l0000, h_l0012] at h

theorem transition_ok_s0615 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (615 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (615 : State) := by
  intro h
  change graphSmokeNext_s0615 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0615] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (627 : State) <= graphPotential (615 : State)
      decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0615] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-10 : Int) + graphPotential (625 : State) <= graphPotential (615 : State)
        decide
    ·
      simp [graphSmokeNext_s0615, h_l0000, h_l0012] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 608 <= s) (hhi : s < 616) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0608 h
  · exact valid_s0609 h
  · exact valid_s0610 h
  · exact valid_s0611 h
  · exact valid_s0612 h
  · exact valid_s0613 h
  · exact valid_s0614 h
  · exact valid_s0615 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 608 <= s) (hhi : s < 616) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0608 h
  · exact transition_ok_s0609 h
  · exact transition_ok_s0610 h
  · exact transition_ok_s0611 h
  · exact transition_ok_s0612 h
  · exact transition_ok_s0613 h
  · exact transition_ok_s0614 h
  · exact transition_ok_s0615 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard076
