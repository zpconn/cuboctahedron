# Top-Pairing Bellman Eval-Contract Audit

This is diagnostic-only evidence.  It audits whether the current
top-pairing Bellman route has reached the semantic evaluator theorem
recommended by GPT5.5, or whether deterministic evaluation is still
sampled-object-bound.

## Summary

- decision: `continue-one-semantic-bellman-experiment-via-strengthened-predicate`
- semantic-object mentions: `96`
- closed-language field mentions: `78`
- sampled-eval mentions: `0`
- semantic eval-language mentions: `52`
- closed-to-eval socket mentions: `7`
- remaining-premise mentions: `31`
- allowed-strengthening mentions: `33`
- strengthened-slice field mentions: `52`

## Interpretation

The semantic object/membership layer exists.  In particular, the
object surface is `TopPairingBellmanObj`, whose data is only a rank
and a proof of `TopPairingClosedLanguageAtRank`; the membership proof
does not need a sampled rank/path table.

```lean
structure TopPairingBellmanObj (badFace : Face) where
  rank : Fin numPairWords
  closed : TopPairingClosedLanguageAtRank rank badFace
```

The remaining proof obligation is the hard deterministic evaluator
theorem:

```lean
forall obj : TopPairingBellmanObj Face.ym,
  BellmanEvalAccepts ...
    (fun obj => topPairingScaledMargin obj.rank)
    (fun obj => TopPairingBellmanObj.labels ... obj)
    obj
```

Equivalently, in rank form:

```lean
forall rank,
  TopPairingClosedLanguageAtRank rank Face.ym ->
    TopPairingBellmanEvalLanguageAtRank ... rank Face.ym
```

If the plain closed predicate is too weak, the allowed adjustment is
one stronger semantic predicate, for example:

```lean
forall rank,
  TopPairingStrengthenedClosedLanguageAtRank
    sequenceBadFace rank Face.ym ->
    TopPairingBellmanEvalLanguageAtRank ... rank Face.ym
```

That strengthening may carry `GraphAcceptedTraceMargin`,
`TopPairingActualFaceOmniAtRank`, or the corresponding sequence
bad-face evidence.  It must still be semantic.  It must not be a
`SampledRankIndex`, a sampled path list, an exact affine-RHS key, or
one generated branch per rank/path.

The selected-prefix Bellman route is already using this allowed
strengthened shape.  Its shard predicates include closed-language
membership, actual-face omnihedral evidence, accepted sequence/bad-face
membership, terminal trace labels, prefix membership, and the scaled
margin bound.  Therefore the next proof obligation is not another
potential or sampled smoke; it is an upstream residual-classifier
membership theorem into this strengthened semantic slice.

## Go/No-Go Rule

Continue Bellman only if the next implementation proves this evaluator
slice from the semantic object or from one compact strengthened
semantic predicate.  If the theorem collapses back into sampled
membership, rank/path enumeration, or exact affine-offset keys, demote
this Bellman route to discovery infrastructure and pivot to the
cancellation-tree summary automaton.

## Files

### `Cuboctahedron/Search/TopPairingBellmanObject.lean`

- exists: `True`
- `semantic_object`: `54`
  - line `16`: `abbrev TopPairingClosedContainsRank (badFace : Face) :`
  - line `22`: `TopPairingClosedContainsRank badFace`
  - line `31`: `structure TopPairingBellmanObj (badFace : Face) where`
  - line `35`: `namespace TopPairingBellmanObj`
  - line `37`: `def rankOf {badFace : Face} (obj : TopPairingBellmanObj badFace) :`
  - line `41`: `def Accepts {badFace : Face} (_obj : TopPairingBellmanObj badFace) :`
  - line `45`: `theorem accepts {badFace : Face} (obj : TopPairingBellmanObj badFace) :`
  - line `49`: `def forcedSeq {badFace : Face} (obj : TopPairingBellmanObj badFace) :`
  - ... `46` more
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
- `closed_to_eval_socket`: `2`
  - line `451`: `def topPairingBellmanEvalObjectCoverOfClosedToEval`
  - line `506`: `def topPairingBellmanEvalObjectCoverOfStrengthenedToEval`
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
- `allowed_strengthening`: `9`
  - line `24`: `abbrev TopPairingStrengthenedClosedContainsRank`
  - line `28`: `TopPairingStrengthenedClosedLanguageAtRank`
  - line `244`: `structure TopPairingBellmanEvalLanguageAtRank`
  - line `273`: `TopPairingBellmanEvalLanguageAtRank`
  - line `287`: `TopPairingBellmanEvalLanguageAtRank`
  - line `467`: `TopPairingBellmanEvalLanguageAtRank`
  - line `522`: `TopPairingStrengthenedClosedLanguageAtRank`
  - line `524`: `TopPairingBellmanEvalLanguageAtRank`
  - ... `1` more
