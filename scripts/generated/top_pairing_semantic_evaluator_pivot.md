# Top-Pairing Semantic Evaluator Pivot

This audit is diagnostic status evidence, not proof.  It records the
current Lean theorem surfaces for the pivot away from selected-prefix
membership and toward deterministic closed-language evaluator proofs.

- decision: `semantic_evaluator_pivot_ready_for_membership_producer`
- missing required symbols: `0`
- forbidden production-token hits: `0`

## Required Surfaces

| file | lines | missing symbols |
| --- | ---: | --- |
| `target_cursor` | `387` | none |
| `transducer_tail` | `97` | none |
| `closed_transducer_socket` | `205` | none |
| `closed_final_margin_socket` | `432` | none |
| `depth11_graph_exact_portfolio` | `177` | none |
| `depth11_layer4_mapped_finish` | `1503` | none |
| `depth11_layer4_mapped_branch_socket` | `223` | none |
| `depth11_layer4_target_completion_branch_socket` | `131` | none |
| `target_completion_local_step_socket` | `140` | none |
| `target_completion_local_branch_table_shard000` | `63` | none |
| `depth11_closed_providers` | `1536` | none |

## Guard Measurements

- `depth11_layer4_mapped_finish`: exit `0`, elapsed `18.009754205995705`, peak RSS MiB `4048.703125`
- `depth11_closed_providers_lake`: exit `0`, elapsed `4.003515039003105`, peak RSS MiB `4088.734375`
- `depth11_layer4_mapped_branch_socket_lake`: exit `0`, elapsed `28.024844848012435`, peak RSS MiB `4391.59765625`
- `depth11_layer4_target_completion_branch_socket_lake`: exit `0`, elapsed `3.0264380170119694`, peak RSS MiB `4046.76171875`
- `target_completion_local_branch_table_shard000_lake`: exit `0`, elapsed `1.0016190989990719`, peak RSS MiB `1.3125`
- `target_completion_local_step_socket_lake`: exit `0`, elapsed `3.0331940350006334`, peak RSS MiB `4050.24609375`

## Forbidden Production Hits

- none

## Accepted Pivot

Keep Bellman, but reject selected-prefix membership as a production
route.  The next generated proof should construct:

```lean
Depth11Layer4SevenBranchMappedPortfolioAllFamily scaledMargin
```

from semantic closed-language state: target-shadow cursor, schedule,
square-gap, local-axis, tri-source progress, graph suffix class, and
graph-exact margin bound.  The final theorem should consume the
existing `closedToEvalGate_of_layer4MappedPortfolio` and
`scaledMargin_nonpos_of_layer4MappedPortfolio` surfaces.

The branch socket lets that portfolio be emitted and checked as seven
independent `Depth11Layer4MappedBranchPortfolioFamily` leaves before
bundling them into the full portfolio.

It also exposes a strengthened branch-local surface for the first
production slice when actual-face omni or accepted bad-face evidence
is needed:

```lean
StrengthenedDepth11Layer4MappedBranchPortfolioFamily
```

The target-completion branch socket factors that strengthened
surface one step further through `TopPairingTargetCompletionTail`.
That is the current production shape for the pivot: prove remaining
suffix membership from semantic actual-face / target-cancellation
state, then classify to a graph-exact mapped case.

The local-step socket then turns a semantic local branch table into
a reusable target-completion branch family by consuming one face and
passing the smaller suffix to a continuation.

The first target-completion local branch-table shard is also
tracked here.  It covers the graph-150/151 prefix-4 states by
semantic `TopPairingTargetCompletionTail` transitions rather than
observed traces.

## Go/No-Go Gate

Go only if the next producer proves the portfolio by local semantic
state transitions.  No-go if the proof introduces sampled ranks,
selected-prefix coverage, accepted-trace ids, exact affine RHS keys,
or one branch per rank/path.  In that case, add a missing semantic
state field or pivot to the cancellation-tree/cocycle quotient.
