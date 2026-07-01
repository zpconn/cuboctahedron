# Bellman Pivot Next-Action Plan

Untrusted diagnostic aggregation.  This file is not Lean proof evidence.

Decision: `implement-semantic-membership-then-scale`

Proceed with the Bellman/potential route, but do not use exact path classes as the family coordinate.  Implement the semantic object-family membership theorem for the closed transition language, using cocycle-gauge/cancellation-summary refinement only if the next larger windows show state or transition growth near the gates.

## Checks

| Check | Value |
| --- | --- |
| `hard_gate_ok` | `True` |
| `exact_path_warning` | `True` |
| `semantic_route_ready` | `True` |
| `split_boundary_ok` | `True` |

## Metrics

| Metric | Value |
| --- | ---: |
| `matched` | `37` |
| `paths` | `37` |
| `states` | `223` |
| `edges` | `229` |
| `path_class_count` | `37` |
| `exact_path_class_ratio` | `1.0` |
| `scaled_bit_length` | `10` |
| `fraction_bit_length` | `9` |
| `transition_closed_after_bad_face` | `True` |
| `split_graph_positive_mentions` | `0` |
| `split_terminal_positive_payloads` | `2` |

## Best Cached Path Coarsening

| Field | Value |
| --- | --- |
| `mode` | `label-multiset` |
| `group_count` | `1` |
| `max_group_size` | `273` |
| `max_margin_spread` | `684` |

## Ordered Follow-Ups

- Implement semantic object-family membership for the closed Bellman language.
- Run the same planner on the next larger exact Bellman window before any broad Lean build.
- If states/edges or exact-path ratios grow too fast, profile cocycle-gauge preconditioning.
- If gauge is weak, profile cancellation-summary DAG bounds for the same family.
- Only after terminal families are real, assemble StateKilled/root coverage.
