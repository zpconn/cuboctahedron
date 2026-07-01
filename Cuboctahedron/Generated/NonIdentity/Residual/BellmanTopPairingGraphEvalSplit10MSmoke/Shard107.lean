import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard107

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [856, 864). -/
theorem valid_s0856 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (856 : State) label t gain ->
      gain + graphPotential t <= graphPotential (856 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0856 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0856] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (947 : State) <= graphPotential (856 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0856] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (928 : State) <= graphPotential (856 : State)
      decide
    ·
      by_cases h_l0013 : label = (13 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0856] at h
        rcases h with ⟨rfl, rfl⟩
        change (-18 : Int) + graphPotential (942 : State) <= graphPotential (856 : State)
        decide
      ·
        simp [graphSmokeNext_s0856, h_l0001, h_l0011, h_l0013] at h

theorem transition_ok_s0856 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (856 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (856 : State) := by
  intro h
  change graphSmokeNext_s0856 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0856] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (947 : State) <= graphPotential (856 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0856] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (928 : State) <= graphPotential (856 : State)
        decide
    ·
      by_cases h_l0013 : label = (13 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0856] at h
        rcases h with ⟨rfl, rfl⟩
        constructor
        · decide
        · change (-18 : Int) + graphPotential (942 : State) <= graphPotential (856 : State)
          decide
      ·
        simp [graphSmokeNext_s0856, h_l0001, h_l0011, h_l0013] at h

theorem valid_s0857 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (857 : State) label t gain ->
      gain + graphPotential t <= graphPotential (857 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0857 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0857] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (950 : State) <= graphPotential (857 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0857] at h
      rcases h with ⟨rfl, rfl⟩
      change (81 : Int) + graphPotential (937 : State) <= graphPotential (857 : State)
      decide
    ·
      simp [graphSmokeNext_s0857, h_l0007, h_l0011] at h

theorem transition_ok_s0857 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (857 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (857 : State) := by
  intro h
  change graphSmokeNext_s0857 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0857] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (950 : State) <= graphPotential (857 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0857] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (81 : Int) + graphPotential (937 : State) <= graphPotential (857 : State)
        decide
    ·
      simp [graphSmokeNext_s0857, h_l0007, h_l0011] at h

theorem valid_s0858 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (858 : State) label t gain ->
      gain + graphPotential t <= graphPotential (858 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0858 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0858] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (951 : State) <= graphPotential (858 : State)
    decide
  ·
    simp [graphSmokeNext_s0858, h_l0007] at h

theorem transition_ok_s0858 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (858 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (858 : State) := by
  intro h
  change graphSmokeNext_s0858 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0858] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (951 : State) <= graphPotential (858 : State)
      decide
  ·
    simp [graphSmokeNext_s0858, h_l0007] at h

theorem valid_s0859 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (859 : State) label t gain ->
      gain + graphPotential t <= graphPotential (859 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0859 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0859] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (952 : State) <= graphPotential (859 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0859] at h
      rcases h with ⟨rfl, rfl⟩
      change (81 : Int) + graphPotential (938 : State) <= graphPotential (859 : State)
      decide
    ·
      simp [graphSmokeNext_s0859, h_l0007, h_l0011] at h

theorem transition_ok_s0859 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (859 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (859 : State) := by
  intro h
  change graphSmokeNext_s0859 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0859] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (952 : State) <= graphPotential (859 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0859] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (81 : Int) + graphPotential (938 : State) <= graphPotential (859 : State)
        decide
    ·
      simp [graphSmokeNext_s0859, h_l0007, h_l0011] at h

theorem valid_s0860 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (860 : State) label t gain ->
      gain + graphPotential t <= graphPotential (860 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0860 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0860] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (953 : State) <= graphPotential (860 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0860] at h
      rcases h with ⟨rfl, rfl⟩
      change (81 : Int) + graphPotential (939 : State) <= graphPotential (860 : State)
      decide
    ·
      simp [graphSmokeNext_s0860, h_l0007, h_l0011] at h

theorem transition_ok_s0860 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (860 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (860 : State) := by
  intro h
  change graphSmokeNext_s0860 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0860] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (953 : State) <= graphPotential (860 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0860] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (81 : Int) + graphPotential (939 : State) <= graphPotential (860 : State)
        decide
    ·
      simp [graphSmokeNext_s0860, h_l0007, h_l0011] at h

theorem valid_s0861 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (861 : State) label t gain ->
      gain + graphPotential t <= graphPotential (861 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0861 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0861] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (954 : State) <= graphPotential (861 : State)
    decide
  ·
    simp [graphSmokeNext_s0861, h_l0007] at h

theorem transition_ok_s0861 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (861 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (861 : State) := by
  intro h
  change graphSmokeNext_s0861 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0861] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (954 : State) <= graphPotential (861 : State)
      decide
  ·
    simp [graphSmokeNext_s0861, h_l0007] at h

theorem valid_s0862 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (862 : State) label t gain ->
      gain + graphPotential t <= graphPotential (862 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0862 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0862] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (955 : State) <= graphPotential (862 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0862] at h
      rcases h with ⟨rfl, rfl⟩
      change (81 : Int) + graphPotential (940 : State) <= graphPotential (862 : State)
      decide
    ·
      simp [graphSmokeNext_s0862, h_l0007, h_l0011] at h

theorem transition_ok_s0862 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (862 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (862 : State) := by
  intro h
  change graphSmokeNext_s0862 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0862] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (955 : State) <= graphPotential (862 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0862] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (81 : Int) + graphPotential (940 : State) <= graphPotential (862 : State)
        decide
    ·
      simp [graphSmokeNext_s0862, h_l0007, h_l0011] at h

theorem valid_s0863 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (863 : State) label t gain ->
      gain + graphPotential t <= graphPotential (863 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0863 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0863] at h
    rcases h with ⟨rfl, rfl⟩
    change (-117 : Int) + graphPotential (941 : State) <= graphPotential (863 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0863] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (949 : State) <= graphPotential (863 : State)
      decide
    ·
      simp [graphSmokeNext_s0863, h_l0010, h_l0012] at h

theorem transition_ok_s0863 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (863 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (863 : State) := by
  intro h
  change graphSmokeNext_s0863 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0863] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-117 : Int) + graphPotential (941 : State) <= graphPotential (863 : State)
      decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0863] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-18 : Int) + graphPotential (949 : State) <= graphPotential (863 : State)
        decide
    ·
      simp [graphSmokeNext_s0863, h_l0010, h_l0012] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 856 <= s) (hhi : s < 864) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0856 h
  · exact valid_s0857 h
  · exact valid_s0858 h
  · exact valid_s0859 h
  · exact valid_s0860 h
  · exact valid_s0861 h
  · exact valid_s0862 h
  · exact valid_s0863 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 856 <= s) (hhi : s < 864) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0856 h
  · exact transition_ok_s0857 h
  · exact transition_ok_s0858 h
  · exact transition_ok_s0859 h
  · exact transition_ok_s0860 h
  · exact transition_ok_s0861 h
  · exact transition_ok_s0862 h
  · exact transition_ok_s0863 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard107
