# Top-Pairing Semantic Evaluator Pivot

This audit is diagnostic status evidence, not proof.  It records the
current Lean theorem surfaces for the pivot away from selected-prefix
membership and toward deterministic closed-language evaluator proofs.

- decision: `semantic_evaluator_pivot_ready_for_graph183_sequencebadface_carrier`
- missing required symbols: `0`
- forbidden production-token hits: `0`
- graph-alignment violations: `0`

## Required Surfaces

| file | lines | missing symbols |
| --- | ---: | --- |
| `target_cursor` | `388` | none |
| `transducer_eval_bridge` | `503` | none |
| `transducer_semantic_gate` | `692` | none |
| `transducer_tail` | `97` | none |
| `closed_transducer_socket` | `274` | none |
| `closed_final_margin_socket` | `432` | none |
| `depth11_graph_exact_portfolio` | `177` | none |
| `depth11_layer4_mapped_finish` | `1503` | none |
| `depth11_layer4_mapped_branch_socket` | `223` | none |
| `depth11_layer4_target_completion_branch_socket` | `131` | none |
| `target_completion_local_step_socket` | `140` | none |
| `graph150_continuation_socket` | `155` | none |
| `graph150_direct_eval_socket` | `127` | none |
| `graph157_continuation_socket` | `224` | none |
| `graph169_continuation_socket` | `224` | none |
| `graph183_tail_table_socket` | `1392` | none |
| `graph183_quotient_margin_socket` | `1181` | none |
| `closed_bellman_strengthened_semantic_gate_socket` | `223` | none |
| `graph183_accepted_branch_quotient` | `97` | none |
| `graph183_cocycle_quotient_edge_core` | `470` | none |
| `graph183_cocycle_quotient_edge_shards` | `111` | none |
| `graph183_cocycle_quotient_potential` | `108` | none |
| `target_completion_local_branch_table_shard000` | `1403` | none |
| `depth11_closed_providers` | `1536` | none |

## Guard Measurements

- `depth11_layer4_mapped_finish`: exit `0`, elapsed `18.009754205995705`, peak RSS MiB `4048.703125`
- `depth11_closed_providers_lake`: exit `0`, elapsed `4.003515039003105`, peak RSS MiB `4088.734375`
- `depth11_layer4_mapped_branch_socket_lake`: exit `0`, elapsed `28.024844848012435`, peak RSS MiB `4391.59765625`
- `depth11_layer4_target_completion_branch_socket_lake`: exit `0`, elapsed `3.0264380170119694`, peak RSS MiB `4046.76171875`
- `target_completion_local_branch_table_shard000_lake`: exit `0`, elapsed `1.0016190989990719`, peak RSS MiB `1.3125`
- `target_completion_local_step_socket_lake`: exit `0`, elapsed `3.0331940350006334`, peak RSS MiB `4050.24609375`
- `graph150_continuation_socket_lake`: exit `0`, elapsed `3.0029323759954423`, peak RSS MiB `3996.65625`
- `graph150_direct_eval_socket_lake`: exit `0`, elapsed `3.002738071998465`, peak RSS MiB `4050.12890625`
- `graph157_continuation_socket_lake`: exit `0`, elapsed `5.004316574006225`, peak RSS MiB `4337.02734375`
- `graph169_continuation_socket_lake`: exit `0`, elapsed `4.003211283998098`, peak RSS MiB `4042.34765625`
- `graph183_tail_table_socket_lake`: exit `0`, elapsed `136.09755036400747`, peak RSS MiB `5875.578125`
- `closed_bellman_strengthened_semantic_gate_socket`: exit `0`, elapsed `3.0027096020057797`, peak RSS MiB `3719.16015625`
- `graph183_cocycle_quotient_potential_direct`: exit `0`, elapsed `2.00216292400728`, peak RSS MiB `3627.2265625`
- `graph183_cocycle_quotient_potential_lake`: exit `0`, elapsed `7.008340544998646`, peak RSS MiB `23154.05078125`

