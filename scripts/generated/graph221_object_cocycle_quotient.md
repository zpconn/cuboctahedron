# Graph221 Object Cocycle Quotient Profile

Untrusted diagnostic output.  This file is not Lean proof evidence.

- input: `/home/zpconn/code/cuboctahedron/scripts/generated/nonid_margin_bellman_top_pairing_000000000_010000000_with_step_tri_source_graph.json`
- decision: `graph221_cocycle_quotient_candidate_found`
- graph221 classes: `3`
- subgraph states: `21`
- subgraph edge-label equations: `21`

## Graph221 Classes

| class | margin | expected bound | faces |
| ---: | ---: | ---: | --- |
| `16` | `-420` | `-420` | `xm ym zm tmpp tppp tpmp tppm tmmp tpmm yp tmpm tmmm zp xp` |
| `17` | `-200` | `-200` | `xm ym zm tmpp tppp tpmp tppm tmmp tpmm tmmm tmpm yp zp xp` |
| `18` | `-200` | `-200` | `xm ym zm tmpp tppp tpmp tppm tmmp tpmm tmmm tmpm zp yp xp` |

## Quotient Report


## Quotients

| mode | consistent | q states | q edges | raw collisions | state ratio | edge ratio |
| --- | --- | ---: | ---: | ---: | ---: | ---: |
| `full` | `True` | `21` | `21` | `0` | `1.000` | `1.000` |
| `step-tri-src-no-pos` | `True` | `18` | `19` | `0` | `0.857` | `0.905` |
| `step-tri-targets` | `True` | `18` | `19` | `0` | `0.857` | `0.905` |
| `step-par-tri-targets` | `True` | `18` | `19` | `0` | `0.857` | `0.905` |
| `no-tri-src` | `True` | `18` | `19` | `0` | `0.857` | `0.905` |
| `no-rem` | `True` | `18` | `19` | `0` | `0.857` | `0.905` |
| `step-par-stack` | `True` | `18` | `19` | `0` | `0.857` | `0.905` |
| `step-rem-par` | `True` | `18` | `19` | `0` | `0.857` | `0.905` |
| `step-stack` | `True` | `17` | `19` | `0` | `0.810` | `0.905` |
| `step-par` | `True` | `18` | `19` | `0` | `0.857` | `0.905` |

## Best Quotient Solution

- mode: `step-stack`
- quotient states: `17`
- quotient edges: `19`
- gauge entries: `21`
- small-gain entries: `19`
- nonzero values: `20`
- max rational bit length: `9`


## Interpretation

A `consistent` quotient means the observed scaled edge gains factor
through that quotient up to a telescoping gauge.  The next Lean
producer may use `BellmanLabelStepRun.quotient_of_step_gain_eq` as
the trusted summation theorem, but the quotient equations and any
generated local gain/gauge facts must still be Lean-checked.

## Interpretation

A consistent quotient is only a candidate semantic state.  The next
Lean proof must still prove the closed graph221 object language
runs through that state machine and satisfies the branch margin
bounds without selected-prefix, accepted-trace, sampled-rank, exact
affine-RHS, or stored-path membership.
