# Graph183 Accepted-Tail Margin Frontier

Diagnostic status evidence only.  This audit does not prove coverage,
does not certify the margin theorem, and does not replace Lean-checked
family evidence.

- decision: `diagnostic_supports_graph183_accepted_tail_margin_bellman_route`
- failed checks: `0`

## Meaning

A passing decision means graph183 completion-tail membership is already
on the semantic target-shadow cursor route, and the exact profiler
supports trying the accepted-tail margin producer next.  It does not
mean that producer exists.  If the producer needs sampled ranks,
selected prefixes, accepted trace ids, exact affine RHS keys, or one
branch per rank/path, the route must pivot to a cancellation-segment or
cocycle/coboundary quotient.

## Metrics

### profile_100k

| metric | value |
| --- | ---: |
| `range` | `[0,100000)` |
| `jobs` | `1` |
| `matched` | `11` |
| `states` | `94` |
| `edges` | `93` |
| `final_states` | `11` |
| `margin_families` | `1` |
| `margin_values` | `5` |
| `max_margin_bound` | `-16/11` |
| `scale` | `88` |
| `elapsed_seconds` | `36.14832109300187` |
| `guard_elapsed_seconds` | `37.035643451003125` |
| `guard_peak_rss_mib` | `25.3828125` |
| `guard_min_available_mib` | `45027.44140625` |

### profile_1m

| metric | value |
| --- | ---: |
| `range` | `[0,1000000)` |
| `jobs` | `4` |
| `matched` | `37` |
| `states` | `223` |
| `edges` | `229` |
| `final_states` | `29` |
| `margin_families` | `1` |
| `margin_values` | `14` |
| `max_margin_bound` | `0` |
| `scale` | `88` |
| `elapsed_seconds` | `81.78529524100304` |
| `guard_elapsed_seconds` | `82.05425142998865` |
| `guard_peak_rss_mib` | `106.72265625` |
| `guard_min_available_mib` | `46248.05078125` |

### cocycle_quotient_1m

| metric | value |
| --- | ---: |
| `decision` | `cocycle_quotient_candidates_found` |
| `best_mode` | `step-par` |
| `best_quotient_states` | `43` |
| `best_quotient_edges` | `93` |
| `best_state_ratio` | `0.19282511210762332` |
| `best_edge_ratio` | `0.40611353711790393` |

## Checks

