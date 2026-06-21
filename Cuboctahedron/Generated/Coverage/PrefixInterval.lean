import Cuboctahedron.Generated.Coverage.Interval
import Cuboctahedron.Search.Enumeration

/-!
Prop-level prefix interval coverage helpers.

This module intentionally contains no generated data and no certificate
checkers.  Future generated shards can provide small facts saying that every
rank in an interval un-ranks to a word with a given prefix, then use the
soundness lemmas here to turn a prefix-level obstruction into semantic interval
coverage.
-/

namespace Cuboctahedron.Generated.Coverage

structure PairPrefix where
  entries : List PairId
  length_le : entries.length <= 13
deriving Repr

namespace PairPrefix

def empty : PairPrefix where
  entries := []
  length_le := by simp

def singleton (p : PairId) : PairPrefix where
  entries := [p]
  length_le := by simp

end PairPrefix

def PairWordHasPrefix (pref : PairPrefix) (w : PairWord) : Prop :=
  forall i : Fin pref.entries.length,
    w.get ⟨i.val, Nat.lt_of_lt_of_le i.isLt pref.length_le⟩ =
      pref.entries.get i

namespace PairWordHasPrefix

theorem empty (w : PairWord) :
    PairWordHasPrefix PairPrefix.empty w := by
  intro i
  exact Fin.elim0 i

end PairWordHasPrefix

def PrefixRankInterval (pref : PairPrefix) (lo hi : Nat) : Prop :=
  CoversInterval
    (fun r =>
      forall hlt : r < numPairWords,
        PairWordHasPrefix pref (unrankPairWord ⟨r, hlt⟩))
    lo hi

def NatRankPred (P : Fin numPairWords -> Prop) (r : Nat) : Prop :=
  forall hlt : r < numPairWords, P ⟨r, hlt⟩

namespace PrefixRankInterval

theorem sound_rank
    {pref : PairPrefix} {lo hi : Nat}
    {P : Fin numPairWords -> Prop}
    (hprefix : PrefixRankInterval pref lo hi)
    (hkill :
      forall r : Fin numPairWords,
        PairWordHasPrefix pref (unrankPairWord r) -> P r) :
    CoversInterval (NatRankPred P) lo hi := by
  intro r hlo hhi hlt
  exact hkill ⟨r, hlt⟩ (hprefix r hlo hhi hlt)

theorem sound_word
    {pref : PairPrefix} {lo hi : Nat}
    {P : PairWord -> Prop}
    (hprefix : PrefixRankInterval pref lo hi)
    (hkill :
      forall w : PairWord,
        ValidPairWord w -> PairWordHasPrefix pref w -> P w) :
    CoversInterval
      (fun r => forall hlt : r < numPairWords, P (unrankPairWord ⟨r, hlt⟩))
      lo hi := by
  intro r hlo hhi hlt
  exact hkill (unrankPairWord ⟨r, hlt⟩)
    (unrankPairWord_valid ⟨r, hlt⟩)
    (hprefix r hlo hhi hlt)

theorem empty_all :
    PrefixRankInterval PairPrefix.empty 0 numPairWords := by
  intro r _hlo _hhi hlt
  exact PairWordHasPrefix.empty (unrankPairWord ⟨r, hlt⟩)

theorem empty_true :
    CoversInterval
      (fun r => forall _hlt : r < numPairWords, True)
      0 numPairWords := by
  exact sound_word (P := fun _w => True) empty_all
    (by intro _w _hvalid _hprefix; trivial)

end PrefixRankInterval

end Cuboctahedron.Generated.Coverage
