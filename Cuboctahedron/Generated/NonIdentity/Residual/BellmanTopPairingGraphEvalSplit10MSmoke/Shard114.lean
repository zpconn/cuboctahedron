import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard114

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [912, 920). -/
theorem valid_s0912 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (912 : State) label t gain ->
      gain + graphPotential t <= graphPotential (912 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0912 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0912] at h
    rcases h with ⟨rfl, rfl⟩
    change (-54 : Int) + graphPotential (27 : State) <= graphPotential (912 : State)
    decide
  ·
    simp [graphSmokeNext_s0912, h_l0012] at h

theorem transition_ok_s0912 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (912 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (912 : State) := by
  intro h
  change graphSmokeNext_s0912 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0912] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-54 : Int) + graphPotential (27 : State) <= graphPotential (912 : State)
      decide
  ·
    simp [graphSmokeNext_s0912, h_l0012] at h

theorem valid_s0913 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (913 : State) label t gain ->
      gain + graphPotential t <= graphPotential (913 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0913 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0913] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (50 : State) <= graphPotential (913 : State)
    decide
  ·
    simp [graphSmokeNext_s0913, h_l0006] at h

theorem transition_ok_s0913 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (913 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (913 : State) := by
  intro h
  change graphSmokeNext_s0913 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0913] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (50 : State) <= graphPotential (913 : State)
      decide
  ·
    simp [graphSmokeNext_s0913, h_l0006] at h

theorem valid_s0914 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (914 : State) label t gain ->
      gain + graphPotential t <= graphPotential (914 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0914 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0914] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (51 : State) <= graphPotential (914 : State)
    decide
  ·
    simp [graphSmokeNext_s0914, h_l0006] at h

theorem transition_ok_s0914 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (914 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (914 : State) := by
  intro h
  change graphSmokeNext_s0914 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0914] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (51 : State) <= graphPotential (914 : State)
      decide
  ·
    simp [graphSmokeNext_s0914, h_l0006] at h

theorem valid_s0915 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (915 : State) label t gain ->
      gain + graphPotential t <= graphPotential (915 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0915 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0915] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (52 : State) <= graphPotential (915 : State)
    decide
  ·
    simp [graphSmokeNext_s0915, h_l0006] at h

theorem transition_ok_s0915 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (915 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (915 : State) := by
  intro h
  change graphSmokeNext_s0915 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0915] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (52 : State) <= graphPotential (915 : State)
      decide
  ·
    simp [graphSmokeNext_s0915, h_l0006] at h

theorem valid_s0916 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (916 : State) label t gain ->
      gain + graphPotential t <= graphPotential (916 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0916 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0916] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (53 : State) <= graphPotential (916 : State)
    decide
  ·
    simp [graphSmokeNext_s0916, h_l0006] at h

theorem transition_ok_s0916 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (916 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (916 : State) := by
  intro h
  change graphSmokeNext_s0916 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0916] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (53 : State) <= graphPotential (916 : State)
      decide
  ·
    simp [graphSmokeNext_s0916, h_l0006] at h

theorem valid_s0917 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (917 : State) label t gain ->
      gain + graphPotential t <= graphPotential (917 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0917 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0917] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (54 : State) <= graphPotential (917 : State)
    decide
  ·
    simp [graphSmokeNext_s0917, h_l0006] at h

theorem transition_ok_s0917 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (917 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (917 : State) := by
  intro h
  change graphSmokeNext_s0917 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0917] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (54 : State) <= graphPotential (917 : State)
      decide
  ·
    simp [graphSmokeNext_s0917, h_l0006] at h

theorem valid_s0918 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (918 : State) label t gain ->
      gain + graphPotential t <= graphPotential (918 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0918 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0918] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (55 : State) <= graphPotential (918 : State)
    decide
  ·
    simp [graphSmokeNext_s0918, h_l0006] at h

theorem transition_ok_s0918 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (918 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (918 : State) := by
  intro h
  change graphSmokeNext_s0918 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0918] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (55 : State) <= graphPotential (918 : State)
      decide
  ·
    simp [graphSmokeNext_s0918, h_l0006] at h

theorem valid_s0919 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (919 : State) label t gain ->
      gain + graphPotential t <= graphPotential (919 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0919 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0919] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (56 : State) <= graphPotential (919 : State)
    decide
  ·
    simp [graphSmokeNext_s0919, h_l0006] at h

theorem transition_ok_s0919 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (919 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (919 : State) := by
  intro h
  change graphSmokeNext_s0919 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0919] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (56 : State) <= graphPotential (919 : State)
      decide
  ·
    simp [graphSmokeNext_s0919, h_l0006] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 912 <= s) (hhi : s < 920) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0912 h
  · exact valid_s0913 h
  · exact valid_s0914 h
  · exact valid_s0915 h
  · exact valid_s0916 h
  · exact valid_s0917 h
  · exact valid_s0918 h
  · exact valid_s0919 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 912 <= s) (hhi : s < 920) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0912 h
  · exact transition_ok_s0913 h
  · exact transition_ok_s0914 h
  · exact transition_ok_s0915 h
  · exact transition_ok_s0916 h
  · exact transition_ok_s0917 h
  · exact transition_ok_s0918 h
  · exact transition_ok_s0919 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard114
