import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard051

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [816, 832). -/
theorem valid_s0816 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (816 : State) label t gain ->
      gain + graphPotential t <= graphPotential (816 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0816 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0816] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (903 : State) <= graphPotential (816 : State)
    decide
  ·
    simp [graphSmokeNext_s0816, h_l0003] at h

theorem valid_s0817 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (817 : State) label t gain ->
      gain + graphPotential t <= graphPotential (817 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0817 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0817] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (904 : State) <= graphPotential (817 : State)
    decide
  ·
    simp [graphSmokeNext_s0817, h_l0003] at h

theorem valid_s0818 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (818 : State) label t gain ->
      gain + graphPotential t <= graphPotential (818 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0818 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0818] at h
    rcases h with ⟨rfl, rfl⟩
    change (90 : Int) + graphPotential (876 : State) <= graphPotential (818 : State)
    decide
  ·
    simp [graphSmokeNext_s0818, h_l0012] at h

theorem valid_s0819 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (819 : State) label t gain ->
      gain + graphPotential t <= graphPotential (819 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0819 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0819] at h
    rcases h with ⟨rfl, rfl⟩
    change (90 : Int) + graphPotential (881 : State) <= graphPotential (819 : State)
    decide
  ·
    simp [graphSmokeNext_s0819, h_l0012] at h

theorem valid_s0820 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (820 : State) label t gain ->
      gain + graphPotential t <= graphPotential (820 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0820 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0820] at h
    rcases h with ⟨rfl, rfl⟩
    change (90 : Int) + graphPotential (883 : State) <= graphPotential (820 : State)
    decide
  ·
    simp [graphSmokeNext_s0820, h_l0012] at h

theorem valid_s0821 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (821 : State) label t gain ->
      gain + graphPotential t <= graphPotential (821 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0821 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0821] at h
    rcases h with ⟨rfl, rfl⟩
    change (90 : Int) + graphPotential (885 : State) <= graphPotential (821 : State)
    decide
  ·
    simp [graphSmokeNext_s0821, h_l0012] at h

theorem valid_s0822 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (822 : State) label t gain ->
      gain + graphPotential t <= graphPotential (822 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0822 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0822] at h
    rcases h with ⟨rfl, rfl⟩
    change (90 : Int) + graphPotential (887 : State) <= graphPotential (822 : State)
    decide
  ·
    simp [graphSmokeNext_s0822, h_l0012] at h

theorem valid_s0823 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (823 : State) label t gain ->
      gain + graphPotential t <= graphPotential (823 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0823 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0823] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (914 : State) <= graphPotential (823 : State)
    decide
  ·
    simp [graphSmokeNext_s0823, h_l0003] at h

theorem valid_s0824 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (824 : State) label t gain ->
      gain + graphPotential t <= graphPotential (824 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0824 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0824] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (915 : State) <= graphPotential (824 : State)
    decide
  ·
    simp [graphSmokeNext_s0824, h_l0003] at h

theorem valid_s0825 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (825 : State) label t gain ->
      gain + graphPotential t <= graphPotential (825 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0825 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0825] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (916 : State) <= graphPotential (825 : State)
    decide
  ·
    simp [graphSmokeNext_s0825, h_l0003] at h

theorem valid_s0826 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (826 : State) label t gain ->
      gain + graphPotential t <= graphPotential (826 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0826 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0826] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (917 : State) <= graphPotential (826 : State)
    decide
  ·
    simp [graphSmokeNext_s0826, h_l0003] at h

theorem valid_s0827 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (827 : State) label t gain ->
      gain + graphPotential t <= graphPotential (827 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0827 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0827] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (918 : State) <= graphPotential (827 : State)
    decide
  ·
    simp [graphSmokeNext_s0827, h_l0003] at h

theorem valid_s0828 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (828 : State) label t gain ->
      gain + graphPotential t <= graphPotential (828 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0828 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0828] at h
    rcases h with ⟨rfl, rfl⟩
    change (90 : Int) + graphPotential (891 : State) <= graphPotential (828 : State)
    decide
  ·
    simp [graphSmokeNext_s0828, h_l0012] at h

theorem valid_s0829 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (829 : State) label t gain ->
      gain + graphPotential t <= graphPotential (829 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0829 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0829] at h
    rcases h with ⟨rfl, rfl⟩
    change (90 : Int) + graphPotential (895 : State) <= graphPotential (829 : State)
    decide
  ·
    simp [graphSmokeNext_s0829, h_l0012] at h

theorem valid_s0830 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (830 : State) label t gain ->
      gain + graphPotential t <= graphPotential (830 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0830 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0830] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (919 : State) <= graphPotential (830 : State)
    decide
  ·
    simp [graphSmokeNext_s0830, h_l0003] at h

theorem valid_s0831 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (831 : State) label t gain ->
      gain + graphPotential t <= graphPotential (831 : State) := by
  intro h
  rcases h with ⟨_hs, h⟩
  change graphSmokeNext_s0831 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0831] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (920 : State) <= graphPotential (831 : State)
    decide
  ·
    simp [graphSmokeNext_s0831, h_l0003] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 816 <= s) (hhi : s < 832) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0816 h
  · exact valid_s0817 h
  · exact valid_s0818 h
  · exact valid_s0819 h
  · exact valid_s0820 h
  · exact valid_s0821 h
  · exact valid_s0822 h
  · exact valid_s0823 h
  · exact valid_s0824 h
  · exact valid_s0825 h
  · exact valid_s0826 h
  · exact valid_s0827 h
  · exact valid_s0828 h
  · exact valid_s0829 h
  · exact valid_s0830 h
  · exact valid_s0831 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard051
