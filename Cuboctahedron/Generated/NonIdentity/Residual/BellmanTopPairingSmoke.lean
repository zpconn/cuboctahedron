import Cuboctahedron.Search.BellmanPotential

/-!
Generated-style smoke for the nonidentity top-pairing Bellman route.

This file does not claim coverage for the whole family.  It checks that
integer-scaled Bellman data shaped like the accepted tri-source profiler output
can instantiate the trusted generic Bellman theorem without replaying affine
offset computations.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSmoke

open Cuboctahedron

private inductive SmokeState where
  | s0 | s1 | s2 | s3 | s4 | s5 | s6 | s7 | s8 | s9 | s10 | s11 | s12 | s13 | s14
deriving DecidableEq, Repr

private def edge01 : BellmanEdge SmokeState :=
  { src := SmokeState.s0, gain := 103, dst := SmokeState.s1 }

private def edge12 : BellmanEdge SmokeState :=
  { src := SmokeState.s1, gain := -73, dst := SmokeState.s2 }

private def edge23 : BellmanEdge SmokeState :=
  { src := SmokeState.s2, gain := -124, dst := SmokeState.s3 }

private def edge34 : BellmanEdge SmokeState :=
  { src := SmokeState.s3, gain := 96, dst := SmokeState.s4 }

private def edge45 : BellmanEdge SmokeState :=
  { src := SmokeState.s4, gain := -36, dst := SmokeState.s5 }

private def edge56 : BellmanEdge SmokeState :=
  { src := SmokeState.s5, gain := -144, dst := SmokeState.s6 }

private def edge67 : BellmanEdge SmokeState :=
  { src := SmokeState.s6, gain := 90, dst := SmokeState.s7 }

private def edge78 : BellmanEdge SmokeState :=
  { src := SmokeState.s7, gain := 90, dst := SmokeState.s8 }

private def edge89 : BellmanEdge SmokeState :=
  { src := SmokeState.s8, gain := -144, dst := SmokeState.s9 }

private def edge9_10 : BellmanEdge SmokeState :=
  { src := SmokeState.s9, gain := -36, dst := SmokeState.s10 }

private def edge10_11 : BellmanEdge SmokeState :=
  { src := SmokeState.s10, gain := 96, dst := SmokeState.s11 }

private def edge11_12 : BellmanEdge SmokeState :=
  { src := SmokeState.s11, gain := -124, dst := SmokeState.s12 }

private def edge12_13 : BellmanEdge SmokeState :=
  { src := SmokeState.s12, gain := 103, dst := SmokeState.s13 }

private def edge13_14 : BellmanEdge SmokeState :=
  { src := SmokeState.s13, gain := -73, dst := SmokeState.s14 }

private def smokeEdges : List (BellmanEdge SmokeState) :=
  [edge01, edge12, edge23, edge34, edge45, edge56, edge67, edge78,
    edge89, edge9_10, edge10_11, edge11_12, edge12_13, edge13_14]

private def smokePotential : SmokeState -> Int
  | SmokeState.s0 => -176
  | SmokeState.s1 => -279
  | SmokeState.s2 => -206
  | SmokeState.s3 => -82
  | SmokeState.s4 => -178
  | SmokeState.s5 => -142
  | SmokeState.s6 => 2
  | SmokeState.s7 => -88
  | SmokeState.s8 => -178
  | SmokeState.s9 => -34
  | SmokeState.s10 => 2
  | SmokeState.s11 => -94
  | SmokeState.s12 => 30
  | SmokeState.s13 => -73
  | SmokeState.s14 => 0

private theorem smokePath :
    BellmanPath SmokeState.s0 SmokeState.s14 smokeEdges := by
  unfold smokeEdges
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  apply BellmanPath.cons
  · rfl
  · rfl
  exact BellmanPath.nil SmokeState.s14

private theorem smokeEdges_valid :
    forall e, e ∈ smokeEdges -> e.Valid smokePotential := by
  intro e he
  simp [smokeEdges] at he
  rcases he with
    h | h | h | h | h | h | h | h | h | h | h | h | h | h
  all_goals
    subst e
    norm_num [BellmanEdge.Valid, smokePotential, edge01, edge12, edge23,
      edge34, edge45, edge56, edge67, edge78, edge89, edge9_10,
      edge10_11, edge11_12, edge12_13, edge13_14]

theorem topPairingSmoke_scaled_margin_nonpos :
    (176 : Int) + bellmanGainSum smokeEdges <= 0 :=
  const_add_bellmanGainSum_nonpos_of_path
    (V := smokePotential)
    (const := 176)
    smokePath
    smokeEdges_valid
    (by norm_num [smokePotential])
    (by norm_num [smokePotential])

theorem bellmanTopPairingSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSmoke
