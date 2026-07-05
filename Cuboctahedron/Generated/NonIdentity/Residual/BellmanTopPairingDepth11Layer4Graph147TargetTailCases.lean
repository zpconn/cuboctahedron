import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedNextFrontierSmoke

/-!
Semantic target-tail cases for the graph-147 top-pairing Bellman frontier.

This file is intentionally not a sampled-prefix or sampled-rank table.  It
uses the generated target-completion state machine from the next-frontier smoke
to prove that the semantic graph-147 target-tail language has exactly two
completions.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke

open Cuboctahedron

def graph147TargetTailZp : List Face :=
  [Face.zp, Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.tmpm,
    Face.tppp, Face.tmpp, Face.tmmp, Face.xp]

def graph147TargetTailTmmp : List Face :=
  [Face.tmmp, Face.tpmp, Face.tppp, Face.tpmm, Face.tmpp, Face.tppm,
    Face.tmpm, Face.tmmm, Face.zp, Face.xp]

private theorem no_empty_tail_of_remaining_ne_nil
    {state : TopPairingTargetCompletionState}
    (hne : state.remaining ≠ [])
    (htail : TopPairingTargetCompletionTail state []) :
    False := by
  cases htail with
  | nil hremaining _hsummary =>
      exact hne hremaining

private theorem graph112_after_xp_targetCompletionTail_nil
    {labels : List Face}
    (htail :
      TopPairingTargetCompletionTail
        (graph112TargetCompletionState.next Face.xp) labels) :
    labels = [] := by
  have hlen := TopPairingTargetCompletionTail.length_le_remaining htail
  have hzero :
      (graph112TargetCompletionState.next Face.xp).remaining.length = 0 := by
    rfl
  rw [hzero] at hlen
  exact List.length_eq_zero_iff.mp (Nat.eq_zero_of_le_zero hlen)

private theorem graph109_after_xp_targetCompletionTail_nil
    {labels : List Face}
    (htail :
      TopPairingTargetCompletionTail
        (graph109TargetCompletionState.next Face.xp) labels) :
    labels = [] := by
  have hlen := TopPairingTargetCompletionTail.length_le_remaining htail
  have hzero :
      (graph109TargetCompletionState.next Face.xp).remaining.length = 0 := by
    rfl
  rw [hzero] at hlen
  exact List.length_eq_zero_iff.mp (Nat.eq_zero_of_le_zero hlen)

private theorem graph112_targetCompletionTail_cases
    {labels : List Face}
    (htail : Graph112TargetCompletionTail labels) :
    labels = [Face.xp] := by
  cases labels with
  | nil =>
      exact False.elim
        (no_empty_tail_of_remaining_ne_nil (state := graph112TargetCompletionState)
          (by decide) htail)
  | cons face rest =>
      have hxp := graph112_head_of_targetCompletionTail htail
      subst face
      have hrest :
          TopPairingTargetCompletionTail
            (graph112TargetCompletionState.next Face.xp) rest :=
        TopPairingTargetCompletionTail.tail_next htail
      have hnil := graph112_after_xp_targetCompletionTail_nil hrest
      subst rest
      rfl

private theorem graph109_targetCompletionTail_cases
    {labels : List Face}
    (htail : Graph109TargetCompletionTail labels) :
    labels = [Face.xp] := by
  cases labels with
  | nil =>
      exact False.elim
        (no_empty_tail_of_remaining_ne_nil (state := graph109TargetCompletionState)
          (by decide) htail)
  | cons face rest =>
      have hxp := graph109_head_of_targetCompletionTail htail
      subst face
      have hrest :
          TopPairingTargetCompletionTail
            (graph109TargetCompletionState.next Face.xp) rest :=
        TopPairingTargetCompletionTail.tail_next htail
      have hnil := graph109_after_xp_targetCompletionTail_nil hrest
      subst rest
      rfl

private theorem graph69_targetCompletionTail_cases
    {labels : List Face}
    (htail : Graph69TargetCompletionTail labels) :
    labels = [Face.tmmp, Face.xp] := by
  cases labels with
  | nil =>
      exact False.elim
        (no_empty_tail_of_remaining_ne_nil (state := graph69TargetCompletionState)
          (by decide) htail)
  | cons face rest =>
      have htmmp := graph69_head_of_targetCompletionTail htail
      subst face
      have hrest : Graph112TargetCompletionTail rest :=
        TopPairingTargetCompletionTail.tail_next htail
      have htailRest := graph112_targetCompletionTail_cases hrest
      subst rest
      rfl

