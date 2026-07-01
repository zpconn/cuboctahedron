import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard104

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [832, 840). -/
theorem valid_s0832 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (832 : State) label t gain ->
      gain + graphPotential t <= graphPotential (832 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0832 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0832] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (922 : State) <= graphPotential (832 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0832] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (905 : State) <= graphPotential (832 : State)
      decide
    ·
      simp [graphSmokeNext_s0832, h_l0007, h_l0013] at h

theorem transition_ok_s0832 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (832 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (832 : State) := by
  intro h
  change graphSmokeNext_s0832 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0832] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (922 : State) <= graphPotential (832 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0832] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-54 : Int) + graphPotential (905 : State) <= graphPotential (832 : State)
        decide
    ·
      simp [graphSmokeNext_s0832, h_l0007, h_l0013] at h

theorem valid_s0833 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (833 : State) label t gain ->
      gain + graphPotential t <= graphPotential (833 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0833 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0833] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (923 : State) <= graphPotential (833 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0833] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (906 : State) <= graphPotential (833 : State)
      decide
    ·
      simp [graphSmokeNext_s0833, h_l0007, h_l0013] at h

theorem transition_ok_s0833 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (833 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (833 : State) := by
  intro h
  change graphSmokeNext_s0833 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0833] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (923 : State) <= graphPotential (833 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0833] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-54 : Int) + graphPotential (906 : State) <= graphPotential (833 : State)
        decide
    ·
      simp [graphSmokeNext_s0833, h_l0007, h_l0013] at h

theorem valid_s0834 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (834 : State) label t gain ->
      gain + graphPotential t <= graphPotential (834 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0834 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0834] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (924 : State) <= graphPotential (834 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0834] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (907 : State) <= graphPotential (834 : State)
      decide
    ·
      simp [graphSmokeNext_s0834, h_l0007, h_l0013] at h

theorem transition_ok_s0834 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (834 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (834 : State) := by
  intro h
  change graphSmokeNext_s0834 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0834] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (924 : State) <= graphPotential (834 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0834] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-54 : Int) + graphPotential (907 : State) <= graphPotential (834 : State)
        decide
    ·
      simp [graphSmokeNext_s0834, h_l0007, h_l0013] at h

theorem valid_s0835 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (835 : State) label t gain ->
      gain + graphPotential t <= graphPotential (835 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0835 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0835] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (925 : State) <= graphPotential (835 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0835] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (908 : State) <= graphPotential (835 : State)
      decide
    ·
      simp [graphSmokeNext_s0835, h_l0007, h_l0013] at h

theorem transition_ok_s0835 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (835 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (835 : State) := by
  intro h
  change graphSmokeNext_s0835 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0835] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (925 : State) <= graphPotential (835 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0835] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-54 : Int) + graphPotential (908 : State) <= graphPotential (835 : State)
        decide
    ·
      simp [graphSmokeNext_s0835, h_l0007, h_l0013] at h

theorem valid_s0836 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (836 : State) label t gain ->
      gain + graphPotential t <= graphPotential (836 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0836 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0836] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (926 : State) <= graphPotential (836 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0836] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (909 : State) <= graphPotential (836 : State)
      decide
    ·
      simp [graphSmokeNext_s0836, h_l0007, h_l0013] at h

theorem transition_ok_s0836 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (836 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (836 : State) := by
  intro h
  change graphSmokeNext_s0836 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0836] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (926 : State) <= graphPotential (836 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0836] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-54 : Int) + graphPotential (909 : State) <= graphPotential (836 : State)
        decide
    ·
      simp [graphSmokeNext_s0836, h_l0007, h_l0013] at h

theorem valid_s0837 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (837 : State) label t gain ->
      gain + graphPotential t <= graphPotential (837 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0837 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0837] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (927 : State) <= graphPotential (837 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0837] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (910 : State) <= graphPotential (837 : State)
      decide
    ·
      simp [graphSmokeNext_s0837, h_l0007, h_l0013] at h

theorem transition_ok_s0837 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (837 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (837 : State) := by
  intro h
  change graphSmokeNext_s0837 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0837] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (927 : State) <= graphPotential (837 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0837] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-54 : Int) + graphPotential (910 : State) <= graphPotential (837 : State)
        decide
    ·
      simp [graphSmokeNext_s0837, h_l0007, h_l0013] at h

theorem valid_s0838 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (838 : State) label t gain ->
      gain + graphPotential t <= graphPotential (838 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0838 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0838] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (929 : State) <= graphPotential (838 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0838] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (911 : State) <= graphPotential (838 : State)
      decide
    ·
      simp [graphSmokeNext_s0838, h_l0007, h_l0013] at h

theorem transition_ok_s0838 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (838 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (838 : State) := by
  intro h
  change graphSmokeNext_s0838 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0838] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (929 : State) <= graphPotential (838 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0838] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-54 : Int) + graphPotential (911 : State) <= graphPotential (838 : State)
        decide
    ·
      simp [graphSmokeNext_s0838, h_l0007, h_l0013] at h

theorem valid_s0839 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (839 : State) label t gain ->
      gain + graphPotential t <= graphPotential (839 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0839 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0839] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (930 : State) <= graphPotential (839 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0839] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (912 : State) <= graphPotential (839 : State)
      decide
    ·
      simp [graphSmokeNext_s0839, h_l0007, h_l0013] at h

theorem transition_ok_s0839 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (839 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (839 : State) := by
  intro h
  change graphSmokeNext_s0839 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0839] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (930 : State) <= graphPotential (839 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0839] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-54 : Int) + graphPotential (912 : State) <= graphPotential (839 : State)
        decide
    ·
      simp [graphSmokeNext_s0839, h_l0007, h_l0013] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 832 <= s) (hhi : s < 840) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0832 h
  · exact valid_s0833 h
  · exact valid_s0834 h
  · exact valid_s0835 h
  · exact valid_s0836 h
  · exact valid_s0837 h
  · exact valid_s0838 h
  · exact valid_s0839 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 832 <= s) (hhi : s < 840) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0832 h
  · exact transition_ok_s0833 h
  · exact transition_ok_s0834 h
  · exact transition_ok_s0835 h
  · exact transition_ok_s0836 h
  · exact transition_ok_s0837 h
  · exact transition_ok_s0838 h
  · exact transition_ok_s0839 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard104
