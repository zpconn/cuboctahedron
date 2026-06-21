import Cuboctahedron.Search.CertificateFormat

/-!
Shared translation Farkas shape transport.

This module keeps the trusted boundary at the existing source-indexed Farkas
checker.  A normalized shape can be checked once, while each transported case
still reconstructs and checks an ordinary compact translation Farkas
certificate for its concrete `(rank, mask)`.
-/

namespace Cuboctahedron

structure NormalizedFarkasRow where
  a : Int
  b : Int
  c : Int
deriving DecidableEq, Repr

namespace NormalizedFarkasRow

def toStrictLin2 (row : NormalizedFarkasRow) : StrictLin2 where
  a := (row.a : Rat)
  b := (row.b : Rat)
  c := (row.c : Rat)

end NormalizedFarkasRow

structure NormalizedFarkasShape where
  shapeId : String
  rows : List NormalizedFarkasRow
  cert : FarkasCert
deriving DecidableEq, Repr

namespace NormalizedFarkasShape

def constraints (shape : NormalizedFarkasShape) : List StrictLin2 :=
  shape.rows.map NormalizedFarkasRow.toStrictLin2

def check (shape : NormalizedFarkasShape) : Bool :=
  checkFarkas shape.constraints shape.cert

theorem check_sound
    {shape : NormalizedFarkasShape}
    (hcheck : shape.check = true) :
    ¬ exists y z : Real,
      forall L, L ∈ shape.constraints -> L.Holds y z :=
  checkFarkas_sound hcheck

end NormalizedFarkasShape

structure TransSourceFarkasCase where
  rank : Fin numPairWords
  mask : SignMask
  shapeId : String
  sourceFarkas : SourceFarkasCert
deriving DecidableEq, Repr

namespace TransSourceFarkasCase

noncomputable def toCompact
    (caseData : TransSourceFarkasCase) : CompactTranslationFarkasCert where
  rank := caseData.rank
  mask := caseData.mask
  sourceFarkas := caseData.sourceFarkas

noncomputable def checkWithShape
    (shape : NormalizedFarkasShape)
    (caseData : TransSourceFarkasCase) : Bool :=
  decide (caseData.shapeId = shape.shapeId) &&
    (shape.check &&
      checkCompactTranslationFarkas caseData.toCompact)

theorem checkWithShape_exists_cert
    {shape : NormalizedFarkasShape}
    {caseData : TransSourceFarkasCase}
    (hLinear :
      totalLinearOfPairWord (unrankPairWord caseData.rank) =
        (matId : Mat3 Rat))
    (hcheck : caseData.checkWithShape shape = true) :
    exists cert : TranslationCert,
      cert.word = unrankPairWord caseData.rank /\
        cert.signMask = caseData.mask /\
          checkTranslationCert cert = true := by
  have hTail :
      shape.check &&
        checkCompactTranslationFarkas caseData.toCompact = true := by
    have hparts :
        caseData.shapeId = shape.shapeId /\
          (shape.check &&
            checkCompactTranslationFarkas caseData.toCompact = true) := by
      simpa only [checkWithShape, Bool.and_eq_true, decide_eq_true_eq]
        using hcheck
    exact hparts.2
  have hCompact :
      checkCompactTranslationFarkas caseData.toCompact = true := by
    have hparts :
        shape.check = true /\
          checkCompactTranslationFarkas caseData.toCompact = true := by
      simpa only [Bool.and_eq_true, decide_eq_true_eq] using hTail
    exact hparts.2
  exact checkCompactTranslationFarkas_exists_cert
    caseData.toCompact hLinear hCompact

end TransSourceFarkasCase

structure TransSourceFarkasFamily where
  name : String
  shape : NormalizedFarkasShape
  cases : List TransSourceFarkasCase
deriving DecidableEq, Repr

namespace TransSourceFarkasFamily

def ContainsCase
    (family : TransSourceFarkasFamily)
    (rank : Fin numPairWords) (mask : SignMask) : Prop :=
  exists caseData : TransSourceFarkasCase,
    caseData ∈ family.cases /\
      caseData.rank = rank /\
        caseData.mask = mask

noncomputable def check (family : TransSourceFarkasFamily) : Bool :=
  family.shape.check &&
    family.cases.all (fun caseData => caseData.checkWithShape family.shape)

theorem exists_cert
    {family : TransSourceFarkasFamily}
    (hcheck : family.check = true)
    {rank : Fin numPairWords} {mask : SignMask}
    (hcontains : family.ContainsCase rank mask)
    (hLinear :
      totalLinearOfPairWord (unrankPairWord rank) =
        (matId : Mat3 Rat)) :
    exists cert : TranslationCert,
      cert.word = unrankPairWord rank /\
        cert.signMask = mask /\
          checkTranslationCert cert = true := by
  unfold check at hcheck
  simp only [Bool.and_eq_true, List.all_eq_true] at hcheck
  rcases hcheck with ⟨_hShape, hCases⟩
  rcases hcontains with ⟨caseData, hmem, hrank, hmask⟩
  have hCaseCheck :
      caseData.checkWithShape family.shape = true :=
    hCases caseData hmem
  have hLinearCase :
      totalLinearOfPairWord (unrankPairWord caseData.rank) =
        (matId : Mat3 Rat) := by
    simpa [hrank] using hLinear
  rcases TransSourceFarkasCase.checkWithShape_exists_cert
      hLinearCase hCaseCheck with
    ⟨cert, hword, hcertMask, hcertCheck⟩
  exact ⟨cert, by simpa [hrank] using hword,
    by simpa [hmask] using hcertMask, hcertCheck⟩

