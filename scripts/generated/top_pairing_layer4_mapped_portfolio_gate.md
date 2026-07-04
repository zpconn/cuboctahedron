# Top-Pairing Layer-4 Mapped Portfolio Gate

This audit is diagnostic status evidence, not proof.  It records the
current clean production target for the top-pairing Bellman membership
slice after the graph-suffix pivot.

- decision: `mapped-portfolio-gate-ready-next-prove-semantic-classification`
- mapped finish module lines: `1503`
- latest guarded check exit: `0`
- latest guarded peak RSS MiB: `4048.703125`

## Emitter Contract

The next generated proof should construct:

```lean
Depth11Layer4SevenBranchMappedPortfolioAllFamily scaledMargin
```

For each of the seven semantic first-four branches, it must produce a
`Depth11Layer4MappedClassCase scaledMargin rank`, i.e. one of the six
class cases with both:

- `ClassNNNGraphSuffixProducer rank`
- `ClassNNNExactGraphFinishMarginBound scaledMargin rank`

## Branch Fields

| branch | present in portfolio |
| --- | ---: |
| `tmpm_tppm` | `True` |
| `tmpm_zm` | `True` |
| `yp_tmmm` | `True` |
| `yp_zm` | `True` |
| `zm_tmpp` | `True` |
| `zm_yp` | `True` |
| `zm_zp` | `True` |

## Class Cases

| class | producer | margin bound | adapter |
| --- | ---: | ---: | ---: |
| `034` | `True` | `True` | `True` |
| `035` | `True` | `True` | `True` |
| `036` | `True` | `True` | `True` |
| `037` | `True` | `True` | `True` |
| `038` | `True` | `True` | `True` |
| `039` | `True` | `True` | `True` |

## Consuming Theorems

- `mappedSevenBranchClassifier_of_mappedPortfolio`
- `split10MGraphExactEvalAllFamily_of_layer4MappedPortfolio`
- `closedToEvalGate_of_layer4MappedPortfolio`
- `scaledMargin_nonpos_of_layer4MappedPortfolio`

## Forbidden Code Hits

- none

## Next Step

Generate a small semantic membership emitter for this portfolio.  If
the proof requires sampled paths, selected-prefix coverage, exact
affine RHS keys, or one branch per rank, reject this route and move
to the cancellation-tree/cocycle quotient fallback.

