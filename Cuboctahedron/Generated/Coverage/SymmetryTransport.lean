import Cuboctahedron.Generated.Coverage.PrefixInterval
import Cuboctahedron.Generated.Coverage.Predicates
import Cuboctahedron.Search.PairWordSymmetry

/-!
Small Prop-level transport combinators for started-face symmetries.

This module does not claim that a symmetry preserves unfolded feasibility by
itself.  Instead it provides the interval plumbing: if a generated or
hand-written theorem supplies a semantic transport proof for the predicate at
hand, then interval coverage can be moved across an explicit rank/case map.
-/

namespace Cuboctahedron.Generated.Coverage

def SymRankMap
    (σ : StartedSym) (lo hi lo' hi' : Nat) : Prop :=
  forall dst : Fin numPairWords,
    lo' <= dst.val -> dst.val < hi' ->
      exists src : Fin numPairWords,
        lo <= src.val /\ src.val < hi /\
          unrankPairWord dst = symPairWord σ (unrankPairWord src)

def SymTranslationCaseMap
    (σ : StartedSym) (lo hi lo' hi' : Nat) : Prop :=
  forall (dst : Fin numPairWords) (dstMask : SignMask),
    lo' <= dst.val -> dst.val < hi' ->
      exists (src : Fin numPairWords) (srcMask : SignMask),
        lo <= src.val /\ src.val < hi /\
          unrankPairWord dst = symPairWord σ (unrankPairWord src) /\
            dstMask = symTranslationMask σ (unrankPairWord src) srcMask

def NatTranslationCasePred
    (P : Fin numPairWords -> SignMask -> Prop) (r : Nat) : Prop :=
  forall hlt : r < numPairWords, forall mask : SignMask, P ⟨r, hlt⟩ mask

theorem symRankMap_apply
    {σ : StartedSym} {lo hi lo' hi' : Nat}
    (hmap : SymRankMap σ lo hi lo' hi')
    (dst : Fin numPairWords)
    (hlo : lo' <= dst.val) (hhi : dst.val < hi') :
    exists src : Fin numPairWords,
      lo <= src.val /\ src.val < hi /\
        unrankPairWord dst = symPairWord σ (unrankPairWord src) :=
  hmap dst hlo hhi

theorem symTranslationCaseMap_apply
    {σ : StartedSym} {lo hi lo' hi' : Nat}
    (hmap : SymTranslationCaseMap σ lo hi lo' hi')
    (dst : Fin numPairWords) (dstMask : SignMask)
    (hlo : lo' <= dst.val) (hhi : dst.val < hi') :
    exists (src : Fin numPairWords) (srcMask : SignMask),
      lo <= src.val /\ src.val < hi /\
        unrankPairWord dst = symPairWord σ (unrankPairWord src) /\
          dstMask = symTranslationMask σ (unrankPairWord src) srcMask :=
  hmap dst dstMask hlo hhi

theorem symRankMap_transport
    {P : Fin numPairWords -> Prop}
    {σ : StartedSym} {lo hi lo' hi' : Nat}
    (htransport :
      forall {src dst : Fin numPairWords},
        unrankPairWord dst = symPairWord σ (unrankPairWord src) ->
          P src -> P dst)
    (hmap : SymRankMap σ lo hi lo' hi')
    (hcover : CoversInterval (NatRankPred P) lo hi) :
    CoversInterval (NatRankPred P) lo' hi' := by
  intro dstRaw hlo hhi hdstLt
  rcases hmap ⟨dstRaw, hdstLt⟩ hlo hhi with
    ⟨src, hsrcLo, hsrcHi, hword⟩
  exact htransport hword (hcover src.val hsrcLo hsrcHi src.isLt)

theorem symTranslationCaseMap_transport
    {P : Fin numPairWords -> SignMask -> Prop}
    {σ : StartedSym} {lo hi lo' hi' : Nat}
    (htransport :
      forall {src dst : Fin numPairWords} {srcMask dstMask : SignMask},
        unrankPairWord dst = symPairWord σ (unrankPairWord src) ->
          dstMask = symTranslationMask σ (unrankPairWord src) srcMask ->
            P src srcMask -> P dst dstMask)
    (hmap : SymTranslationCaseMap σ lo hi lo' hi')
    (hcover : CoversInterval (NatTranslationCasePred P) lo hi) :
    CoversInterval (NatTranslationCasePred P) lo' hi' := by
  intro dstRaw hlo hhi hdstLt dstMask
  rcases hmap ⟨dstRaw, hdstLt⟩ dstMask hlo hhi with
    ⟨src, srcMask, hsrcLo, hsrcHi, hword, hmask⟩
  exact htransport hword hmask
    (hcover src.val hsrcLo hsrcHi src.isLt srcMask)

theorem nonid_symm_transport
    {σ : StartedSym} {lo hi lo' hi' : Nat}
    (htransport :
      forall {src dst : Fin numPairWords},
        unrankPairWord dst = symPairWord σ (unrankPairWord src) ->
          NonIdentityRankKilled src -> NonIdentityRankKilled dst)
    (hmap : SymRankMap σ lo hi lo' hi')
    (hcover : CoversInterval NonIdentityRankKilledNat lo hi) :
    CoversInterval NonIdentityRankKilledNat lo' hi' := by
  intro dst hlo hhi hdstLt
  exact
    symRankMap_transport
      (P := NonIdentityRankKilled)
      (σ := σ) (lo := lo) (hi := hi) (lo' := lo') (hi' := hi')
      htransport hmap
      (by
        intro src hsrcLo hsrcHi hsrcLt
        exact hcover src hsrcLo hsrcHi hsrcLt)
      dst hlo hhi hdstLt

theorem translation_symm_transport
    {σ : StartedSym} {lo hi lo' hi' : Nat}
    (htransport :
      forall {src dst : Fin numPairWords} {srcMask dstMask : SignMask},
        unrankPairWord dst = symPairWord σ (unrankPairWord src) ->
          dstMask = symTranslationMask σ (unrankPairWord src) srcMask ->
            TranslationCaseKilled src srcMask ->
              TranslationCaseKilled dst dstMask)
    (hmap : SymTranslationCaseMap σ lo hi lo' hi')
    (hcover :
      CoversInterval
        (NatTranslationCasePred TranslationCaseKilled) lo hi) :
    CoversInterval
      (NatTranslationCasePred TranslationCaseKilled) lo' hi' :=
  symTranslationCaseMap_transport
    (P := TranslationCaseKilled)
    (σ := σ) (lo := lo) (hi := hi) (lo' := lo') (hi' := hi')
    htransport hmap hcover

end Cuboctahedron.Generated.Coverage
