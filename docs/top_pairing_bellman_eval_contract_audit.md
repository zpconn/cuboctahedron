# Top-Pairing Bellman Eval-Contract Audit

This is diagnostic-only evidence.  It audits whether the current
top-pairing Bellman route has reached the semantic evaluator theorem
recommended by GPT5.5, or whether deterministic evaluation is still
sampled-object-bound.

## Summary

- decision: `closed-to-eval-socket-built-trace-margin-premises-remain`
- semantic-object mentions: `91`
- closed-language field mentions: `68`
- sampled-eval mentions: `0`
- semantic eval-language mentions: `35`
- closed-to-eval socket mentions: `6`
- remaining-premise mentions: `17`

## Interpretation

The semantic object/membership layer exists, and the current generated
route has a conditional closed-to-eval socket.  The remaining proof
obligation is not another wrapper: it is to prove the trace and margin
premises from the semantic closed-language predicate, or generate one
compact semantic family theorem that provides them.

```lean
forall rank,
  TopPairingClosedLanguageAtRank rank Face.ym ->
    TopPairingBellmanEvalLanguageAtRank ... rank Face.ym
```

Equivalently, the next theorem can provide
`GraphAcceptedTraceMargin` for the semantic closed object.  It must be
proved from `TopPairingClosedLanguageAtRank` and finite automaton facts,
not by case-splitting on `SampledRankIndex` or sampled paths.

## Files

### `Cuboctahedron/Search/TopPairingBellmanObject.lean`

- exists: `True`
- `semantic_object`: `49`
  - line `16`: `abbrev TopPairingClosedContainsRank (badFace : Face) :`
  - line `22`: `TopPairingClosedContainsRank badFace`
  - line `31`: `structure TopPairingBellmanObj (badFace : Face) where`
  - line `35`: `namespace TopPairingBellmanObj`
  - line `37`: `def rankOf {badFace : Face} (obj : TopPairingBellmanObj badFace) :`
  - line `41`: `def Accepts {badFace : Face} (_obj : TopPairingBellmanObj badFace) :`
  - line `45`: `theorem accepts {badFace : Face} (obj : TopPairingBellmanObj badFace) :`
  - line `49`: `def forcedSeq {badFace : Face} (obj : TopPairingBellmanObj badFace) :`
  - ... `41` more
- `closed_language_fields`: `8`
  - line `18`: `fun rank => TopPairingClosedLanguageAtRank rank badFace`
  - line `33`: `closed : TopPairingClosedLanguageAtRank rank badFace`
  - line `67`: `TopPairingClosedLanguageForSeq obj.rank (forcedSeq obj) badFace :=`
  - line `68`: `TopPairingClosedLanguageAtRank.forCanonicalSeq obj.closed`
  - line `68`: `TopPairingClosedLanguageAtRank.forCanonicalSeq obj.closed`
  - line `254`: `closed : TopPairingClosedLanguageAtRank rank badFace`
  - line `349`: `TopPairingClosedLanguageAtRank obj.rank badFace :=`
  - line `466`: `TopPairingClosedLanguageAtRank rank badFace ->`
- `sampled_eval`: `0`
- `closed_to_eval_socket`: `1`
  - line `451`: `def topPairingBellmanEvalObjectCoverOfClosedToEval`
- `eval_accepts`: `6`
  - line `99`: `BellmanEvalAccepts V next start const`
  - line `129`: `BellmanEvalAccepts V next start const`
  - line `199`: `BellmanEvalAccepts V next start const`
  - line `226`: `BellmanEvalAccepts V next start const`
  - line `256`: `BellmanEvalAccepts V next start const`
  - line `364`: `BellmanEvalAccepts V next start const`
- `semantic_eval_language`: `30`
  - line `244`: `structure TopPairingBellmanEvalLanguageAtRank`
  - line `263`: `abbrev TopPairingBellmanEvalContainsRank`
  - line `273`: `TopPairingBellmanEvalLanguageAtRank`
  - line `276`: `structure TopPairingBellmanEvalObj`
  - line `287`: `TopPairingBellmanEvalLanguageAtRank`
  - line `290`: `namespace TopPairingBellmanEvalObj`
  - line `302`: `TopPairingBellmanEvalObj`
  - line `317`: `TopPairingBellmanEvalObj`
  - ... `22` more