theorem no_feasible
    {family : TransSourceFarkasFamily}
    (hcheck : family.check = true)
    {rank : Fin numPairWords} {mask : SignMask}
    (hcontains : family.ContainsCase rank mask) :
    ¬ exists seq,
      SeqRealizesTranslationChoice (unrankPairWord rank) mask seq /\
        totalLinear seq = (matId : Mat3 Rat) /\
          UnfoldedFeasible seq := by
  intro hbad
  rcases hbad with ⟨seq, hRealize, hLinear, hFeasible⟩
  have hLinearWord :
      totalLinearOfPairWord (unrankPairWord rank) =
        (matId : Mat3 Rat) := by
    have hSeqLinear := hRealize.linear_eq
    rw [hSeqLinear] at hLinear
    exact hLinear
  rcases exists_cert hcheck hcontains hLinearWord with
    ⟨cert, hword, hmask, hcertCheck⟩
  exact checkTranslationCert_sound cert hcertCheck
    ⟨seq, by simpa [hword, hmask] using hRealize, hLinear, hFeasible⟩

end TransSourceFarkasFamily

structure TransCheckedFarkasCase where
  shapeId : String
  checked : CheckedTranslationCase

namespace TransCheckedFarkasCase

def checkWithShape
    (shape : NormalizedFarkasShape)
    (caseData : TransCheckedFarkasCase) : Bool :=
  decide (caseData.shapeId = shape.shapeId) &&
    shape.check

theorem checkWithShape_exists_cert
    {shape : NormalizedFarkasShape}
    {caseData : TransCheckedFarkasCase}
    (_hcheck : caseData.checkWithShape shape = true) :
    exists cert : TranslationCert,
      cert.word = unrankPairWord caseData.checked.rank /\
        cert.signMask = caseData.checked.mask /\
          checkTranslationCert cert = true :=
  caseData.checked.exists_cert

end TransCheckedFarkasCase

structure TransCheckedFarkasFamily where
  name : String
  shape : NormalizedFarkasShape
  cases : List TransCheckedFarkasCase

namespace TransCheckedFarkasFamily

def ContainsCase
    (family : TransCheckedFarkasFamily)
    (rank : Fin numPairWords) (mask : SignMask) : Prop :=
  exists caseData : TransCheckedFarkasCase,
    caseData ∈ family.cases /\
      caseData.checked.rank = rank /\
        caseData.checked.mask = mask

def check (family : TransCheckedFarkasFamily) : Bool :=
  family.shape.check &&
    family.cases.all (fun caseData => caseData.checkWithShape family.shape)

theorem exists_cert
    {family : TransCheckedFarkasFamily}
    (hcheck : family.check = true)
    {rank : Fin numPairWords} {mask : SignMask}
    (hcontains : family.ContainsCase rank mask) :
    exists cert : TranslationCert,
      cert.word = unrankPairWord rank /\
        cert.signMask = mask /\
          checkTranslationCert cert = true := by
  unfold check at hcheck
  simp only [Bool.and_eq_true, List.all_eq_true] at hcheck
  rcases hcheck with ⟨_hShape, hCases⟩
  rcases hcontains with ⟨caseData, hmem, hrank, hmask⟩
  have hCaseCheck :
      caseData.checkWithShape family.shape = true :=
    hCases caseData hmem
  rcases TransCheckedFarkasCase.checkWithShape_exists_cert
      hCaseCheck with
    ⟨cert, hword, hcertMask, hcertCheck⟩
  exact ⟨cert, by simpa [hrank] using hword,
    by simpa [hmask] using hcertMask, hcertCheck⟩

theorem no_feasible
    {family : TransCheckedFarkasFamily}
    (hcheck : family.check = true)
    {rank : Fin numPairWords} {mask : SignMask}
    (hcontains : family.ContainsCase rank mask) :
    ¬ exists seq,
      SeqRealizesTranslationChoice (unrankPairWord rank) mask seq /\
        totalLinear seq = (matId : Mat3 Rat) /\
          UnfoldedFeasible seq := by
  intro hbad
  rcases hbad with ⟨seq, hRealize, hLinear, hFeasible⟩
  rcases exists_cert hcheck hcontains with
    ⟨cert, hword, hmask, hcertCheck⟩
  exact checkTranslationCert_sound cert hcertCheck
    ⟨seq, by simpa [hword, hmask] using hRealize, hLinear, hFeasible⟩

end TransCheckedFarkasFamily

end Cuboctahedron
