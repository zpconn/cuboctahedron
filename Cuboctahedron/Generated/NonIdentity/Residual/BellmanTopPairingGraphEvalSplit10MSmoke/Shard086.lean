import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard086

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [688, 696). -/
theorem valid_s0688 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (688 : State) label t gain ->
      gain + graphPotential t <= graphPotential (688 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0688 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0688] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (735 : State) <= graphPotential (688 : State)
    decide
  ·
    simp [graphSmokeNext_s0688, h_l0012] at h

theorem transition_ok_s0688 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (688 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (688 : State) := by
  intro h
  change graphSmokeNext_s0688 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0688] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-18 : Int) + graphPotential (735 : State) <= graphPotential (688 : State)
      decide
  ·
    simp [graphSmokeNext_s0688, h_l0012] at h

theorem valid_s0689 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (689 : State) label t gain ->
      gain + graphPotential t <= graphPotential (689 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0689 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0689] at h
    rcases h with ⟨rfl, rfl⟩
    change (-18 : Int) + graphPotential (737 : State) <= graphPotential (689 : State)
    decide
  ·
    simp [graphSmokeNext_s0689, h_l0012] at h

theorem transition_ok_s0689 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (689 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (689 : State) := by
  intro h
  change graphSmokeNext_s0689 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0689] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-18 : Int) + graphPotential (737 : State) <= graphPotential (689 : State)
      decide
  ·
    simp [graphSmokeNext_s0689, h_l0012] at h

theorem valid_s0690 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (690 : State) label t gain ->
      gain + graphPotential t <= graphPotential (690 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0690 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0690] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (745 : State) <= graphPotential (690 : State)
    decide
  ·
    simp [graphSmokeNext_s0690, h_l0007] at h

theorem transition_ok_s0690 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (690 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (690 : State) := by
  intro h
  change graphSmokeNext_s0690 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0690] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (745 : State) <= graphPotential (690 : State)
      decide
  ·
    simp [graphSmokeNext_s0690, h_l0007] at h

theorem valid_s0691 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (691 : State) label t gain ->
      gain + graphPotential t <= graphPotential (691 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0691 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0691] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (747 : State) <= graphPotential (691 : State)
    decide
  ·
    simp [graphSmokeNext_s0691, h_l0007] at h

theorem transition_ok_s0691 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (691 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (691 : State) := by
  intro h
  change graphSmokeNext_s0691 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0691] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (747 : State) <= graphPotential (691 : State)
      decide
  ·
    simp [graphSmokeNext_s0691, h_l0007] at h

theorem valid_s0692 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (692 : State) label t gain ->
      gain + graphPotential t <= graphPotential (692 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0692 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0692] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (748 : State) <= graphPotential (692 : State)
    decide
  ·
    simp [graphSmokeNext_s0692, h_l0007] at h

theorem transition_ok_s0692 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (692 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (692 : State) := by
  intro h
  change graphSmokeNext_s0692 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0692] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (748 : State) <= graphPotential (692 : State)
      decide
  ·
    simp [graphSmokeNext_s0692, h_l0007] at h

theorem valid_s0693 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (693 : State) label t gain ->
      gain + graphPotential t <= graphPotential (693 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0693 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0693] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (749 : State) <= graphPotential (693 : State)
    decide
  ·
    simp [graphSmokeNext_s0693, h_l0007] at h

theorem transition_ok_s0693 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (693 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (693 : State) := by
  intro h
  change graphSmokeNext_s0693 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0693] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-36 : Int) + graphPotential (749 : State) <= graphPotential (693 : State)
      decide
  ·
    simp [graphSmokeNext_s0693, h_l0007] at h

theorem valid_s0694 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (694 : State) label t gain ->
      gain + graphPotential t <= graphPotential (694 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0694 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0694] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (757 : State) <= graphPotential (694 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0694] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (750 : State) <= graphPotential (694 : State)
      decide
    ·
      simp [graphSmokeNext_s0694, h_l0005, h_l0013] at h

theorem transition_ok_s0694 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (694 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (694 : State) := by
  intro h
  change graphSmokeNext_s0694 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0694] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (757 : State) <= graphPotential (694 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0694] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-54 : Int) + graphPotential (750 : State) <= graphPotential (694 : State)
        decide
    ·
      simp [graphSmokeNext_s0694, h_l0005, h_l0013] at h

theorem valid_s0695 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (695 : State) label t gain ->
      gain + graphPotential t <= graphPotential (695 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0695 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0695] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (758 : State) <= graphPotential (695 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0695] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (751 : State) <= graphPotential (695 : State)
      decide
    ·
      simp [graphSmokeNext_s0695, h_l0005, h_l0013] at h

theorem transition_ok_s0695 {label : SmokeLabel} {t : State} {gain : Int} :
    graphSmokeNext (695 : State) label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential (695 : State) := by
  intro h
  change graphSmokeNext_s0695 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0695] at h
    rcases h with ⟨rfl, rfl⟩
    constructor
    · decide
    · change (-144 : Int) + graphPotential (758 : State) <= graphPotential (695 : State)
      decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0695] at h
      rcases h with ⟨rfl, rfl⟩
      constructor
      · decide
      · change (-54 : Int) + graphPotential (751 : State) <= graphPotential (695 : State)
        decide
    ·
      simp [graphSmokeNext_s0695, h_l0005, h_l0013] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 688 <= s) (hhi : s < 696) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0688 h
  · exact valid_s0689 h
  · exact valid_s0690 h
  · exact valid_s0691 h
  · exact valid_s0692 h
  · exact valid_s0693 h
  · exact valid_s0694 h
  · exact valid_s0695 h

theorem transition_ok_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 688 <= s) (hhi : s < 696) :
    graphSmokeNext s label = some (t, gain) ->
      t < stateCount /\ gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact transition_ok_s0688 h
  · exact transition_ok_s0689 h
  · exact transition_ok_s0690 h
  · exact transition_ok_s0691 h
  · exact transition_ok_s0692 h
  · exact transition_ok_s0693 h
  · exact transition_ok_s0694 h
  · exact transition_ok_s0695 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard086
