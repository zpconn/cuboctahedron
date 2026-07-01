import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard118

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [944, 952). -/
theorem valid_s0944 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (944 : State) label t gain ->
      gain + graphPotential t <= graphPotential (944 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0944 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0944] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (84 : State) <= graphPotential (944 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0944] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (49 : State) <= graphPotential (944 : State)
      decide
    ·
      simp [graphSmokeNext_s0944, h_l0000, h_l0011] at h

theorem transition_ok_s0944 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (944 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (944 : State) := by
  intro h
  change graphSmokeNext_s0944 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0944] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (84 : State) <= graphPotential (944 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0944] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (49 : State) <= graphPotential (944 : State)
        decide
    ·
      simp [graphSmokeNext_s0944, h_l0000, h_l0011] at h

theorem valid_s0945 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (945 : State) label t gain ->
      gain + graphPotential t <= graphPotential (945 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0945 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0945] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (85 : State) <= graphPotential (945 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0945] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (57 : State) <= graphPotential (945 : State)
      decide
    ·
      simp [graphSmokeNext_s0945, h_l0000, h_l0011] at h

theorem transition_ok_s0945 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (945 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (945 : State) := by
  intro h
  change graphSmokeNext_s0945 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0945] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (85 : State) <= graphPotential (945 : State)
      decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0945] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (57 : State) <= graphPotential (945 : State)
        decide
    ·
      simp [graphSmokeNext_s0945, h_l0000, h_l0011] at h

theorem valid_s0946 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (946 : State) label t gain ->
      gain + graphPotential t <= graphPotential (946 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0946 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0946] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (90 : State) <= graphPotential (946 : State)
    decide
  ·
    simp [graphSmokeNext_s0946, h_l0003] at h

theorem transition_ok_s0946 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (946 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (946 : State) := by
  intro h
  change graphSmokeNext_s0946 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0946] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (90 : State) <= graphPotential (946 : State)
      decide
  ·
    simp [graphSmokeNext_s0946, h_l0003] at h

theorem valid_s0947 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (947 : State) label t gain ->
      gain + graphPotential t <= graphPotential (947 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0947 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0947] at h
    rcases h with ⟨rfl, rfl⟩
    change (-124 : Int) + graphPotential (91 : State) <= graphPotential (947 : State)
    decide
  ·
    simp [graphSmokeNext_s0947, h_l0003] at h

theorem transition_ok_s0947 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (947 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (947 : State) := by
  intro h
  change graphSmokeNext_s0947 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0947] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-124 : Int) + graphPotential (91 : State) <= graphPotential (947 : State)
      decide
  ·
    simp [graphSmokeNext_s0947, h_l0003] at h

theorem valid_s0948 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (948 : State) label t gain ->
      gain + graphPotential t <= graphPotential (948 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0948 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0948] at h
    rcases h with ⟨rfl, rfl⟩
    change (-21 : Int) + graphPotential (59 : State) <= graphPotential (948 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0948] at h
      rcases h with ⟨rfl, rfl⟩
      change (114 : Int) + graphPotential (86 : State) <= graphPotential (948 : State)
      decide
    ·
      simp [graphSmokeNext_s0948, h_l0011, h_l0012] at h

theorem transition_ok_s0948 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (948 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (948 : State) := by
  intro h
  change graphSmokeNext_s0948 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0948] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-21 : Int) + graphPotential (59 : State) <= graphPotential (948 : State)
      decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0948] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (114 : Int) + graphPotential (86 : State) <= graphPotential (948 : State)
        decide
    ·
      simp [graphSmokeNext_s0948, h_l0011, h_l0012] at h

theorem valid_s0949 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (949 : State) label t gain ->
      gain + graphPotential t <= graphPotential (949 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0949 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0949] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (93 : State) <= graphPotential (949 : State)
    decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0949] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (70 : State) <= graphPotential (949 : State)
      decide
    ·
      simp [graphSmokeNext_s0949, h_l0003, h_l0010] at h

theorem transition_ok_s0949 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (949 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (949 : State) := by
  intro h
  change graphSmokeNext_s0949 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0949] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (93 : State) <= graphPotential (949 : State)
      decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0949] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (70 : State) <= graphPotential (949 : State)
        decide
    ·
      simp [graphSmokeNext_s0949, h_l0003, h_l0010] at h

theorem valid_s0950 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (950 : State) label t gain ->
      gain + graphPotential t <= graphPotential (950 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0950 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0950] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (94 : State) <= graphPotential (950 : State)
    decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0950] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (71 : State) <= graphPotential (950 : State)
      decide
    ·
      simp [graphSmokeNext_s0950, h_l0003, h_l0010] at h

theorem transition_ok_s0950 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (950 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (950 : State) := by
  intro h
  change graphSmokeNext_s0950 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0950] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (94 : State) <= graphPotential (950 : State)
      decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0950] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (71 : State) <= graphPotential (950 : State)
        decide
    ·
      simp [graphSmokeNext_s0950, h_l0003, h_l0010] at h

theorem valid_s0951 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (951 : State) label t gain ->
      gain + graphPotential t <= graphPotential (951 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0951 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0951] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (95 : State) <= graphPotential (951 : State)
    decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0951] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (72 : State) <= graphPotential (951 : State)
      decide
    ·
      simp [graphSmokeNext_s0951, h_l0003, h_l0010] at h

theorem transition_ok_s0951 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (951 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (951 : State) := by
  intro h
  change graphSmokeNext_s0951 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0951] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (96 : Int) + graphPotential (95 : State) <= graphPotential (951 : State)
      decide
  ·
    by_cases h_l0010 : label = (10 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0951] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-117 : Int) + graphPotential (72 : State) <= graphPotential (951 : State)
        decide
    ·
      simp [graphSmokeNext_s0951, h_l0003, h_l0010] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 944 <= s) (hhi : s < 952) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0944 h
  · exact valid_s0945 h
  · exact valid_s0946 h
  · exact valid_s0947 h
  · exact valid_s0948 h
  · exact valid_s0949 h
  · exact valid_s0950 h
  · exact valid_s0951 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 944 <= s) (hhi : s < 952) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0944 h
  · exact transition_ok_s0945 h
  · exact transition_ok_s0946 h
  · exact transition_ok_s0947 h
  · exact transition_ok_s0948 h
  · exact transition_ok_s0949 h
  · exact transition_ok_s0950 h
  · exact transition_ok_s0951 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard118
