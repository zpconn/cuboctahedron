# Graph147 Quotient Potential Diagnostic

Diagnostic only.  This does not emit Lean evidence.

- profile: `/home/zpconn/code/cuboctahedron/scripts/generated/nonid_margin_bellman_top_pairing_000000000_010000000_with_step_tri_source_graph.json`
- decision: `no_existing_quotient_margin_candidate`
- selected mode: `step-stack`
- accepted modes: `<none>`

## Mode Table

| mode | consistent | q states | q edges | edge-valid | worst bound | decision |
| --- | --- | ---: | ---: | --- | ---: | --- |
| `full` | `True` | `970` | `1054` | `True` | `468` | `edge_quotient_not_margin_complete` |
| `step-tri-src-no-pos` | `True` | `254` | `379` | `True` | `800` | `edge_quotient_not_margin_complete` |
| `step-tri-targets` | `True` | `173` | `289` | `True` | `800` | `edge_quotient_not_margin_complete` |
| `step-par-tri-targets` | `True` | `98` | `226` | `True` | `1700` | `edge_quotient_not_margin_complete` |
| `no-tri-src` | `True` | `173` | `289` | `True` | `800` | `edge_quotient_not_margin_complete` |
| `no-rem` | `True` | `289` | `459` | `True` | `1700` | `edge_quotient_not_margin_complete` |
| `step-par-stack` | `True` | `98` | `226` | `True` | `1700` | `edge_quotient_not_margin_complete` |
| `step-rem-par` | `True` | `173` | `289` | `True` | `800` | `edge_quotient_not_margin_complete` |
| `step-stack` | `True` | `44` | `206` | `True` | `2632` | `edge_quotient_not_margin_complete` |
| `step-par` | `False` | `68` | `215` | `n/a` | `n/a` | `inconsistent_edge_quotient` |

## Selected Mode

- mode: `step-stack`
- quotient states: `44`
- quotient edge labels: `206`
- quotient finals: `1`
- U = fullPotential + gauge collision classes: `34`
- quotient potential edge-valid: `True`
- quotient potential root value: `2016`
- root gauge: `438`
- final gauge range: `-566 .. 878`
- worst root/gauge bound: `2632`

Interpretation:

No existing quotient mode simultaneously validates quotient edges and proves a nonpositive root/gauge margin bound.  The current quotient coordinates are diagnostic only; graph147 needs a stronger semantic state, cancellation/segment algebra, or new cocycle quotient.
