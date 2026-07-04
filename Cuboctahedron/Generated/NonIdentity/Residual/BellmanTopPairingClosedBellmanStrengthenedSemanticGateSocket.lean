import Cuboctahedron.Search.TopPairingBellmanSemanticGate
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.All

/-!
Semantic gate socket for the strengthened top-pairing Bellman graph.

The strengthened Bellman graph is now small and memory-safe when built in
shards.  The remaining production task is not more graph data; it is a
semantic theorem from `TopPairingStrengthenedClosedLanguageAtRank` to the
deterministic graph evaluator.  This file packages that exact target and the
generic consequence.  In particular, the target is rank-semantic and does not
mention sampled ranks, selected prefixes, accepted trace ids, or exact affine
RHS keys.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedSemanticGateSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedShardedSmoke.Potential

abbrev ClosedBellmanEqStep : Nat -> Face -> Nat -> Int -> Prop :=
  fun state face nextState gain =>
    closedBellmanNext state face = some (nextState, gain)

/--
Production target for a strengthened closed-language Bellman family.

`gate` is the hard semantic membership theorem: every strengthened closed rank
must evaluate through the deterministic graph and satisfy the terminal
potential/margin facts.  `next_bound` is the graph-local Bellman inequality for
the equality step relation.  Future generated modules may prove `next_bound`
from `ClosedBellmanStep` or directly by finite state/face cases; either way it
is local graph evidence, not rank/path membership.
-/
structure StrengthenedClosedBellmanEvalFamily
    (sequenceBadFace : Fin numPairWords -> Face -> Prop)
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  gate :
    TopPairingStrengthenedToEvalGate
      graphPotential closedBellmanNext (fun face : Face => face)
      graphRoot graphConst scaledMargin sequenceBadFace Face.ym
  next_bound :
    forall state face nextState gain,
      closedBellmanNext state face = some (nextState, gain) ->
        gain + graphPotential nextState <= graphPotential state

/--
Graph-exact variant of the same production target.

This is usually the most convenient target for deterministic generated
membership: prove a concrete evaluator result, terminal nonnegativity, and a
margin bound; then this socket adapts it to the generic Bellman object-cover
machinery.
-/
structure StrengthenedClosedBellmanGraphExactFamily
    (sequenceBadFace : Fin numPairWords -> Face -> Prop)
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  gate :
    TopPairingStrengthenedToGraphExactEvalGate
      graphPotential closedBellmanNext (fun face : Face => face)
      graphRoot graphConst scaledMargin sequenceBadFace Face.ym
  next_bound :
    forall state face nextState gain,
      closedBellmanNext state face = some (nextState, gain) ->
        gain + graphPotential nextState <= graphPotential state

/--
Step-run variant of the production target.

This is often the best target for semantic transducer membership: the proof
constructs a `BellmanLabelStepRun ClosedBellmanStep` from closed-language
fields.  The generated graph already proves `closedBellmanStep_valid`, so this
route avoids a global inverse theorem for the `closedBellmanNext` dispatcher.
-/
structure StrengthenedClosedBellmanStepRunFamily
    (sequenceBadFace : Fin numPairWords -> Face -> Prop)
    (scaledMargin : Fin numPairWords -> Int) : Prop where
  run :
    forall rank,
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym ->
        exists finish gain,
          BellmanLabelStepRun ClosedBellmanStep graphRoot finish
              (topPairingRankFaceLabels rank) gain /\
            0 <= graphPotential finish /\
              scaledMargin rank <= graphConst + gain

def evalFamily_of_graphExactFamily
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      StrengthenedClosedBellmanGraphExactFamily
        sequenceBadFace scaledMargin) :
    StrengthenedClosedBellmanEvalFamily sequenceBadFace scaledMargin where
  gate :=
    strengthenedToEvalGate_of_graphExactEvalGate
      (V := graphPotential) (next := closedBellmanNext)
      (labelOfFace := fun face : Face => face)
      (start := graphRoot) (const := graphConst)
      (scaledMargin := scaledMargin)
      (sequenceBadFace := sequenceBadFace) (badFace := Face.ym)
      hfamily.gate
  next_bound := hfamily.next_bound

def strengthenedClosedBellmanObjectCover_of_evalFamily
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      StrengthenedClosedBellmanEvalFamily sequenceBadFace scaledMargin) :
    BellmanAxisRankObjectCover
      (TopPairingBellmanEvalObj
        graphPotential closedBellmanNext (fun face : Face => face)
        graphRoot graphConst scaledMargin Face.ym)
      Nat Face graphPotential ClosedBellmanEqStep
      (fun face : Face => face) graphRoot graphConst
      (TopPairingBellmanEvalObj.rankOf
        (V := graphPotential) (next := closedBellmanNext)
        (labelOfFace := fun face : Face => face)
        (start := graphRoot) (const := graphConst)
        (scaledMargin := scaledMargin) (badFace := Face.ym))
      (TopPairingBellmanEvalObj.Accepts
        (V := graphPotential) (next := closedBellmanNext)
        (labelOfFace := fun face : Face => face)
        (start := graphRoot) (const := graphConst)
        (scaledMargin := scaledMargin) (badFace := Face.ym))
      (TopPairingStrengthenedClosedContainsRank sequenceBadFace Face.ym)
      scaledMargin :=
  strengthenedObjectCoverOfSemanticGate
    (V := graphPotential) (Step := ClosedBellmanEqStep)
    (next := closedBellmanNext)
    (labelOfFace := fun face : Face => face)
    (start := graphRoot) (const := graphConst)
    (scaledMargin := scaledMargin)
    (sequenceBadFace := sequenceBadFace) (badFace := Face.ym)
    (by
      intro _state _face _nextState _gain hnext
      exact hnext)
    hfamily.gate
    (by
      intro state face nextState gain hnext
      exact hfamily.next_bound state face nextState gain hnext)
    strengthenedBellmanRootBound

theorem scaledMargin_nonpos_of_strengthenedClosedBellmanEvalFamily
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      StrengthenedClosedBellmanEvalFamily sequenceBadFace scaledMargin)
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym) :
    scaledMargin rank <= 0 :=
  BellmanAxisRankObjectCover.scaledMargin_nonpos
    (strengthenedClosedBellmanObjectCover_of_evalFamily hfamily)
    hstrengthened

theorem scaledMargin_nonpos_of_strengthenedClosedBellmanGraphExactFamily
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      StrengthenedClosedBellmanGraphExactFamily
        sequenceBadFace scaledMargin)
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_strengthenedClosedBellmanEvalFamily
    (evalFamily_of_graphExactFamily hfamily) hstrengthened

theorem scaledMargin_nonpos_of_strengthenedClosedBellmanStepRunFamily
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    (hfamily :
      StrengthenedClosedBellmanStepRunFamily sequenceBadFace scaledMargin)
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym) :
    scaledMargin rank <= 0 := by
  rcases hfamily.run rank hstrengthened with
    ⟨finish, gain, hrun, hfinal, hmargin⟩
  have hconst : graphConst + gain <= 0 :=
    const_add_labelStepRunGain_nonpos
      (V := graphPotential) (Step := ClosedBellmanStep)
      (const := graphConst) hrun
      (by
        intro state face nextState gain hstep
        exact closedBellmanStep_valid hstep)
      hfinal strengthenedBellmanRootBound
  omega

theorem strengthenedClosedBellmanSemanticGateSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedSemanticGateSocket
