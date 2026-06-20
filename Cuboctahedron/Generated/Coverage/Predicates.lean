import Cuboctahedron.Generated.Coverage.Interval
import Cuboctahedron.Search.CertificateFormat

/-!
Small semantic predicates for public generated coverage.

The current Step 15-facing API still consumes checked certificates through
`ExhaustiveGeneratedCoverage`.  These predicates give generated coverage files a
small theorem-valued surface that can also be used directly as semantic
impossibility evidence.
-/

namespace Cuboctahedron.Generated.Coverage

def NonIdentityRankCertified (r : Fin numPairWords) : Prop :=
  totalLinearOfPairWord (unrankPairWord r) ≠ (matId : Mat3 Rat) ->
    exists cert : NonIdCert,
      cert.word = unrankPairWord r /\
        checkNonIdCert cert = true

def NonIdentityRankKilled (r : Fin numPairWords) : Prop :=
  totalLinearOfPairWord (unrankPairWord r) ≠ (matId : Mat3 Rat) ->
    ¬ exists seq,
      SeqRealizesPairWord (unrankPairWord r) seq /\
        StartsXp seq /\
        totalLinear seq ≠ (matId : Mat3 Rat) /\
        UnfoldedFeasible seq

theorem NonIdentityRankCertified.killed
    {r : Fin numPairWords}
    (hcert : NonIdentityRankCertified r) :
    NonIdentityRankKilled r := by
  intro hM hbad
  rcases hcert hM with ⟨cert, hword, hcheck⟩
  rcases hbad with ⟨seq, hRealize, hStart, hLinear, hFeasible⟩
  exact checkNonIdCert_sound cert hcheck
    ⟨seq, by simpa [hword] using hRealize, hStart, hLinear, hFeasible⟩

def TranslationCaseCertified (r : Fin numPairWords) (mask : SignMask) : Prop :=
  totalLinearOfPairWord (unrankPairWord r) = (matId : Mat3 Rat) ->
    exists cert : TranslationCert,
      cert.word = unrankPairWord r /\
        cert.signMask = mask /\
          checkTranslationCert cert = true

def TranslationCaseKilled (r : Fin numPairWords) (mask : SignMask) : Prop :=
  totalLinearOfPairWord (unrankPairWord r) = (matId : Mat3 Rat) ->
    ¬ exists seq,
      SeqRealizesTranslationChoice (unrankPairWord r) mask seq /\
        totalLinear seq = (matId : Mat3 Rat) /\
          UnfoldedFeasible seq

theorem TranslationCaseCertified.killed
    {r : Fin numPairWords} {mask : SignMask}
    (hcert : TranslationCaseCertified r mask) :
    TranslationCaseKilled r mask := by
  intro hM hbad
  rcases hcert hM with ⟨cert, hword, hmask, hcheck⟩
  rcases hbad with ⟨seq, hRealize, hLinear, hFeasible⟩
  exact checkTranslationCert_sound cert hcheck
    ⟨seq, by simpa [hword, hmask] using hRealize, hLinear, hFeasible⟩

end Cuboctahedron.Generated.Coverage