- `remaining_premises`: `0`

### `Cuboctahedron/Search/BellmanTopPairingLanguage.lean`

- exists: `True`
- `semantic_object`: `0`
- `closed_language_fields`: `54`
  - line `44`: `def TopPairingStepScheduleLabels (labels : List Face) : Prop :=`
  - line `48`: `TopPairingStepScheduleLabels (faceLabelsInContributionOrder (fun f => f) seq)`
  - line `65`: `TopPairingStepScheduleLabels labels :=`
  - line `93`: `(hs : TopPairingStepScheduleLabels labels)`
  - line `104`: `(h : TopPairingStepScheduleLabels labels) :`
  - line `129`: `(h : TopPairingStepScheduleLabels labels) :`
  - line `203`: `def TopPairingSquareGapLabels (labels : List Face) : Prop :=`
  - line `207`: `TopPairingSquareGapLabels (faceLabelsInContributionOrder (fun f => f) seq)`
  - ... `46` more
- `sampled_eval`: `0`
- `closed_to_eval_socket`: `0`
- `eval_accepts`: `0`
- `semantic_eval_language`: `0`
- `remaining_premises`: `0`

### `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingClosedEvalTraceSmoke.lean`

- exists: `True`
- `semantic_object`: `14`
  - line `2`: `import Cuboctahedron.Search.TopPairingBellmanObject`
  - line `69`: `(obj : TopPairingBellmanObj badFace)`
  - line `71`: `TopPairingBellmanObj.labels smokeLabelOfFace obj = closedTraceA \/`
  - line `72`: `TopPairingBellmanObj.labels smokeLabelOfFace obj = closedTraceB)`
  - line `75`: `(fun obj : TopPairingBellmanObj badFace => scaledMargin obj.rank)`
  - line `76`: `(fun obj => TopPairingBellmanObj.labels smokeLabelOfFace obj)`
  - line `81`: `(TopPairingBellmanObj.labels smokeLabelOfFace obj) =`
  - line `92`: `(obj : TopPairingBellmanObj badFace)`
  - ... `6` more
- `closed_language_fields`: `0`
- `sampled_eval`: `0`
- `closed_to_eval_socket`: `0`
- `eval_accepts`: `4`
  - line `14`: ``BellmanEvalAccepts` without a sampled rank/path index.`
  - line `74`: `BellmanEvalAccepts graphPotential graphSmokeNext rootState (176 : Int)`
  - line `89`: `theorem bellmanEvalAccepts_of_closedFaceTraceA_or_closedFaceTraceB`
  - line `99`: `BellmanEvalAccepts graphPotential graphSmokeNext rootState (176 : Int)`
- `semantic_eval_language`: `0`
- `remaining_premises`: `0`

### `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingClosedEvalGate.lean`

- exists: `True`
- `semantic_object`: `23`
  - line `19`: `def ClosedTraceOr (obj : TopPairingBellmanObj Face.ym) : Prop :=`
  - line `20`: `TopPairingBellmanObj.labels (fun f : Face => f) obj =`
  - line `22`: `TopPairingBellmanObj.labels (fun f : Face => f) obj =`
  - line `27`: `(obj : TopPairingBellmanObj Face.ym) : Prop :=`
  - line `43`: `forall obj : TopPairingBellmanObj Face.ym,`
  - line `46`: `forall obj : TopPairingBellmanObj Face.ym,`
  - line `48`: `(obj : TopPairingBellmanObj Face.ym) :`
  - line `50`: `(fun obj : TopPairingBellmanObj Face.ym => scaledMargin obj.rank)`
  - ... `15` more
