import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard092

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [736, 744). -/
theorem valid_s0736 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (736 : State) label t gain ->
      gain + graphPotential t <= graphPotential (736 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0736 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0736] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (808 : State) <= graphPotential (736 : State)
    decide
  ·
    simp [graphSmokeNext_s0736, h_l0006] at h

theorem transition_ok_s0736 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (736 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (736 : State) := by
  intro h
  change graphSmokeNext_s0736 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0736] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (808 : State) <= graphPotential (736 : State)
      decide
  ·
    simp [graphSmokeNext_s0736, h_l0006] at h

theorem valid_s0737 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (737 : State) label t gain ->
      gain + graphPotential t <= graphPotential (737 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0737 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0737] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (810 : State) <= graphPotential (737 : State)
    decide
  ·
    simp [graphSmokeNext_s0737, h_l0006] at h

theorem transition_ok_s0737 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (737 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (737 : State) := by
  intro h
  change graphSmokeNext_s0737 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0737] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (810 : State) <= graphPotential (737 : State)
      decide
  ·
    simp [graphSmokeNext_s0737, h_l0006] at h

theorem valid_s0738 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (738 : State) label t gain ->
      gain + graphPotential t <= graphPotential (738 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0738 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0738] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (812 : State) <= graphPotential (738 : State)
    decide
  ·
    simp [graphSmokeNext_s0738, h_l0006] at h

theorem transition_ok_s0738 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (738 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (738 : State) := by
  intro h
  change graphSmokeNext_s0738 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0738] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (812 : State) <= graphPotential (738 : State)
      decide
  ·
    simp [graphSmokeNext_s0738, h_l0006] at h

theorem valid_s0739 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (739 : State) label t gain ->
      gain + graphPotential t <= graphPotential (739 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0739 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0739] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (813 : State) <= graphPotential (739 : State)
    decide
  ·
    simp [graphSmokeNext_s0739, h_l0006] at h

theorem transition_ok_s0739 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (739 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (739 : State) := by
  intro h
  change graphSmokeNext_s0739 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0739] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (813 : State) <= graphPotential (739 : State)
      decide
  ·
    simp [graphSmokeNext_s0739, h_l0006] at h

theorem valid_s0740 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (740 : State) label t gain ->
      gain + graphPotential t <= graphPotential (740 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0740 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0740] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (814 : State) <= graphPotential (740 : State)
    decide
  ·
    simp [graphSmokeNext_s0740, h_l0006] at h

theorem transition_ok_s0740 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (740 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (740 : State) := by
  intro h
  change graphSmokeNext_s0740 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0740] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (814 : State) <= graphPotential (740 : State)
      decide
  ·
    simp [graphSmokeNext_s0740, h_l0006] at h

theorem valid_s0741 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (741 : State) label t gain ->
      gain + graphPotential t <= graphPotential (741 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0741 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0741] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (816 : State) <= graphPotential (741 : State)
    decide
  ·
    simp [graphSmokeNext_s0741, h_l0004] at h

theorem transition_ok_s0741 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (741 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (741 : State) := by
  intro h
  change graphSmokeNext_s0741 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0741] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (816 : State) <= graphPotential (741 : State)
      decide
  ·
    simp [graphSmokeNext_s0741, h_l0004] at h

theorem valid_s0742 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (742 : State) label t gain ->
      gain + graphPotential t <= graphPotential (742 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0742 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0742] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (817 : State) <= graphPotential (742 : State)
    decide
  ·
    simp [graphSmokeNext_s0742, h_l0004] at h

theorem transition_ok_s0742 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (742 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (742 : State) := by
  intro h
  change graphSmokeNext_s0742 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0742] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (817 : State) <= graphPotential (742 : State)
      decide
  ·
    simp [graphSmokeNext_s0742, h_l0004] at h

theorem valid_s0743 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (743 : State) label t gain ->
      gain + graphPotential t <= graphPotential (743 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0743 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0743] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (821 : State) <= graphPotential (743 : State)
    decide
  ·
    simp [graphSmokeNext_s0743, h_l0004] at h

theorem transition_ok_s0743 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (743 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (743 : State) := by
  intro h
  change graphSmokeNext_s0743 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0743] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (821 : State) <= graphPotential (743 : State)
      decide
  ·
    simp [graphSmokeNext_s0743, h_l0004] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 736 <= s) (hhi : s < 744) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0736 h
  · exact valid_s0737 h
  · exact valid_s0738 h
  · exact valid_s0739 h
  · exact valid_s0740 h
  · exact valid_s0741 h
  · exact valid_s0742 h
  · exact valid_s0743 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 736 <= s) (hhi : s < 744) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0736 h
  · exact transition_ok_s0737 h
  · exact transition_ok_s0738 h
  · exact transition_ok_s0739 h
  · exact transition_ok_s0740 h
  · exact transition_ok_s0741 h
  · exact transition_ok_s0742 h
  · exact transition_ok_s0743 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard092
