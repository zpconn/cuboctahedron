# Top-Pairing Bellman Eval-Contract Audit

This is diagnostic-only evidence.  It audits whether the current
top-pairing Bellman route has reached the semantic evaluator theorem
recommended by GPT5.5, or whether deterministic evaluation is still
sampled-object-bound.

## Summary

- decision: `stronger-eval-predicate-built-closed-to-eval-missing`
- semantic-object mentions: `42`
- closed-language field mentions: `54`
- sampled-eval mentions: `260`
- semantic eval-language mentions: `24`
- semantic closed-eval theorem mentions: `0`

## Interpretation

The semantic object/membership layer exists, but the generated
deterministic evaluator is still emitted inside the sampled block.
The next go/no-go theorem remains:

```lean
forall obj : TopPairingBellmanObj Face.ym,
  BellmanEvalAccepts ... obj
```

That theorem must be proved from `obj.closed` and finite automaton facts,
not by case-splitting on `SampledRankIndex`.

## Files

### `Cuboctahedron/Search/TopPairingBellmanObject.lean`

- exists: `True`
- `semantic_object`: `42`
  - line `16`: `abbrev TopPairingClosedContainsRank (badFace : Face) :`
  - line `22`: `TopPairingClosedContainsRank badFace`
  - line `24`: `structure TopPairingBellmanObj (badFace : Face) where`
  - line `28`: `namespace TopPairingBellmanObj`
  - line `30`: `def rankOf {badFace : Face} (obj : TopPairingBellmanObj badFace) :`
  - line `34`: `def Accepts {badFace : Face} (_obj : TopPairingBellmanObj badFace) :`
  - line `38`: `theorem accepts {badFace : Face} (obj : TopPairingBellmanObj badFace) :`
  - line `42`: `def forcedSeq {badFace : Face} (obj : TopPairingBellmanObj badFace) :`
  - ... `34` more
- `closed_language_fields`: `8`
  - line `18`: `fun rank => TopPairingClosedLanguageAtRank rank badFace`
  - line `26`: `closed : TopPairingClosedLanguageAtRank rank badFace`
  - line `60`: `TopPairingClosedLanguageForSeq obj.rank (forcedSeq obj) badFace :=`
  - line `61`: `TopPairingClosedLanguageAtRank.forCanonicalSeq obj.closed`
  - line `61`: `TopPairingClosedLanguageAtRank.forCanonicalSeq obj.closed`
  - line `224`: `closed : TopPairingClosedLanguageAtRank rank badFace`
  - line `319`: `TopPairingClosedLanguageAtRank obj.rank badFace :=`
  - line `436`: `TopPairingClosedLanguageAtRank rank badFace ->`
- `sampled_eval`: `0`
- `semantic_eval_target`: `6`
  - line `92`: `BellmanEvalAccepts V next start const`
  - line `122`: `BellmanEvalAccepts V next start const`
  - line `169`: `BellmanEvalAccepts V next start const`
  - line `196`: `BellmanEvalAccepts V next start const`
  - line `226`: `BellmanEvalAccepts V next start const`
  - line `334`: `BellmanEvalAccepts V next start const`
- `semantic_eval_language`: `24`
  - line `214`: `structure TopPairingBellmanEvalLanguageAtRank`
  - line `233`: `abbrev TopPairingBellmanEvalContainsRank`
  - line `243`: `TopPairingBellmanEvalLanguageAtRank`
  - line `246`: `structure TopPairingBellmanEvalObj`
  - line `257`: `TopPairingBellmanEvalLanguageAtRank`
  - line `260`: `namespace TopPairingBellmanEvalObj`
  - line `272`: `TopPairingBellmanEvalObj`
  - line `287`: `TopPairingBellmanEvalObj`
  - ... `16` more

### `Cuboctahedron/Search/BellmanTopPairingLanguage.lean`

