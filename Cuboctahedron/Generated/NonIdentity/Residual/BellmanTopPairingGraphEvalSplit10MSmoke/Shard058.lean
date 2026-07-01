import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard058

open Cuboctahedron

open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

/-- Validity shard for source states [928, 944). -/
theorem valid_s0928 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (928 : State) label t gain ->
      gain + graphPotential t <= graphPotential (928 : State) := by
  intro h
  change graphSmokeNext_s0928 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0928] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (67 : State) <= graphPotential (928 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0928] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (42 : State) <= graphPotential (928 : State)
      decide
    ·
      simp [graphSmokeNext_s0928, h_l0003, h_l0013] at h

theorem valid_s0929 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (929 : State) label t gain ->
      gain + graphPotential t <= graphPotential (929 : State) := by
  intro h
  change graphSmokeNext_s0929 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0929] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (68 : State) <= graphPotential (929 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0929] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (43 : State) <= graphPotential (929 : State)
      decide
    ·
      simp [graphSmokeNext_s0929, h_l0003, h_l0013] at h

theorem valid_s0930 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (930 : State) label t gain ->
      gain + graphPotential t <= graphPotential (930 : State) := by
  intro h
  change graphSmokeNext_s0930 label = some (t, gain) at h
  by_cases h_l0003 : label = (3 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0930] at h
    rcases h with ⟨rfl, rfl⟩
    change (96 : Int) + graphPotential (69 : State) <= graphPotential (930 : State)
    decide
  ·
    by_cases h_l0013 : label = (13 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0930] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (44 : State) <= graphPotential (930 : State)
      decide
    ·
      simp [graphSmokeNext_s0930, h_l0003, h_l0013] at h

theorem valid_s0931 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (931 : State) label t gain ->
      gain + graphPotential t <= graphPotential (931 : State) := by
  intro h
  change graphSmokeNext_s0931 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0931] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (77 : State) <= graphPotential (931 : State)
    decide
  ·
    simp [graphSmokeNext_s0931, h_l0005] at h

theorem valid_s0932 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (932 : State) label t gain ->
      gain + graphPotential t <= graphPotential (932 : State) := by
  intro h
  change graphSmokeNext_s0932 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0932] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (78 : State) <= graphPotential (932 : State)
    decide
  ·
    simp [graphSmokeNext_s0932, h_l0005] at h

theorem valid_s0933 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (933 : State) label t gain ->
      gain + graphPotential t <= graphPotential (933 : State) := by
  intro h
  change graphSmokeNext_s0933 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0933] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (79 : State) <= graphPotential (933 : State)
    decide
  ·
    simp [graphSmokeNext_s0933, h_l0005] at h

theorem valid_s0934 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (934 : State) label t gain ->
      gain + graphPotential t <= graphPotential (934 : State) := by
  intro h
  change graphSmokeNext_s0934 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0934] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (80 : State) <= graphPotential (934 : State)
    decide
  ·
    simp [graphSmokeNext_s0934, h_l0005] at h

theorem valid_s0935 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (935 : State) label t gain ->
      gain + graphPotential t <= graphPotential (935 : State) := by
  intro h
  change graphSmokeNext_s0935 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0935] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (81 : State) <= graphPotential (935 : State)
    decide
  ·
    simp [graphSmokeNext_s0935, h_l0005] at h

theorem valid_s0936 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (936 : State) label t gain ->
      gain + graphPotential t <= graphPotential (936 : State) := by
  intro h
  change graphSmokeNext_s0936 label = some (t, gain) at h
  by_cases h_l0005 : label = (5 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0936] at h
    rcases h with ⟨rfl, rfl⟩
    change (-36 : Int) + graphPotential (83 : State) <= graphPotential (936 : State)
    decide
  ·
    simp [graphSmokeNext_s0936, h_l0005] at h

theorem valid_s0937 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (937 : State) label t gain ->
      gain + graphPotential t <= graphPotential (937 : State) := by
  intro h
  change graphSmokeNext_s0937 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0937] at h
    rcases h with ⟨rfl, rfl⟩
    change (81 : Int) + graphPotential (1 : State) <= graphPotential (937 : State)
    decide
  ·
    simp [graphSmokeNext_s0937, h_l0010] at h