private theorem graph75_targetCompletionTail_cases
    {labels : List Face}
    (htail : Graph75TargetCompletionTail labels) :
    labels = [Face.zp, Face.xp] := by
  cases labels with
  | nil =>
      exact False.elim
        (no_empty_tail_of_remaining_ne_nil (state := graph75TargetCompletionState)
          (by decide) htail)
  | cons face rest =>
      have hzp := graph75_head_of_targetCompletionTail htail
      subst face
      have hrest : Graph109TargetCompletionTail rest :=
        TopPairingTargetCompletionTail.tail_next htail
      have htailRest := graph109_targetCompletionTail_cases hrest
      subst rest
      rfl

private theorem graph36_targetCompletionTail_cases
    {labels : List Face}
    (htail : Graph36TargetCompletionTail labels) :
    labels = [Face.tmpp, Face.tmmp, Face.xp] := by
  cases labels with
  | nil =>
      exact False.elim
        (no_empty_tail_of_remaining_ne_nil (state := graph36TargetCompletionState)
          (by decide) htail)
  | cons face rest =>
      have htmpp := graph36_head_of_targetCompletionTail htail
      subst face
      have hrest : Graph69TargetCompletionTail rest :=
        TopPairingTargetCompletionTail.tail_next htail
      have htailRest := graph69_targetCompletionTail_cases hrest
      subst rest
      rfl

private theorem graph41_targetCompletionTail_cases
    {labels : List Face}
    (htail : Graph41TargetCompletionTail labels) :
    labels = [Face.tmmm, Face.zp, Face.xp] := by
  cases labels with
  | nil =>
      exact False.elim
        (no_empty_tail_of_remaining_ne_nil (state := graph41TargetCompletionState)
          (by decide) htail)
  | cons face rest =>
      have htmmm := graph41_head_of_targetCompletionTail htail
      subst face
      have hrest : Graph75TargetCompletionTail rest :=
        TopPairingTargetCompletionTail.tail_next htail
      have htailRest := graph75_targetCompletionTail_cases hrest
      subst rest
      rfl

private theorem graph6_targetCompletionTail_cases
    {labels : List Face}
    (htail : Graph6TargetCompletionTail labels) :
    labels = [Face.tppp, Face.tmpp, Face.tmmp, Face.xp] := by
  cases labels with
  | nil =>
      exact False.elim
        (no_empty_tail_of_remaining_ne_nil (state := graph6TargetCompletionState)
          (by decide) htail)
  | cons face rest =>
      have htppp := graph6_head_of_targetCompletionTail htail
      subst face
      have hrest : Graph36TargetCompletionTail rest :=
        TopPairingTargetCompletionTail.tail_next htail
      have htailRest := graph36_targetCompletionTail_cases hrest
      subst rest
      rfl

private theorem graph11_targetCompletionTail_cases
    {labels : List Face}
    (htail : Graph11TargetCompletionTail labels) :
    labels = [Face.tmpm, Face.tmmm, Face.zp, Face.xp] := by
  cases labels with
  | nil =>
      exact False.elim
        (no_empty_tail_of_remaining_ne_nil (state := graph11TargetCompletionState)
          (by decide) htail)
  | cons face rest =>
      have htmpm := graph11_head_of_targetCompletionTail htail
      subst face
      have hrest : Graph41TargetCompletionTail rest :=
        TopPairingTargetCompletionTail.tail_next htail
      have htailRest := graph41_targetCompletionTail_cases hrest
      subst rest
      rfl

private theorem graph208_targetCompletionTail_cases
    {labels : List Face}
    (htail : Graph208TargetCompletionTail labels) :
    labels =
      [Face.tmpm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp] := by
  cases labels with
  | nil =>
      exact False.elim
        (no_empty_tail_of_remaining_ne_nil (state := graph208TargetCompletionState)
          (by decide) htail)
  | cons face rest =>
      have htmpm := graph208_head_of_targetCompletionTail htail
      subst face
      have hrest : Graph6TargetCompletionTail rest :=
        TopPairingTargetCompletionTail.tail_next htail
      have htailRest := graph6_targetCompletionTail_cases hrest
      subst rest
      rfl

