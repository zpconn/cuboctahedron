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
The audit now also enforces that this socket does not import trace
start-violation provider leaves or terminal trace-classifier shards.
The graph183 branch-local start-violation provider is now a separate
fixed-template leaf that imports only the lightweight trace
start-violation bridge, not accepted-trace ids or terminal classifiers.
The target-shadow cursor and ranked transducer semantic gate are
present and are now required by this audit.  The production path must
flow through those semantic surfaces or through an equivalently small
cocycle/segment certificate; it must not revive selected-prefix or
accepted-trace membership.
The 1M graph183 profile and quotient profile support the route as a
diagnostic.  The full 229-edge quotient smoke remains diagnostic only.
The local quotient equations have also been split into edge shards,
which are accepted as diagnostic proof-shape evidence: they check the
same exact integer cocycle equations without the timed-out one-file
table proof.
Those shards now expose a composable quotient-step theorem over the
public generated `graph183QuotientQ` and `graph183QuotientGauge`
finite maps, so the diagnostic is no longer just a `True` smoke.
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
| `edge_shards_edge_equations` | `229` |
| `edge_shards_shard_count` | `8` |
| `edge_shards_lake_guard_elapsed_seconds` | `5.003928599006031` |
| `edge_shards_lake_guard_peak_rss_mib` | `3778.296875` |
| `edge_shards_core_guard_elapsed_seconds` | `2.0021651900024153` |
| `edge_shards_core_guard_peak_rss_mib` | `3547.88671875` |
| `edge_shards_direct_guard_elapsed_seconds` | `2.002471511019394` |
| `edge_shards_direct_guard_peak_rss_mib` | `3594.60546875` |
| `edge_shard000_guard_elapsed_seconds` | `2.0027364550041966` |
| `edge_shard000_guard_peak_rss_mib` | `3547.828125` |
| `guard_elapsed_seconds` | `3.0028496980085038` |
| `guard_peak_rss_mib` | `3911.828125` |
| `guard_min_available_mib` | `46308.5` |
| `closed_semantic_gate_guard_elapsed_seconds` | `3.0027096020057797` |
| `closed_semantic_gate_guard_peak_rss_mib` | `3719.16015625` |
| `closed_semantic_gate_guard_min_available_mib` | `46322.6328125` |
| `accepted_branch_guard_elapsed_seconds` | `5.0034252110053785` |
| `accepted_branch_guard_peak_rss_mib` | `3410.734375` |
| `accepted_branch_guard_min_available_mib` | `46363.515625` |
| `graph183_start_provider_guard_elapsed_seconds` | `45.05008524499135` |
| `graph183_start_provider_guard_peak_rss_mib` | `6882.125` |
| `graph183_start_provider_guard_min_available_mib` | `43095.3046875` |
| `graph183_start_provider_source_guard_elapsed_seconds` | `98.05047912499867` |
| `graph183_start_provider_source_guard_peak_rss_mib` | `6309.796875` |
| `trace_start_violation_bridge_guard_elapsed_seconds` | `7.0058386610180605` |
| `trace_start_violation_bridge_guard_peak_rss_mib` | `3617.1171875` |
| `trace017_provider_guard_exit_code` | `-15` |
| `trace017_provider_guard_peak_rss_mib` | `12731.64453125` |
| `trace017_provider_guard_killed_reason` | `process-tree RSS 12731 MiB exceeded 7000 MiB cap` |
| `trace017_provider_source_guard_exit_code` | `1` |

## Checks

| check | passed | detail |
| --- | --- | --- |
| `socket:exists` | `True` | `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraph183QuotientMarginSocket.lean` |
| `socket:symbol:Graph183TailQuotientMarginSequenceBadFace` | `True` | `Graph183TailQuotientMarginSequenceBadFace` |
| `socket:symbol:Graph183TailQuotientMarginEvalFamily` | `True` | `Graph183TailQuotientMarginEvalFamily` |
| `socket:symbol:Graph183TailQuotientMarginEvalObj` | `True` | `Graph183TailQuotientMarginEvalObj` |
| `socket:symbol:Graph183TailQuotientEvalMarginLanguageBound` | `True` | `Graph183TailQuotientEvalMarginLanguageBound` |
| `socket:symbol:graph183TailQuotientMarginEvalObj_eval` | `True` | `graph183TailQuotientMarginEvalObj_eval` |
| `socket:symbol:Graph183TailQuotientObjectMarginBound` | `True` | `Graph183TailQuotientObjectMarginBound` |
| `socket:symbol:graph183TailQuotientEvalMarginLanguageBound_of_objectMarginBound` | `True` | `graph183TailQuotientEvalMarginLanguageBound_of_objectMarginBound` |
| `socket:symbol:graph183TailQuotientMarginEvalFamily_of_evalLanguageBound` | `True` | `graph183TailQuotientMarginEvalFamily_of_evalLanguageBound` |
| `socket:symbol:graph183TailQuotientMarginEvalFamily_of_objectMarginBound` | `True` | `graph183TailQuotientMarginEvalFamily_of_objectMarginBound` |
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
| `socket:symbol:graph183AcceptedBranchLabels_eq_startViolationLabels` | `True` | `graph183AcceptedBranchLabels_eq_startViolationLabels` |
| `socket:symbol:objectStartViolationMarginCert_of_graph183AcceptedBranchPrefix` | `True` | `objectStartViolationMarginCert_of_graph183AcceptedBranchPrefix` |
| `socket:symbol:graph183TailBranchQuotientStartViolationFamily_of_margin` | `True` | `graph183TailBranchQuotientStartViolationFamily_of_margin` |
| `socket:symbol:nonIdentityRankKilled_of_graph183TailQuotientMargin` | `True` | `nonIdentityRankKilled_of_graph183TailQuotientMargin` |
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
| `graph183_start_provider:exists` | `True` | `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraph183StartViolationProvider.lean` |
| `graph183_start_provider:symbol:graph183StartViolationLabels` | `True` | `graph183StartViolationLabels` |
| `graph183_start_provider:symbol:objectStartViolationMarginCert_of_graph183AcceptedBranchLabels` | `True` | `objectStartViolationMarginCert_of_graph183AcceptedBranchLabels` |
| `graph183_edge_shards:exists` | `True` | `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraph183CocycleQuotientEdgeShards.lean` |
| `graph183_edge_shards:symbol:FullStep` | `True` | `FullStep` |
| `graph183_edge_shards:symbol:SmallStep` | `True` | `SmallStep` |
| `graph183_edge_shards:symbol:graph183QuotientStep` | `True` | `graph183QuotientStep` |
| `graph183_edge_shards:symbol:graph183QuotientRun` | `True` | `graph183QuotientRun` |
| `graph183_edge_shards:symbol:graph183QuotientEdgeShards_checked` | `True` | `graph183QuotientEdgeShards_checked` |
| `graph183_edge_shards_core:exists` | `True` | `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraph183CocycleQuotientCore.lean` |
| `graph183_edge_shards_core:symbol:graph183QuotientQ` | `True` | `graph183QuotientQ` |
| `graph183_edge_shards_core:symbol:graph183QuotientGauge` | `True` | `graph183QuotientGauge` |
| `graph183_edge_shards_core:symbol:graph183QuotientCore_builds` | `True` | `graph183QuotientCore_builds` |
| `target_cursor:exists` | `True` | `Cuboctahedron/Search/TopPairingTargetCursor.lean` |
| `target_cursor:symbol:topPairingTargetShadow_of_summary` | `True` | `topPairingTargetShadow_of_summary` |
| `target_cursor:symbol:topPairingTriShadow_eq_target_of_closed` | `True` | `topPairingTriShadow_eq_target_of_closed` |
| `target_cursor:symbol:TopPairingTriCursorFrom` | `True` | `TopPairingTriCursorFrom` |
| `target_cursor:symbol:TopPairingTargetCursorAtRank` | `True` | `TopPairingTargetCursorAtRank` |
| `target_cursor:symbol:topPairingTriCursor_of_closed` | `True` | `topPairingTriCursor_of_closed` |
| `target_cursor:symbol:TopPairingStartMissSemanticLanguageAtRank` | `True` | `TopPairingStartMissSemanticLanguageAtRank` |
| `transducer_semantic_gate:exists` | `True` | `Cuboctahedron/Search/TopPairingTransducerSemanticGate.lean` |
| `transducer_semantic_gate:symbol:closedToEvalGate_of_rankedTransducerInvariantLocalWithSuffix` | `True` | `closedToEvalGate_of_rankedTransducerInvariantLocalWithSuffix` |
| `transducer_semantic_gate:symbol:strengthenedToEvalGate_of_rankedTransducerInvariantLocalWithSuffix` | `True` | `strengthenedToEvalGate_of_rankedTransducerInvariantLocalWithSuffix` |
| `transducer_semantic_gate:symbol:closedToGraphExactEvalGate_of_rankedTransducerInvariantLocalWithSuffix` | `True` | `closedToGraphExactEvalGate_of_rankedTransducerInvariantLocalWithSuffix` |
| `transducer_semantic_gate:symbol:strengthenedToGraphExactEvalGate_of_rankedTransducerInvariantLocalWithSuffix` | `True` | `strengthenedToGraphExactEvalGate_of_rankedTransducerInvariantLocalWithSuffix` |
| `transducer_semantic_gate:symbol:scaledMargin_nonpos_of_rankedTransducerClosedGate` | `True` | `scaledMargin_nonpos_of_rankedTransducerClosedGate` |
| `transducer_semantic_gate:symbol:scaledMargin_nonpos_of_rankedTransducerStrengthenedGate` | `True` | `scaledMargin_nonpos_of_rankedTransducerStrengthenedGate` |
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
| `graph183_start_provider:forbidden_absent:SampledRankIndex` | `True` | `SampledRankIndex` |
| `graph183_start_provider:forbidden_absent:sampledContainsRank` | `True` | `sampledContainsRank` |
| `graph183_start_provider:forbidden_absent:sampledRankOf` | `True` | `sampledRankOf` |
| `graph183_start_provider:forbidden_absent:SelectedPrefix` | `True` | `SelectedPrefix` |
| `graph183_start_provider:forbidden_absent:AcceptedTraceId` | `True` | `AcceptedTraceId` |
| `graph183_start_provider:forbidden_absent:acceptedTraceOfId` | `True` | `acceptedTraceOfId` |
| `graph183_edge_shards:forbidden_absent:SampledRankIndex` | `True` | `SampledRankIndex` |
| `graph183_edge_shards:forbidden_absent:sampledContainsRank` | `True` | `sampledContainsRank` |
| `graph183_edge_shards:forbidden_absent:sampledRankOf` | `True` | `sampledRankOf` |
| `graph183_edge_shards:forbidden_absent:SelectedPrefix` | `True` | `SelectedPrefix` |
| `graph183_edge_shards:forbidden_absent:AcceptedTraceId` | `True` | `AcceptedTraceId` |
| `graph183_edge_shards:forbidden_absent:acceptedTraceOfId` | `True` | `acceptedTraceOfId` |
| `graph183_edge_shards_core:forbidden_absent:SampledRankIndex` | `True` | `SampledRankIndex` |
| `graph183_edge_shards_core:forbidden_absent:sampledContainsRank` | `True` | `sampledContainsRank` |
| `graph183_edge_shards_core:forbidden_absent:sampledRankOf` | `True` | `sampledRankOf` |
| `graph183_edge_shards_core:forbidden_absent:SelectedPrefix` | `True` | `SelectedPrefix` |
| `graph183_edge_shards_core:forbidden_absent:AcceptedTraceId` | `True` | `AcceptedTraceId` |
| `graph183_edge_shards_core:forbidden_absent:acceptedTraceOfId` | `True` | `acceptedTraceOfId` |
| `target_cursor:forbidden_absent:SampledRankIndex` | `True` | `SampledRankIndex` |
| `target_cursor:forbidden_absent:sampledContainsRank` | `True` | `sampledContainsRank` |
| `target_cursor:forbidden_absent:sampledRankOf` | `True` | `sampledRankOf` |
| `target_cursor:forbidden_absent:SelectedPrefix` | `True` | `SelectedPrefix` |
| `target_cursor:forbidden_absent:AcceptedTraceId` | `True` | `AcceptedTraceId` |
| `target_cursor:forbidden_absent:acceptedTraceOfId` | `True` | `acceptedTraceOfId` |
| `transducer_semantic_gate:forbidden_absent:SampledRankIndex` | `True` | `SampledRankIndex` |
| `transducer_semantic_gate:forbidden_absent:sampledContainsRank` | `True` | `sampledContainsRank` |
| `transducer_semantic_gate:forbidden_absent:sampledRankOf` | `True` | `sampledRankOf` |
| `transducer_semantic_gate:forbidden_absent:SelectedPrefix` | `True` | `SelectedPrefix` |
| `transducer_semantic_gate:forbidden_absent:AcceptedTraceId` | `True` | `AcceptedTraceId` |
| `transducer_semantic_gate:forbidden_absent:acceptedTraceOfId` | `True` | `acceptedTraceOfId` |
| `socket:forbidden_import_absent:BellmanTopPairingTrace017StartViolationProvider` | `True` | `[]` |
| `socket:forbidden_import_absent:BellmanTopPairingTraceStartViolationProviders` | `True` | `[]` |
| `socket:forbidden_import_absent:BellmanTopPairingTraceStartViolationDirectKilledBridge` | `True` | `[]` |
| `socket:forbidden_import_absent:TopPairingTraceClassifier.Terminal` | `True` | `[]` |
| `graph183_start_provider:forbidden_import_absent:BellmanTopPairingGraphAcceptedTraceMarginBridge` | `True` | `[]` |
| `graph183_start_provider:forbidden_import_absent:BellmanTopPairingTrace017StartViolationProvider` | `True` | `[]` |
| `graph183_start_provider:forbidden_import_absent:BellmanTopPairingTraceStartViolationProviders` | `True` | `[]` |
| `graph183_start_provider:forbidden_import_absent:TopPairingTraceClassifier` | `True` | `[]` |
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
| `graph183_edge_shards_lake_guard:guard_exit_zero` | `True` | `0` |
| `graph183_edge_shards_lake_guard:rss_under_30000_mib` | `True` | `3778.296875` |
| `graph183_edge_shards_lake_guard:available_above_30000_mib` | `True` | `46247.83203125` |
| `graph183_edge_shards_core_guard:guard_exit_zero` | `True` | `0` |
| `graph183_edge_shards_core_guard:rss_under_6500_mib` | `True` | `3547.88671875` |
| `graph183_edge_shards_core_guard:available_above_30000_mib` | `True` | `46364.0390625` |
| `graph183_edge_shards_direct_guard:guard_exit_zero` | `True` | `0` |
| `graph183_edge_shards_direct_guard:rss_under_6500_mib` | `True` | `3594.60546875` |
| `graph183_edge_shards_direct_guard:available_above_30000_mib` | `True` | `46362.328125` |
| `graph183_edge_shard000_guard:guard_exit_zero` | `True` | `0` |
| `graph183_edge_shard000_guard:rss_under_6500_mib` | `True` | `3547.828125` |
| `graph183_edge_shard000_guard:available_above_30000_mib` | `True` | `46366.5234375` |
| `socket_guard:guard_exit_zero` | `True` | `0` |
| `socket_guard:rss_under_6500_mib` | `True` | `3911.828125` |
| `socket_guard:available_above_30000_mib` | `True` | `46308.5` |
| `graph183_start_provider_guard:guard_exit_zero` | `True` | `0` |
| `graph183_start_provider_guard:rss_under_7000_mib` | `True` | `6882.125` |
| `graph183_start_provider_guard:available_above_30000_mib` | `True` | `43095.3046875` |
| `graph183_start_provider_source_guard:guard_exit_zero` | `True` | `0` |
| `graph183_start_provider_source_guard:rss_under_6500_mib` | `True` | `6309.796875` |
| `graph183_start_provider_source_guard:available_above_30000_mib` | `True` | `43763.578125` |
| `trace_start_violation_bridge_guard:guard_exit_zero` | `True` | `0` |
| `trace_start_violation_bridge_guard:rss_under_6500_mib` | `True` | `3617.1171875` |
| `trace_start_violation_bridge_guard:available_above_30000_mib` | `True` | `46220.57421875` |
| `closed_semantic_gate_guard:guard_exit_zero` | `True` | `0` |
| `closed_semantic_gate_guard:rss_under_6500_mib` | `True` | `3719.16015625` |
| `closed_semantic_gate_guard:available_above_30000_mib` | `True` | `46322.6328125` |
| `accepted_branch_guard:guard_exit_zero` | `True` | `0` |
| `accepted_branch_guard:rss_under_6500_mib` | `True` | `3410.734375` |
| `accepted_branch_guard:available_above_30000_mib` | `True` | `46363.515625` |
| `trace017_provider_no_go:build_guard_recorded` | `True` | `process-tree RSS 12731 MiB exceeded 7000 MiB cap` |
| `trace017_provider_no_go:build_exceeded_socket_rss_cap` | `True` | `12731.64453125` |
| `trace017_provider_no_go:build_was_guard_killed` | `True` | `process-tree RSS 12731 MiB exceeded 7000 MiB cap` |
| `trace017_provider_no_go:source_guard_recorded` | `True` | `1` |
| `trace017_provider_no_go:source_check_not_available_as_light_import` | `True` | `1` |
