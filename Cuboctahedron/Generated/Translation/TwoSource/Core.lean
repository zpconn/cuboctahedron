import Cuboctahedron.Generated.Coverage.TranslationSurvivors
import Cuboctahedron.Search.TwoSourceFarkas

/-!
Core adapters for generated two-source translation Farkas coverage.

Generated leaves should store only a `TwoSourceFarkasSupport` and prove its
Boolean check.  This module turns that local check into the semantic
`TranslationGoodCaseKilled` predicate used by the GoodDirection translation
coverage path.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource

open Cuboctahedron.Generated.Coverage

noncomputable def compactCertOfSupport
    (r : Fin numPairWords) (mask : SignMask)
    (support : TwoSourceFarkasSupport) :
    CompactTranslationFarkasCert where
  rank := r
  mask := mask
  sourceFarkas :=
    support.toSourceFarkasCert
      (translationChoiceSeq (unrankPairWord r) mask)
      ((totalAff (translationChoiceSeq (unrankPairWord r) mask)).b)

theorem checkCompact_of_support_check
    {r : Fin numPairWords} {mask : SignMask}
    {support : TwoSourceFarkasSupport}
    (hcheck :
      support.check
        (translationChoiceSeq (unrankPairWord r) mask)
        ((totalAff (translationChoiceSeq (unrankPairWord r) mask)).b) =
          true) :
    checkCompactTranslationFarkas
      (compactCertOfSupport r mask support) = true := by
  simpa [compactCertOfSupport, checkCompactTranslationFarkas,
    CompactTranslationFarkasCert.seqFun,
    CompactTranslationFarkasCert.totalTranslation,
    TwoSourceFarkasSupport.check]
    using hcheck

theorem certified_of_support_check
    {r : Fin numPairWords} {mask : SignMask}
    {support : TwoSourceFarkasSupport}
    (hcheck :
      support.check
        (translationChoiceSeq (unrankPairWord r) mask)
        ((totalAff (translationChoiceSeq (unrankPairWord r) mask)).b) =
          true) :
    TranslationCaseCertified r mask := by
  intro hM
  exact
    checkCompactTranslationFarkas_exists_cert
      (compactCertOfSupport r mask support) hM
      (checkCompact_of_support_check hcheck)

theorem goodCaseKilled_of_support_check
    {r : Fin numPairWords} {mask : SignMask}
    {support : TwoSourceFarkasSupport}
    (hcheck :
      support.check
        (translationChoiceSeq (unrankPairWord r) mask)
        ((totalAff (translationChoiceSeq (unrankPairWord r) mask)).b) =
          true) :
    TranslationGoodCaseKilled r mask := by
  intro _hgood
  exact TranslationCaseCertified.killed
    (certified_of_support_check hcheck)

theorem goodCaseKilled_of_checked
    {r : Fin numPairWords} {mask : SignMask}
    {support : TwoSourceFarkasSupport}
    (hchecked :
      support.Checked
        (translationSeqAtRankMask r mask)
        (translationBAtRankMask r mask)) :
    TranslationGoodCaseKilled r mask := by
  intro _hgood hM hbad
  rcases hbad with ⟨seq, hRealize, hLinear, hFeasible⟩
  have hseq : seq = translationSeqAtRankMask r mask := by
    funext i
    exact hRealize.choice_matches i
  have hTrans :
      TranslationUnfoldedFeasible
        (translationSeqAtRankMask r mask)
        (translationBAtRankMask r mask) := by
    refine
      { feasible := ?_
        startsXp := ?_
        linear_id := ?_
        translation_vector := rfl }
    · simpa [hseq] using hFeasible
    · exact translationChoiceSeq_starts (unrankPairWord r) mask
    · simpa [hseq] using hLinear
  exact hchecked.sound (translation_feasible_implies_constraints hTrans)

theorem not_goodDirection_of_bool_false
    {r : Fin numPairWords} {mask : SignMask}
    (hbool : goodDirectionAtRankBool r mask = false) :
    ¬ GoodDirectionAtRank r mask := by
  intro hgood
  have htrue := goodDirectionAtRankBool_eq_true_of_goodDirection hgood
  rw [hbool] at htrue
  contradiction

theorem goodCaseKilled_of_nonidentity
    {r : Fin numPairWords} {mask : SignMask}
    (hNot :
      totalLinearOfPairWord (unrankPairWord r) ≠ (matId : Mat3 Rat)) :
    TranslationGoodCaseKilled r mask := by
  intro _hgood hM
  exact False.elim (hNot hM)

end Cuboctahedron.Generated.Translation.TwoSource
