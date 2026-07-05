# Cocycle Quotient Profile

Untrusted diagnostic output.  This file is not Lean proof evidence.

- input: `scripts/generated/nonid_margin_bellman_top_pairing_000000000_010000000_with_step_tri_source_graph.json`
- decision: `cocycle_quotient_candidates_found`

## Quotients

| mode | consistent | q states | q edges | raw collisions | state ratio | edge ratio |
| --- | --- | ---: | ---: | ---: | ---: | ---: |
| `full` | `True` | `970` | `1054` | `0` | `1.000` | `1.000` |
| `step-tri-src-no-pos` | `True` | `254` | `379` | `0` | `0.262` | `0.360` |
| `step-tri-targets` | `True` | `173` | `289` | `0` | `0.178` | `0.274` |
| `step-par-tri-targets` | `True` | `98` | `226` | `0` | `0.101` | `0.214` |
| `no-tri-src` | `True` | `173` | `289` | `0` | `0.178` | `0.274` |
| `no-rem` | `True` | `289` | `459` | `0` | `0.298` | `0.435` |
| `step-par-stack` | `True` | `98` | `226` | `0` | `0.101` | `0.214` |
| `step-rem-par` | `True` | `173` | `289` | `0` | `0.178` | `0.274` |
| `step-stack` | `True` | `44` | `206` | `0` | `0.045` | `0.195` |
| `step-par` | `False` | `68` | `215` | `11` | `0.070` | `0.204` |

## Best Quotient Solution

- mode: `step-stack`
- quotient states: `44`
- quotient edges: `206`
- gauge entries: `970`
- small-gain entries: `206`
- nonzero values: `985`
- max rational bit length: `10`


## Interpretation

A `consistent` quotient means the observed scaled edge gains factor
through that quotient up to a telescoping gauge.  The next Lean
producer may use `BellmanLabelStepRun.quotient_of_step_gain_eq` as
the trusted summation theorem, but the quotient equations and any
generated local gain/gauge facts must still be Lean-checked.
