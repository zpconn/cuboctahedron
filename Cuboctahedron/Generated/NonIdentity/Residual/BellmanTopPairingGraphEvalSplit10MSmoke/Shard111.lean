import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard111

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [888, 896). -/
theorem valid_s0888 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (888 : State) label t gain ->
      gain + graphPotential t <= graphPotential (888 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0888 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0888] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (19 : State) <= graphPotential (888 : State)
    decide
  ·
    simp [graphSmokeNext_s0888, h_l0002] at h

theorem transition_ok_s0888 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (888 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (888 : State) := by
  intro h
  change graphSmokeNext_s0888 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0888] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (19 : State) <= graphPotential (888 : State)
      decide
  ·
    simp [graphSmokeNext_s0888, h_l0002] at h

theorem valid_s0889 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (889 : State) label t gain ->
      gain + graphPotential t <= graphPotential (889 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0889 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0889] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (20 : State) <= graphPotential (889 : State)
    decide
  ·
    simp [graphSmokeNext_s0889, h_l0002] at h

theorem transition_ok_s0889 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (889 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (889 : State) := by
  intro h
  change graphSmokeNext_s0889 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0889] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (20 : State) <= graphPotential (889 : State)
      decide
  ·
    simp [graphSmokeNext_s0889, h_l0002] at h

theorem valid_s0890 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (890 : State) label t gain ->
      gain + graphPotential t <= graphPotential (890 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0890 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0890] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (21 : State) <= graphPotential (890 : State)
    decide
  ·
    simp [graphSmokeNext_s0890, h_l0002] at h

theorem transition_ok_s0890 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (890 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (890 : State) := by
  intro h
  change graphSmokeNext_s0890 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0890] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (21 : State) <= graphPotential (890 : State)
      decide
  ·
    simp [graphSmokeNext_s0890, h_l0002] at h

theorem valid_s0891 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (891 : State) label t gain ->
      gain + graphPotential t <= graphPotential (891 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0891 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0891] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (23 : State) <= graphPotential (891 : State)
    decide
  ·
    simp [graphSmokeNext_s0891, h_l0002] at h

theorem transition_ok_s0891 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (891 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (891 : State) := by
  intro h
  change graphSmokeNext_s0891 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0891] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (23 : State) <= graphPotential (891 : State)
      decide
  ·
    simp [graphSmokeNext_s0891, h_l0002] at h

theorem valid_s0892 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (892 : State) label t gain ->
      gain + graphPotential t <= graphPotential (892 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0892 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0892] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (24 : State) <= graphPotential (892 : State)
    decide
  ·
    simp [graphSmokeNext_s0892, h_l0002] at h

theorem transition_ok_s0892 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (892 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (892 : State) := by
  intro h
  change graphSmokeNext_s0892 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0892] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (24 : State) <= graphPotential (892 : State)
      decide
  ·
    simp [graphSmokeNext_s0892, h_l0002] at h

theorem valid_s0893 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (893 : State) label t gain ->
      gain + graphPotential t <= graphPotential (893 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0893 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0893] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (25 : State) <= graphPotential (893 : State)
    decide
  ·
    simp [graphSmokeNext_s0893, h_l0002] at h

theorem transition_ok_s0893 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (893 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (893 : State) := by
  intro h
  change graphSmokeNext_s0893 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0893] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (25 : State) <= graphPotential (893 : State)
      decide
  ·
    simp [graphSmokeNext_s0893, h_l0002] at h

theorem valid_s0894 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (894 : State) label t gain ->
      gain + graphPotential t <= graphPotential (894 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0894 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0894] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (26 : State) <= graphPotential (894 : State)
    decide
  ·
    simp [graphSmokeNext_s0894, h_l0002] at h

theorem transition_ok_s0894 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (894 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (894 : State) := by
  intro h
  change graphSmokeNext_s0894 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0894] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (26 : State) <= graphPotential (894 : State)
      decide
  ·
    simp [graphSmokeNext_s0894, h_l0002] at h

theorem valid_s0895 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (895 : State) label t gain ->
      gain + graphPotential t <= graphPotential (895 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0895 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0895] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (28 : State) <= graphPotential (895 : State)
    decide
  ·
    simp [graphSmokeNext_s0895, h_l0002] at h

theorem transition_ok_s0895 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (895 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (895 : State) := by
  intro h
  change graphSmokeNext_s0895 label = some (t, gain) at h
  by_cases h_l0002 : label = (2 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0895] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (28 : State) <= graphPotential (895 : State)
      decide
  ·
    simp [graphSmokeNext_s0895, h_l0002] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 888 <= s) (hhi : s < 896) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0888 h
  · exact valid_s0889 h
  · exact valid_s0890 h
  · exact valid_s0891 h
  · exact valid_s0892 h
  · exact valid_s0893 h
  · exact valid_s0894 h
  · exact valid_s0895 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 888 <= s) (hhi : s < 896) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0888 h
  · exact transition_ok_s0889 h
  · exact transition_ok_s0890 h
  · exact transition_ok_s0891 h
  · exact transition_ok_s0892 h
  · exact transition_ok_s0893 h
  · exact transition_ok_s0894 h
  · exact transition_ok_s0895 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard111
