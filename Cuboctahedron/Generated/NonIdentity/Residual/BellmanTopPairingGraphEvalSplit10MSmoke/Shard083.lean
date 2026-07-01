import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard083

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [664, 672). -/
theorem valid_s0664 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (664 : State) label t gain ->
      gain + graphPotential t <= graphPotential (664 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0664 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0664] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (704 : State) <= graphPotential (664 : State)
    decide
  ·
    simp [graphSmokeNext_s0664, h_l0012] at h

theorem transition_ok_s0664 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (664 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (664 : State) := by
  intro h
  change graphSmokeNext_s0664 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0664] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-18 : Int) + graphPotential (704 : State) <= graphPotential (664 : State)
      decide
  ·
    simp [graphSmokeNext_s0664, h_l0012] at h

theorem valid_s0665 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (665 : State) label t gain ->
      gain + graphPotential t <= graphPotential (665 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
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

theorem transition_ok_s0665 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (665 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (665 : State) := by
  intro h
  change graphSmokeNext_s0665 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0665] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (81 : Int) + graphPotential (694 : State) <= graphPotential (665 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0665] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-54 : Int) + graphPotential (710 : State) <= graphPotential (665 : State)
        decide
    ·
      simp [graphSmokeNext_s0665, h_l0010, h_l0013] at h

theorem valid_s0666 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (666 : State) label t gain ->
      gain + graphPotential t <= graphPotential (666 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
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

theorem transition_ok_s0666 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (666 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (666 : State) := by
  intro h
  change graphSmokeNext_s0666 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0666] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (81 : Int) + graphPotential (696 : State) <= graphPotential (666 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0666] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-54 : Int) + graphPotential (711 : State) <= graphPotential (666 : State)
        decide
    ·
      simp [graphSmokeNext_s0666, h_l0010, h_l0013] at h

theorem valid_s0667 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (667 : State) label t gain ->
      gain + graphPotential t <= graphPotential (667 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
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

theorem transition_ok_s0667 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (667 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (667 : State) := by
  intro h
  change graphSmokeNext_s0667 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0667] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (716 : State) <= graphPotential (667 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0667] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-54 : Int) + graphPotential (714 : State) <= graphPotential (667 : State)
        decide
    ·
      simp [graphSmokeNext_s0667, h_l0007, h_l0013] at h

theorem valid_s0668 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (668 : State) label t gain ->
      gain + graphPotential t <= graphPotential (668 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
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

theorem transition_ok_s0668 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (668 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (668 : State) := by
  intro h
  change graphSmokeNext_s0668 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0668] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (718 : State) <= graphPotential (668 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0668] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (45 : Int) + graphPotential (702 : State) <= graphPotential (668 : State)
        decide
    ·
      simp [graphSmokeNext_s0668, h_l0006, h_l0011] at h

theorem valid_s0669 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (669 : State) label t gain ->
      gain + graphPotential t <= graphPotential (669 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0669 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0669] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (719 : State) <= graphPotential (669 : State)
    decide
  ·
    simp [graphSmokeNext_s0669, h_l0006] at h

theorem transition_ok_s0669 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (669 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (669 : State) := by
  intro h
  change graphSmokeNext_s0669 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0669] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (719 : State) <= graphPotential (669 : State)
      decide
  ·
    simp [graphSmokeNext_s0669, h_l0006] at h

theorem valid_s0670 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (670 : State) label t gain ->
      gain + graphPotential t <= graphPotential (670 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
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

theorem transition_ok_s0670 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (670 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (670 : State) := by
  intro h
  change graphSmokeNext_s0670 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0670] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (720 : State) <= graphPotential (670 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0670] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (45 : Int) + graphPotential (703 : State) <= graphPotential (670 : State)
        decide
    ·
      simp [graphSmokeNext_s0670, h_l0006, h_l0011] at h

theorem valid_s0671 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (671 : State) label t gain ->
      gain + graphPotential t <= graphPotential (671 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0671 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0671] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (721 : State) <= graphPotential (671 : State)
    decide
  ·
    simp [graphSmokeNext_s0671, h_l0004] at h

theorem transition_ok_s0671 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (671 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (671 : State) := by
  intro h
  change graphSmokeNext_s0671 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0671] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (721 : State) <= graphPotential (671 : State)
      decide
  ·
    simp [graphSmokeNext_s0671, h_l0004] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 664 <= s) (hhi : s < 672) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0664 h
  · exact valid_s0665 h
  · exact valid_s0666 h
  · exact valid_s0667 h
  · exact valid_s0668 h
  · exact valid_s0669 h
  · exact valid_s0670 h
  · exact valid_s0671 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 664 <= s) (hhi : s < 672) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0664 h
  · exact transition_ok_s0665 h
  · exact transition_ok_s0666 h
  · exact transition_ok_s0667 h
  · exact transition_ok_s0668 h
  · exact transition_ok_s0669 h
  · exact transition_ok_s0670 h
  · exact transition_ok_s0671 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard083
