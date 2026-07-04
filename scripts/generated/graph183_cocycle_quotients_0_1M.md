# Graph183 Cocycle Quotient Profile

Untrusted diagnostic output.  This file is not Lean proof evidence.

- input: `scripts/generated/nonid_margin_bellman_graph183_frontier_0_1M.json`
- decision: `cocycle_quotient_candidates_found`

## Quotients

| mode | consistent | q states | q edges | raw collisions | state ratio | edge ratio |
| --- | --- | ---: | ---: | ---: | ---: | ---: |
| `full` | `True` | `223` | `229` | `0` | `1.000` | `1.000` |
| `step-tri-src-no-pos` | `True` | `95` | `121` | `0` | `0.426` | `0.528` |
| `step-tri-targets` | `True` | `73` | `101` | `0` | `0.327` | `0.441` |
| `step-par-tri-targets` | `True` | `55` | `94` | `0` | `0.247` | `0.410` |
| `no-tri-src` | `True` | `73` | `101` | `0` | `0.327` | `0.441` |
| `no-rem` | `True` | `109` | `141` | `0` | `0.489` | `0.616` |
| `step-par-stack` | `True` | `55` | `94` | `0` | `0.247` | `0.410` |
| `step-rem-par` | `True` | `73` | `101` | `0` | `0.327` | `0.441` |
| `step-stack` | `True` | `37` | `94` | `0` | `0.166` | `0.410` |
| `step-par` | `True` | `43` | `93` | `1` | `0.193` | `0.406` |

## Best Quotient Solution

- mode: `step-par`
- quotient states: `43`
- quotient edges: `93`
- gauge entries: `223`
- small-gain entries: `93`
- nonzero values: `222`
- max rational bit length: `9`


## Interpretation

A `consistent` quotient means the observed scaled edge gains factor
through that quotient up to a telescoping gauge.  The next Lean
producer may use `BellmanLabelStepRun.quotient_of_step_gain_eq` as
the trusted summation theorem, but the quotient equations and any
generated local gain/gauge facts must still be Lean-checked.
