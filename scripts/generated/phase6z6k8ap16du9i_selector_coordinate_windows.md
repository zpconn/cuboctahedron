# Phase 6Z.6K.8AP.16DU.9I selector-coordinate window profile

This report is not proof evidence. It checks the DU.9H selector
coordinate over disjoint sampled windows using bounded Python
parallelism.

- Status: `accepted-sampled-selector-coordinate`
- Jobs: `4`
- Windows: `4`
- Total GoodDirection cases represented: `2461`

## Windows

| Range | GoodDirection cases | Families | selector deterministic | source-index ambiguous | full-source ambiguous |
| --- | ---: | ---: | --- | ---: | ---: |
| `[0, 1000)` | `1465` | `74` | `True` | `1` | `1` |
| `[100000, 101000)` | `133` | `29` | `True` | `0` | `0` |
| `[1000000, 1001000)` | `0` | `0` | `True` | `0` | `0` |
| `[6000000, 6001000)` | `863` | `53` | `True` | `0` | `0` |

## Decision

The selector coordinate remains deterministic on all sampled windows. The next proof-producing step should expose/prove this coordinate semantically, not replay concrete rank/mask rows.
