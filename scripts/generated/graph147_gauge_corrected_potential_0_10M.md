# Graph147 Gauge-Corrected Potential Audit

Diagnostic only.  This does not emit Lean evidence.

- profile: `/home/zpconn/code/cuboctahedron/scripts/generated/nonid_margin_bellman_top_pairing_000000000_010000000_with_step_tri_source_graph.json`
- decision: `full_graph_margin_candidate_only`
- accepted modes: `full`

## Observed Graph

- states: `970`
- edges: `1054`
- roots: `1`
- finals: `116`
- const scaled: `176`
- root potential bounds: `[{'root': 0, 'potential': -176, 'const_plus_potential': 0}]`
- final potential range: `0 .. 0`

## Mode Table

| mode | q states | edge failures | final failures | worst root bound | decision |
| --- | ---: | ---: | ---: | ---: | --- |
| `full` | `970` | `0` | `0` | `0` | `gauge_corrected_margin_candidate` |
| `step-tri-src-no-pos` | `254` | `241` | `0` | `0` | `gauge_corrected_edges_invalid` |
| `step-tri-targets` | `173` | `305` | `0` | `0` | `gauge_corrected_edges_invalid` |
| `step-par-tri-targets` | `98` | `342` | `0` | `0` | `gauge_corrected_edges_invalid` |
| `no-tri-src` | `173` | `305` | `0` | `0` | `gauge_corrected_edges_invalid` |
| `no-rem` | `289` | `254` | `0` | `0` | `gauge_corrected_edges_invalid` |
| `step-par-stack` | `98` | `342` | `0` | `0` | `gauge_corrected_edges_invalid` |
| `step-rem-par` | `173` | `305` | `0` | `0` | `gauge_corrected_edges_invalid` |
| `step-stack` | `44` | `291` | `0` | `0` | `gauge_corrected_edges_invalid` |
| `step-par` | `68` | `n/a` | `n/a` | `n/a` | `inconsistent_edge_quotient` |

## Interpretation

The observed graph147 Bellman potential plus gauge certifies the full 970-state graph, but no coarser existing quotient is a valid margin certificate.  The production path should target semantic closed-language membership into the deterministic full graph, or discover a stronger quotient/segment state.

The full graph quotient is an observed margin candidate because the
gauge-corrected potential is exactly strong enough to give root bound
`0`.  The coarser existing quotients fail local corrected edge bounds,
so they cannot yet replace the full graph in a production margin
bundle.  The next Lean step remains semantic: prove the closed
top-pairing language evaluates through this deterministic graph, or
add a stronger semantic quotient/segment state.  Do not scale
selected-prefix or sampled-rank membership.
