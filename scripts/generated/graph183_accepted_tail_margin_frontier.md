# Graph183 Accepted-Tail Margin Frontier

Diagnostic status evidence only.  This audit does not prove coverage,
does not certify the margin theorem, and does not replace Lean-checked
family evidence.

- decision: `diagnostic_supports_graph183_accepted_tail_margin_bellman_route`
- failed checks: `0`

## Meaning

A passing decision means the exact profiler supports trying a small
`AcceptedSequenceGraph183AcceptedTailMarginFamily` Lean producer next.
It does not mean that producer exists.  If the producer needs sampled
ranks, selected prefixes, accepted trace ids, exact affine RHS keys, or
one branch per rank/path, the route must pivot to a cancellation-segment
or cocycle/coboundary quotient.

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

## Checks

| check | passed | detail |
| --- | --- | --- |
| `graph183_socket_exists` | `True` | `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingDepth11Layer4Graph183TailTableSocket.lean` |
| `socket_symbol:AcceptedSequenceGraph183AcceptedTailMarginFamily` | `True` | `AcceptedSequenceGraph183AcceptedTailMarginFamily` |
| `socket_symbol:acceptedSequenceGraph183AcceptedBranchFinalMarginFamily_of_components` | `True` | `acceptedSequenceGraph183AcceptedBranchFinalMarginFamily_of_components` |
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
| `semantic_audit_accepts_margin_target` | `True` | `semantic_evaluator_pivot_ready_for_accepted_tail_margin_producer` |
| `semantic_audit_target_is_accepted_tail_margin` | `True` | `AcceptedSequenceGraph183AcceptedTailMarginFamily scaledMargin` |
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

## Next Lean Target

```lean
AcceptedSequenceGraph183AcceptedTailMarginFamily scaledMargin
```

The first Lean smoke should prove this for a semantic margin object or
introduce the cancellation/cocycle quotient theorem surface needed to
make the proof rank-free.
