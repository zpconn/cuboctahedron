import Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge
import Cuboctahedron.Search.BellmanTopPairingLanguage

/-!
Semantic bridge for the top-pairing Bellman residual route.

The current graph smokes prove sampled rank coverage by choosing concrete
objects from a finite sampled index type.  The production route needs the same
Bellman/start-violation machinery, but with a semantic closed-language
predicate as the public `ContainsRank` surface.  This file records that exact
small theorem shape without introducing any generated data.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageBridge

abbrev ClosedTopPairingContainsRank (badFace : Face) :
    Fin numPairWords -> Prop :=
  fun rank =>
    _root_.Cuboctahedron.TopPairingClosedLanguageAtRank rank badFace

theorem nonIdentityRankKilled_of_closed_top_pairing_object_cover
    {Obj State Label : Type}
    {V : State -> Int}
    {Step : State -> Label -> State -> Int -> Prop}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {rankOf : Obj -> Fin numPairWords}
    {Accepts : Obj -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    {badFace : Face}
    (cover :
      _root_.Cuboctahedron.BellmanAxisRankObjectCover
        Obj State Label V Step labelOfFace start const rankOf
        Accepts (ClosedTopPairingContainsRank badFace) scaledMargin)
    (certOf :
      forall obj, Accepts obj ->
        _root_.Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge.ObjectStartViolationMarginCert
          (rankOf obj) (scaledMargin (rankOf obj)))
    {rank : Fin numPairWords}
    (hclosed :
      _root_.Cuboctahedron.TopPairingClosedLanguageAtRank rank badFace) :
    _root_.Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  _root_.Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge.nonIdentityRankKilled_of_object_cover_start_violation_margin_certs
    cover certOf hclosed

theorem nonIdentityRankKilled_of_closed_top_pairing_ym_object_cover
    {Obj State Label : Type}
    {V : State -> Int}
    {Step : State -> Label -> State -> Int -> Prop}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {rankOf : Obj -> Fin numPairWords}
    {Accepts : Obj -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    (cover :
      _root_.Cuboctahedron.BellmanAxisRankObjectCover
        Obj State Label V Step labelOfFace start const rankOf
        Accepts (ClosedTopPairingContainsRank Face.ym) scaledMargin)
    (certOf :
      forall obj, Accepts obj ->
        _root_.Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge.ObjectStartViolationMarginCert
          (rankOf obj) (scaledMargin (rankOf obj)))
    {rank : Fin numPairWords}
    (hclosed :
      _root_.Cuboctahedron.TopPairingClosedLanguageAtRank rank Face.ym) :
    _root_.Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_closed_top_pairing_object_cover
    cover certOf hclosed

theorem bridgeSurface_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageBridge
