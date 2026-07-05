# Graph147 Quotient Potential Diagnostic

Diagnostic only.  This does not emit Lean evidence.

- profile: `/home/zpconn/code/cuboctahedron/scripts/generated/nonid_margin_bellman_top_pairing_000000000_010000000_with_step_tri_source_graph.json`
- quotient: `/home/zpconn/code/cuboctahedron/scripts/generated/graph147_cocycle_quotients_0_10M.json`
- quotient mode: `step-stack`
- full states: `970`
- full edge-label equations: `1054`
- quotient states: `44`
- quotient edge labels: `206`
- quotient finals: `1`
- U = fullPotential + gauge collision classes: `34`
- quotient potential edge-valid: `True`
- quotient potential root value: `2016`
- root gauge: `438`
- final gauge range: `-566 .. 878`
- worst root/gauge bound: `2632`
- decision: `edge_quotient_not_margin_complete`

Interpretation:

The current step-stack quotient validates local edge equations, but it is too coarse as a margin certificate: the least quotient potential has a positive worst root/gauge bound.  Do not treat this quotient as production margin evidence without a stronger semantic state, cancellation/segment algebra, or different cocycle quotient.