## Forbidden Production Hits

- none

## Graph Alignment Guards

- pass: graph183 stays on the strengthened `closedBellmanNext` route and does not consume the split-10M graphSmokeNext finish surfaces.

## Accepted Pivot

Keep Bellman, but reject selected-prefix membership as a production
route.  For graph183 the semantic evaluator membership problem is
now a deterministic transducer obligation: target cursor supplies
target cancellation, schedule/square/used/length state supplies
`Graph150TargetCompletionTail`, and the suffix-local transducer
gate supplies the exact eval theorem once a generated family proves
the local transition and final margin premises.

This audit therefore treats the graph183 completion-tail slice as a
passed semantic-transducer checkpoint.  The next producer should
target the generic sequence-bad-face quotient-margin carrier:

```lean
Graph183TailQuotientMarginSequenceBadFace scaledMargin
```

The generic carrier feeds `Graph183TailQuotientMarginFamily` via
`graph183TailQuotientMarginFamily_of_sequenceBadFace`, and the
socket adapts that generic family back to the older accepted-tail
margin, final-margin, graph169 continuation, graph-exact eval, and
`NonIdentityRankKilled` surfaces.  The older exact-eval surface
remains an adapter/checkpoint, not the preferred proof obligation.
Compatibility adapters include:

```lean
graph183TailQuotientMarginFamily_of_sequenceBadFace
acceptedSequenceGraph183AcceptedTailQuotientMarginFamily_of_graph183TailQuotientMarginFamily
acceptedSequenceGraph183AcceptedTailMarginFamily_of_tailQuotientMargin
acceptedSequenceGraph183AcceptedBranchFinalMarginFamily_of_tailQuotientMargin
nonIdentityRankKilled_of_graph183TailBranchQuotientStartViolation
nonIdentityRankKilled_of_acceptedSequenceGraph183TailBranchQuotientStartViolation
graph183AcceptedBranchRawGain
graph183AcceptedBranchRawGain_contract
```

The margin producer may use the closed-language proof and the fixed
forced tail:

```lean
Depth11Layer4PrefixAtRank rank Face.tmpm Face.zm
  (Face.zp :: Face.tppm :: Face.tpmm :: graph183ForcedTail)
```

but it must prove the integer inequality semantically.  If the proof
needs exact affine RHS keys, solved start-point keys, accepted trace
ids, selected prefixes, or one branch per rank/path, the route is
not production-safe.  The next pivot should then be a cancellation
segment or cocycle/coboundary quotient for this margin form, followed
by the same Bellman potential bound.

The graph183 cocycle quotient evidence is now checked through the
sharded edge-equation aggregate, not the old one-file smoke.  The
aggregate exposes public `FullStep`/`SmallStep` relations,
`graph183QuotientStep`, and the run-level theorem
`graph183QuotientRun` over `graph183QuotientQ` and
`graph183QuotientGauge`.  The companion potential module checks
the constant quotient potential `86`, root gauge bound, and
profile-final gauge bounds.  These facts are still only
cocycle/quotient Bellman support: production must connect them
to the deterministic closed-language evaluator gate.  The
production socket also imports the tiny accepted-branch quotient
module, which checks only the 14 accepted-branch local equations
and the branch raw-gain contract.

## Go/No-Go Gate

Go only if the next producer proves
`Graph183TailQuotientMarginSequenceBadFace` from semantic
closed-language state plus Lean-checked quotient/gauge integer
facts, via the target-shadow cursor and suffix-local deterministic
transducer gate.  No-go if the proof introduces sampled ranks,
selected-prefix coverage, accepted trace ids, exact affine RHS
keys, solved start points, or one branch per rank/path.  In that
case, add a missing semantic state field or pivot to the
cancellation-tree segment algebra/cocycle quotient.
