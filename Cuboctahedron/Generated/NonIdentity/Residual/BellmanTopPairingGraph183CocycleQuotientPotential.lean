import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShards
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Potential

/-!
Gauge-corrected small potential for the sharded graph183 quotient.

This is diagnostic/proof-shape support, not generated coverage.  It
proves the local quotient graph has a tiny Bellman potential after
accounting for the full-state gauge.  A production theorem must still
prove the semantic closed-language run and the real margin-to-gain
inequality.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientPotential

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientEdgeShards
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientCore
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Potential

def graph183QuotientPotential (_state : Nat) : Int := 86

def Graph183ProfileFinalState (finish : Nat) : Prop :=
  finish = 113 \/ finish = 114 \/ finish = 115 \/ finish = 116 \/ finish = 117 \/ finish = 118 \/ finish = 119 \/ finish = 120 \/ finish = 121 \/ finish = 122 \/ finish = 123 \/ finish = 124 \/ finish = 125 \/ finish = 126 \/ finish = 127 \/ finish = 128 \/ finish = 129 \/ finish = 130 \/ finish = 131 \/ finish = 132 \/ finish = 133 \/ finish = 134 \/ finish = 135 \/ finish = 136 \/ finish = 137 \/ finish = 138 \/ finish = 139 \/ finish = 140 \/ finish = 141 \/ False

theorem graph183SmallStep_valid
    {s label t : Nat} {gain : Int}
    (hstep : SmallStep s label t gain) :
    gain + graph183QuotientPotential t <=
      graph183QuotientPotential s := by
  simpa [graph183QuotientPotential] using
    BellmanTopPairingGraph183CocycleQuotientEdgeShards.graph183SmallStep_valid hstep

theorem graph183QuotientRootBound :
    graphConst + graph183QuotientPotential (graph183QuotientQ graphRoot) -
      graph183QuotientGauge graphRoot <= 0 := by
  decide

theorem graph183ProfileFinalGaugeBound
    {finish : Nat}
    (hfinal : Graph183ProfileFinalState finish) :
    graph183QuotientGauge finish <=
      graph183QuotientPotential (graph183QuotientQ finish) := by
  dsimp [Graph183ProfileFinalState] at hfinal
  rcases hfinal with rfl | hfinal
  · decide
  rcases hfinal with rfl | hfinal
  · decide
  rcases hfinal with rfl | hfinal
  · decide
  rcases hfinal with rfl | hfinal
  · decide
  rcases hfinal with rfl | hfinal
  · decide
  rcases hfinal with rfl | hfinal
  · decide
  rcases hfinal with rfl | hfinal
  · decide
  rcases hfinal with rfl | hfinal
  · decide
  rcases hfinal with rfl | hfinal
  · decide
  rcases hfinal with rfl | hfinal
  · decide
  rcases hfinal with rfl | hfinal
  · decide
  rcases hfinal with rfl | hfinal
  · decide
  rcases hfinal with rfl | hfinal
  · decide
  rcases hfinal with rfl | hfinal
  · decide
  rcases hfinal with rfl | hfinal
  · decide
  rcases hfinal with rfl | hfinal
  · decide
  rcases hfinal with rfl | hfinal
  · decide
  rcases hfinal with rfl | hfinal
  · decide
  rcases hfinal with rfl | hfinal
  · decide
  rcases hfinal with rfl | hfinal
  · decide
  rcases hfinal with rfl | hfinal
  · decide
  rcases hfinal with rfl | hfinal
  · decide
  rcases hfinal with rfl | hfinal
  · decide
  rcases hfinal with rfl | hfinal
  · decide
  rcases hfinal with rfl | hfinal
  · decide
  rcases hfinal with rfl | hfinal
  · decide
  rcases hfinal with rfl | hfinal
  · decide
  rcases hfinal with rfl | hfinal
  · decide
  rcases hfinal with rfl | hfinal
  · decide
  cases hfinal

theorem graph183QuotientPotential_checked : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph183CocycleQuotientPotential