- exists: `True`
- `semantic_object`: `0`
- `closed_language_fields`: `46`
  - line `44`: `def TopPairingStepScheduleLabels (labels : List Face) : Prop :=`
  - line `48`: `TopPairingStepScheduleLabels (faceLabelsInContributionOrder (fun f => f) seq)`
  - line `65`: `TopPairingStepScheduleLabels labels :=`
  - line `70`: `(h : TopPairingStepScheduleLabels labels) :`
  - line `95`: `(h : TopPairingStepScheduleLabels labels) :`
  - line `169`: `def TopPairingSquareGapLabels (labels : List Face) : Prop :=`
  - line `173`: `TopPairingSquareGapLabels (faceLabelsInContributionOrder (fun f => f) seq)`
  - line `201`: `TopPairingSquareGapLabels labels :=`
  - ... `38` more
- `sampled_eval`: `0`
- `semantic_eval_target`: `0`
- `semantic_eval_language`: `0`

### `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraphLanguage2Smoke.lean`

- exists: `True`
- `semantic_object`: `0`
- `closed_language_fields`: `0`
- `sampled_eval`: `167`
  - line `24388`: `private def sampledSmokeNext : State -> SmokeLabel -> Option (State × Int)`
  - line `24415`: `private def SampledSmokeStepEval (s : State) (label : SmokeLabel) (t : State) (gain : Int) : Prop :=`
  - line `24416`: `sampledSmokeNext s label = some (t, gain)`
  - line `24418`: `private theorem SampledSmokeStepEval.valid {s : State} {label : SmokeLabel} {t : State} {gain : Int} :`
  - line `24419`: `SampledSmokeStepEval s label t gain -> gain + graphPotential t <= graphPotential s := by`
  - line `24422`: `cases s <;> cases label <;> intro t gain h <;> simp [SampledSmokeStepEval, sampledSmokeNext] at h <;> try contradiction`
  - line `24422`: `cases s <;> cases label <;> intro t gain h <;> simp [SampledSmokeStepEval, sampledSmokeNext] at h <;> try contradiction`
  - line `24427`: `private theorem SampledSmokeStepEval.sound {s : State} {label : SmokeLabel} {t : State} {gain : Int} :`
  - ... `159` more
- `semantic_eval_target`: `1`
  - line `24925`: `BellmanEvalAccepts graphPotential sampledSmokeNext rootState`
- `semantic_eval_language`: `0`

### `scripts/emit_bellman_graph_smoke.py`

- exists: `True`
- `semantic_object`: `0`
- `closed_language_fields`: `0`
- `sampled_eval`: `93`
  - line `1745`: `"private def sampledSmokeNext : State -> SmokeLabel -> Option (State × Int)",`
  - line `1757`: `"private def SampledSmokeStepEval (s : State) (label : SmokeLabel) (t : State) (gain : Int) : Prop :=",`
  - line `1758`: `"  sampledSmokeNext s label = some (t, gain)",`
  - line `1760`: `"private theorem SampledSmokeStepEval.valid {s : State} {label : SmokeLabel} {t : State} {gain : Int} :",`
  - line `1761`: `"    SampledSmokeStepEval s label t gain -> gain + graphPotential t <= graphPotential s := by",`
  - line `1764`: `"  cases s <;> cases label <;> intro t gain h <;> simp [SampledSmokeStepEval, sampledSmokeNext] at h <;> try contradiction",`
  - line `1764`: `"  cases s <;> cases label <;> intro t gain h <;> simp [SampledSmokeStepEval, sampledSmokeNext] at h <;> try contradiction",`
  - line `1769`: `"private theorem SampledSmokeStepEval.sound {s : State} {label : SmokeLabel} {t : State} {gain : Int} :",`
  - ... `85` more
- `semantic_eval_target`: `1`
  - line `1998`: `"    BellmanEvalAccepts graphPotential sampledSmokeNext rootState",`
- `semantic_eval_language`: `0`