- `strengthened_slice_fields`: `0`

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
- `remaining_premises`: `3`
  - line `367`: `def TopPairingActualFaceOmniAtRank (rank : Fin numPairWords) : Prop :=`
  - line `596`: `TopPairingActualFaceOmniAtRank rank`
  - line `726`: `(actualFaceOmni : TopPairingActualFaceOmniAtRank rank)`
- `allowed_strengthening`: `6`
  - line `591`: `structure TopPairingStrengthenedClosedLanguageAtRank`
  - line `704`: `namespace TopPairingStrengthenedClosedLanguageAtRank`
  - line `709`: `(h : TopPairingStrengthenedClosedLanguageAtRank`
  - line `717`: `(h : TopPairingStrengthenedClosedLanguageAtRank`
  - line `728`: `TopPairingStrengthenedClosedLanguageAtRank`
  - line `734`: `end TopPairingStrengthenedClosedLanguageAtRank`
- `strengthened_slice_fields`: `3`
  - line `367`: `def TopPairingActualFaceOmniAtRank (rank : Fin numPairWords) : Prop :=`
  - line `596`: `TopPairingActualFaceOmniAtRank rank`
  - line `726`: `(actualFaceOmni : TopPairingActualFaceOmniAtRank rank)`

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
- `allowed_strengthening`: `0`
- `strengthened_slice_fields`: `0`

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
- `allowed_strengthening`: `2`
  - line `66`: `TopPairingBellmanEvalLanguageAtRank`
  - line `130`: `TopPairingBellmanEvalLanguageAtRank`
- `strengthened_slice_fields`: `2`
  - line `119`: `scaledMargin rank <= 0 := by`
  - line `135`: `scaledMargin rank <= 0 := by`

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
- `allowed_strengthening`: `5`
  - line `9`: `bound, it becomes a `TopPairingBellmanEvalLanguageAtRank`.  The hard generated`
  - line `28`: `TopPairingStrengthenedClosedLanguageAtRank`
  - line `46`: `TopPairingBellmanEvalLanguageAtRank`
  - line `62`: `TopPairingStrengthenedClosedLanguageAtRank`
  - line `68`: `TopPairingBellmanEvalLanguageAtRank`
- `strengthened_slice_fields`: `3`
  - line `20`: `def AcceptedSequenceBadFaceAtRank`
  - line `29`: `AcceptedSequenceBadFaceAtRank rank Face.ym)`
  - line `63`: `AcceptedSequenceBadFaceAtRank rank Face.ym)`

### `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingSelectedPrefixTraceMarginSocket.lean`

- exists: `True`
- `semantic_object`: `0`
- `closed_language_fields`: `0`
- `sampled_eval`: `0`
- `closed_to_eval_socket`: `0`
- `eval_accepts`: `0`
- `semantic_eval_language`: `1`
  - line `38`: `TopPairingBellmanEvalLanguageAtRank`
- `remaining_premises`: `0`
- `allowed_strengthening`: `3`
  - line `36`: `TopPairingStrengthenedClosedLanguageAtRank`
  - line `38`: `TopPairingBellmanEvalLanguageAtRank`
  - line `48`: `TopPairingStrengthenedClosedLanguageAtRank`
- `strengthened_slice_fields`: `7`
  - line `18`: `def SelectedPrefixTraceMarginSequenceBadFace`
  - line `22`: `SelectedPrefixTraceMarginFamily scaledMargin rank`
  - line `28`: `SelectedPrefixTraceMarginSequenceBadFace scaledMargin rank Face.ym) :`
  - line `29`: `SelectedPrefixTraceMarginFamily scaledMargin rank :=`
  - line `37`: `(SelectedPrefixTraceMarginSequenceBadFace scaledMargin) rank Face.ym) :`
  - line `49`: `(SelectedPrefixTraceMarginSequenceBadFace scaledMargin) rank Face.ym) :`
  - line `50`: `scaledMargin rank <= 0 :=`

### `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingSelectedPrefixTraceMarginObjectCover.lean`