private theorem graph211_targetCompletionTail_cases
    {labels : List Face}
    (htail : Graph211TargetCompletionTail labels) :
    labels =
      [Face.tppm, Face.tmpm, Face.tmmm, Face.zp, Face.xp] := by
  cases labels with
  | nil =>
      exact False.elim
        (no_empty_tail_of_remaining_ne_nil (state := graph211TargetCompletionState)
          (by decide) htail)
  | cons face rest =>
      have htppm := graph211_head_of_targetCompletionTail htail
      subst face
      have hrest : Graph11TargetCompletionTail rest :=
        TopPairingTargetCompletionTail.tail_next htail
      have htailRest := graph11_targetCompletionTail_cases hrest
      subst rest
      rfl

private theorem graph191_targetCompletionTail_cases
    {labels : List Face}
    (htail : Graph191TargetCompletionTail labels) :
    labels =
      [Face.tpmp, Face.tmpm, Face.tppp, Face.tmpp, Face.tmmp, Face.xp] := by
  cases labels with
  | nil =>
      exact False.elim
        (no_empty_tail_of_remaining_ne_nil (state := graph191TargetCompletionState)
          (by decide) htail)
  | cons face rest =>
      have htpmp := graph191_head_of_targetCompletionTail htail
      subst face
      have hrest : Graph208TargetCompletionTail rest :=
        TopPairingTargetCompletionTail.tail_next htail
      have htailRest := graph208_targetCompletionTail_cases hrest
      subst rest
      rfl

private theorem graph194_targetCompletionTail_cases
    {labels : List Face}
    (htail : Graph194TargetCompletionTail labels) :
    labels =
      [Face.tmpp, Face.tppm, Face.tmpm, Face.tmmm, Face.zp, Face.xp] := by
  cases labels with
  | nil =>
      exact False.elim
        (no_empty_tail_of_remaining_ne_nil (state := graph194TargetCompletionState)
          (by decide) htail)
  | cons face rest =>
      have htmpp := graph194_head_of_targetCompletionTail htail
      subst face
      have hrest : Graph211TargetCompletionTail rest :=
        TopPairingTargetCompletionTail.tail_next htail
      have htailRest := graph211_targetCompletionTail_cases hrest
      subst rest
      rfl

private theorem graph176_targetCompletionTail_cases
    {labels : List Face}
    (htail : Graph176TargetCompletionTail labels) :
    labels =
      [Face.tppm, Face.tpmp, Face.tmpm, Face.tppp, Face.tmpp, Face.tmmp,
        Face.xp] := by
  cases labels with
  | nil =>
      exact False.elim
        (no_empty_tail_of_remaining_ne_nil (state := graph176TargetCompletionState)
          (by decide) htail)
  | cons face rest =>
      have htppm := graph176_head_of_targetCompletionTail htail
      subst face
      have hrest : Graph191TargetCompletionTail rest :=
        TopPairingTargetCompletionTail.tail_next htail
      have htailRest := graph191_targetCompletionTail_cases hrest
      subst rest
      rfl

private theorem graph178_targetCompletionTail_cases
    {labels : List Face}
    (htail : Graph178TargetCompletionTail labels) :
    labels =
      [Face.tpmm, Face.tmpp, Face.tppm, Face.tmpm, Face.tmmm, Face.zp,
        Face.xp] := by
  cases labels with
  | nil =>
      exact False.elim
        (no_empty_tail_of_remaining_ne_nil (state := graph178TargetCompletionState)
          (by decide) htail)
  | cons face rest =>
      have htpmm := graph178_head_of_targetCompletionTail htail
      subst face
      have hrest : Graph194TargetCompletionTail rest :=
        TopPairingTargetCompletionTail.tail_next htail
      have htailRest := graph194_targetCompletionTail_cases hrest
      subst rest
      rfl

