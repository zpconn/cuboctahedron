import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePrefix2Socket

/-!
Second deterministic terminal-state socket for the top-pairing classifier.

This module advances the compact prefix-2 state by one local face transition.
The only possible third labels under the closed schedule are `tmpm`, `yp`, and
`zm`; each state stores the corresponding `TopPairingTransducerTail` suffix
invariant.  The transition theorems consume the prefix-2 state plus the local
next-face equality, avoiding sampled paths and accepted trace ids.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePrefix3Socket

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePrefix2Socket

def prefix2Gap : Nat :=
  topPairingNextGap (topPairingNextGap 0 Face.xm) Face.ym

def prefix2Parity : SqParity :=
  (SqParity.id.applyPair (pairOfFace Face.xm)).applyPair
    (pairOfFace Face.ym)

def prefix2Linear : Mat3 Rat :=
  topPairingNextLinear
    (topPairingNextLinear (matId : Mat3 Rat) Face.xm) Face.ym

inductive TopPairingPrefix3State
  | afterTmpm
  | afterYp
  | afterZm

namespace TopPairingPrefix3State

def Contains (state : TopPairingPrefix3State)
    (rank : Fin numPairWords) : Prop :=
  match state with
  | afterTmpm =>
      ∃ rest : List Face,
        topPairingRankFaceLabels rank =
          [Face.xm, Face.ym, Face.tmpm] ++ rest ∧
          TopPairingTransducerTail ((1 + 1) + 1)
            (topPairingNextGap prefix2Gap Face.tmpm) (0 + 1)
            prefix2Parity
            (topPairingNextLinear prefix2Linear Face.tmpm)
            rest
  | afterYp =>
      ∃ rest : List Face,
        topPairingRankFaceLabels rank =
          [Face.xm, Face.ym, Face.yp] ++ rest ∧
          TopPairingTransducerTail ((1 + 1) + 1)
            (topPairingNextGap prefix2Gap Face.yp) 0
            (prefix2Parity.applyPair (pairOfFace Face.yp))
            (topPairingNextLinear prefix2Linear Face.yp)
            rest
  | afterZm =>
      ∃ rest : List Face,
        topPairingRankFaceLabels rank =
          [Face.xm, Face.ym, Face.zm] ++ rest ∧
          TopPairingTransducerTail ((1 + 1) + 1)
            (topPairingNextGap prefix2Gap Face.zm) 0
            (prefix2Parity.applyPair (pairOfFace Face.zm))
            (topPairingNextLinear prefix2Linear Face.zm)
            rest

end TopPairingPrefix3State

def Prefix3TerminalStateFamily (rank : Fin numPairWords) : Prop :=
  TopPairingPrefix3State.Contains TopPairingPrefix3State.afterTmpm rank \/
    TopPairingPrefix3State.Contains TopPairingPrefix3State.afterYp rank \/
      TopPairingPrefix3State.Contains TopPairingPrefix3State.afterZm rank

theorem prefix3State_tmpm_of_prefix2
    {rank : Fin numPairWords} {rest : List Face}
    (hprefix2 : Prefix2TerminalStateFamily rank)
    (hlabels :
      topPairingRankFaceLabels rank =
        [Face.xm, Face.ym, Face.tmpm] ++ rest) :
    TopPairingPrefix3State.Contains TopPairingPrefix3State.afterTmpm rank := by
  rcases hprefix2 with ⟨rest2, hlabels2, htail2⟩
  have hrest2 : rest2 = Face.tmpm :: rest := by
    have hprefix :
        [Face.xm, Face.ym] ++ rest2 =
          [Face.xm, Face.ym] ++ Face.tmpm :: rest := by
      rw [← hlabels2, hlabels]
      rfl
    simpa using hprefix
  subst rest2
  refine ⟨rest, hlabels, ?_⟩
  rcases TopPairingTransducerTail.cons_tri_tail htail2
      (by decide : triLetterOfFace? Face.tmpm = some TriLetter.d1m1) with
    ⟨_hk, _hletter, htail3⟩
  simpa [prefix2Gap, prefix2Parity, prefix2Linear] using htail3

theorem prefix3State_yp_of_prefix2
    {rank : Fin numPairWords} {rest : List Face}
    (hprefix2 : Prefix2TerminalStateFamily rank)
    (hlabels :
      topPairingRankFaceLabels rank =
        [Face.xm, Face.ym, Face.yp] ++ rest) :
    TopPairingPrefix3State.Contains TopPairingPrefix3State.afterYp rank := by
  rcases hprefix2 with ⟨rest2, hlabels2, htail2⟩
  have hrest2 : rest2 = Face.yp :: rest := by
    have hprefix :
        [Face.xm, Face.ym] ++ rest2 =
          [Face.xm, Face.ym] ++ Face.yp :: rest := by
      rw [← hlabels2, hlabels]
      rfl
    simpa using hprefix
  subst rest2
  refine ⟨rest, hlabels, ?_⟩
  simpa [prefix2Gap, prefix2Parity, prefix2Linear] using
    TopPairingTransducerTail.cons_square_tail htail2
      (by decide : triLetterOfFace? Face.yp = none)

theorem prefix3State_zm_of_prefix2
    {rank : Fin numPairWords} {rest : List Face}
    (hprefix2 : Prefix2TerminalStateFamily rank)
    (hlabels :
      topPairingRankFaceLabels rank =
        [Face.xm, Face.ym, Face.zm] ++ rest) :
    TopPairingPrefix3State.Contains TopPairingPrefix3State.afterZm rank := by
  rcases hprefix2 with ⟨rest2, hlabels2, htail2⟩
  have hrest2 : rest2 = Face.zm :: rest := by
    have hprefix :
        [Face.xm, Face.ym] ++ rest2 =
          [Face.xm, Face.ym] ++ Face.zm :: rest := by
      rw [← hlabels2, hlabels]
      rfl
    simpa using hprefix
  subst rest2
  refine ⟨rest, hlabels, ?_⟩
  simpa [prefix2Gap, prefix2Parity, prefix2Linear] using
    TopPairingTransducerTail.cons_square_tail htail2
      (by decide : triLetterOfFace? Face.zm = none)

theorem prefix3State_of_closed
    {rank : Fin numPairWords} {badFace : Face}
    (hclosed : TopPairingClosedLanguageAtRank rank badFace) :
    Prefix3TerminalStateFamily rank := by
  have hprefix2 := prefix2State_of_closed hclosed
  rcases topPairingStepScheduleLabels_prefix3 hclosed.schedule with
    htmpm | hyp | hzm
  · rcases htmpm with ⟨rest, hlabels⟩
    exact Or.inl (prefix3State_tmpm_of_prefix2 hprefix2
      (by simpa [topPairingRankFaceLabels] using hlabels))
  · rcases hyp with ⟨rest, hlabels⟩
    exact Or.inr (Or.inl (prefix3State_yp_of_prefix2 hprefix2
      (by simpa [topPairingRankFaceLabels] using hlabels)))
  · rcases hzm with ⟨rest, hlabels⟩
    exact Or.inr (Or.inr (prefix3State_zm_of_prefix2 hprefix2
      (by simpa [topPairingRankFaceLabels] using hlabels)))

theorem prefix3State_of_strengthenedClosed
    {rank : Fin numPairWords}
    (hstrengthened :
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym) :
    Prefix3TerminalStateFamily rank :=
  prefix3State_of_closed hstrengthened.closed

theorem terminalStatePrefix3Socket_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTerminalStatePrefix3Socket
