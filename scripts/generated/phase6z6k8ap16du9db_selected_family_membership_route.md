# Phase 6Z.6K.8AP.16DU.9DB Selected-Family Membership Route Audit

This diagnostic is planning telemetry only. It emits no Lean and is not
trusted as proof evidence.

- Status: `blocked-on-semantic-membership-theorem`
- Identity ranks: `487`
- GoodDirection survivors: `4693`
- Source-index/state families: `125`
- Unique rank-family maps: `464`
- Largest rank-family-map class: `4`

## File Scan

| Surface | Compact membership? | Semantic target surface? |
| --- | --- | --- |
| `semantic_language` | `False` | `True` |
| `selector_range_adapter` | `False` | `True` |
| `generated_range_smoke` | `True` | `True` |
| `row_property_case_smoke` | `False` | `True` |
| `row_property_smoke` | `True` | `False` |

## Rejected Routes

| Route | Reason |
| --- | --- |
| `reuse_generated_range_smoke` | The existing generated semantic range smoke proves membership through rank-local compact selector-positive theorems. |
| `rank_family_map_membership` | DU.9DA shows rank->family maps are almost rank-local, so this would encode a table rather than a semantic theorem. |
| `selected_family_with_compact_membership` | A selected-family smoke is not production-relevant if the GoodDirection-to-membership implication is imported from compact-Walsh rank-local covers. |

## Selected Target

- Name: `semantic_selector_source_row_membership`
- Adapter: `SelectorCoordinateFactsGoodCatalogOnRangeFor.of_classifierKey_source_row`

Required theorem shape:

```text
forall {rank mask} (hlt : rank < numPairWords), lo <= rank -> rank < hi -> totalLinearOfPairWord (unrankPairWord ⟨rank,hlt⟩) = matId -> GoodDirectionAtRank ⟨rank,hlt⟩ mask -> exists key, coordAt rank mask = selectorCoordinateOfKey key /\ SourceIndexStateSourceFacts key.toSourceIndexStateKey rank mask /\ SourceIndexStateRowFacts key.toSourceIndexStateKey rank mask
```

## Decision

Implement a small semantic selector/source-row membership theorem for one reusable source-index/state family or source-position language, with no import of compact membership modules.
