import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticClosedGateSocket

/-!
Split-10M semantic transducer socket.

This module specializes the generic `TopPairingTransducerEvalState` local-step
theorem to the checked split-10M Bellman graph.  Generated membership modules
should prove the local hypotheses here by finite semantic state IDs/projections,
not by selected trace ids, sampled ranks, or rank/path disjunctions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticTransducerSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticClosedGateSocket

abbrev FaceEvalState : Type :=
  TopPairingTransducerEvalState State

def faceEvalNext :
    FaceEvalState -> Face -> Option (FaceEvalState × Int) :=
  TopPairingTransducerEvalState.next? graphSmokeNext smokeLabelOfFace

theorem split10MClosedGate_of_invariantLocalWithSuffix
    {scaledMargin : Fin numPairWords -> Int}
    (Inv : FaceEvalState -> Prop)
    (SuffixOk : FaceEvalState -> List Face -> Prop)
    (hstart : Inv (TopPairingTransducerEvalState.start rootState))
    (hsuffixStart :
      forall rank,
        TopPairingClosedLanguageAtRank rank Face.ym ->
          SuffixOk (TopPairingTransducerEvalState.start rootState)
            (topPairingRankFaceLabels rank))
    (hlocal :
      forall {state : FaceEvalState} {face : Face} {rest : List Face},
        Inv state ->
        state.Tail (face :: rest) ->
        SuffixOk state (face :: rest) ->
          exists nextState gain,
            faceEvalNext state face = some (nextState, gain) ∧
              nextState.Tail rest ∧ Inv nextState ∧
                SuffixOk nextState rest)
    (hfinish :
      forall {rank : Fin numPairWords}
        {finish : FaceEvalState} {gain : Int},
        evalLabelStepFn faceEvalNext
          (TopPairingTransducerEvalState.start rootState)
          (topPairingRankFaceLabels rank) = some (finish, gain) ->
        finish.Tail [] ->
        Inv finish ->
        SuffixOk finish [] ->
          0 <= graphPotential finish.graph ∧
            scaledMargin rank <= (176 : Int) + gain) :
    Split10MClosedToEvalGate scaledMargin :=
  closedToEvalGate_of_transducerInvariantLocalWithSuffix
    (V := graphPotential)
    (next := graphSmokeNext)
    (labelOfFace := smokeLabelOfFace)
    (graphStart := rootState)
    (const := (176 : Int))
    (scaledMargin := scaledMargin)
    (badFace := Face.ym)
    Inv SuffixOk hstart hsuffixStart hlocal hfinish

theorem split10MStrengthenedGate_of_invariantLocalWithSuffix
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    (Inv : FaceEvalState -> Prop)
    (SuffixOk : FaceEvalState -> List Face -> Prop)
    (hstart : Inv (TopPairingTransducerEvalState.start rootState))
    (hsuffixStart :
      forall rank,
        TopPairingStrengthenedClosedLanguageAtRank
          sequenceBadFace rank Face.ym ->
          SuffixOk (TopPairingTransducerEvalState.start rootState)
            (topPairingRankFaceLabels rank))
    (hlocal :
      forall {state : FaceEvalState} {face : Face} {rest : List Face},
        Inv state ->
        state.Tail (face :: rest) ->
        SuffixOk state (face :: rest) ->
          exists nextState gain,
            faceEvalNext state face = some (nextState, gain) ∧
              nextState.Tail rest ∧ Inv nextState ∧
                SuffixOk nextState rest)
    (hfinish :
      forall {rank : Fin numPairWords}
        {finish : FaceEvalState} {gain : Int},
        evalLabelStepFn faceEvalNext
          (TopPairingTransducerEvalState.start rootState)
          (topPairingRankFaceLabels rank) = some (finish, gain) ->
        finish.Tail [] ->
        Inv finish ->
        SuffixOk finish [] ->
          0 <= graphPotential finish.graph ∧
            scaledMargin rank <= (176 : Int) + gain) :
    Split10MStrengthenedToEvalGate sequenceBadFace scaledMargin :=
  strengthenedToEvalGate_of_transducerInvariantLocalWithSuffix
    (V := graphPotential)
    (next := graphSmokeNext)
    (labelOfFace := smokeLabelOfFace)
    (graphStart := rootState)
    (const := (176 : Int))
    (scaledMargin := scaledMargin)
    (sequenceBadFace := sequenceBadFace)
    (badFace := Face.ym)
    Inv SuffixOk hstart hsuffixStart hlocal hfinish