- `closed_language_fields`: `5`
  - line `8`: ``TopPairingClosedLanguageAtRank`, not from sampled rank/path objects.  This file`
  - line `65`: `(hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :`
  - line `118`: `(hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :`
  - line `129`: `TopPairingClosedLanguageAtRank rank Face.ym ->`
  - line `134`: `(hclosed : TopPairingClosedLanguageAtRank rank Face.ym) :`
- `sampled_eval`: `0`
- `closed_to_eval_socket`: `2`
  - line `56`: `theorem closedToEvalLanguage_of_traceAndMargin`
  - line `125`: `theorem scaledMargin_nonpos_of_closedToEvalLanguage`
- `eval_accepts`: `5`
  - line `40`: `theorem evalAccepts_of_closedTraceAndMargin`
  - line `49`: `BellmanEvalAccepts graphPotential graphSmokeNext rootState (176 : Int)`
  - line `53`: `_root_.Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedEvalTraceSmoke.bellmanEvalAccepts_of_closedFaceTraceA_or_closedFaceTraceB`
  - line `70`: `have heval := evalAccepts_of_closedTraceAndMargin`
  - line `106`: `evalAccepts_of_closedTraceAndMargin`
- `semantic_eval_language`: `2`
  - line `66`: `TopPairingBellmanEvalLanguageAtRank`
  - line `130`: `TopPairingBellmanEvalLanguageAtRank`
- `remaining_premises`: `10`
  - line `19`: `def ClosedTraceOr (obj : TopPairingBellmanObj Face.ym) : Prop :=`
  - line `25`: `def ClosedMarginBound`
  - line `44`: `ClosedTraceOr obj)`
  - line `47`: `ClosedMarginBound scaledMargin obj)`
  - line `60`: `ClosedTraceOr obj)`
  - line `63`: `ClosedMarginBound scaledMargin obj)`
  - line `84`: `ClosedTraceOr obj)`
  - line `87`: `ClosedMarginBound scaledMargin obj)`
  - ... `2` more

### `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraphAcceptedEvalLanguage.lean`

- exists: `True`
- `semantic_object`: `5`
  - line `45`: `({ rank := rank, closed := hclosed } : TopPairingBellmanObj Face.ym)) :`
  - line `52`: `({ rank := rank, closed := hclosed } : TopPairingBellmanObj Face.ym)`
  - line `55`: `exact ⟨result, by simpa [TopPairingBellmanObj.labels,`
  - line `56`: `TopPairingBellmanObj.forcedSeq] using heval, hfinish, hmargin⟩`
  - line `67`: `TopPairingBellmanObj Face.ym)) :`
- `closed_language_fields`: `1`
  - line `42`: `(hclosed : TopPairingClosedLanguageAtRank rank Face.ym)`
- `sampled_eval`: `0`
- `closed_to_eval_socket`: `3`
  - line `39`: `theorem evalLanguageAtRank_of_graphAcceptedTraceMargin`
  - line `58`: `theorem evalLanguageAtRank_of_strengthened_graphAcceptedTraceMargin`
  - line `71`: `evalLanguageAtRank_of_graphAcceptedTraceMargin`
- `eval_accepts`: `1`
  - line `51`: `rcases bellmanEvalAccepts_of_graphAcceptedTraceMargin`
- `semantic_eval_language`: `3`
  - line `9`: `bound, it becomes a `TopPairingBellmanEvalLanguageAtRank`.  The hard generated`
  - line `46`: `TopPairingBellmanEvalLanguageAtRank`
  - line `68`: `TopPairingBellmanEvalLanguageAtRank`
- `remaining_premises`: `7`
  - line `10`: `task is therefore to prove `GraphAcceptedTraceMargin` semantically, not to`
  - line `20`: `def AcceptedSequenceBadFaceAtRank`
  - line `29`: `AcceptedSequenceBadFaceAtRank rank Face.ym)`
  - line `31`: `TopPairingTraceClassifier.Accepted.TerminalOkTraceLabels`
  - line `44`: `GraphAcceptedTraceMargin scaledMargin`
  - line `63`: `AcceptedSequenceBadFaceAtRank rank Face.ym)`
  - line `65`: `GraphAcceptedTraceMargin scaledMargin`

