import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard080

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [640, 648). -/
theorem valid_s0640 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (640 : State) label t gain ->
      gain + graphPotential t <= graphPotential (640 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0640 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0640] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (672 : State) <= graphPotential (640 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0640] at h
      rcases h with ⟨rfl, rfl⟩
      change (45 : Int) + graphPotential (663 : State) <= graphPotential (640 : State)
      decide
    ·
      simp [graphSmokeNext_s0640, h_l0007, h_l0011] at h

theorem transition_ok_s0640 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (640 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (640 : State) := by
  intro h
  change graphSmokeNext_s0640 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0640] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (672 : State) <= graphPotential (640 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0640] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (45 : Int) + graphPotential (663 : State) <= graphPotential (640 : State)
        decide
    ·
      simp [graphSmokeNext_s0640, h_l0007, h_l0011] at h

theorem valid_s0641 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (641 : State) label t gain ->
      gain + graphPotential t <= graphPotential (641 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0641 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0641] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (674 : State) <= graphPotential (641 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0641] at h
      rcases h with ⟨rfl, rfl⟩
      change (81 : Int) + graphPotential (665 : State) <= graphPotential (641 : State)
      decide
    ·
      by_cases h_l0013 : label = (13 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0641] at h
        rcases h with ⟨rfl, rfl⟩
        change (-54 : Int) + graphPotential (673 : State) <= graphPotential (641 : State)
        decide
      ·
        simp [graphSmokeNext_s0641, h_l0005, h_l0011, h_l0013] at h

theorem transition_ok_s0641 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (641 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (641 : State) := by
  intro h
  change graphSmokeNext_s0641 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0641] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (674 : State) <= graphPotential (641 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0641] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (81 : Int) + graphPotential (665 : State) <= graphPotential (641 : State)
        decide
    ·
      by_cases h_l0013 : label = (13 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0641] at h
        rcases h with ⟨rfl, rfl⟩
        constructor
        · decide
        · change (-54 : Int) + graphPotential (673 : State) <= graphPotential (641 : State)
          decide
      ·
        simp [graphSmokeNext_s0641, h_l0005, h_l0011, h_l0013] at h

theorem valid_s0642 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (642 : State) label t gain ->
      gain + graphPotential t <= graphPotential (642 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0642 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0642] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (676 : State) <= graphPotential (642 : State)
    decide
  ·
    by_cases h_l0008 : label = (8 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0642] at h
      rcases h with ⟨rfl, rfl⟩
      change (103 : Int) + graphPotential (646 : State) <= graphPotential (642 : State)
      decide
    ·
      simp [graphSmokeNext_s0642, h_l0004, h_l0008] at h

theorem transition_ok_s0642 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (642 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (642 : State) := by
  intro h
  change graphSmokeNext_s0642 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0642] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (676 : State) <= graphPotential (642 : State)
      decide
  ·
    by_cases h_l0008 : label = (8 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0642] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (103 : Int) + graphPotential (646 : State) <= graphPotential (642 : State)
        decide
    ·
      simp [graphSmokeNext_s0642, h_l0004, h_l0008] at h

theorem valid_s0643 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (643 : State) label t gain ->
      gain + graphPotential t <= graphPotential (643 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0643 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0643] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (678 : State) <= graphPotential (643 : State)
    decide
  ·
    simp [graphSmokeNext_s0643, h_l0001] at h

theorem transition_ok_s0643 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (643 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (643 : State) := by
  intro h
  change graphSmokeNext_s0643 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0643] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (678 : State) <= graphPotential (643 : State)
      decide
  ·
    simp [graphSmokeNext_s0643, h_l0001] at h

theorem valid_s0644 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (644 : State) label t gain ->
      gain + graphPotential t <= graphPotential (644 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0644 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0644] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (679 : State) <= graphPotential (644 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0644] at h
      rcases h with ⟨rfl, rfl⟩
      change (114 : Int) + graphPotential (675 : State) <= graphPotential (644 : State)
      decide
    ·
      simp [graphSmokeNext_s0644, h_l0001, h_l0013] at h

theorem transition_ok_s0644 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (644 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (644 : State) := by
  intro h
  change graphSmokeNext_s0644 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0644] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (679 : State) <= graphPotential (644 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0644] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (114 : Int) + graphPotential (675 : State) <= graphPotential (644 : State)
        decide
    ·
      simp [graphSmokeNext_s0644, h_l0001, h_l0013] at h

theorem valid_s0645 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (645 : State) label t gain ->
      gain + graphPotential t <= graphPotential (645 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0645 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0645] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (680 : State) <= graphPotential (645 : State)
    decide
  ·
    by_cases h_l0008 : label = (8 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0645] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (653 : State) <= graphPotential (645 : State)
      decide
    ·
      by_cases h_l0013 : label = (13 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0645] at h
        rcases h with ⟨rfl, rfl⟩
        change (-18 : Int) + graphPotential (677 : State) <= graphPotential (645 : State)
        decide
      ·
        simp [graphSmokeNext_s0645, h_l0002, h_l0008, h_l0013] at h

theorem transition_ok_s0645 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (645 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (645 : State) := by
  intro h
  change graphSmokeNext_s0645 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0645] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (680 : State) <= graphPotential (645 : State)
      decide
  ·
    by_cases h_l0008 : label = (8 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0645] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (653 : State) <= graphPotential (645 : State)
        decide
    ·
      by_cases h_l0013 : label = (13 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0645] at h
        rcases h with ⟨rfl, rfl⟩
        constructor
        · decide
        · change (-18 : Int) + graphPotential (677 : State) <= graphPotential (645 : State)
          decide
      ·
        simp [graphSmokeNext_s0645, h_l0002, h_l0008, h_l0013] at h

theorem valid_s0646 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (646 : State) label t gain ->
      gain + graphPotential t <= graphPotential (646 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0646 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0646] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (683 : State) <= graphPotential (646 : State)
    decide
  ·
    simp [graphSmokeNext_s0646, h_l0000] at h

theorem transition_ok_s0646 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (646 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (646 : State) := by
  intro h
  change graphSmokeNext_s0646 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0646] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (683 : State) <= graphPotential (646 : State)
      decide
  ·
    simp [graphSmokeNext_s0646, h_l0000] at h

theorem valid_s0647 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (647 : State) label t gain ->
      gain + graphPotential t <= graphPotential (647 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0647 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0647] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (684 : State) <= graphPotential (647 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0647] at h
      rcases h with ⟨rfl, rfl⟩
      change (114 : Int) + graphPotential (681 : State) <= graphPotential (647 : State)
      decide
    ·
      simp [graphSmokeNext_s0647, h_l0005, h_l0013] at h

theorem transition_ok_s0647 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (647 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (647 : State) := by
  intro h
  change graphSmokeNext_s0647 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0647] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (684 : State) <= graphPotential (647 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0647] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (114 : Int) + graphPotential (681 : State) <= graphPotential (647 : State)
        decide
    ·
      simp [graphSmokeNext_s0647, h_l0005, h_l0013] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 640 <= s) (hhi : s < 648) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0640 h
  · exact valid_s0641 h
  · exact valid_s0642 h
  · exact valid_s0643 h
  · exact valid_s0644 h
  · exact valid_s0645 h
  · exact valid_s0646 h
  · exact valid_s0647 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 640 <= s) (hhi : s < 648) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0640 h
  · exact transition_ok_s0641 h
  · exact transition_ok_s0642 h
  · exact transition_ok_s0643 h
  · exact transition_ok_s0644 h
  · exact transition_ok_s0645 h
  · exact transition_ok_s0646 h
  · exact transition_ok_s0647 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard080
