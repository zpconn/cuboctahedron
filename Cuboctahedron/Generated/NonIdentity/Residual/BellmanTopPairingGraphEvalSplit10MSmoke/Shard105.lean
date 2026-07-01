import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard105

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [840, 848). -/
theorem valid_s0840 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (840 : State) label t gain ->
      gain + graphPotential t <= graphPotential (840 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0840 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0840] at h
    rcases h with ⟨rfl, rfl⟩
    change (-63 : Int) + graphPotential (876 : State) <= graphPotential (840 : State)
    decide
  ·
    simp [graphSmokeNext_s0840, h_l0010] at h

theorem transition_ok_s0840 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (840 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (840 : State) := by
  intro h
  change graphSmokeNext_s0840 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0840] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-63 : Int) + graphPotential (876 : State) <= graphPotential (840 : State)
      decide
  ·
    simp [graphSmokeNext_s0840, h_l0010] at h

theorem valid_s0841 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (841 : State) label t gain ->
      gain + graphPotential t <= graphPotential (841 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0841 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0841] at h
    rcases h with ⟨rfl, rfl⟩
    change (-63 : Int) + graphPotential (877 : State) <= graphPotential (841 : State)
    decide
  ·
    simp [graphSmokeNext_s0841, h_l0010] at h

theorem transition_ok_s0841 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (841 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (841 : State) := by
  intro h
  change graphSmokeNext_s0841 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0841] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-63 : Int) + graphPotential (877 : State) <= graphPotential (841 : State)
      decide
  ·
    simp [graphSmokeNext_s0841, h_l0010] at h

theorem valid_s0842 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (842 : State) label t gain ->
      gain + graphPotential t <= graphPotential (842 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0842 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0842] at h
    rcases h with ⟨rfl, rfl⟩
    change (-63 : Int) + graphPotential (879 : State) <= graphPotential (842 : State)
    decide
  ·
    simp [graphSmokeNext_s0842, h_l0010] at h

theorem transition_ok_s0842 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (842 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (842 : State) := by
  intro h
  change graphSmokeNext_s0842 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0842] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-63 : Int) + graphPotential (879 : State) <= graphPotential (842 : State)
      decide
  ·
    simp [graphSmokeNext_s0842, h_l0010] at h

theorem valid_s0843 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (843 : State) label t gain ->
      gain + graphPotential t <= graphPotential (843 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0843 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0843] at h
    rcases h with ⟨rfl, rfl⟩
    change (-63 : Int) + graphPotential (881 : State) <= graphPotential (843 : State)
    decide
  ·
    simp [graphSmokeNext_s0843, h_l0010] at h

theorem transition_ok_s0843 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (843 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (843 : State) := by
  intro h
  change graphSmokeNext_s0843 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0843] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-63 : Int) + graphPotential (881 : State) <= graphPotential (843 : State)
      decide
  ·
    simp [graphSmokeNext_s0843, h_l0010] at h

theorem valid_s0844 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (844 : State) label t gain ->
      gain + graphPotential t <= graphPotential (844 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0844 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0844] at h
    rcases h with ⟨rfl, rfl⟩
    change (-63 : Int) + graphPotential (887 : State) <= graphPotential (844 : State)
    decide
  ·
    simp [graphSmokeNext_s0844, h_l0010] at h

theorem transition_ok_s0844 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (844 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (844 : State) := by
  intro h
  change graphSmokeNext_s0844 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0844] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-63 : Int) + graphPotential (887 : State) <= graphPotential (844 : State)
      decide
  ·
    simp [graphSmokeNext_s0844, h_l0010] at h

theorem valid_s0845 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (845 : State) label t gain ->
      gain + graphPotential t <= graphPotential (845 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0845 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0845] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (932 : State) <= graphPotential (845 : State)
    decide
  ·
    simp [graphSmokeNext_s0845, h_l0000] at h

theorem transition_ok_s0845 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (845 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (845 : State) := by
  intro h
  change graphSmokeNext_s0845 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0845] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (932 : State) <= graphPotential (845 : State)
      decide
  ·
    simp [graphSmokeNext_s0845, h_l0000] at h

theorem valid_s0846 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (846 : State) label t gain ->
      gain + graphPotential t <= graphPotential (846 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0846 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0846] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (933 : State) <= graphPotential (846 : State)
    decide
  ·
    simp [graphSmokeNext_s0846, h_l0000] at h

theorem transition_ok_s0846 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (846 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (846 : State) := by
  intro h
  change graphSmokeNext_s0846 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0846] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (933 : State) <= graphPotential (846 : State)
      decide
  ·
    simp [graphSmokeNext_s0846, h_l0000] at h

theorem valid_s0847 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (847 : State) label t gain ->
      gain + graphPotential t <= graphPotential (847 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0847 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0847] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (934 : State) <= graphPotential (847 : State)
    decide
  ·
    simp [graphSmokeNext_s0847, h_l0000] at h

theorem transition_ok_s0847 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (847 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (847 : State) := by
  intro h
  change graphSmokeNext_s0847 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0847] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (934 : State) <= graphPotential (847 : State)
      decide
  ·
    simp [graphSmokeNext_s0847, h_l0000] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 840 <= s) (hhi : s < 848) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0840 h
  · exact valid_s0841 h
  · exact valid_s0842 h
  · exact valid_s0843 h
  · exact valid_s0844 h
  · exact valid_s0845 h
  · exact valid_s0846 h
  · exact valid_s0847 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 840 <= s) (hhi : s < 848) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0840 h
  · exact transition_ok_s0841 h
  · exact transition_ok_s0842 h
  · exact transition_ok_s0843 h
  · exact transition_ok_s0844 h
  · exact transition_ok_s0845 h
  · exact transition_ok_s0846 h
  · exact transition_ok_s0847 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard105
