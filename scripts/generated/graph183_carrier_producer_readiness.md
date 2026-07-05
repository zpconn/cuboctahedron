# Graph183 Carrier Producer Readiness

Status audit only.  This file is not proof evidence and does not certify
generated coverage.

- decision: `graph183_carrier_sockets_ready_but_producer_missing`
- failed checks: `0`
- production carrier producer exists: `False`

## Meaning

The Lean carrier sockets are present and build under a memory guard.
The strengthened closed-Bellman semantic gate is also present: it
accepts step-run, graph-exact, and eval-family producer shapes and
adapts semantic step runs to deterministic exact-evaluator gates.
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
| `guard_elapsed_seconds` | `3.002463420998538` |
| `guard_peak_rss_mib` | `3581.33984375` |
| `guard_min_available_mib` | `46338.9296875` |
| `closed_semantic_gate_guard_elapsed_seconds` | `3.0027096020057797` |
| `closed_semantic_gate_guard_peak_rss_mib` | `3719.16015625` |
| `closed_semantic_gate_guard_min_available_mib` | `46322.6328125` |
| `accepted_branch_guard_elapsed_seconds` | `5.0034252110053785` |
| `accepted_branch_guard_peak_rss_mib` | `3410.734375` |
| `accepted_branch_guard_min_available_mib` | `46363.515625` |

## Checks

| check | passed | detail |
| --- | --- | --- |
| `socket:exists` | `True` | `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraph183QuotientMarginSocket.lean` |
| `socket:symbol:Graph183TailQuotientMarginSequenceBadFace` | `True` | `Graph183TailQuotientMarginSequenceBadFace` |
| `socket:symbol:Graph183TailQuotientMarginEvalFamily` | `True` | `Graph183TailQuotientMarginEvalFamily` |
| `socket:symbol:Graph183TailQuotientMarginEvalObj` | `True` | `Graph183TailQuotientMarginEvalObj` |
| `socket:symbol:Graph183TailQuotientEvalMarginLanguageBound` | `True` | `Graph183TailQuotientEvalMarginLanguageBound` |
| `socket:symbol:graph183TailQuotientMarginEvalFamily_of_evalLanguageBound` | `True` | `graph183TailQuotientMarginEvalFamily_of_evalLanguageBound` |
| `socket:symbol:graph183TailQuotientMarginEvalFamily_of_gaugeCorrectedEvalLanguageBound` | `True` | `graph183TailQuotientMarginEvalFamily_of_gaugeCorrectedEvalLanguageBound` |
| `socket:symbol:Graph183TailExactEvalSequenceBadFace` | `True` | `Graph183TailExactEvalSequenceBadFace` |
| `socket:symbol:graph183TailExactEvalSequenceBadFace_of_strengthenedGraphExactEvalGate` | `True` | `graph183TailExactEvalSequenceBadFace_of_strengthenedGraphExactEvalGate` |
| `socket:symbol:acceptedSequenceGraph183AcceptedBranchQuotientMarginFamily_of_labelMargin` | `True` | `acceptedSequenceGraph183AcceptedBranchQuotientMarginFamily_of_labelMargin` |
| `socket:symbol:acceptedSequenceGraph183AcceptedBranchQuotientMarginFamily_of_exactEval` | `True` | `acceptedSequenceGraph183AcceptedBranchQuotientMarginFamily_of_exactEval` |
| `socket:symbol:acceptedSequenceGraph183AcceptedTailQuotientMarginFamily_of_tailMargin` | `True` | `acceptedSequenceGraph183AcceptedTailQuotientMarginFamily_of_tailMargin` |
| `socket:symbol:acceptedSequenceGraph183AcceptedTailQuotientMarginFamily_of_labelMargin` | `True` | `acceptedSequenceGraph183AcceptedTailQuotientMarginFamily_of_labelMargin` |
| `socket:symbol:acceptedSequenceGraph183AcceptedTailQuotientMarginFamily_of_exactEval` | `True` | `acceptedSequenceGraph183AcceptedTailQuotientMarginFamily_of_exactEval` |
| `socket:symbol:graph183TailQuotientMarginFamily_of_sequenceBadFace` | `True` | `graph183TailQuotientMarginFamily_of_sequenceBadFace` |
| `socket:symbol:graph183TailQuotientMarginFamily_of_evalMarginFamily` | `True` | `graph183TailQuotientMarginFamily_of_evalMarginFamily` |
| `socket:symbol:graph183TailQuotientMarginFamily_of_strengthenedGraphExactEvalGate` | `True` | `graph183TailQuotientMarginFamily_of_strengthenedGraphExactEvalGate` |
| `socket:symbol:graph183TailQuotientMarginFamily_of_strengthenedClosedBellmanGraphExactFamily` | `True` | `graph183TailQuotientMarginFamily_of_strengthenedClosedBellmanGraphExactFamily` |
| `socket:symbol:graph183TailQuotientMarginFamily_of_strengthenedClosedBellmanStepRunFamily` | `True` | `graph183TailQuotientMarginFamily_of_strengthenedClosedBellmanStepRunFamily` |
| `socket:symbol:graph183TailQuotientMarginSequenceBadFace_of_graph183TailQuotientMarginFamily` | `True` | `graph183TailQuotientMarginSequenceBadFace_of_graph183TailQuotientMarginFamily` |
| `socket:symbol:graph183TailQuotientMarginSequenceBadFace_of_evalMarginFamily` | `True` | `graph183TailQuotientMarginSequenceBadFace_of_evalMarginFamily` |
| `socket:symbol:graph183TailQuotientMarginSequenceBadFace_of_strengthenedGraphExactEvalGate` | `True` | `graph183TailQuotientMarginSequenceBadFace_of_strengthenedGraphExactEvalGate` |
| `socket:symbol:graph183TailQuotientMarginSequenceBadFace_of_strengthenedClosedBellmanGraphExactFamily` | `True` | `graph183TailQuotientMarginSequenceBadFace_of_strengthenedClosedBellmanGraphExactFamily` |
| `socket:symbol:graph183TailQuotientMarginSequenceBadFace_of_strengthenedClosedBellmanStepRunFamily` | `True` | `graph183TailQuotientMarginSequenceBadFace_of_strengthenedClosedBellmanStepRunFamily` |
| `socket:symbol:strengthenedGraph183TailQuotientMargin_of_graph183TailQuotientMarginFamily` | `True` | `strengthenedGraph183TailQuotientMargin_of_graph183TailQuotientMarginFamily` |
| `socket:symbol:strengthenedGraph183TailQuotientMargin_of_acceptedTailQuotientMarginFamily` | `True` | `strengthenedGraph183TailQuotientMargin_of_acceptedTailQuotientMarginFamily` |
| `socket:symbol:graph183TailExactEvalFamily_of_sequenceBadFace` | `True` | `graph183TailExactEvalFamily_of_sequenceBadFace` |
| `socket:symbol:graph183TailQuotientMarginSequenceBadFace_of_exactEvalSequenceBadFace` | `True` | `graph183TailQuotientMarginSequenceBadFace_of_exactEvalSequenceBadFace` |
| `socket:symbol:graph183TailExactEvalSequenceBadFace_of_quotientMarginSequenceBadFace` | `True` | `graph183TailExactEvalSequenceBadFace_of_quotientMarginSequenceBadFace` |
| `socket:symbol:nonIdentityRankKilled_of_graph183TailQuotientMarginSequenceBadFace` | `True` | `nonIdentityRankKilled_of_graph183TailQuotientMarginSequenceBadFace` |
| `closed_semantic_gate:exists` | `True` | `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingClosedBellmanStrengthenedSemanticGateSocket.lean` |
| `closed_semantic_gate:symbol:StrengthenedClosedBellmanEvalFamily` | `True` | `StrengthenedClosedBellmanEvalFamily` |
| `closed_semantic_gate:symbol:StrengthenedClosedBellmanGraphExactFamily` | `True` | `StrengthenedClosedBellmanGraphExactFamily` |
| `closed_semantic_gate:symbol:StrengthenedClosedBellmanStepRunFamily` | `True` | `StrengthenedClosedBellmanStepRunFamily` |
| `closed_semantic_gate:symbol:graphExactEvalGate_of_stepRunFamily` | `True` | `graphExactEvalGate_of_stepRunFamily` |
| `closed_semantic_gate:symbol:evalFamily_of_graphExactFamily` | `True` | `evalFamily_of_graphExactFamily` |
| `closed_semantic_gate:symbol:strengthenedClosedBellmanObjectCover_of_evalFamily` | `True` | `strengthenedClosedBellmanObjectCover_of_evalFamily` |
| `closed_semantic_gate:symbol:scaledMargin_nonpos_of_strengthenedClosedBellmanEvalFamily` | `True` | `scaledMargin_nonpos_of_strengthenedClosedBellmanEvalFamily` |
| `closed_semantic_gate:symbol:scaledMargin_nonpos_of_strengthenedClosedBellmanGraphExactFamily` | `True` | `scaledMargin_nonpos_of_strengthenedClosedBellmanGraphExactFamily` |
| `closed_semantic_gate:symbol:scaledMargin_nonpos_of_strengthenedClosedBellmanStepRunFamily` | `True` | `scaledMargin_nonpos_of_strengthenedClosedBellmanStepRunFamily` |
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
| `closed_semantic_gate:forbidden_absent:SampledRankIndex` | `True` | `SampledRankIndex` |
| `closed_semantic_gate:forbidden_absent:sampledContainsRank` | `True` | `sampledContainsRank` |
| `closed_semantic_gate:forbidden_absent:sampledRankOf` | `True` | `sampledRankOf` |
| `closed_semantic_gate:forbidden_absent:SelectedPrefix` | `True` | `SelectedPrefix` |
| `closed_semantic_gate:forbidden_absent:AcceptedTraceId` | `True` | `AcceptedTraceId` |
| `closed_semantic_gate:forbidden_absent:acceptedTraceOfId` | `True` | `acceptedTraceOfId` |
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
| `socket_guard:rss_under_6500_mib` | `True` | `3581.33984375` |
| `socket_guard:available_above_30000_mib` | `True` | `46338.9296875` |
| `closed_semantic_gate_guard:guard_exit_zero` | `True` | `0` |
| `closed_semantic_gate_guard:rss_under_6500_mib` | `True` | `3719.16015625` |
| `closed_semantic_gate_guard:available_above_30000_mib` | `True` | `46322.6328125` |
| `accepted_branch_guard:guard_exit_zero` | `True` | `0` |
| `accepted_branch_guard:rss_under_6500_mib` | `True` | `3410.734375` |
| `accepted_branch_guard:available_above_30000_mib` | `True` | `46363.515625` |
