import Cuboctahedron.Search.TopPairingBellmanSemanticGate
import Cuboctahedron.Search.TopPairingTargetCursor
import Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge

/-!
Semantic killed sockets for top-pairing Bellman families.

The production Bellman route has two rank-local obligations: a semantic
closed-language evaluator gate proving the scaled margin is nonpositive, and a
semantic start-violation gate proving the same margin is strictly positive for
any nonidentity axis witness.  This module combines those obligations into the
public `NonIdentityRankKilled` predicate without selected-prefix, trace-id, or
sampled-rank membership.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticKilledSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge

abbrev TopPairingClosedToStartViolationGate
    (scaledMargin : Fin numPairWords -> Int)
    (badFace : Face) : Type :=
  forall rank,
    TopPairingClosedLanguageAtRank rank badFace ->
      ObjectStartViolationMarginCert rank (scaledMargin rank)

abbrev TopPairingStrengthenedToStartViolationGate
    (scaledMargin : Fin numPairWords -> Int)
    (sequenceBadFace : Fin numPairWords -> Face -> Prop)
    (badFace : Face) : Type :=
  forall rank,
    TopPairingStrengthenedClosedLanguageAtRank
      sequenceBadFace rank badFace ->
      ObjectStartViolationMarginCert rank (scaledMargin rank)

abbrev TopPairingStartMissSemanticToStartViolationGate
    (scaledMargin : Fin numPairWords -> Int)
    (badFace : Face) : Type :=
  forall rank,
    TopPairingStartMissSemanticLanguageAtRank rank badFace ->
      ObjectStartViolationMarginCert rank (scaledMargin rank)

abbrev TopPairingStartMissSemanticToNoAxisGate
    (badFace : Face) : Prop :=
  forall rank,
    TopPairingStartMissSemanticLanguageAtRank rank badFace ->
      forall seq : Step14 -> Face,
        SeqRealizesPairWord (unrankPairWord rank) seq ->
        StartsXp seq ->
        totalLinear seq ≠ (matId : Mat3 Rat) ->
        ¬ NonIdentityAxisConstraints seq

theorem nonIdentityRankKilled_of_closedSemanticGates
    {badFace : Face}
    {State Label : Type}
    {V : State -> Int}
    {Step : State -> Label -> State -> Int -> Prop}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    (next_sound :
      forall s label t gain,
        next s label = some (t, gain) -> Step s label t gain)
    (evalGate :
      TopPairingClosedToEvalGate
        V next labelOfFace start const scaledMargin badFace)
    (startGate :
      TopPairingClosedToStartViolationGate scaledMargin badFace)
    (step_valid :
      forall s label t gain, Step s label t gain -> gain + V t <= V s)
    (root_bound : const + V start <= 0)
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_nonpos_startViolationMarginCert
    (scaledMargin_nonpos_of_closedSemanticGate
      (V := V) (Step := Step) (next := next)
      (labelOfFace := labelOfFace) (start := start) (const := const)
      (scaledMargin := scaledMargin)
      next_sound evalGate step_valid root_bound hclosed)
    (startGate rank hclosed)

theorem nonIdentityRankKilled_of_closedStartViolationGate
    {badFace : Face}
    {scaledMargin : Fin numPairWords -> Int}
    (startGate :
      TopPairingClosedToStartViolationGate scaledMargin badFace)
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_startViolationMarginCert
    (startGate rank hclosed)

theorem nonIdentityRankKilled_of_startMissSemanticStartViolationGate
    {badFace : Face}
    {scaledMargin : Fin numPairWords -> Int}
    (startGate :
      TopPairingStartMissSemanticToStartViolationGate
        scaledMargin badFace)
    {rank : Fin numPairWords}
    (hsemantic :
      TopPairingStartMissSemanticLanguageAtRank rank badFace) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_startViolationMarginCert
    (startGate rank hsemantic)

theorem nonIdentityRankKilled_of_closedViaStartMissSemanticGate
    {badFace : Face}
    {scaledMargin : Fin numPairWords -> Int}
    (startGate :
      TopPairingStartMissSemanticToStartViolationGate
        scaledMargin badFace)
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_startMissSemanticStartViolationGate
    startGate (topPairingStartMissSemanticLanguage_of_closed hclosed)

theorem nonIdentityRankKilled_of_startMissSemanticNoAxisGate
    {badFace : Face}
    (noAxisGate : TopPairingStartMissSemanticToNoAxisGate badFace)
    {rank : Fin numPairWords}
    (hsemantic :
      TopPairingStartMissSemanticLanguageAtRank rank badFace) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_no_axis_constraints
    (fun seq hRealize hStart hLinear hAxis =>
      noAxisGate rank hsemantic seq hRealize hStart hLinear hAxis)

theorem nonIdentityRankKilled_of_closedViaStartMissSemanticNoAxisGate
    {badFace : Face}
    (noAxisGate : TopPairingStartMissSemanticToNoAxisGate badFace)
    {rank : Fin numPairWords}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_startMissSemanticNoAxisGate
    noAxisGate (topPairingStartMissSemanticLanguage_of_closed hclosed)

theorem nonIdentityRankKilled_of_strengthenedSemanticGates
    {badFace : Face}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {State Label : Type}
    {V : State -> Int}
    {Step : State -> Label -> State -> Int -> Prop}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    (next_sound :
      forall s label t gain,
        next s label = some (t, gain) -> Step s label t gain)
    (evalGate :
      TopPairingStrengthenedToEvalGate
        V next labelOfFace start const scaledMargin sequenceBadFace badFace)
    (startGate :
      TopPairingStrengthenedToStartViolationGate
        scaledMargin sequenceBadFace badFace)
    (step_valid :
      forall s label t gain, Step s label t gain -> gain + V t <= V s)
    (root_bound : const + V start <= 0)
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank badFace) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_nonpos_startViolationMarginCert
    (scaledMargin_nonpos_of_strengthenedSemanticGate
      (V := V) (Step := Step) (next := next)
      (labelOfFace := labelOfFace) (start := start) (const := const)
      (scaledMargin := scaledMargin)
      next_sound evalGate step_valid root_bound hstrengthened)
    (startGate rank hstrengthened)

theorem nonIdentityRankKilled_of_strengthenedStartViolationGate
    {badFace : Face}
    {sequenceBadFace : Fin numPairWords -> Face -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    (startGate :
      TopPairingStrengthenedToStartViolationGate
        scaledMargin sequenceBadFace badFace)
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        sequenceBadFace rank badFace) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_startViolationMarginCert
    (startGate rank hstrengthened)

theorem semanticKilledSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticKilledSocket
