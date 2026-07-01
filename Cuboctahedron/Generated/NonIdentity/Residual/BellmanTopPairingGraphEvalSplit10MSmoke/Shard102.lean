import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard102

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [816, 824). -/
theorem valid_s0816 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (816 : State) label t gain ->
      gain + graphPotential t <= graphPotential (816 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0816 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0816] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (903 : State) <= graphPotential (816 : State)
    decide
  ·
    simp [graphSmokeNext_s0816, h_l0003] at h

theorem transition_ok_s0816 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (816 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (816 : State) := by
  intro h
  change graphSmokeNext_s0816 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0816] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (903 : State) <= graphPotential (816 : State)
      decide
  ·
    simp [graphSmokeNext_s0816, h_l0003] at h

theorem valid_s0817 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (817 : State) label t gain ->
      gain + graphPotential t <= graphPotential (817 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0817 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0817] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (904 : State) <= graphPotential (817 : State)
    decide
  ·
    simp [graphSmokeNext_s0817, h_l0003] at h

theorem transition_ok_s0817 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (817 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (817 : State) := by
  intro h
  change graphSmokeNext_s0817 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0817] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (904 : State) <= graphPotential (817 : State)
      decide
  ·
    simp [graphSmokeNext_s0817, h_l0003] at h

theorem valid_s0818 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (818 : State) label t gain ->
      gain + graphPotential t <= graphPotential (818 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0818 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0818] at h
    rcases h with ⟨rfl, rfl⟩
    change (90 : Int) + graphPotential (876 : State) <= graphPotential (818 : State)
    decide
  ·
    simp [graphSmokeNext_s0818, h_l0012] at h

theorem transition_ok_s0818 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (818 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (818 : State) := by
  intro h
  change graphSmokeNext_s0818 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0818] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (90 : Int) + graphPotential (876 : State) <= graphPotential (818 : State)
      decide
  ·
    simp [graphSmokeNext_s0818, h_l0012] at h

theorem valid_s0819 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (819 : State) label t gain ->
      gain + graphPotential t <= graphPotential (819 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0819 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0819] at h
    rcases h with ⟨rfl, rfl⟩
    change (90 : Int) + graphPotential (881 : State) <= graphPotential (819 : State)
    decide
  ·
    simp [graphSmokeNext_s0819, h_l0012] at h

theorem transition_ok_s0819 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (819 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (819 : State) := by
  intro h
  change graphSmokeNext_s0819 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0819] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (90 : Int) + graphPotential (881 : State) <= graphPotential (819 : State)
      decide
  ·
    simp [graphSmokeNext_s0819, h_l0012] at h

theorem valid_s0820 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (820 : State) label t gain ->
      gain + graphPotential t <= graphPotential (820 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0820 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0820] at h
    rcases h with ⟨rfl, rfl⟩
    change (90 : Int) + graphPotential (883 : State) <= graphPotential (820 : State)
    decide
  ·
    simp [graphSmokeNext_s0820, h_l0012] at h

theorem transition_ok_s0820 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (820 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (820 : State) := by
  intro h
  change graphSmokeNext_s0820 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0820] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (90 : Int) + graphPotential (883 : State) <= graphPotential (820 : State)
      decide
  ·
    simp [graphSmokeNext_s0820, h_l0012] at h

theorem valid_s0821 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (821 : State) label t gain ->
      gain + graphPotential t <= graphPotential (821 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0821 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0821] at h
    rcases h with ⟨rfl, rfl⟩
    change (90 : Int) + graphPotential (885 : State) <= graphPotential (821 : State)
    decide
  ·
    simp [graphSmokeNext_s0821, h_l0012] at h

theorem transition_ok_s0821 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (821 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (821 : State) := by
  intro h
  change graphSmokeNext_s0821 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0821] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (90 : Int) + graphPotential (885 : State) <= graphPotential (821 : State)
      decide
  ·
    simp [graphSmokeNext_s0821, h_l0012] at h

theorem valid_s0822 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (822 : State) label t gain ->
      gain + graphPotential t <= graphPotential (822 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0822 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0822] at h
    rcases h with ⟨rfl, rfl⟩
    change (90 : Int) + graphPotential (887 : State) <= graphPotential (822 : State)
    decide
  ·
    simp [graphSmokeNext_s0822, h_l0012] at h

theorem transition_ok_s0822 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (822 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (822 : State) := by
  intro h
  change graphSmokeNext_s0822 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0822] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (90 : Int) + graphPotential (887 : State) <= graphPotential (822 : State)
      decide
  ·
    simp [graphSmokeNext_s0822, h_l0012] at h

theorem valid_s0823 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (823 : State) label t gain ->
      gain + graphPotential t <= graphPotential (823 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0823 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0823] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (914 : State) <= graphPotential (823 : State)
    decide
  ·
    simp [graphSmokeNext_s0823, h_l0003] at h

theorem transition_ok_s0823 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (823 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (823 : State) := by
  intro h
  change graphSmokeNext_s0823 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0823] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (914 : State) <= graphPotential (823 : State)
      decide
  ·
    simp [graphSmokeNext_s0823, h_l0003] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 816 <= s) (hhi : s < 824) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0816 h
  · exact valid_s0817 h
  · exact valid_s0818 h
  · exact valid_s0819 h
  · exact valid_s0820 h
  · exact valid_s0821 h
  · exact valid_s0822 h
  · exact valid_s0823 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 816 <= s) (hhi : s < 824) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0816 h
  · exact transition_ok_s0817 h
  · exact transition_ok_s0818 h
  · exact transition_ok_s0819 h
  · exact transition_ok_s0820 h
  · exact transition_ok_s0821 h
  · exact transition_ok_s0822 h
  · exact transition_ok_s0823 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard102
