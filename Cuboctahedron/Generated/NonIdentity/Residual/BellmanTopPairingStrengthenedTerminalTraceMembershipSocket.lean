import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedTerminalDepth11ProducerBridge

/-!
Socket for the remaining strengthened closed-language terminal membership gate.

The next production theorem should prove `StrengthenedTerminalTraceMembership`
by a deterministic semantic transducer over the closed top-pairing language.
Once that theorem exists, this socket connects it to the depth-11 graph-state
producer and the split-10M graph suffix producer without sampled ranks,
selected-prefix ids, or exact affine keys.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedTerminalTraceMembershipSocket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingDepth11GraphStateSuffixSocket
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedSuffixSplit10MBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedTerminalDepth11ProducerBridge

def StrengthenedTerminalTraceMembership : Prop :=
  ∀ rank : Fin numPairWords,
    TopPairingStrengthenedClosedLanguageAtRank
      AcceptedSequenceBadFaceAtRank rank Face.ym ->
      TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
        (topPairingRankFaceLabels rank)

def StrengthenedClosedDepth11ProducerFamily
    (rank : Fin numPairWords) : Prop :=
  TopPairingStrengthenedClosedLanguageAtRank
    AcceptedSequenceBadFaceAtRank rank Face.ym

theorem strengthenedTerminalDepth11ProducerFamily_of_membership
    (hmembership : StrengthenedTerminalTraceMembership)
    {rank : Fin numPairWords}
    (hfamily : StrengthenedClosedDepth11ProducerFamily rank) :
    StrengthenedTerminalDepth11ProducerFamily rank :=
  ⟨hfamily, hmembership rank hfamily⟩

theorem split10MDepth11GraphPathProducer_of_membership
    (hmembership : StrengthenedTerminalTraceMembership)
    {rank : Fin numPairWords}
    (hfamily : StrengthenedClosedDepth11ProducerFamily rank) :
    Split10MDepth11GraphPathProducer rank :=
  split10MDepth11GraphPathProducer_of_family
    (strengthenedTerminalDepth11ProducerFamily_of_membership
      hmembership hfamily)

theorem split10MGraphSuffixProducer_of_membership
    (hmembership : StrengthenedTerminalTraceMembership)
    {rank : Fin numPairWords}
    (hfamily : StrengthenedClosedDepth11ProducerFamily rank) :
    Split10MGraphSuffixProducer rank :=
  split10MGraphSuffixProducer_of_family
    (strengthenedTerminalDepth11ProducerFamily_of_membership
      hmembership hfamily)

theorem strengthenedTerminalTraceMembershipSocket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedTerminalTraceMembershipSocket
