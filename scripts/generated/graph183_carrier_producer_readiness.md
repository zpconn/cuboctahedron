# Graph183 Carrier Producer Readiness

Status audit only.  This file is not proof evidence and does not certify
generated coverage.

- decision: `graph183_carrier_sockets_ready_but_producer_missing`
- failed checks: `0`
- production carrier producer exists: `False`

## Meaning

The Lean carrier sockets are present and build under a memory guard.
The production socket now imports a tiny accepted-branch quotient
module that checks the 14 local equations and accepted raw-gain
contract it needs.
The 1M graph183 profile and quotient profile support the route as a
diagnostic.  The full 229-edge quotient smoke remains diagnostic only.
However, no production theorem currently proves
`Graph183TailQuotientMarginSequenceBadFace` from closed-language,
deterministic-evaluator, or cocycle/gauge semantics.

The next accepted implementation step must emit or prove that semantic
producer.  Reusing sampled ranks, selected prefixes, accepted trace ids,
exact affine RHS keys, solved start-point keys, or one branch per
observed path remains a no-go.

## Metrics

| metric | value |
| --- | ---: |
| `profile_matched` | `37` |
| `profile_states` | `223` |
| `profile_edges` | `229` |
| `profile_margin_families` | `1` |
| `quotient_mode` | `step-par` |
| `quotient_states` | `43` |
| `quotient_edges` | `93` |
| `quotient_max_bit_length` | `9` |
| `guard_elapsed_seconds` | `2.00238187899231` |
| `guard_peak_rss_mib` | `3614.2421875` |
| `guard_min_available_mib` | `46321.0703125` |
| `accepted_branch_guard_elapsed_seconds` | `5.0034252110053785` |
| `accepted_branch_guard_peak_rss_mib` | `3410.734375` |
| `accepted_branch_guard_min_available_mib` | `46363.515625` |

## Checks

