import Cuboctahedron.Search.CertificateFormat
import Cuboctahedron.Generated.NonIdentity.ResidualTemplates

/-!
Generated proof-carrying residual compression sample for Step 14E.7B9.

This module exercises the trusted residual-family interface with
representative residual certificates.  It is a compression preflight,
not the final exhaustive residual partition.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.CompressionSample

open Cuboctahedron.Generated.NonIdentity.ResidualTemplates

set_option maxHeartbeats 2400000
set_option maxRecDepth 10000
set_option linter.unusedVariables false
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false

theorem residualCompressionAxisMissesStartInterior000000012_coveredRank :
    checkNonIdCoveredRank 12 residualAxisMissesStartInteriorTemplate = true := by
  decide

theorem residualCompressionAxisMissesStartInterior000000012_word_eq :
    residualAxisMissesStartInteriorTemplate.word =
      unrankPairWord (⟨12, by decide⟩ : Fin numPairWords) := by
  exact
    checkNonIdCoveredRank_word
      (r := (⟨12, by decide⟩ : Fin numPairWords))
      (cert := residualAxisMissesStartInteriorTemplate) residualCompressionAxisMissesStartInterior000000012_coveredRank

def residualCompressionAxisMissesStartInterior000000012CheckedRank
    (rank : Fin numPairWords)
    (hcontains : rank = (⟨12, by decide⟩ : Fin numPairWords)) :
    CheckedNonIdRank := by
  subst rank
  exact
    { rank := (⟨12, by decide⟩ : Fin numPairWords)
      cert := residualAxisMissesStartInteriorTemplate
      word_eq := residualCompressionAxisMissesStartInterior000000012_word_eq
      check := residualAxisMissesStartInteriorTemplate_check }

def residualCompressionAxisMissesStartInteriorFamily000000012 : ProofCarryingNonIdResidualFamily where
  name := "residualCompressionAxisMissesStartInteriorFamily000000012"
  failure := NonIdFamilyFailure.axisMissesStartInterior
  normalizedStateId := "proof-carrying-nonid-residual-family:8d9e8aab3ad02662d46b9ca9"
  ContainsRank := fun rank =>
    rank = (⟨12, by decide⟩ : Fin numPairWords)
  checkedRank := by
    intro rank hcontains
    exact residualCompressionAxisMissesStartInterior000000012CheckedRank rank hcontains
  checkedRank_rank := by
    intro rank hcontains
    subst rank
    rfl

theorem residualCompressionAxisMissesStartInteriorFamily000000012_representative_exists :
    exists cert : NonIdCert,
      cert.word = unrankPairWord (⟨12, by decide⟩ : Fin numPairWords) /\
        checkNonIdCert cert = true :=
  ProofCarryingNonIdResidualFamily.exists_cert residualCompressionAxisMissesStartInteriorFamily000000012 (by rfl)

theorem residualCompressionAxisMissesStartInteriorFamily000000012_representative_no_feasible :
    ¬ exists seq,
      SeqRealizesPairWord (unrankPairWord (⟨12, by decide⟩ : Fin numPairWords)) seq /\
        StartsXp seq /\
        totalLinear seq ≠ (matId : Mat3 Rat) /\
        UnfoldedFeasible seq :=
  ProofCarryingNonIdResidualFamily.no_feasible residualCompressionAxisMissesStartInteriorFamily000000012 (by rfl)

theorem residualCompressionBadFirstHit000000159_coveredRank :
    checkNonIdCoveredRank 159 residualBadFirstHitTemplate = true := by
  decide

theorem residualCompressionBadFirstHit000000159_word_eq :
    residualBadFirstHitTemplate.word =
      unrankPairWord (⟨159, by decide⟩ : Fin numPairWords) := by
  exact
    checkNonIdCoveredRank_word
      (r := (⟨159, by decide⟩ : Fin numPairWords))
      (cert := residualBadFirstHitTemplate) residualCompressionBadFirstHit000000159_coveredRank

def residualCompressionBadFirstHit000000159CheckedRank
    (rank : Fin numPairWords)
    (hcontains : rank = (⟨159, by decide⟩ : Fin numPairWords)) :
    CheckedNonIdRank := by
  subst rank
  exact
    { rank := (⟨159, by decide⟩ : Fin numPairWords)
      cert := residualBadFirstHitTemplate
      word_eq := residualCompressionBadFirstHit000000159_word_eq
      check := residualBadFirstHitTemplate_check }

def residualCompressionBadFirstHitFamily000000159 : ProofCarryingNonIdResidualFamily where
  name := "residualCompressionBadFirstHitFamily000000159"
  failure := NonIdFamilyFailure.badFirstHit
  normalizedStateId := "proof-carrying-nonid-residual-family:6a72b1f6d1295f1c3b177129"
  ContainsRank := fun rank =>
    rank = (⟨159, by decide⟩ : Fin numPairWords)
  checkedRank := by
    intro rank hcontains
    exact residualCompressionBadFirstHit000000159CheckedRank rank hcontains
  checkedRank_rank := by
    intro rank hcontains
    subst rank
    rfl

theorem residualCompressionBadFirstHitFamily000000159_representative_exists :
    exists cert : NonIdCert,
      cert.word = unrankPairWord (⟨159, by decide⟩ : Fin numPairWords) /\
        checkNonIdCert cert = true :=
  ProofCarryingNonIdResidualFamily.exists_cert residualCompressionBadFirstHitFamily000000159 (by rfl)

theorem residualCompressionBadFirstHitFamily000000159_representative_no_feasible :
    ¬ exists seq,
      SeqRealizesPairWord (unrankPairWord (⟨159, by decide⟩ : Fin numPairWords)) seq /\
        StartsXp seq /\
        totalLinear seq ≠ (matId : Mat3 Rat) /\
        UnfoldedFeasible seq :=
  ProofCarryingNonIdResidualFamily.no_feasible residualCompressionBadFirstHitFamily000000159 (by rfl)

def residualCompressionSampleFamilies :
    List ProofCarryingNonIdResidualFamily :=
  [residualCompressionAxisMissesStartInteriorFamily000000012, residualCompressionBadFirstHitFamily000000159]

#check ProofCarryingNonIdResidualFamily.exists_cert
#check ProofCarryingNonIdResidualFamily.no_feasible

end Cuboctahedron.Generated.NonIdentity.Residual.CompressionSample
