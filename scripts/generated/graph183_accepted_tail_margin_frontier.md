# Graph183 Accepted-Tail Margin Frontier

Diagnostic status evidence only.  This audit does not prove coverage,
does not certify the margin theorem, and does not replace Lean-checked
family evidence.

- decision: `diagnostic_supports_graph183_accepted_tail_margin_bellman_route`
- failed checks: `0`

## Meaning

A passing decision means graph183 completion-tail membership is already
on the semantic target-shadow cursor route, and the exact profiler
supports trying the generic sequence-bad-face quotient-margin carrier
next.  It does not
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
| `solution_gauge_count` | `223` |
| `solution_small_gain_count` | `93` |
| `solution_nonzero_values` | `222` |
| `solution_max_bit_length` | `9` |

### graph183_quotient_margin_socket_guard

| metric | value |
| --- | ---: |
| `elapsed_seconds` | `5.004831861995626` |
| `peak_rss_mib` | `3965.06640625` |
| `min_available_mib` | `46219.734375` |

### graph183_accepted_branch_quotient_guard

| metric | value |
| --- | ---: |
| `elapsed_seconds` | `5.0034252110053785` |
| `peak_rss_mib` | `3410.734375` |
| `min_available_mib` | `46363.515625` |

### graph183_scaling_contract

| metric | value |
| --- | ---: |
| `profile_scale` | `88` |
| `profile_const_scaled` | `176` |
| `graph183_accepted_gain_scaled` | `-348` |
| `graph183_accepted_bound_scaled` | `-172` |

## Graph183 Scaling Contract

The graph183-specific accepted branch is deliberately more negative
than the diagnostic Bellman argmax.  The socket expects the scaled
bound:

```text
graphConst + (194 - 542) = -172
```

The profile scale is diagnostic context only; final proof evidence
must still be Lean-checked through the graph183 family theorem.

## Checks

