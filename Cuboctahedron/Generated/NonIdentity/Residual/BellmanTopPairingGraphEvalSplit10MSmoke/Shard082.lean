import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard082

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [656, 664). -/
theorem valid_s0656 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (656 : State) label t gain ->
      gain + graphPotential t <= graphPotential (656 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
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

theorem transition_ok_s0656 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (656 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (656 : State) := by
  intro h
  change graphSmokeNext_s0656 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0656] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (701 : State) <= graphPotential (656 : State)
      decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0656] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-51 : Int) + graphPotential (682 : State) <= graphPotential (656 : State)
        decide
    ·
      simp [graphSmokeNext_s0656, h_l0006, h_l0010] at h

theorem valid_s0657 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (657 : State) label t gain ->
      gain + graphPotential t <= graphPotential (657 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0657 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0657] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (705 : State) <= graphPotential (657 : State)
    decide
  ·
    simp [graphSmokeNext_s0657, h_l0006] at h

theorem transition_ok_s0657 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (657 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (657 : State) := by
  intro h
  change graphSmokeNext_s0657 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0657] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (705 : State) <= graphPotential (657 : State)
      decide
  ·
    simp [graphSmokeNext_s0657, h_l0006] at h

theorem valid_s0658 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (658 : State) label t gain ->
      gain + graphPotential t <= graphPotential (658 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0658 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0658] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (706 : State) <= graphPotential (658 : State)
    decide
  ·
    simp [graphSmokeNext_s0658, h_l0006] at h

theorem transition_ok_s0658 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (658 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (658 : State) := by
  intro h
  change graphSmokeNext_s0658 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0658] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (706 : State) <= graphPotential (658 : State)
      decide
  ·
    simp [graphSmokeNext_s0658, h_l0006] at h

theorem valid_s0659 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (659 : State) label t gain ->
      gain + graphPotential t <= graphPotential (659 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
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

theorem transition_ok_s0659 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (659 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (659 : State) := by
  intro h
  change graphSmokeNext_s0659 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0659] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (707 : State) <= graphPotential (659 : State)
      decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0659] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-18 : Int) + graphPotential (700 : State) <= graphPotential (659 : State)
        decide
    ·
      simp [graphSmokeNext_s0659, h_l0005, h_l0012] at h

theorem valid_s0660 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (660 : State) label t gain ->
      gain + graphPotential t <= graphPotential (660 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0660 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0660] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (709 : State) <= graphPotential (660 : State)
    decide
  ·
    simp [graphSmokeNext_s0660, h_l0005] at h

theorem transition_ok_s0660 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (660 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (660 : State) := by
  intro h
  change graphSmokeNext_s0660 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0660] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (709 : State) <= graphPotential (660 : State)
      decide
  ·
    simp [graphSmokeNext_s0660, h_l0005] at h

theorem valid_s0661 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (661 : State) label t gain ->
      gain + graphPotential t <= graphPotential (661 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
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

theorem transition_ok_s0661 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (661 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (661 : State) := by
  intro h
  change graphSmokeNext_s0661 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0661] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (712 : State) <= graphPotential (661 : State)
      decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0661] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (45 : Int) + graphPotential (686 : State) <= graphPotential (661 : State)
        decide
    ·
      by_cases h_l0012 : label = (12 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0661] at h
        rcases h with ⟨rfl, rfl⟩
        constructor
        · decide
        · change (-18 : Int) + graphPotential (702 : State) <= graphPotential (661 : State)
          decide
      ·
        simp [graphSmokeNext_s0661, h_l0005, h_l0010, h_l0012] at h

theorem valid_s0662 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (662 : State) label t gain ->
      gain + graphPotential t <= graphPotential (662 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0662 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0662] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (713 : State) <= graphPotential (662 : State)
    decide
  ·
    simp [graphSmokeNext_s0662, h_l0005] at h

theorem transition_ok_s0662 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (662 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (662 : State) := by
  intro h
  change graphSmokeNext_s0662 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0662] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (713 : State) <= graphPotential (662 : State)
      decide
  ·
    simp [graphSmokeNext_s0662, h_l0005] at h

theorem valid_s0663 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (663 : State) label t gain ->
      gain + graphPotential t <= graphPotential (663 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0663 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0663] at h
    rcases h with ⟨rfl, rfl⟩
    change (45 : Int) + graphPotential (690 : State) <= graphPotential (663 : State)
    decide
  ·
    simp [graphSmokeNext_s0663, h_l0010] at h

theorem transition_ok_s0663 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (663 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (663 : State) := by
  intro h
  change graphSmokeNext_s0663 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0663] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (45 : Int) + graphPotential (690 : State) <= graphPotential (663 : State)
      decide
  ·
    simp [graphSmokeNext_s0663, h_l0010] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 656 <= s) (hhi : s < 664) :
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

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 656 <= s) (hhi : s < 664) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0656 h
  · exact transition_ok_s0657 h
  · exact transition_ok_s0658 h
  · exact transition_ok_s0659 h
  · exact transition_ok_s0660 h
  · exact transition_ok_s0661 h
  · exact transition_ok_s0662 h
  · exact transition_ok_s0663 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard082