| check | passed | detail |
| --- | --- | --- |
| `graph183_socket_exists` | `True` | `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingDepth11Layer4Graph183TailTableSocket.lean` |
| `socket_symbol:AcceptedSequenceGraph183AcceptedTailMarginFamily` | `True` | `AcceptedSequenceGraph183AcceptedTailMarginFamily` |
| `socket_symbol:AcceptedSequenceGraph183AcceptedBranchLabelMarginFamily` | `True` | `AcceptedSequenceGraph183AcceptedBranchLabelMarginFamily` |
| `socket_symbol:graph183AcceptedBranchLabels` | `True` | `graph183AcceptedBranchLabels` |
| `socket_symbol:graph183AcceptedBranchLabels_eq_of_prefix` | `True` | `graph183AcceptedBranchLabels_eq_of_prefix` |
| `socket_symbol:graph183AcceptedBranchEvalGateResult_of_labels` | `True` | `graph183AcceptedBranchEvalGateResult_of_labels` |
| `socket_symbol:graph183AcceptedBranchEvalGateAtRank_of_labels` | `True` | `graph183AcceptedBranchEvalGateAtRank_of_labels` |
| `socket_symbol:AcceptedSequenceGraph183AcceptedBranchExactEvalFamily` | `True` | `AcceptedSequenceGraph183AcceptedBranchExactEvalFamily` |
| `socket_symbol:acceptedSequenceGraph183AcceptedBranchLabelMarginFamily_of_exactEval` | `True` | `acceptedSequenceGraph183AcceptedBranchLabelMarginFamily_of_exactEval` |
| `socket_symbol:acceptedSequenceGraph183AcceptedTailMarginFamily_of_labelMargin` | `True` | `acceptedSequenceGraph183AcceptedTailMarginFamily_of_labelMargin` |
| `socket_symbol:acceptedSequenceGraph183AcceptedBranchFinalMarginFamily_of_components` | `True` | `acceptedSequenceGraph183AcceptedBranchFinalMarginFamily_of_components` |
| `socket_symbol:acceptedSequenceGraph183TargetCancellationTailFamily_of_cursor` | `True` | `acceptedSequenceGraph183TargetCancellationTailFamily_of_cursor` |
| `socket_symbol:acceptedSequenceGraph183CompletionTailFamily_of_semanticCursor` | `True` | `acceptedSequenceGraph183CompletionTailFamily_of_semanticCursor` |
| `socket_symbol:graph183ForcedTail` | `True` | `graph183ForcedTail` |
| `socket_symbol:graph183TailEval` | `True` | `graph183TailEval` |
| `socket_symbol:closedBellmanNext` | `True` | `closedBellmanNext` |
| `socket_forbidden_absent:graphSmokeNext` | `True` | `graphSmokeNext` |
| `socket_forbidden_absent:Split10MGraphExactEvalGateAtRank` | `True` | `Split10MGraphExactEvalGateAtRank` |
| `socket_forbidden_absent:ExactGraphFinishMarginBound` | `True` | `ExactGraphFinishMarginBound` |
| `socket_forbidden_absent:Split10MExactGraphFinishFinalMarginProducer` | `True` | `Split10MExactGraphFinishFinalMarginProducer` |
| `socket_forbidden_absent:SampledRankIndex` | `True` | `SampledRankIndex` |
| `socket_forbidden_absent:sampledContainsRank` | `True` | `sampledContainsRank` |
| `socket_forbidden_absent:sampledRankOf` | `True` | `sampledRankOf` |
| `socket_forbidden_absent:SelectedPrefix` | `True` | `SelectedPrefix` |
| `socket_forbidden_absent:AcceptedTraceId` | `True` | `AcceptedTraceId` |
| `socket_forbidden_absent:acceptedTraceOfId` | `True` | `acceptedTraceOfId` |
| `bellman_potential_exists` | `True` | `Cuboctahedron/Search/BellmanPotential.lean` |
| `bellman_symbol:quotient_of_step_gain_eq` | `True` | `quotient_of_step_gain_eq` |
| `target_cursor:exists` | `True` | `Cuboctahedron/Search/TopPairingTargetCursor.lean` |
| `target_cursor:symbol:topPairingTargetShadow_of_summary` | `True` | `topPairingTargetShadow_of_summary` |
| `target_cursor:symbol:topPairingTriShadow_eq_target_of_closed` | `True` | `topPairingTriShadow_eq_target_of_closed` |
| `target_cursor:symbol:TopPairingTriCursorFrom` | `True` | `TopPairingTriCursorFrom` |
| `target_cursor:symbol:topPairingTriCursor_of_closed` | `True` | `topPairingTriCursor_of_closed` |
| `target_cursor:symbol:TopPairingTargetCursorAtRank` | `True` | `TopPairingTargetCursorAtRank` |
| `target_cursor:symbol:TopPairingStartMissSemanticLanguageAtRank` | `True` | `TopPairingStartMissSemanticLanguageAtRank` |
| `target_cursor:forbidden_absent:SampledRankIndex` | `True` | `SampledRankIndex` |
| `target_cursor:forbidden_absent:sampledContainsRank` | `True` | `sampledContainsRank` |
| `target_cursor:forbidden_absent:sampledRankOf` | `True` | `sampledRankOf` |
| `target_cursor:forbidden_absent:SelectedPrefix` | `True` | `SelectedPrefix` |
| `target_cursor:forbidden_absent:AcceptedTraceId` | `True` | `AcceptedTraceId` |
| `target_cursor:forbidden_absent:acceptedTraceOfId` | `True` | `acceptedTraceOfId` |
| `bellman_object:exists` | `True` | `Cuboctahedron/Search/TopPairingBellmanObject.lean` |
| `bellman_object:symbol:TopPairingBellmanObj` | `True` | `TopPairingBellmanObj` |
| `bellman_object:symbol:topPairingClosedMembership` | `True` | `topPairingClosedMembership` |
| `bellman_object:symbol:TopPairingBellmanEvalLanguageAtRank` | `True` | `TopPairingBellmanEvalLanguageAtRank` |
| `bellman_object:symbol:topPairingBellmanEvalObjectCoverOfClosedToEval` | `True` | `topPairingBellmanEvalObjectCoverOfClosedToEval` |
| `bellman_object:forbidden_absent:SampledRankIndex` | `True` | `SampledRankIndex` |
| `bellman_object:forbidden_absent:sampledContainsRank` | `True` | `sampledContainsRank` |
| `bellman_object:forbidden_absent:sampledRankOf` | `True` | `sampledRankOf` |
| `bellman_object:forbidden_absent:SelectedPrefix` | `True` | `SelectedPrefix` |
| `bellman_object:forbidden_absent:AcceptedTraceId` | `True` | `AcceptedTraceId` |
| `bellman_object:forbidden_absent:acceptedTraceOfId` | `True` | `acceptedTraceOfId` |
| `semantic_audit_accepts_margin_target` | `True` | `semantic_evaluator_pivot_ready_for_accepted_tail_margin_producer` |
| `semantic_audit_target_is_accepted_tail_margin` | `True` | `AcceptedSequenceGraph183AcceptedBranchExactEvalFamily scaledMargin` |
| `profile_100k:offset_sum_mismatches_zero` | `True` | `0` |
| `profile_100k:single_margin_family` | `True` | `1` |
| `profile_100k:states_under_2000` | `True` | `94` |
| `profile_100k:edges_under_5000` | `True` | `93` |
| `profile_100k:bounded_fixed_point` | `True` | `True` |
| `profile_100k:observed_nonpositive` | `True` | `-16/11` |
| `profile_100k:max_margin_bound_nonpositive` | `True` | `-16/11` |
| `profile_100k:with_step_tri_source_mode` | `True` | `with-step-tri-source` |
| `profile_1m:offset_sum_mismatches_zero` | `True` | `0` |
| `profile_1m:single_margin_family` | `True` | `1` |
| `profile_1m:states_under_2000` | `True` | `223` |
| `profile_1m:edges_under_5000` | `True` | `229` |
| `profile_1m:bounded_fixed_point` | `True` | `True` |
| `profile_1m:observed_nonpositive` | `True` | `0` |
| `profile_1m:max_margin_bound_nonpositive` | `True` | `0` |
| `profile_1m:with_step_tri_source_mode` | `True` | `with-step-tri-source` |
| `profile_100k:guard_exit_zero` | `True` | `0` |
| `profile_100k:rss_under_512_mib` | `True` | `25.3828125` |
| `profile_100k:available_above_30000_mib` | `True` | `45027.44140625` |
| `profile_1m:guard_exit_zero` | `True` | `0` |
| `profile_1m:rss_under_512_mib` | `True` | `106.72265625` |
| `profile_1m:available_above_30000_mib` | `True` | `46248.05078125` |
| `cocycle_quotient_1m:decision_candidate_found` | `True` | `cocycle_quotient_candidates_found` |
| `cocycle_quotient_1m:best_exists` | `True` | `step-par` |
| `cocycle_quotient_1m:best_states_under_100` | `True` | `43` |
| `cocycle_quotient_1m:best_edges_under_150` | `True` | `93` |

## Next Lean Target

```lean
AcceptedSequenceGraph183AcceptedBranchExactEvalFamily scaledMargin
```

The graph183 completion-tail component is already available via
`acceptedSequenceGraph183CompletionTailFamily_of_semanticCursor`.
The exact eval surface adapts to the graph183 label-margin family
through
`acceptedSequenceGraph183AcceptedBranchLabelMarginFamily_of_exactEval`,
and then to `AcceptedSequenceGraph183AcceptedTailMarginFamily` through
`acceptedSequenceGraph183AcceptedTailMarginFamily_of_labelMargin`.
The next Lean smoke should prove the accepted-branch exact evaluator
component from semantic closed-language/evaluator state.  The quotient
profile is a fallback signal only: any quotient/gauge equations must
still become Lean-checked local facts.