theorem valid_s0938 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (938 : State) label t gain ->
      gain + graphPotential t <= graphPotential (938 : State) := by
  intro h
  change graphSmokeNext_s0938 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0938] at h
    rcases h with ⟨rfl, rfl⟩
    change (81 : Int) + graphPotential (4 : State) <= graphPotential (938 : State)
    decide
  ·
    simp [graphSmokeNext_s0938, h_l0010] at h

theorem valid_s0939 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (939 : State) label t gain ->
      gain + graphPotential t <= graphPotential (939 : State) := by
  intro h
  change graphSmokeNext_s0939 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0939] at h
    rcases h with ⟨rfl, rfl⟩
    change (81 : Int) + graphPotential (7 : State) <= graphPotential (939 : State)
    decide
  ·
    simp [graphSmokeNext_s0939, h_l0010] at h

theorem valid_s0940 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (940 : State) label t gain ->
      gain + graphPotential t <= graphPotential (940 : State) := by
  intro h
  change graphSmokeNext_s0940 label = some (t, gain) at h
  by_cases h_l0010 : label = (10 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0940] at h
    rcases h with ⟨rfl, rfl⟩
    change (81 : Int) + graphPotential (27 : State) <= graphPotential (940 : State)
    decide
  ·
    simp [graphSmokeNext_s0940, h_l0010] at h

theorem valid_s0941 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (941 : State) label t gain ->
      gain + graphPotential t <= graphPotential (941 : State) := by
  intro h
  change graphSmokeNext_s0941 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0941] at h
    rcases h with ⟨rfl, rfl⟩
    change (-117 : Int) + graphPotential (35 : State) <= graphPotential (941 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0941] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (70 : State) <= graphPotential (941 : State)
      decide
    ·
      simp [graphSmokeNext_s0941, h_l0011, h_l0012] at h

theorem valid_s0942 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (942 : State) label t gain ->
      gain + graphPotential t <= graphPotential (942 : State) := by
  intro h
  change graphSmokeNext_s0942 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0942] at h
    rcases h with ⟨rfl, rfl⟩
    change (-117 : Int) + graphPotential (42 : State) <= graphPotential (942 : State)
    decide
  ·
    by_cases h_l0012 : label = (12 : SmokeLabel)
    · subst label
      simp [graphSmokeNext_s0942] at h
      rcases h with ⟨rfl, rfl⟩
      change (-18 : Int) + graphPotential (76 : State) <= graphPotential (942 : State)
      decide
    ·
      simp [graphSmokeNext_s0942, h_l0011, h_l0012] at h

theorem valid_s0943 {label : SmokeLabel} {t : State} {gain : Int} :
    GraphSmokeStepEval (943 : State) label t gain ->
      gain + graphPotential t <= graphPotential (943 : State) := by
  intro h
  change graphSmokeNext_s0943 label = some (t, gain) at h
  by_cases h_l0011 : label = (11 : SmokeLabel)
  · subst label
    simp [graphSmokeNext_s0943] at h
    rcases h with ⟨rfl, rfl⟩
    change (-117 : Int) + graphPotential (45 : State) <= graphPotential (943 : State)
    decide
  ·
    simp [graphSmokeNext_s0943, h_l0011] at h

theorem valid_range {s : State} {label : SmokeLabel} {t : State} {gain : Int}
    (hlo : 928 <= s) (hhi : s < 944) :
    GraphSmokeStepEval s label t gain ->
      gain + graphPotential t <= graphPotential s := by
  intro h
  interval_cases s
  · exact valid_s0928 h
  · exact valid_s0929 h
  · exact valid_s0930 h
  · exact valid_s0931 h
  · exact valid_s0932 h
  · exact valid_s0933 h
  · exact valid_s0934 h
  · exact valid_s0935 h
  · exact valid_s0936 h
  · exact valid_s0937 h
  · exact valid_s0938 h
  · exact valid_s0939 h
  · exact valid_s0940 h
  · exact valid_s0941 h
  · exact valid_s0942 h
  · exact valid_s0943 h

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Shard058
