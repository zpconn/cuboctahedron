import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Base

/-!
Lean socket for the sole missing transition in the aligned 1M Bellman graph.

The closure audit for the `with-step-face-linear-tri-source` graph found one
legal transition that is not present in the graph table: state `19` on face
`tmmp`.  Its only completion is the generated sequence-bad-face rejected trace
`rejectedGraphTrace_004`.  This module records that obstruction inside Lean so
the next production membership theorem can use the strengthened bad-face
predicate rather than selected-prefix objects.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingMissingTransition1MSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.TopPairingTraceClassifier.Accepted

def missingState19TmmpPrefix : List Face :=
  [Face.xm, Face.ym, Face.tmpm, Face.zm, Face.zp, Face.tppm,
    Face.tpmm, Face.tppp, Face.tmmm, Face.tpmp]

def missingState19TmmpCompletion : List Face :=
  missingState19TmmpPrefix ++ [Face.tmmp, Face.tmpp, Face.yp, Face.xp]

theorem missingState19TmmpCompletion_eq_rejectedGraphTrace004 :
    missingState19TmmpCompletion = rejectedGraphTrace_004 := by
  rfl

theorem graph_state19_tmmp_missing :
    graphSmokeNext (19 : State) (smokeLabelOfFace Face.tmmp) = none := by
  rfl

theorem missingState19TmmpCompletion_rejectedBadFace :
    GraphRejectedBadFaceTraceLabels missingState19TmmpCompletion := by
  unfold GraphRejectedBadFaceTraceLabels
  exact missingState19TmmpCompletion_eq_rejectedGraphTrace004

theorem missingState19TmmpCompletion_not_sequenceBadFace :
    ¬ SequenceBadFaceLabels missingState19TmmpCompletion Face.ym := by
  intro hbad
  exact hbad.2 missingState19TmmpCompletion_rejectedBadFace

theorem strengthened_not_missingState19TmmpCompletion
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym) :
    topPairingRankFaceLabels rank ≠ missingState19TmmpCompletion := by
  intro hlabels
  have hbad :
      SequenceBadFaceLabels missingState19TmmpCompletion Face.ym := by
    rw [← hlabels]
    exact hstrengthened.sequenceBadFace_ok
  exact missingState19TmmpCompletion_not_sequenceBadFace hbad

theorem missingTransition1MSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingMissingTransition1MSocket
