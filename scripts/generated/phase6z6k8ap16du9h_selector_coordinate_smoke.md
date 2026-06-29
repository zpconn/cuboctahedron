# Phase 6Z.6K.8AP.16DU.9H selector-coordinate smoke

This generated Lean module is not global coverage. It exposes the
deterministic DU.9H selector coordinate for the bounded classifier
catalog.

- Classifier families: `125`
- Row-property digests: `12`
- Lean module: `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourceIndexStateSelectorDU9HSmoke.lean`

## Coordinate

`template + firstIndex + secondIndex + rowPropertyDigest`

## Lean Surface

- `selectorCoordinateAt_toFin` relates finite catalog indices to keys.
- `keyOfSelectorCoordinate?` is a lightweight generated lookup.
- `keyOfSelectorCoordinate?_selectorCoordinateOfKey` recognizes every
  generated classifier key without a 125-by-125 injectivity proof.
- `SelectorCoordinateFactsGoodCatalogOnRange.to_sourceIndexFactsCatalog`
  erases selector-coordinate membership proofs to the existing finite
  source/row catalog API.
- `SelectorCoordinateFactsGoodCatalogOnRange.to_allGoodCoverage` erases
  the same selector-coordinate target directly to bounded all-Good
  translation coverage.

The next theorem should prove this coordinate from identity-linear
`GoodDirectionAtRank`, then use the coordinate to recover a public
catalog key and theorem-valued source/row facts.