| check | passed | detail |
| --- | --- | --- |
| `socket:exists` | `True` | `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraph183QuotientMarginSocket.lean` |
| `socket:symbol:Graph183TailQuotientMarginSequenceBadFace` | `True` | `Graph183TailQuotientMarginSequenceBadFace` |
| `socket:symbol:Graph183TailExactEvalSequenceBadFace` | `True` | `Graph183TailExactEvalSequenceBadFace` |
| `socket:symbol:graph183TailQuotientMarginFamily_of_sequenceBadFace` | `True` | `graph183TailQuotientMarginFamily_of_sequenceBadFace` |
| `socket:symbol:graph183TailQuotientMarginSequenceBadFace_of_graph183TailQuotientMarginFamily` | `True` | `graph183TailQuotientMarginSequenceBadFace_of_graph183TailQuotientMarginFamily` |
| `socket:symbol:strengthenedGraph183TailQuotientMargin_of_graph183TailQuotientMarginFamily` | `True` | `strengthenedGraph183TailQuotientMargin_of_graph183TailQuotientMarginFamily` |
| `socket:symbol:strengthenedGraph183TailQuotientMargin_of_acceptedTailQuotientMarginFamily` | `True` | `strengthenedGraph183TailQuotientMargin_of_acceptedTailQuotientMarginFamily` |
| `socket:symbol:graph183TailExactEvalFamily_of_sequenceBadFace` | `True` | `graph183TailExactEvalFamily_of_sequenceBadFace` |
| `socket:symbol:graph183TailQuotientMarginSequenceBadFace_of_exactEvalSequenceBadFace` | `True` | `graph183TailQuotientMarginSequenceBadFace_of_exactEvalSequenceBadFace` |
| `socket:symbol:graph183TailExactEvalSequenceBadFace_of_quotientMarginSequenceBadFace` | `True` | `graph183TailExactEvalSequenceBadFace_of_quotientMarginSequenceBadFace` |
| `socket:symbol:nonIdentityRankKilled_of_graph183TailQuotientMarginSequenceBadFace` | `True` | `nonIdentityRankKilled_of_graph183TailQuotientMarginSequenceBadFace` |
| `accepted_branch_quotient:exists` | `True` | `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraph183AcceptedBranchQuotient.lean` |
| `accepted_branch_quotient:symbol:acceptedLocalEquation` | `True` | `acceptedLocalEquation` |
| `accepted_branch_quotient:symbol:graph183AcceptedBranchRawGain` | `True` | `graph183AcceptedBranchRawGain` |
| `accepted_branch_quotient:symbol:graph183AcceptedBranchRawGain_contract` | `True` | `graph183AcceptedBranchRawGain_contract` |
| `accepted_branch_quotient:symbol:graph183AcceptedBranchLocalEquationsChecked` | `True` | `graph183AcceptedBranchLocalEquationsChecked` |
| `smoke:exists` | `True` | `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraph183CocycleQuotientSmoke.lean` |
| `smoke:symbol:graph183AcceptedBranchRawGain` | `True` | `graph183AcceptedBranchRawGain` |
| `smoke:symbol:graph183AcceptedBranchRawGain_contract` | `True` | `graph183AcceptedBranchRawGain_contract` |
| `smoke:symbol:graph183QuotientStep` | `True` | `graph183QuotientStep` |
| `smoke:symbol:graph183QuotientAcceptedBranchSmoke` | `True` | `graph183QuotientAcceptedBranchSmoke` |
| `socket:forbidden_absent:SampledRankIndex` | `True` | `SampledRankIndex` |
| `socket:forbidden_absent:sampledContainsRank` | `True` | `sampledContainsRank` |
| `socket:forbidden_absent:sampledRankOf` | `True` | `sampledRankOf` |
| `socket:forbidden_absent:SelectedPrefix` | `True` | `SelectedPrefix` |
| `socket:forbidden_absent:AcceptedTraceId` | `True` | `AcceptedTraceId` |
| `socket:forbidden_absent:acceptedTraceOfId` | `True` | `acceptedTraceOfId` |
| `accepted_branch_quotient:forbidden_absent:SampledRankIndex` | `True` | `SampledRankIndex` |
| `accepted_branch_quotient:forbidden_absent:sampledContainsRank` | `True` | `sampledContainsRank` |
| `accepted_branch_quotient:forbidden_absent:sampledRankOf` | `True` | `sampledRankOf` |
| `accepted_branch_quotient:forbidden_absent:SelectedPrefix` | `True` | `SelectedPrefix` |
| `accepted_branch_quotient:forbidden_absent:AcceptedTraceId` | `True` | `AcceptedTraceId` |
| `accepted_branch_quotient:forbidden_absent:acceptedTraceOfId` | `True` | `acceptedTraceOfId` |
| `smoke:forbidden_absent:SampledRankIndex` | `True` | `SampledRankIndex` |
| `smoke:forbidden_absent:sampledContainsRank` | `True` | `sampledContainsRank` |
| `smoke:forbidden_absent:sampledRankOf` | `True` | `sampledRankOf` |
| `smoke:forbidden_absent:SelectedPrefix` | `True` | `SelectedPrefix` |
| `smoke:forbidden_absent:AcceptedTraceId` | `True` | `AcceptedTraceId` |
| `smoke:forbidden_absent:acceptedTraceOfId` | `True` | `acceptedTraceOfId` |
| `socket:imports_accepted_branch_quotient` | `True` | `BellmanTopPairingGraph183AcceptedBranchQuotient` |
| `socket:does_not_import_full_smoke` | `True` | `BellmanTopPairingGraph183CocycleQuotientSmoke` |
| `accepted_branch:documents_not_coverage` | `True` | `not coverage evidence by itself` |
| `smoke:documents_diagnostic_not_coverage` | `True` | `diagnostic, not generated coverage` |
| `smoke:documents_production_replacement_needed` | `True` | `Production should replace selected-prefix membership` |
| `profile_1m:single_margin_family` | `True` | `1` |
| `profile_1m:states_under_2000` | `True` | `223` |
| `profile_1m:edges_under_5000` | `True` | `229` |
| `profile_1m:offset_sum_mismatches_zero` | `True` | `0` |
| `profile_1m:bellman_observed_nonpositive` | `True` | `0` |
| `profile_1m:with_step_tri_source` | `True` | `with-step-tri-source` |
| `quotient_1m:candidate_found` | `True` | `cocycle_quotient_candidates_found` |
| `quotient_1m:mode_step_par` | `True` | `step-par` |
| `quotient_1m:quotient_states_under_100` | `True` | `43` |
| `quotient_1m:quotient_edges_under_150` | `True` | `93` |
| `quotient_1m:solution_exists` | `True` | `['gauge', 'gauge_count', 'max_bit_length', 'nonzero_values', 'small_gain_count', 'small_gains']` |
| `quotient_1m:bit_length_under_16` | `True` | `9` |
| `socket_guard:guard_exit_zero` | `True` | `0` |
| `socket_guard:rss_under_6500_mib` | `True` | `3614.2421875` |
| `socket_guard:available_above_30000_mib` | `True` | `46321.0703125` |
| `accepted_branch_guard:guard_exit_zero` | `True` | `0` |
| `accepted_branch_guard:rss_under_6500_mib` | `True` | `3410.734375` |
| `accepted_branch_guard:available_above_30000_mib` | `True` | `46363.515625` |