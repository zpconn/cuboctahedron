# Top-Pairing Graph-Suffix Emitter Target

This is diagnostic-only evidence for the next Bellman membership emitter.
It records the graph-indexed target after the Lean-proved `xm, ym`
root prefix, without enumerating ranks, paths, or selected prefixes.

- decision: `graph-suffix-emitter-target-ready`
- root prefix: `xm, ym`
- third-face graph state: `143`

## Third-Face Branches

| state | face | label | graph next | branch ctor | ok |
| ---: | --- | ---: | --- | --- | ---: |
| `143` | `Face.tmpm` | `2` | `146 / gain -124` | `graph_127_s0143_tmpm` | `True` |
| `143` | `Face.yp` | `11` | `144 / gain -73` | `graph_125_s0143_yp` | `True` |
| `143` | `Face.zm` | `12` | `145 / gain -10` | `graph_126_s0143_zm` | `True` |

## Successor Frontier

| state | face | label | graph next | branch ctor | ok |
| ---: | --- | ---: | --- | --- | ---: |
| `144` | `Face.tmmm` | `0` | `148 / gain -124` | `graph_129_s0144_tmmm` | `True` |
| `144` | `Face.zm` | `12` | `147 / gain -10` | `graph_128_s0144_zm` | `True` |
| `145` | `Face.tmpp` | `3` | `151 / gain -124` | `graph_132_s0145_tmpp` | `True` |
| `145` | `Face.yp` | `11` | `147 / gain -73` | `graph_130_s0145_yp` | `True` |
| `145` | `Face.zp` | `13` | `149 / gain -10` | `graph_131_s0145_zp` | `True` |
| `146` | `Face.tppm` | `6` | `152 / gain 96` | `graph_134_s0146_tppm` | `True` |
| `146` | `Face.zm` | `12` | `150 / gain 114` | `graph_133_s0146_zm` | `True` |

## Emitter Contract

The next generated Lean object should produce:

```lean
GraphBranchTableSuffixOk rank graph rest
```

directly from semantic closed-language/cursor state. It should not call
`closed_prefix3_tmpm_branch_faceEval` or any other full semantic
`faceEvalNext` bridge to recover graph membership.

