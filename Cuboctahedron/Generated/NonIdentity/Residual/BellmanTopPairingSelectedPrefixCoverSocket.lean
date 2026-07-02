import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStateDAGSelectedPrefixCover.All

/-!
Semantic socket from the strengthened top-pairing language into the full
selected-prefix Bellman cover.

The selected-prefix cover is still a bounded top-pairing subproblem, but this
module records the next proof-facing bridge: a strengthened closed rank whose
sequence/bad-face payload is a `SelectedPrefixCoverFamily` member immediately
inherits the Bellman eval-language theorem and the nonpositive scaled margin.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixCoverSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStateDAGSelectedPrefixCover

def SelectedPrefixCoverSequenceBadFace
    (scaledMargin : Fin numPairWords -> Int)
    (rank : Fin numPairWords) (badFace : Face) : Prop :=
  badFace = Face.ym /\
    SelectedPrefixCoverFamily scaledMargin rank

theorem evalLanguage_of_strengthenedSelectedPrefixCover
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (h :
      TopPairingStrengthenedClosedLanguageAtRank
        (SelectedPrefixCoverSequenceBadFace scaledMargin) rank Face.ym) :
    TopPairingBellmanEvalLanguageAtRank
      graphPotential graphSmokeNext smokeLabelOfFace rootState (176 : Int)
      scaledMargin rank Face.ym := by
  rcases h.sequenceBadFace_ok with ⟨_hbadFace, hcover⟩
  exact selectedPrefixCover_evalLanguage hcover

theorem strengthenedSelectedPrefixCover_scaledMargin_nonpos
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (h :
      TopPairingStrengthenedClosedLanguageAtRank
        (SelectedPrefixCoverSequenceBadFace scaledMargin) rank Face.ym) :
    scaledMargin rank <= 0 := by
  rcases h.sequenceBadFace_ok with ⟨_hbadFace, hcover⟩
  exact selectedPrefixCover_scaledMargin_nonpos hcover

theorem selected_prefix_cover_socket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSelectedPrefixCoverSocket
