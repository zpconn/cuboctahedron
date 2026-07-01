import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard112

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [896, 904). -/
theorem valid_s0896 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (896 : State) label t gain ->
      gain + graphPotential t <= graphPotential (896 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0896 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0896] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (29 : State) <= graphPotential (896 : State)
    decide
  ·
    simp [graphSmokeNext_s0896, h_l0002] at h

theorem transition_ok_s0896 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (896 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (896 : State) := by
  intro h
  change graphSmokeNext_s0896 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0896] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (29 : State) <= graphPotential (896 : State)
      decide
  ·
    simp [graphSmokeNext_s0896, h_l0002] at h

theorem valid_s0897 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (897 : State) label t gain ->
      gain + graphPotential t <= graphPotential (897 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0897 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0897] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (30 : State) <= graphPotential (897 : State)
    decide
  ·
    simp [graphSmokeNext_s0897, h_l0002] at h

theorem transition_ok_s0897 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (897 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (897 : State) := by
  intro h
  change graphSmokeNext_s0897 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0897] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (30 : State) <= graphPotential (897 : State)
      decide
  ·
    simp [graphSmokeNext_s0897, h_l0002] at h

theorem valid_s0898 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (898 : State) label t gain ->
      gain + graphPotential t <= graphPotential (898 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0898 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0898] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (31 : State) <= graphPotential (898 : State)
    decide
  ·
    simp [graphSmokeNext_s0898, h_l0002] at h

theorem transition_ok_s0898 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (898 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (898 : State) := by
  intro h
  change graphSmokeNext_s0898 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0898] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (31 : State) <= graphPotential (898 : State)
      decide
  ·
    simp [graphSmokeNext_s0898, h_l0002] at h

theorem valid_s0899 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (899 : State) label t gain ->
      gain + graphPotential t <= graphPotential (899 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0899 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0899] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (32 : State) <= graphPotential (899 : State)
    decide
  ·
    simp [graphSmokeNext_s0899, h_l0002] at h

theorem transition_ok_s0899 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (899 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (899 : State) := by
  intro h
  change graphSmokeNext_s0899 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0899] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (32 : State) <= graphPotential (899 : State)
      decide
  ·
    simp [graphSmokeNext_s0899, h_l0002] at h

theorem valid_s0900 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (900 : State) label t gain ->
      gain + graphPotential t <= graphPotential (900 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0900 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0900] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (33 : State) <= graphPotential (900 : State)
    decide
  ·
    simp [graphSmokeNext_s0900, h_l0002] at h

theorem transition_ok_s0900 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (900 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (900 : State) := by
  intro h
  change graphSmokeNext_s0900 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0900] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (33 : State) <= graphPotential (900 : State)
      decide
  ·
    simp [graphSmokeNext_s0900, h_l0002] at h

theorem valid_s0901 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (901 : State) label t gain ->
      gain + graphPotential t <= graphPotential (901 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0901 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0901] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (34 : State) <= graphPotential (901 : State)
    decide
  ·
    simp [graphSmokeNext_s0901, h_l0002] at h

theorem transition_ok_s0901 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (901 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (901 : State) := by
  intro h
  change graphSmokeNext_s0901 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0901] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (34 : State) <= graphPotential (901 : State)
      decide
  ·
    simp [graphSmokeNext_s0901, h_l0002] at h

theorem valid_s0902 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (902 : State) label t gain ->
      gain + graphPotential t <= graphPotential (902 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0902 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0902] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (46 : State) <= graphPotential (902 : State)
    decide
  ·
    simp [graphSmokeNext_s0902, h_l0006] at h

theorem transition_ok_s0902 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (902 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (902 : State) := by
  intro h
  change graphSmokeNext_s0902 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0902] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (46 : State) <= graphPotential (902 : State)
      decide
  ·
    simp [graphSmokeNext_s0902, h_l0006] at h

theorem valid_s0903 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (903 : State) label t gain ->
      gain + graphPotential t <= graphPotential (903 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0903 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0903] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (47 : State) <= graphPotential (903 : State)
    decide
  ·
    simp [graphSmokeNext_s0903, h_l0006] at h

theorem transition_ok_s0903 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (903 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (903 : State) := by
  intro h
  change graphSmokeNext_s0903 label = some (t, gain) at h
  by_cases h_l0006 : label = (6 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0903] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (47 : State) <= graphPotential (903 : State)
      decide
  ·
    simp [graphSmokeNext_s0903, h_l0006] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 896 <= s) (hhi : s < 904) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0896 h
  · exact valid_s0897 h
  · exact valid_s0898 h
  · exact valid_s0899 h
  · exact valid_s0900 h
  · exact valid_s0901 h
  · exact valid_s0902 h
  · exact valid_s0903 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 896 <= s) (hhi : s < 904) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0896 h
  · exact transition_ok_s0897 h
  · exact transition_ok_s0898 h
  · exact transition_ok_s0899 h
  · exact transition_ok_s0900 h
  · exact transition_ok_s0901 h
  · exact transition_ok_s0902 h
  · exact transition_ok_s0903 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard112
