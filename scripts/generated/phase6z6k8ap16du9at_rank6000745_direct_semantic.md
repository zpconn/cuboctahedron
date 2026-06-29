# Phase 6Z.6K.8AP.16DU.9AT Direct Semantic Rank Smoke

This report is not proof evidence.  The Lean module listed below is the
proof-producing artifact.

- Rank: `6000745`
- GoodDirection survivors: `13`
- Local families: `9`
- Lean module: `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/RowPropertySemanticRank6000745Smoke.lean`
- Namespace: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowPropertySemanticRank6000745Smoke`

## Template Counts

| Template | Count |
| --- | ---: |
| `eqEqPosVarFirst` | 2 |
| `eqEqPosVarSecond` | 2 |
| `oppMinusOneVarFirst` | 1 |
| `oppOneMinusVarFirst` | 3 |
| `oppOneMinusVarSecond` | 1 |

Decision: this smoke deliberately bypasses the bounded global
`ClassifierKey` catalog by using local `SourceIndexStateKey` records.
That is the production-shaped route for ranks whose source-index families
are absent from the `[0,5000)` classifier catalog.