- exists: `True`
- `semantic_object`: `0`
- `closed_language_fields`: `0`
- `sampled_eval`: `0`
- `closed_to_eval_socket`: `0`
- `eval_accepts`: `0`
- `semantic_eval_language`: `10`
  - line `91`: `TopPairingBellmanEvalObj`
  - line `94`: `scaledMargin (TopPairingBellmanEvalObj.rankOf obj))`
  - line `96`: `TopPairingBellmanEvalObj`
  - line `100`: `(TopPairingBellmanEvalObj.forcedSeq obj))`
  - line `101`: `(TopPairingBellmanEvalObj.Accepts`
  - line `110`: `rcases TopPairingBellmanEvalObj.evalAccepts obj with`
  - line `118`: `(TopPairingBellmanEvalObj`
  - line `123`: `(TopPairingBellmanEvalObj.rankOf`
  - ... `2` more
- `remaining_premises`: `0`
- `allowed_strengthening`: `2`
  - line `139`: `(TopPairingStrengthenedClosedContainsRank`
  - line `167`: `TopPairingStrengthenedClosedLanguageAtRank`
- `strengthened_slice_fields`: `3`
  - line `140`: `(SelectedPrefixTraceMarginSequenceBadFace scaledMargin) Face.ym)`
  - line `168`: `(SelectedPrefixTraceMarginSequenceBadFace scaledMargin) rank Face.ym) :`
  - line `169`: `scaledMargin rank <= 0 :=`

### `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingStateDAGSelectedPrefixCover/Group000.lean`

- exists: `True`
- `semantic_object`: `0`
- `closed_language_fields`: `10`
  - line `151`: `(hclosed : TopPairingClosedLanguageAtRank rank Face.ym)`
  - line `177`: `TopPairingClosedLanguageAtRank rank Face.ym /\`
  - line `363`: `(hclosed : TopPairingClosedLanguageAtRank rank Face.ym)`
  - line `384`: `TopPairingClosedLanguageAtRank rank Face.ym /\`
  - line `570`: `(hclosed : TopPairingClosedLanguageAtRank rank Face.ym)`
  - line `591`: `TopPairingClosedLanguageAtRank rank Face.ym /\`
  - line `777`: `(hclosed : TopPairingClosedLanguageAtRank rank Face.ym)`
  - line `799`: `TopPairingClosedLanguageAtRank rank Face.ym /\`
  - ... `2` more
- `sampled_eval`: `0`
- `closed_to_eval_socket`: `0`
- `eval_accepts`: `0`
- `semantic_eval_language`: `6`
  - line `205`: `TopPairingBellmanEvalLanguageAtRank`
  - line `412`: `TopPairingBellmanEvalLanguageAtRank`
  - line `619`: `TopPairingBellmanEvalLanguageAtRank`
  - line `827`: `TopPairingBellmanEvalLanguageAtRank`
  - line `1040`: `TopPairingBellmanEvalLanguageAtRank`
  - line `1079`: `TopPairingBellmanEvalLanguageAtRank`
- `remaining_premises`: `11`
  - line `17`: `open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedTraceMarginBridge`
  - line `178`: `TopPairingActualFaceOmniAtRank rank /\`
  - line `179`: `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank`
  - line `385`: `TopPairingActualFaceOmniAtRank rank /\`
  - line `386`: `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank`
  - line `592`: `TopPairingActualFaceOmniAtRank rank /\`
  - line `593`: `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank`
  - line `800`: `TopPairingActualFaceOmniAtRank rank /\`
  - ... `3` more
- `allowed_strengthening`: `6`
  - line `205`: `TopPairingBellmanEvalLanguageAtRank`
  - line `412`: `TopPairingBellmanEvalLanguageAtRank`
  - line `619`: `TopPairingBellmanEvalLanguageAtRank`
  - line `827`: `TopPairingBellmanEvalLanguageAtRank`
  - line `1040`: `TopPairingBellmanEvalLanguageAtRank`
  - line `1079`: `TopPairingBellmanEvalLanguageAtRank`
- `strengthened_slice_fields`: `34`
  - line `174`: `def Prefix000ShardFamily`
  - line `178`: `TopPairingActualFaceOmniAtRank rank /\`
  - line `179`: `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphAcceptedEvalLanguage.AcceptedSequenceBadFaceAtRank`
  - line `181`: `TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels`
  - line `185`: `scaledMargin rank <= (176 : Int) + (-376 : Int)`
  - line `187`: `theorem stateDAGPrefixFamily_of_Prefix000ShardFamily`
  - line `190`: `(hrank : Prefix000ShardFamily scaledMargin rank) :`
  - line `204`: `(hrank : Prefix000ShardFamily scaledMargin rank) :`
  - ... `26` more