| check | passed | detail |
| --- | --- | --- |
| `graph183_socket_exists` | `True` | `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingDepth11Layer4Graph183TailTableSocket.lean` |
| `socket_symbol:AcceptedSequenceGraph183AcceptedTailMarginFamily` | `True` | `AcceptedSequenceGraph183AcceptedTailMarginFamily` |
| `socket_symbol:AcceptedSequenceGraph183AcceptedBranchLabelMarginFamily` | `True` | `AcceptedSequenceGraph183AcceptedBranchLabelMarginFamily` |
| `socket_symbol:graph183AcceptedBranchLabels` | `True` | `graph183AcceptedBranchLabels` |
| `socket_symbol:graph183AcceptedBranchLabels_eq_of_prefix` | `True` | `graph183AcceptedBranchLabels_eq_of_prefix` |
| `socket_symbol:graph183AcceptedBranchEval_of_prefix` | `True` | `graph183AcceptedBranchEval_of_prefix` |
| `socket_symbol:graph183AcceptedBranchEvalGateResult_of_labels` | `True` | `graph183AcceptedBranchEvalGateResult_of_labels` |
| `socket_symbol:graph183AcceptedBranchEvalGateAtRank_of_labels` | `True` | `graph183AcceptedBranchEvalGateAtRank_of_labels` |
| `socket_symbol:AcceptedSequenceGraph183AcceptedBranchExactEvalFamily` | `True` | `AcceptedSequenceGraph183AcceptedBranchExactEvalFamily` |
| `socket_symbol:acceptedSequenceGraph183AcceptedBranchLabelMarginFamily_of_exactEval` | `True` | `acceptedSequenceGraph183AcceptedBranchLabelMarginFamily_of_exactEval` |
| `socket_symbol:acceptedSequenceGraph183AcceptedBranchExactEvalFamily_of_labelMargin` | `True` | `acceptedSequenceGraph183AcceptedBranchExactEvalFamily_of_labelMargin` |
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
| `graph183_quotient_smoke:exists` | `True` | `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraph183CocycleQuotientSmoke.lean` |
| `graph183_quotient_smoke:symbol:graph183AcceptedBranchRawGain` | `True` | `graph183AcceptedBranchRawGain` |
| `graph183_quotient_smoke:symbol:graph183AcceptedBranchRawGain_contract` | `True` | `graph183AcceptedBranchRawGain_contract` |
| `graph183_quotient_smoke:symbol:graph183QuotientAcceptedBranchSmoke` | `True` | `graph183QuotientAcceptedBranchSmoke` |
| `graph183_quotient_smoke:symbol:graph183QuotientStep` | `True` | `graph183QuotientStep` |
| `graph183_quotient_smoke:forbidden_absent:SampledRankIndex` | `True` | `SampledRankIndex` |
| `graph183_quotient_smoke:forbidden_absent:sampledContainsRank` | `True` | `sampledContainsRank` |
| `graph183_quotient_smoke:forbidden_absent:sampledRankOf` | `True` | `sampledRankOf` |
| `graph183_quotient_smoke:forbidden_absent:SelectedPrefix` | `True` | `SelectedPrefix` |
| `graph183_quotient_smoke:forbidden_absent:AcceptedTraceId` | `True` | `AcceptedTraceId` |
| `graph183_quotient_smoke:forbidden_absent:acceptedTraceOfId` | `True` | `acceptedTraceOfId` |
| `graph183_accepted_branch_quotient:exists` | `True` | `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraph183AcceptedBranchQuotient.lean` |
| `graph183_accepted_branch_quotient:symbol:acceptedLocalEquation` | `True` | `acceptedLocalEquation` |
| `graph183_accepted_branch_quotient:symbol:graph183AcceptedBranchRawGain` | `True` | `graph183AcceptedBranchRawGain` |
| `graph183_accepted_branch_quotient:symbol:graph183AcceptedBranchRawGain_contract` | `True` | `graph183AcceptedBranchRawGain_contract` |
| `graph183_accepted_branch_quotient:symbol:graph183AcceptedBranchLocalEquationsChecked` | `True` | `graph183AcceptedBranchLocalEquationsChecked` |
| `graph183_accepted_branch_quotient:forbidden_absent:SampledRankIndex` | `True` | `SampledRankIndex` |
| `graph183_accepted_branch_quotient:forbidden_absent:sampledContainsRank` | `True` | `sampledContainsRank` |
| `graph183_accepted_branch_quotient:forbidden_absent:sampledRankOf` | `True` | `sampledRankOf` |
| `graph183_accepted_branch_quotient:forbidden_absent:SelectedPrefix` | `True` | `SelectedPrefix` |
| `graph183_accepted_branch_quotient:forbidden_absent:AcceptedTraceId` | `True` | `AcceptedTraceId` |
| `graph183_accepted_branch_quotient:forbidden_absent:acceptedTraceOfId` | `True` | `acceptedTraceOfId` |
| `graph183_quotient_socket:exists` | `True` | `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraph183QuotientMarginSocket.lean` |
| `graph183_quotient_socket:symbol:AcceptedSequenceGraph183AcceptedBranchQuotientMarginFamily` | `True` | `AcceptedSequenceGraph183AcceptedBranchQuotientMarginFamily` |
| `graph183_quotient_socket:symbol:acceptedSequenceGraph183AcceptedBranchLabelMarginFamily_of_quotientMargin` | `True` | `acceptedSequenceGraph183AcceptedBranchLabelMarginFamily_of_quotientMargin` |
| `graph183_quotient_socket:symbol:acceptedSequenceGraph183AcceptedBranchExactEvalFamily_of_quotientMargin` | `True` | `acceptedSequenceGraph183AcceptedBranchExactEvalFamily_of_quotientMargin` |
| `graph183_quotient_socket:symbol:acceptedSequenceGraph183AcceptedBranchQuotientMarginFamily_of_labelMargin` | `True` | `acceptedSequenceGraph183AcceptedBranchQuotientMarginFamily_of_labelMargin` |
| `graph183_quotient_socket:symbol:acceptedSequenceGraph183AcceptedBranchQuotientMarginFamily_of_exactEval` | `True` | `acceptedSequenceGraph183AcceptedBranchQuotientMarginFamily_of_exactEval` |
| `graph183_quotient_socket:symbol:acceptedSequenceGraph183AcceptedTailMarginFamily_of_quotientMargin` | `True` | `acceptedSequenceGraph183AcceptedTailMarginFamily_of_quotientMargin` |
| `graph183_quotient_socket:symbol:AcceptedSequenceGraph183AcceptedTailQuotientMarginFamily` | `True` | `AcceptedSequenceGraph183AcceptedTailQuotientMarginFamily` |
| `graph183_quotient_socket:symbol:acceptedSequenceGraph183AcceptedTailQuotientMarginFamily_of_tailMargin` | `True` | `acceptedSequenceGraph183AcceptedTailQuotientMarginFamily_of_tailMargin` |
| `graph183_quotient_socket:symbol:acceptedSequenceGraph183AcceptedTailQuotientMarginFamily_of_labelMargin` | `True` | `acceptedSequenceGraph183AcceptedTailQuotientMarginFamily_of_labelMargin` |
| `graph183_quotient_socket:symbol:acceptedSequenceGraph183AcceptedTailQuotientMarginFamily_of_exactEval` | `True` | `acceptedSequenceGraph183AcceptedTailQuotientMarginFamily_of_exactEval` |
| `graph183_quotient_socket:symbol:Graph183TailQuotientMarginFamily` | `True` | `Graph183TailQuotientMarginFamily` |
| `graph183_quotient_socket:symbol:Graph183TailQuotientMarginSequenceBadFace` | `True` | `Graph183TailQuotientMarginSequenceBadFace` |
| `graph183_quotient_socket:symbol:graph183TailQuotientMarginFamily_of_sequenceBadFace` | `True` | `graph183TailQuotientMarginFamily_of_sequenceBadFace` |
| `graph183_quotient_socket:symbol:graph183TailQuotientMarginFamily_of_strengthenedGraphExactEvalGate` | `True` | `graph183TailQuotientMarginFamily_of_strengthenedGraphExactEvalGate` |
| `graph183_quotient_socket:symbol:graph183TailQuotientMarginFamily_of_strengthenedClosedBellmanGraphExactFamily` | `True` | `graph183TailQuotientMarginFamily_of_strengthenedClosedBellmanGraphExactFamily` |
| `graph183_quotient_socket:symbol:graph183TailQuotientMarginSequenceBadFace_of_graph183TailQuotientMarginFamily` | `True` | `graph183TailQuotientMarginSequenceBadFace_of_graph183TailQuotientMarginFamily` |
| `graph183_quotient_socket:symbol:graph183TailQuotientMarginSequenceBadFace_of_strengthenedGraphExactEvalGate` | `True` | `graph183TailQuotientMarginSequenceBadFace_of_strengthenedGraphExactEvalGate` |
| `graph183_quotient_socket:symbol:graph183TailQuotientMarginSequenceBadFace_of_strengthenedClosedBellmanGraphExactFamily` | `True` | `graph183TailQuotientMarginSequenceBadFace_of_strengthenedClosedBellmanGraphExactFamily` |
| `graph183_quotient_socket:symbol:strengthenedGraph183TailQuotientMargin_of_graph183TailQuotientMarginFamily` | `True` | `strengthenedGraph183TailQuotientMargin_of_graph183TailQuotientMarginFamily` |
| `graph183_quotient_socket:symbol:strengthenedGraph183TailQuotientMargin_of_acceptedTailQuotientMarginFamily` | `True` | `strengthenedGraph183TailQuotientMargin_of_acceptedTailQuotientMarginFamily` |
| `graph183_quotient_socket:symbol:scaledMargin_nonpos_of_graph183TailQuotientMarginSequenceBadFace` | `True` | `scaledMargin_nonpos_of_graph183TailQuotientMarginSequenceBadFace` |
| `graph183_quotient_socket:symbol:nonIdentityRankKilled_of_graph183TailQuotientMarginSequenceBadFace` | `True` | `nonIdentityRankKilled_of_graph183TailQuotientMarginSequenceBadFace` |
| `graph183_quotient_socket:symbol:Graph183TailExactEvalFamily` | `True` | `Graph183TailExactEvalFamily` |
| `graph183_quotient_socket:symbol:Graph183TailExactEvalSequenceBadFace` | `True` | `Graph183TailExactEvalSequenceBadFace` |
| `graph183_quotient_socket:symbol:graph183TailExactEvalSequenceBadFace_of_strengthenedGraphExactEvalGate` | `True` | `graph183TailExactEvalSequenceBadFace_of_strengthenedGraphExactEvalGate` |
| `graph183_quotient_socket:symbol:graph183TailExactEvalFamily_of_sequenceBadFace` | `True` | `graph183TailExactEvalFamily_of_sequenceBadFace` |
| `graph183_quotient_socket:symbol:graph183TailQuotientMarginSequenceBadFace_of_exactEvalSequenceBadFace` | `True` | `graph183TailQuotientMarginSequenceBadFace_of_exactEvalSequenceBadFace` |
| `graph183_quotient_socket:symbol:graph183TailQuotientMarginSequenceBadFace_of_exactEvalGateResult` | `True` | `graph183TailQuotientMarginSequenceBadFace_of_exactEvalGateResult` |
| `graph183_quotient_socket:symbol:graph183TailQuotientMarginFamily_of_tailExactEval` | `True` | `graph183TailQuotientMarginFamily_of_tailExactEval` |
| `graph183_quotient_socket:symbol:graph183TailQuotientMarginFamily_of_exactEvalSequenceBadFace` | `True` | `graph183TailQuotientMarginFamily_of_exactEvalSequenceBadFace` |
| `graph183_quotient_socket:symbol:graph183TailExactEvalSequenceBadFace_of_quotientMarginSequenceBadFace` | `True` | `graph183TailExactEvalSequenceBadFace_of_quotientMarginSequenceBadFace` |
| `graph183_quotient_socket:symbol:graph183TailExactEvalFamily_of_quotientMarginSequenceBadFace` | `True` | `graph183TailExactEvalFamily_of_quotientMarginSequenceBadFace` |
| `graph183_quotient_socket:symbol:acceptedSequenceGraph183AcceptedTailExactEvalFamily_of_graph183TailExactEvalFamily` | `True` | `acceptedSequenceGraph183AcceptedTailExactEvalFamily_of_graph183TailExactEvalFamily` |
| `graph183_quotient_socket:symbol:acceptedSequenceGraph183AcceptedTailQuotientMarginFamily_of_graph183TailQuotientMarginFamily` | `True` | `acceptedSequenceGraph183AcceptedTailQuotientMarginFamily_of_graph183TailQuotientMarginFamily` |
| `graph183_quotient_socket:symbol:AcceptedSequenceGraph183AcceptedTailExactEvalFamily` | `True` | `AcceptedSequenceGraph183AcceptedTailExactEvalFamily` |
| `graph183_quotient_socket:symbol:acceptedSequenceGraph183AcceptedTailExactEvalFamily_of_branchExactEval` | `True` | `acceptedSequenceGraph183AcceptedTailExactEvalFamily_of_branchExactEval` |
| `graph183_quotient_socket:symbol:acceptedSequenceGraph183AcceptedTailQuotientMarginFamily_of_tailExactEval` | `True` | `acceptedSequenceGraph183AcceptedTailQuotientMarginFamily_of_tailExactEval` |
| `graph183_quotient_socket:symbol:acceptedSequenceGraph183AcceptedTailMarginFamily_of_tailQuotientMargin` | `True` | `acceptedSequenceGraph183AcceptedTailMarginFamily_of_tailQuotientMargin` |
| `graph183_quotient_socket:symbol:acceptedSequenceGraph183AcceptedBranchFinalMarginFamily_of_tailQuotientMargin` | `True` | `acceptedSequenceGraph183AcceptedBranchFinalMarginFamily_of_tailQuotientMargin` |
| `graph183_quotient_socket:symbol:graph169ContinuationFamily_of_acceptedSequenceGraph183TailQuotientMargin` | `True` | `graph169ContinuationFamily_of_acceptedSequenceGraph183TailQuotientMargin` |
| `graph183_quotient_socket:symbol:graphExactEvalGateAtRank_of_acceptedSequenceGraph183TailQuotientMargin` | `True` | `graphExactEvalGateAtRank_of_acceptedSequenceGraph183TailQuotientMargin` |
| `graph183_quotient_socket:symbol:scaledMargin_nonpos_of_graph183TailQuotientMargin` | `True` | `scaledMargin_nonpos_of_graph183TailQuotientMargin` |
| `graph183_quotient_socket:symbol:scaledMargin_nonpos_of_acceptedSequenceGraph183TailQuotientMargin` | `True` | `scaledMargin_nonpos_of_acceptedSequenceGraph183TailQuotientMargin` |
| `graph183_quotient_socket:symbol:Graph183TailBranchQuotientStartViolationFamily` | `True` | `Graph183TailBranchQuotientStartViolationFamily` |
| `graph183_quotient_socket:symbol:acceptedSequenceGraph183TailBranchQuotientStartViolationFamily_of_graph183TailBranch` | `True` | `acceptedSequenceGraph183TailBranchQuotientStartViolationFamily_of_graph183TailBranch` |
| `graph183_quotient_socket:symbol:nonIdentityRankKilled_of_graph183TailBranchQuotientStartViolation` | `True` | `nonIdentityRankKilled_of_graph183TailBranchQuotientStartViolation` |
| `graph183_quotient_socket:symbol:AcceptedSequenceGraph183TailQuotientStartViolationFamily` | `True` | `AcceptedSequenceGraph183TailQuotientStartViolationFamily` |
| `graph183_quotient_socket:symbol:nonIdentityRankKilled_of_acceptedSequenceGraph183TailQuotientStartViolation` | `True` | `nonIdentityRankKilled_of_acceptedSequenceGraph183TailQuotientStartViolation` |
| `graph183_quotient_socket:symbol:AcceptedSequenceGraph183TailBranchQuotientStartViolationFamily` | `True` | `AcceptedSequenceGraph183TailBranchQuotientStartViolationFamily` |
| `graph183_quotient_socket:symbol:acceptedSequenceGraph183TailBranchQuotientStartViolationFamily_of_global` | `True` | `acceptedSequenceGraph183TailBranchQuotientStartViolationFamily_of_global` |
| `graph183_quotient_socket:symbol:nonIdentityRankKilled_of_acceptedSequenceGraph183TailBranchQuotientStartViolation` | `True` | `nonIdentityRankKilled_of_acceptedSequenceGraph183TailBranchQuotientStartViolation` |
| `graph183_quotient_socket:symbol:acceptedSequenceGraph183AcceptedBranchFinalMarginFamily_of_quotientMargin` | `True` | `acceptedSequenceGraph183AcceptedBranchFinalMarginFamily_of_quotientMargin` |
| `graph183_quotient_socket:symbol:graph169ContinuationFamily_of_acceptedSequenceGraph183QuotientMargin` | `True` | `graph169ContinuationFamily_of_acceptedSequenceGraph183QuotientMargin` |
| `graph183_quotient_socket:symbol:graphExactEvalGateAtRank_of_acceptedSequenceGraph183QuotientMargin` | `True` | `graphExactEvalGateAtRank_of_acceptedSequenceGraph183QuotientMargin` |
| `graph183_quotient_socket:forbidden_absent:SampledRankIndex` | `True` | `SampledRankIndex` |
| `graph183_quotient_socket:forbidden_absent:sampledContainsRank` | `True` | `sampledContainsRank` |
| `graph183_quotient_socket:forbidden_absent:sampledRankOf` | `True` | `sampledRankOf` |
| `graph183_quotient_socket:forbidden_absent:SelectedPrefix` | `True` | `SelectedPrefix` |
| `graph183_quotient_socket:forbidden_absent:AcceptedTraceId` | `True` | `AcceptedTraceId` |
| `graph183_quotient_socket:forbidden_absent:acceptedTraceOfId` | `True` | `acceptedTraceOfId` |
| `semantic_audit_accepts_sequencebadface_carrier_target` | `True` | `semantic_evaluator_pivot_ready_for_graph183_sequencebadface_carrier` |
| `semantic_audit_target_is_graph183_sequencebadface_carrier` | `True` | `Graph183TailQuotientMarginSequenceBadFace scaledMargin` |
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
| `graph183_contract:graphConst_parsed` | `True` | `176` |
| `graph183_contract:accepted_gain_parsed` | `True` | `-348` |
| `graph183_contract:accepted_bound_negative` | `True` | `-172` |
| `graph183_contract:profile_const_matches_lean` | `True` | `{'lean': 176, 'profile': 176}` |
| `graph183_contract:profile_scale_88` | `True` | `88` |
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
| `cocycle_quotient_1m:solution_exists` | `True` | `['gauge', 'gauge_count', 'max_bit_length', 'nonzero_values', 'small_gain_count', 'small_gains']` |
| `cocycle_quotient_1m:solution_bit_length_under_16` | `True` | `9` |
| `cocycle_quotient_1m:solution_small_gains_match_edges` | `True` | `{'small_gain_count': 93, 'quotient_edges': 93}` |
| `graph183_quotient_margin_socket:guard_exit_zero` | `True` | `0` |
| `graph183_quotient_margin_socket:rss_under_6000_mib` | `True` | `3965.06640625` |
| `graph183_quotient_margin_socket:available_above_30000_mib` | `True` | `46219.734375` |
| `graph183_accepted_branch_quotient:guard_exit_zero` | `True` | `0` |
| `graph183_accepted_branch_quotient:rss_under_6000_mib` | `True` | `3410.734375` |
| `graph183_accepted_branch_quotient:available_above_30000_mib` | `True` | `46363.515625` |

## Next Lean Target

```lean
Graph183TailQuotientMarginSequenceBadFace scaledMargin
```

The graph183 completion-tail component is already available via
`acceptedSequenceGraph183CompletionTailFamily_of_semanticCursor`.
The quotient-margin socket now exposes
`Graph183TailQuotientMarginSequenceBadFace` as the generic carrier for
the branch-local margin fact, then adapts that carrier back to the
older accepted-sequence surfaces.  It also proves that the generic
branch-local quotient margin plus a start-violation certificate yields
the public `NonIdentityRankKilled` predicate.  The next Lean smoke
should prove the carrier from semantic closed-language/evaluator state
on the `yp` tail branch.  The start-violation producer is also generic
through `Graph183TailBranchQuotientStartViolationFamily`.
The profile remains diagnostic only;
quotient/gauge equations used by the proof must stay Lean-checked
local facts.

The production socket depends on the small accepted-branch quotient
module, not the full 229-edge quotient smoke.  The smoke remains
diagnostic; the accepted-branch module checks the 14 local equations
and raw-gain contract that this socket needs.
