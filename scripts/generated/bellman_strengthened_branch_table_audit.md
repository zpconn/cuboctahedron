# Bellman Strengthened Branch-Table Audit

This is diagnostic-only evidence.  It records the finite branch
categories that the next Lean emitter must turn into semantic
`StrengthenedSuffixOk` constructors.

- decision: `finite-branch-table-report-ready-for-lean-emitter`
- graph input: `scripts/generated/nonid_margin_bellman_top_pairing_000000000_001000000_with_step_face_linear_tri_source_graph.json`

## Graph

| Metric | Value |
| --- | ---: |
| states | `223` |
| real graph edges | `229` |
| final states | `29` |
| matched paths in diagnostic window | `37` |
| Bellman scale | `88` |
| root bound | `-2` |
| max margin bound | `0` |

## Branch Categories

| Category | Count |
| --- | ---: |
| real graph-transition branches | `229` |
| semantic socket branches | `2` |
| remaining uncovered audited branches | `0` |

## Semantic Sockets

| Socket | State | Face | Kind | Accepted |
| --- | ---: | --- | --- | ---: |
| `state19/tmmp` | `19` | `tmmp` | canonical-bad-face mismatch | `True` |
| `state150/tppp` | `150` | `tppp` | target-pairing completion impossibility | `True` |

## Strengthened Smoke Guard

| Metric | Value |
| --- | ---: |
| passed | `True` |
| elapsed seconds | `14.012564142991323` |
| peak RSS MiB | `4338.109375` |
| killed reason | `None` |

## Next Step

Emit a finite Lean branch table from this classification.  The Lean table should use ordinary graph transitions for real edges and semantic socket constructors for the two accepted impossible branches; it must not introduce selected-prefix membership or one branch per rank/path.
