import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard089

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [712, 720). -/
theorem valid_s0712 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (712 : State) label t gain ->
      gain + graphPotential t <= graphPotential (712 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0712 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0712] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (775 : State) <= graphPotential (712 : State)
    decide
  ·
    simp [graphSmokeNext_s0712, h_l0006] at h

theorem transition_ok_s0712 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (712 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (712 : State) := by
  intro h
  change graphSmokeNext_s0712 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0712] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (775 : State) <= graphPotential (712 : State)
      decide
  ·
    simp [graphSmokeNext_s0712, h_l0006] at h

theorem valid_s0713 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (713 : State) label t gain ->
      gain + graphPotential t <= graphPotential (713 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0713 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0713] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (778 : State) <= graphPotential (713 : State)
    decide
  ·
    simp [graphSmokeNext_s0713, h_l0006] at h

theorem transition_ok_s0713 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (713 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (713 : State) := by
  intro h
  change graphSmokeNext_s0713 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0713] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (778 : State) <= graphPotential (713 : State)
      decide
  ·
    simp [graphSmokeNext_s0713, h_l0006] at h

theorem valid_s0714 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (714 : State) label t gain ->
      gain + graphPotential t <= graphPotential (714 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0714 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0714] at h
    rcases h with ⟨rfl, rfl⟩
    change (-54 : Int) + graphPotential (769 : State) <= graphPotential (714 : State)
    decide
  ·
    simp [graphSmokeNext_s0714, h_l0012] at h

theorem transition_ok_s0714 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (714 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (714 : State) := by
  intro h
  change graphSmokeNext_s0714 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0714] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-54 : Int) + graphPotential (769 : State) <= graphPotential (714 : State)
      decide
  ·
    simp [graphSmokeNext_s0714, h_l0012] at h

theorem valid_s0715 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (715 : State) label t gain ->
      gain + graphPotential t <= graphPotential (715 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0715 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0715] at h
    rcases h with ⟨rfl, rfl⟩
    change (-63 : Int) + graphPotential (756 : State) <= graphPotential (715 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0715] at h
      rcases h with ⟨rfl, rfl⟩
      change (90 : Int) + graphPotential (774 : State) <= graphPotential (715 : State)
      decide
    ·
      simp [graphSmokeNext_s0715, h_l0010, h_l0013] at h

theorem transition_ok_s0715 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (715 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (715 : State) := by
  intro h
  change graphSmokeNext_s0715 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0715] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-63 : Int) + graphPotential (756 : State) <= graphPotential (715 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0715] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (90 : Int) + graphPotential (774 : State) <= graphPotential (715 : State)
        decide
    ·
      simp [graphSmokeNext_s0715, h_l0010, h_l0013] at h

theorem valid_s0716 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (716 : State) label t gain ->
      gain + graphPotential t <= graphPotential (716 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0716 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0716] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (779 : State) <= graphPotential (716 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0716] at h
      rcases h with ⟨rfl, rfl⟩
      change (90 : Int) + graphPotential (777 : State) <= graphPotential (716 : State)
      decide
    ·
      simp [graphSmokeNext_s0716, h_l0000, h_l0013] at h

theorem transition_ok_s0716 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (716 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (716 : State) := by
  intro h
  change graphSmokeNext_s0716 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0716] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (779 : State) <= graphPotential (716 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0716] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (90 : Int) + graphPotential (777 : State) <= graphPotential (716 : State)
        decide
    ·
      simp [graphSmokeNext_s0716, h_l0000, h_l0013] at h

theorem valid_s0717 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (717 : State) label t gain ->
      gain + graphPotential t <= graphPotential (717 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0717 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0717] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (782 : State) <= graphPotential (717 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0717] at h
      rcases h with ⟨rfl, rfl⟩
      change (81 : Int) + graphPotential (763 : State) <= graphPotential (717 : State)
      decide
    ·
      simp [graphSmokeNext_s0717, h_l0005, h_l0011] at h

theorem transition_ok_s0717 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (717 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (717 : State) := by
  intro h
  change graphSmokeNext_s0717 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0717] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (782 : State) <= graphPotential (717 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0717] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (81 : Int) + graphPotential (763 : State) <= graphPotential (717 : State)
        decide
    ·
      simp [graphSmokeNext_s0717, h_l0005, h_l0011] at h

theorem valid_s0718 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (718 : State) label t gain ->
      gain + graphPotential t <= graphPotential (718 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0718 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0718] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (783 : State) <= graphPotential (718 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0718] at h
      rcases h with ⟨rfl, rfl⟩
      change (81 : Int) + graphPotential (764 : State) <= graphPotential (718 : State)
      decide
    ·
      simp [graphSmokeNext_s0718, h_l0005, h_l0011] at h

theorem transition_ok_s0718 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (718 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (718 : State) := by
  intro h
  change graphSmokeNext_s0718 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0718] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (783 : State) <= graphPotential (718 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0718] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (81 : Int) + graphPotential (764 : State) <= graphPotential (718 : State)
        decide
    ·
      simp [graphSmokeNext_s0718, h_l0005, h_l0011] at h

theorem valid_s0719 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (719 : State) label t gain ->
      gain + graphPotential t <= graphPotential (719 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0719 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0719] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (784 : State) <= graphPotential (719 : State)
    decide
  ·
    simp [graphSmokeNext_s0719, h_l0005] at h

theorem transition_ok_s0719 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (719 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (719 : State) := by
  intro h
  change graphSmokeNext_s0719 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0719] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (784 : State) <= graphPotential (719 : State)
      decide
  ·
    simp [graphSmokeNext_s0719, h_l0005] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 712 <= s) (hhi : s < 720) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0712 h
  · exact valid_s0713 h
  · exact valid_s0714 h
  · exact valid_s0715 h
  · exact valid_s0716 h
  · exact valid_s0717 h
  · exact valid_s0718 h
  · exact valid_s0719 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 712 <= s) (hhi : s < 720) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0712 h
  · exact transition_ok_s0713 h
  · exact transition_ok_s0714 h
  · exact transition_ok_s0715 h
  · exact transition_ok_s0716 h
  · exact transition_ok_s0717 h
  · exact transition_ok_s0718 h
  · exact transition_ok_s0719 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard089