theorem scaledMargin_nonpos_of_split10MInvariantLocalWithSuffix
    {scaledMargin : Fin numPairWords -> Int}
    (Inv : FaceEvalState -> Prop)
    (SuffixOk : FaceEvalState -> List Face -> Prop)
    (hstart : Inv (TopPairingTransducerEvalState.start rootState))
    (hsuffixStart :
      forall rank,
        TopPairingClosedLanguageAtRank rank Face.ym ->
          SuffixOk (TopPairingTransducerEvalState.start rootState)
            (topPairingRankFaceLabels rank))
    (hlocal :
      forall {state : FaceEvalState} {face : Face} {rest : List Face},
        Inv state ->
        state.Tail (face :: rest) ->
        SuffixOk state (face :: rest) ->
          exists nextState gain,
            faceEvalNext state face = some (nextState, gain) ∧
              nextState.Tail rest ∧ Inv nextState ∧
                SuffixOk nextState rest)
    (hfinish :
      forall {rank : Fin numPairWords}
        {finish : FaceEvalState} {gain : Int},
        evalLabelStepFn faceEvalNext
          (TopPairingTransducerEvalState.start rootState)
          (topPairingRankFaceLabels rank) = some (finish, gain) ->
        finish.Tail [] ->
        Inv finish ->
        SuffixOk finish [] ->
          0 <= graphPotential finish.graph ∧
            scaledMargin rank <= (176 : Int) + gain)
    (rank : Fin numPairWords)
    (hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_split10MClosedToEvalGate
    (split10MClosedGate_of_invariantLocalWithSuffix
      (scaledMargin := scaledMargin)
      Inv SuffixOk hstart hsuffixStart hlocal hfinish)
    rank hclosed

theorem scaledMargin_nonpos_of_split10MStrengthenedInvariantLocalWithSuffix
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    (Inv : FaceEvalState -> Prop)
    (SuffixOk : FaceEvalState -> List Face -> Prop)
    (hstart : Inv (TopPairingTransducerEvalState.start rootState))
    (hsuffixStart :
      forall rank,
        TopPairingStrengthenedClosedLanguageAtRank
          sequenceBadFace rank Face.ym ->
          SuffixOk (TopPairingTransducerEvalState.start rootState)
            (topPairingRankFaceLabels rank))
    (hlocal :
      forall {state : FaceEvalState} {face : Face} {rest : List Face},
        Inv state ->
        state.Tail (face :: rest) ->
        SuffixOk state (face :: rest) ->
          exists nextState gain,
            faceEvalNext state face = some (nextState, gain) ∧
              nextState.Tail rest ∧ Inv nextState ∧
                SuffixOk nextState rest)
    (hfinish :
      forall {rank : Fin numPairWords}
        {finish : FaceEvalState} {gain : Int},
        evalLabelStepFn faceEvalNext
          (TopPairingTransducerEvalState.start rootState)
          (topPairingRankFaceLabels rank) = some (finish, gain) ->
        finish.Tail [] ->
        Inv finish ->
        SuffixOk finish [] ->
          0 <= graphPotential finish.graph ∧
            scaledMargin rank <= (176 : Int) + gain)
    (rank : Fin numPairWords)
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank Face.ym) :
    scaledMargin rank <= 0 :=
  scaledMargin_nonpos_of_split10MStrengthenedToEvalGate
    (split10MStrengthenedGate_of_invariantLocalWithSuffix
      (sequenceBadFace := sequenceBadFace)
      (scaledMargin := scaledMargin)
      Inv SuffixOk hstart hsuffixStart hlocal hfinish)
    rank hstrengthened

theorem semanticTransducerSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticTransducerSocket
