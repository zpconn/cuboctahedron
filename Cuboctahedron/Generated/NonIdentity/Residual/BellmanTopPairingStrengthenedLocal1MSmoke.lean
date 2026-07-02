import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingInvariantSuffix1MSmoke
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingMissingTransition1MSocket

/-!
Strengthened local-transition smoke for the aligned 1M top-pairing graph.

The ordinary invariant/suffix smoke proves eval progress from a graph-accepted
suffix predicate.  This module records the first production-shaped exception:
the only missing graph transition, state `19` on face `tmmp`, is impossible for
the strengthened closed language.  The theorem is intentionally semantic: it is
keyed by the strengthened closed rank predicate and the deterministic
transducer tail, not by a sampled rank/path index.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedLocal1MSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingMissingTransition1MSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTransducerFaceEval1MSmoke

/--
Minimal suffix predicate for the missing-transition socket.

The production version should carry this style of semantic information through
the full evaluator: a strengthened closed rank, the current semantic state, the
remaining rank-label suffix, and its length.  It deliberately contains no
sampled index and no selected-prefix object.
-/
def StrengthenedMissingSuffixOk
    (rank : Fin numPairWords) (state : FaceEvalState)
    (suffix : List Face) : Prop :=
  TopPairingStrengthenedClosedLanguageAtRank
      AcceptedSequenceBadFaceAtRank rank Face.ym ∧
    state = missingState19TmmpSemanticEvalState ∧
    topPairingRankFaceLabels rank =
      missingState19TmmpPrefix ++ suffix ∧
    suffix.length = 4

/--
Local progress for the sole missing graph edge follows ex falso from the
strengthened semantic language: any semantic tail beginning with `tmmp` at
state `19` must be the rejected graph trace `004`, but the strengthened
bad-face predicate excludes that trace.
-/
theorem strengthened_missing_tmmp_local_progress
    {rank : Fin numPairWords} {rest : List Face}
    (hsuffix :
      StrengthenedMissingSuffixOk rank
        missingState19TmmpSemanticEvalState (Face.tmmp :: rest))
    (htail :
      missingState19TmmpSemanticEvalState.Tail (Face.tmmp :: rest)) :
    ∃ nextState gain,
      faceEvalNext missingState19TmmpSemanticEvalState Face.tmmp =
        some (nextState, gain) := by
  rcases hsuffix with ⟨hstrengthened, _hstate, hlabels, hlen⟩
  have hrestLen : rest.length = 3 := by
    simpa using hlen
  exact False.elim
    (strengthened_no_missingState19TmmpSemanticTail
      hstrengthened hlabels htail hrestLen)

theorem strengthenedLocal1MSmoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedLocal1MSmoke
