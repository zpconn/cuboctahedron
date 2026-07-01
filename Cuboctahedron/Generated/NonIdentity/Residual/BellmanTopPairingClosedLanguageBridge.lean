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

private def objectCoverOfLanguageFamily
    {State Label : Type}
    {V : State -> Int}
    {Step : State -> Label -> State -> Int -> Prop}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {ContainsRank : Fin numPairWords -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    (family :
      _root_.Cuboctahedron.BellmanAxisRankLanguageFamily
        State Label V Step labelOfFace start const ContainsRank scaledMargin) :
    _root_.Cuboctahedron.BellmanAxisRankObjectCover
      { rank : Fin numPairWords // ContainsRank rank }
      State Label V Step labelOfFace start const
      (fun obj => obj.1)
      (fun _obj => True)
      ContainsRank scaledMargin where
  forcedSeq := fun obj => family.forcedSeq obj.1 obj.2
  trace_bound := by
    intro obj _hAccept
    exact ⟨family.finish obj.1 obj.2, family.gain obj.1 obj.2,
      family.run obj.1 obj.2, family.finish_nonneg obj.1 obj.2,
      family.margin_bound obj.1 obj.2⟩
  step_valid := family.step_valid
  root_bound := family.root_bound
  covers := by
    intro rank hrank
    exact ⟨⟨rank, hrank⟩, True.intro, rfl⟩

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

theorem nonIdentityRankKilled_of_closed_top_pairing_language_family
    {State Label : Type}
    {V : State -> Int}
    {Step : State -> Label -> State -> Int -> Prop}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    {badFace : Face}
    (family :
      _root_.Cuboctahedron.BellmanAxisRankLanguageFamily
        State Label V Step labelOfFace start const
        (ClosedTopPairingContainsRank badFace) scaledMargin)
    (certOf :
      forall rank,
        _root_.Cuboctahedron.TopPairingClosedLanguageAtRank rank badFace ->
          _root_.Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge.ObjectStartViolationMarginCert
            rank (scaledMargin rank))
    {rank : Fin numPairWords}
    (hclosed :
      _root_.Cuboctahedron.TopPairingClosedLanguageAtRank rank badFace) :
    _root_.Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_closed_top_pairing_object_cover
    (badFace := badFace)
    (cover :=
      objectCoverOfLanguageFamily family)
    (certOf := by
      intro obj _hAccept
      exact certOf obj.1 obj.2)
    hclosed

theorem nonIdentityRankKilled_of_closed_top_pairing_ym_language_family
    {State Label : Type}
    {V : State -> Int}
    {Step : State -> Label -> State -> Int -> Prop}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    (family :
      _root_.Cuboctahedron.BellmanAxisRankLanguageFamily
        State Label V Step labelOfFace start const
        (ClosedTopPairingContainsRank Face.ym) scaledMargin)
    (certOf :
      forall rank,
        _root_.Cuboctahedron.TopPairingClosedLanguageAtRank rank Face.ym ->
          _root_.Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge.ObjectStartViolationMarginCert
            rank (scaledMargin rank))
    {rank : Fin numPairWords}
    (hclosed :
      _root_.Cuboctahedron.TopPairingClosedLanguageAtRank rank Face.ym) :
    _root_.Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_closed_top_pairing_language_family
    family certOf hclosed

structure ClosedTopPairingLanguageFamily
    (State Label : Type)
    (V : State -> Int)
    (Step : State -> Label -> State -> Int -> Prop)
    (labelOfFace : Face -> Label)
    (start : State)
    (const : Int)
    (badFace : Face)
    (scaledMargin : Fin numPairWords -> Int) where
  family :
    _root_.Cuboctahedron.BellmanAxisRankLanguageFamily
      State Label V Step labelOfFace start const
      (ClosedTopPairingContainsRank badFace) scaledMargin
  certOf :
    forall rank,
      _root_.Cuboctahedron.TopPairingClosedLanguageAtRank rank badFace ->
        _root_.Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge.ObjectStartViolationMarginCert
          rank (scaledMargin rank)

namespace ClosedTopPairingLanguageFamily

theorem rankKilled
    {State Label : Type}
    {V : State -> Int}
    {Step : State -> Label -> State -> Int -> Prop}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    {badFace : Face}
    (closedFamily :
      ClosedTopPairingLanguageFamily
        State Label V Step labelOfFace start const badFace scaledMargin)
    {rank : Fin numPairWords}
    (hclosed :
      _root_.Cuboctahedron.TopPairingClosedLanguageAtRank rank badFace) :
    _root_.Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_closed_top_pairing_language_family
    closedFamily.family closedFamily.certOf hclosed

end ClosedTopPairingLanguageFamily

abbrev ClosedTopPairingYmLanguageFamily
    (State Label : Type)
    (V : State -> Int)
    (Step : State -> Label -> State -> Int -> Prop)
    (labelOfFace : Face -> Label)
    (start : State)
    (const : Int)
    (scaledMargin : Fin numPairWords -> Int) :=
  ClosedTopPairingLanguageFamily
    State Label V Step labelOfFace start const Face.ym scaledMargin

theorem nonIdentityRankKilled_of_closed_top_pairing_ym_family_bundle
    {State Label : Type}
    {V : State -> Int}
    {Step : State -> Label -> State -> Int -> Prop}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {scaledMargin : Fin numPairWords -> Int}
    (closedFamily :
      ClosedTopPairingYmLanguageFamily
        State Label V Step labelOfFace start const scaledMargin)
    {rank : Fin numPairWords}
    (hclosed :
      _root_.Cuboctahedron.TopPairingClosedLanguageAtRank rank Face.ym) :
    _root_.Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  ClosedTopPairingLanguageFamily.rankKilled closedFamily hclosed

theorem bridgeSurface_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageBridge
