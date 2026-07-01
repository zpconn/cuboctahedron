import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard053

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [848, 864). -/
theorem valid_s0848 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (848 : State) label t gain ->
      gain + graphPotential t <= graphPotential (848 : State) := by
  intro h
  change graphSmokeNext_s0848 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0848] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (935 : State) <= graphPotential (848 : State)
    decide
  ·
    simp [graphSmokeNext_s0848, h_l0000] at h

theorem valid_s0849 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (849 : State) label t gain ->
      gain + graphPotential t <= graphPotential (849 : State) := by
  intro h
  change graphSmokeNext_s0849 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0849] at h
    rcases h with ⟨rfl, rfl⟩
    change (-63 : Int) + graphPotential (895 : State) <= graphPotential (849 : State)
    decide
  ·
    simp [graphSmokeNext_s0849, h_l0010] at h

theorem valid_s0850 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (850 : State) label t gain ->
      gain + graphPotential t <= graphPotential (850 : State) := by
  intro h
  change graphSmokeNext_s0850 label = some (t, gain) at h
  by_cases h_l0000 : label = (0 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0850] at h
    rcases h with ⟨rfl, rfl⟩
    change (-144 : Int) + graphPotential (936 : State) <= graphPotential (850 : State)
    decide
  ·
    simp [graphSmokeNext_s0850, h_l0000] at h

theorem valid_s0851 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (851 : State) label t gain ->
      gain + graphPotential t <= graphPotential (851 : State) := by
  intro h
  change graphSmokeNext_s0851 label = some (t, gain) at h
  by_cases h_l0012 : label = (12 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0851] at h
    rcases h with ⟨rfl, rfl⟩
    change (-54 : Int) + graphPotential (931 : State) <= graphPotential (851 : State)
    decide
  ·
    simp [graphSmokeNext_s0851, h_l0012] at h

theorem valid_s0852 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (852 : State) label t gain ->
      gain + graphPotential t <= graphPotential (852 : State) := by
  intro h
  change graphSmokeNext_s0852 label = some (t, gain) at h
  by_cases h_l0004 : label = (4 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0852] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (945 : State) <= graphPotential (852 : State)
    decide
  ·
    simp [graphSmokeNext_s0852, h_l0004] at h

theorem valid_s0853 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (853 : State) label t gain ->
      gain + graphPotential t <= graphPotential (853 : State) := by
  intro h
  change graphSmokeNext_s0853 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0853] at h
    rcases h with ⟨rfl, rfl⟩
    change (81 : Int) + graphPotential (905 : State) <= graphPotential (853 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0853] at h
      rcases h with ⟨rfl, rfl⟩
      change (-54 : Int) + graphPotential (937 : State) <= graphPotential (853 : State)
      decide
    ·
      simp [graphSmokeNext_s0853, h_l0010, h_l0012] at h

theorem valid_s0854 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (854 : State) label t gain ->
      gain + graphPotential t <= graphPotential (854 : State) := by
  intro h
  change graphSmokeNext_s0854 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0854] at h
    rcases h with ⟨rfl, rfl⟩
    change (81 : Int) + graphPotential (913 : State) <= graphPotential (854 : State)
    decide
  ·
    simp [graphSmokeNext_s0854, h_l0010] at h

theorem valid_s0855 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (855 : State) label t gain ->
      gain + graphPotential t <= graphPotential (855 : State) := by
  intro h
  change graphSmokeNext_s0855 label = some (t, gain) at h
  by_cases h_l0001 : label = (1 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0855] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (946 : State) <= graphPotential (855 : State)
    decide
  ·
    by_cases h_l0011 : label = (11 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0855] at h
      rcases h with ⟨rfl, rfl⟩
      change (-117 : Int) + graphPotential (921 : State) <= graphPotential (855 : State)
      decide
    ·
      by_cases h_l0013 : label = (13 : SmokeLabel)
      · subst label
        simp [graphSmokeNext_s0855] at h
        rcases h with ⟨rfl, rfl⟩
        change (-18 : Int) + graphPotential (941 : State) <= graphPotential (855 : State)
        decide
      ·
        simp [graphSmokeNext_s0855, h_l0001, h_l0011, h_l0013] at h

theorem valid_s0856 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (856 : State) label t gain ->
      gain + graphPotential t <= graphPotential (856 : State) := by
  intro h
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

theorem valid_s0857 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (857 : State) label t gain ->
      gain + graphPotential t <= graphPotential (857 : State) := by
  intro h
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

theorem valid_s0858 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (858 : State) label t gain ->
      gain + graphPotential t <= graphPotential (858 : State) := by
  intro h
  change graphSmokeNext_s0858 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0858] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (951 : State) <= graphPotential (858 : State)
    decide
  ·
    simp [graphSmokeNext_s0858, h_l0007] at h

theorem valid_s0859 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (859 : State) label t gain ->
      gain + graphPotential t <= graphPotential (859 : State) := by
  intro h
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

theorem valid_s0860 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (860 : State) label t gain ->
      gain + graphPotential t <= graphPotential (860 : State) := by
  intro h
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

theorem valid_s0861 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (861 : State) label t gain ->
      gain + graphPotential t <= graphPotential (861 : State) := by
  intro h
  change graphSmokeNext_s0861 label = some (t, gain) at h
  by_cases h_l0007 : label = (7 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0861] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (954 : State) <= graphPotential (861 : State)
    decide
  ·
    simp [graphSmokeNext_s0861, h_l0007] at h

theorem valid_s0862 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (862 : State) label t gain ->
      gain + graphPotential t <= graphPotential (862 : State) := by
  intro h
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

theorem valid_s0863 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (863 : State) label t gain ->
      gain + graphPotential t <= graphPotential (863 : State) := by
  intro h
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

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 848 <= s) (hhi : s < 864) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0848 h
  · exact valid_s0849 h
  · exact valid_s0850 h
  · exact valid_s0851 h
  · exact valid_s0852 h
  · exact valid_s0853 h
  · exact valid_s0854 h
  · exact valid_s0855 h
  · exact valid_s0856 h
  · exact valid_s0857 h
  · exact valid_s0858 h
  · exact valid_s0859 h
  · exact valid_s0860 h
  · exact valid_s0861 h
  · exact valid_s0862 h
  · exact valid_s0863 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard053
