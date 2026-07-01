import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard096

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [768, 776). -/
theorem valid_s0768 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (768 : State) label t gain ->
      gain + graphPotential t <= graphPotential (768 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0768 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0768] at h
    rcases h with ⟨rfl, rfl⟩
    change (81 : Int) + graphPotential (811 : State) <= graphPotential (768 : State)
    decide
  ·
    simp [graphSmokeNext_s0768, h_l0010] at h

theorem transition_ok_s0768 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (768 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (768 : State) := by
  intro h
  change graphSmokeNext_s0768 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0768] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (81 : Int) + graphPotential (811 : State) <= graphPotential (768 : State)
      decide
  ·
    simp [graphSmokeNext_s0768, h_l0010] at h

theorem valid_s0769 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (769 : State) label t gain ->
      gain + graphPotential t <= graphPotential (769 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0769 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0769] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (846 : State) <= graphPotential (769 : State)
    decide
  ·
    simp [graphSmokeNext_s0769, h_l0007] at h

theorem transition_ok_s0769 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (769 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (769 : State) := by
  intro h
  change graphSmokeNext_s0769 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0769] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (846 : State) <= graphPotential (769 : State)
      decide
  ·
    simp [graphSmokeNext_s0769, h_l0007] at h

theorem valid_s0770 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (770 : State) label t gain ->
      gain + graphPotential t <= graphPotential (770 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0770 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0770] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (847 : State) <= graphPotential (770 : State)
    decide
  ·
    simp [graphSmokeNext_s0770, h_l0007] at h

theorem transition_ok_s0770 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (770 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (770 : State) := by
  intro h
  change graphSmokeNext_s0770 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0770] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (847 : State) <= graphPotential (770 : State)
      decide
  ·
    simp [graphSmokeNext_s0770, h_l0007] at h

theorem valid_s0771 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (771 : State) label t gain ->
      gain + graphPotential t <= graphPotential (771 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0771 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0771] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (848 : State) <= graphPotential (771 : State)
    decide
  ·
    simp [graphSmokeNext_s0771, h_l0007] at h

theorem transition_ok_s0771 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (771 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (771 : State) := by
  intro h
  change graphSmokeNext_s0771 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0771] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (848 : State) <= graphPotential (771 : State)
      decide
  ·
    simp [graphSmokeNext_s0771, h_l0007] at h

theorem valid_s0772 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (772 : State) label t gain ->
      gain + graphPotential t <= graphPotential (772 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0772 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0772] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (850 : State) <= graphPotential (772 : State)
    decide
  ·
    simp [graphSmokeNext_s0772, h_l0007] at h

theorem transition_ok_s0772 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (772 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (772 : State) := by
  intro h
  change graphSmokeNext_s0772 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0772] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (850 : State) <= graphPotential (772 : State)
      decide
  ·
    simp [graphSmokeNext_s0772, h_l0007] at h

theorem valid_s0773 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (773 : State) label t gain ->
      gain + graphPotential t <= graphPotential (773 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0773 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0773] at h
    rcases h with ⟨rfl, rfl⟩
    change (-63 : Int) + graphPotential (815 : State) <= graphPotential (773 : State)
    decide
  ·
    simp [graphSmokeNext_s0773, h_l0010] at h

theorem transition_ok_s0773 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (773 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (773 : State) := by
  intro h
  change graphSmokeNext_s0773 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0773] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-63 : Int) + graphPotential (815 : State) <= graphPotential (773 : State)
      decide
  ·
    simp [graphSmokeNext_s0773, h_l0010] at h

theorem valid_s0774 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (774 : State) label t gain ->
      gain + graphPotential t <= graphPotential (774 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0774 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0774] at h
    rcases h with ⟨rfl, rfl⟩
    change (-63 : Int) + graphPotential (818 : State) <= graphPotential (774 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0774] at h
      rcases h with ⟨rfl, rfl⟩
      change (90 : Int) + graphPotential (840 : State) <= graphPotential (774 : State)
      decide
    ·
      simp [graphSmokeNext_s0774, h_l0010, h_l0012] at h

theorem transition_ok_s0774 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (774 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (774 : State) := by
  intro h
  change graphSmokeNext_s0774 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0774] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-63 : Int) + graphPotential (818 : State) <= graphPotential (774 : State)
      decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0774] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (90 : Int) + graphPotential (840 : State) <= graphPotential (774 : State)
        decide
    ·
      simp [graphSmokeNext_s0774, h_l0010, h_l0012] at h

theorem valid_s0775 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (775 : State) label t gain ->
      gain + graphPotential t <= graphPotential (775 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0775 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0775] at h
    rcases h with ⟨rfl, rfl⟩
    change (-63 : Int) + graphPotential (819 : State) <= graphPotential (775 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0775] at h
      rcases h with ⟨rfl, rfl⟩
      change (90 : Int) + graphPotential (843 : State) <= graphPotential (775 : State)
      decide
    ·
      simp [graphSmokeNext_s0775, h_l0010, h_l0012] at h

theorem transition_ok_s0775 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (775 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (775 : State) := by
  intro h
  change graphSmokeNext_s0775 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0775] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-63 : Int) + graphPotential (819 : State) <= graphPotential (775 : State)
      decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0775] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (90 : Int) + graphPotential (843 : State) <= graphPotential (775 : State)
        decide
    ·
      simp [graphSmokeNext_s0775, h_l0010, h_l0012] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 768 <= s) (hhi : s < 776) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0768 h
  · exact valid_s0769 h
  · exact valid_s0770 h
  · exact valid_s0771 h
  · exact valid_s0772 h
  · exact valid_s0773 h
  · exact valid_s0774 h
  · exact valid_s0775 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 768 <= s) (hhi : s < 776) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0768 h
  · exact transition_ok_s0769 h
  · exact transition_ok_s0770 h
  · exact transition_ok_s0771 h
  · exact transition_ok_s0772 h
  · exact transition_ok_s0773 h
  · exact transition_ok_s0774 h
  · exact transition_ok_s0775 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard096
