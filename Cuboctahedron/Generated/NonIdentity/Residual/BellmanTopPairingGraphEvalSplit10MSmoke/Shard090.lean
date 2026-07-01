import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard090

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [720, 728). -/
theorem valid_s0720 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (720 : State) label t gain ->
      gain + graphPotential t <= graphPotential (720 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
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

theorem transition_ok_s0720 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (720 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (720 : State) := by
  intro h
  change graphSmokeNext_s0720 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0720] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (785 : State) <= graphPotential (720 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0720] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (81 : Int) + graphPotential (767 : State) <= graphPotential (720 : State)
        decide
    ·
      simp [graphSmokeNext_s0720, h_l0005, h_l0011] at h

theorem valid_s0721 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (721 : State) label t gain ->
      gain + graphPotential t <= graphPotential (721 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
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

theorem transition_ok_s0721 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (721 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (721 : State) := by
  intro h
  change graphSmokeNext_s0721 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0721] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (786 : State) <= graphPotential (721 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0721] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-63 : Int) + graphPotential (773 : State) <= graphPotential (721 : State)
        decide
    ·
      simp [graphSmokeNext_s0721, h_l0003, h_l0011] at h

theorem valid_s0722 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (722 : State) label t gain ->
      gain + graphPotential t <= graphPotential (722 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
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

theorem transition_ok_s0722 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (722 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (722 : State) := by
  intro h
  change graphSmokeNext_s0722 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0722] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-63 : Int) + graphPotential (774 : State) <= graphPotential (722 : State)
      decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0722] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (90 : Int) + graphPotential (781 : State) <= graphPotential (722 : State)
        decide
    ·
      simp [graphSmokeNext_s0722, h_l0011, h_l0012] at h

theorem valid_s0723 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (723 : State) label t gain ->
      gain + graphPotential t <= graphPotential (723 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
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

theorem transition_ok_s0723 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (723 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (723 : State) := by
  intro h
  change graphSmokeNext_s0723 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0723] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (788 : State) <= graphPotential (723 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0723] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-63 : Int) + graphPotential (776 : State) <= graphPotential (723 : State)
        decide
    ·
      simp [graphSmokeNext_s0723, h_l0003, h_l0011] at h

theorem valid_s0724 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (724 : State) label t gain ->
      gain + graphPotential t <= graphPotential (724 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
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

theorem transition_ok_s0724 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (724 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (724 : State) := by
  intro h
  change graphSmokeNext_s0724 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0724] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (789 : State) <= graphPotential (724 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0724] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (81 : Int) + graphPotential (780 : State) <= graphPotential (724 : State)
        decide
    ·
      by_cases h_l0013 : label = (13 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0724] at h
        rcases h with ⟨rfl, rfl⟩
        constructor
        · decide
        · change (-54 : Int) + graphPotential (787 : State) <= graphPotential (724 : State)
          decide
      ·
        simp [graphSmokeNext_s0724, h_l0007, h_l0011, h_l0013] at h

theorem valid_s0725 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (725 : State) label t gain ->
      gain + graphPotential t <= graphPotential (725 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
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

theorem transition_ok_s0725 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (725 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (725 : State) := by
  intro h
  change graphSmokeNext_s0725 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0725] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (791 : State) <= graphPotential (725 : State)
      decide
  ·
    by_cases h_l0008 : label = (8 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0725] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (735 : State) <= graphPotential (725 : State)
        decide
    ·
      simp [graphSmokeNext_s0725, h_l0002, h_l0008] at h

theorem valid_s0726 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (726 : State) label t gain ->
      gain + graphPotential t <= graphPotential (726 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
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

theorem transition_ok_s0726 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (726 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (726 : State) := by
  intro h
  change graphSmokeNext_s0726 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0726] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (792 : State) <= graphPotential (726 : State)
      decide
  ·
    by_cases h_l0008 : label = (8 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0726] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (736 : State) <= graphPotential (726 : State)
        decide
    ·
      simp [graphSmokeNext_s0726, h_l0002, h_l0008] at h

theorem valid_s0727 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (727 : State) label t gain ->
      gain + graphPotential t <= graphPotential (727 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
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

theorem transition_ok_s0727 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (727 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (727 : State) := by
  intro h
  change graphSmokeNext_s0727 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0727] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (793 : State) <= graphPotential (727 : State)
      decide
  ·
    by_cases h_l0008 : label = (8 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0727] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (739 : State) <= graphPotential (727 : State)
        decide
    ·
      simp [graphSmokeNext_s0727, h_l0002, h_l0008] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 720 <= s) (hhi : s < 728) :
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

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 720 <= s) (hhi : s < 728) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0720 h
  · exact transition_ok_s0721 h
  · exact transition_ok_s0722 h
  · exact transition_ok_s0723 h
  · exact transition_ok_s0724 h
  · exact transition_ok_s0725 h
  · exact transition_ok_s0726 h
  · exact transition_ok_s0727 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard090