private theorem graph163_targetCompletionTail_cases
    {labels : List Face}
    (htail : Graph163TargetCompletionTail labels) :
    labels =
      [Face.tpmm, Face.tppm, Face.tpmp, Face.tmpm, Face.tppp, Face.tmpp,
        Face.tmmp, Face.xp] := by
  cases labels with
  | nil =>
      exact False.elim
        (no_empty_tail_of_remaining_ne_nil (state := graph163TargetCompletionState)
          (by decide) htail)
  | cons face rest =>
      have htpmm := graph163_head_of_targetCompletionTail htail
      subst face
      have hrest : Graph176TargetCompletionTail rest :=
        TopPairingTargetCompletionTail.tail_next htail
      have htailRest := graph176_targetCompletionTail_cases hrest
      subst rest
      rfl

private theorem graph166_targetCompletionTail_cases
    {labels : List Face}
    (htail : Graph166TargetCompletionTail labels) :
    labels =
      [Face.tppp, Face.tpmm, Face.tmpp, Face.tppm, Face.tmpm, Face.tmmm,
        Face.zp, Face.xp] := by
  cases labels with
  | nil =>
      exact False.elim
        (no_empty_tail_of_remaining_ne_nil (state := graph166TargetCompletionState)
          (by decide) htail)
  | cons face rest =>
      have htppp := graph166_head_of_targetCompletionTail htail
      subst face
      have hrest : Graph178TargetCompletionTail rest :=
        TopPairingTargetCompletionTail.tail_next htail
      have htailRest := graph178_targetCompletionTail_cases hrest
      subst rest
      rfl

private theorem graph153_targetCompletionTail_cases
    {labels : List Face}
    (htail : Graph153TargetCompletionTail labels) :
    labels =
      [Face.tmmm, Face.tpmm, Face.tppm, Face.tpmp, Face.tmpm, Face.tppp,
        Face.tmpp, Face.tmmp, Face.xp] := by
  cases labels with
  | nil =>
      exact False.elim
        (no_empty_tail_of_remaining_ne_nil (state := graph153TargetCompletionState)
          (by decide) htail)
  | cons face rest =>
      have htmmm := graph153_head_of_targetCompletionTail htail
      subst face
      have hrest : Graph163TargetCompletionTail rest :=
        TopPairingTargetCompletionTail.tail_next htail
      have htailRest := graph163_targetCompletionTail_cases hrest
      subst rest
      rfl

private theorem graph155_targetCompletionTail_cases
    {labels : List Face}
    (htail : Graph155TargetCompletionTail labels) :
    labels =
      [Face.tpmp, Face.tppp, Face.tpmm, Face.tmpp, Face.tppm, Face.tmpm,
        Face.tmmm, Face.zp, Face.xp] := by
  cases labels with
  | nil =>
      exact False.elim
        (no_empty_tail_of_remaining_ne_nil (state := graph155TargetCompletionState)
          (by decide) htail)
  | cons face rest =>
      have htpmp := graph155_head_of_targetCompletionTail htail
      subst face
      have hrest : Graph166TargetCompletionTail rest :=
        TopPairingTargetCompletionTail.tail_next htail
      have htailRest := graph166_targetCompletionTail_cases hrest
      subst rest
      rfl

theorem graph147_targetCompletionTail_cases
    {labels : List Face}
    (htail : Graph147TargetCompletionTail labels) :
    labels = graph147TargetTailZp ∨
      labels = graph147TargetTailTmmp := by
  cases labels with
  | nil =>
      exact False.elim
        (no_empty_tail_of_remaining_ne_nil (state := graph147TargetCompletionState)
          (by decide) htail)
  | cons face rest =>
      rcases graph147_head_of_targetCompletionTail htail with hzp | htmmp
      · subst face
        have hrest : Graph153TargetCompletionTail rest :=
          TopPairingTargetCompletionTail.tail_next htail
        have htailRest := graph153_targetCompletionTail_cases hrest
        subst rest
        exact Or.inl rfl
      · subst face
        have hrest : Graph155TargetCompletionTail rest :=
          TopPairingTargetCompletionTail.tail_next htail
        have htailRest := graph155_targetCompletionTail_cases hrest
        subst rest
        exact Or.inr rfl

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedBellmanStrengthenedPrefixRunSmoke
