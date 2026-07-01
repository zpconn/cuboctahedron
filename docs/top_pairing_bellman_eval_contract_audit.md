# Top-Pairing Bellman Eval-Contract Audit

This is diagnostic-only evidence.  It audits whether the current
top-pairing Bellman route has reached the semantic evaluator theorem
recommended by GPT5.5, or whether deterministic evaluation is still
sampled-object-bound.

## Summary

- decision: `semantic-object-built-eval-still-sampled`
- semantic-object mentions: `15`
- closed-language field mentions: `47`
- sampled-eval mentions: `260`
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
- `semantic_object`: `15`
  - line `16`: `abbrev TopPairingClosedContainsRank (badFace : Face) :`
  - line `20`: `structure TopPairingBellmanObj (badFace : Face) where`
  - line `24`: `namespace TopPairingBellmanObj`
  - line `26`: `def rankOf {badFace : Face} (obj : TopPairingBellmanObj badFace) :`
  - line `30`: `def Accepts {badFace : Face} (_obj : TopPairingBellmanObj badFace) :`
  - line `34`: `def forcedSeq {badFace : Face} (obj : TopPairingBellmanObj badFace) :`
  - line `39`: `(obj : TopPairingBellmanObj badFace) :`
  - line `45`: `(TopPairingBellmanObj badFace)`
  - ... `7` more
- `closed_language_fields`: `5`
  - line `18`: `fun rank => TopPairingClosedLanguageAtRank rank badFace`
  - line `22`: `closed : TopPairingClosedLanguageAtRank rank badFace`
  - line `40`: `TopPairingClosedLanguageForSeq obj.rank (forcedSeq obj) badFace :=`
  - line `41`: `TopPairingClosedLanguageAtRank.forCanonicalSeq obj.closed`
  - line `41`: `TopPairingClosedLanguageAtRank.forCanonicalSeq obj.closed`
- `sampled_eval`: `0`
- `semantic_eval_target`: `1`
  - line `72`: `BellmanEvalAccepts V next start const`

### `Cuboctahedron/Search/BellmanTopPairingLanguage.lean`

- exists: `True`
- `semantic_object`: `0`
- `closed_language_fields`: `42`
  - line `43`: `def TopPairingStepScheduleLabels (labels : List Face) : Prop :=`
  - line `47`: `TopPairingStepScheduleLabels (faceLabelsInContributionOrder (fun f => f) seq)`
  - line `64`: `TopPairingStepScheduleLabels labels :=`
  - line `97`: `def TopPairingSquareGapLabels (labels : List Face) : Prop :=`
  - line `101`: `TopPairingSquareGapLabels (faceLabelsInContributionOrder (fun f => f) seq)`
  - line `129`: `TopPairingSquareGapLabels labels :=`
  - line `147`: `def TopPairingLocalAxisLabels (labels : List Face) : Prop :=`
  - line `151`: `TopPairingLocalAxisLabels (faceLabelsInContributionOrder (fun f => f) seq)`
  - ... `34` more
- `sampled_eval`: `0`
- `semantic_eval_target`: `0`

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

### `scripts/emit_bellman_graph_smoke.py`

- exists: `True`
- `semantic_object`: `0`
- `closed_language_fields`: `0`
- `sampled_eval`: `93`
  - line `1725`: `"private def sampledSmokeNext : State -> SmokeLabel -> Option (State × Int)",`
  - line `1737`: `"private def SampledSmokeStepEval (s : State) (label : SmokeLabel) (t : State) (gain : Int) : Prop :=",`
  - line `1738`: `"  sampledSmokeNext s label = some (t, gain)",`
  - line `1740`: `"private theorem SampledSmokeStepEval.valid {s : State} {label : SmokeLabel} {t : State} {gain : Int} :",`
  - line `1741`: `"    SampledSmokeStepEval s label t gain -> gain + graphPotential t <= graphPotential s := by",`
  - line `1744`: `"  cases s <;> cases label <;> intro t gain h <;> simp [SampledSmokeStepEval, sampledSmokeNext] at h <;> try contradiction",`
  - line `1744`: `"  cases s <;> cases label <;> intro t gain h <;> simp [SampledSmokeStepEval, sampledSmokeNext] at h <;> try contradiction",`
  - line `1749`: `"private theorem SampledSmokeStepEval.sound {s : State} {label : SmokeLabel} {t : State} {gain : Int} :",`
  - ... `85` more
- `semantic_eval_target`: `1`
  - line `1978`: `"    BellmanEvalAccepts graphPotential sampledSmokeNext rootState",`

