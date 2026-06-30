# Phase 6Z.6K.8AP.16DJ Compact Walsh Batch Generation

Status: `dry_run`.

This is bounded smoke infrastructure, not final generated coverage.

- emitted Lean: `False`
- signatures: `9`
- planned guarded targets: `279`
- root module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IHBatchSmoke`

| rank | anchor mask | selected impacts | selected subcubes | cover module |
| ---: | ---: | --- | ---: | --- |
| 323 | 7 | `[0, 1, 3, 5, 6, 7, 9]` | 17 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank323Smoke` |
| 357 | 7 | `[0, 1, 3, 5, 6, 7, 8]` | 17 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank357Smoke` |
| 360 | 9 | `[0, 1, 3, 5, 6, 9, 11]` | 19 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank360Smoke` |
| 362 | 16 | `[0, 1, 5, 6, 9, 10]` | 20 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank362Smoke` |
| 363 | 8 | `[0, 1, 3, 5, 6, 9, 10]` | 21 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank363Smoke` |
| 365 | 9 | `[0, 1, 3, 5, 6, 9, 11]` | 19 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank365Smoke` |
| 369 | 9 | `[0, 1, 3, 5, 6, 8, 11]` | 22 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank369Smoke` |
| 371 | 7 | `[0, 1, 3, 5, 6, 8, 10]` | 13 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank371Smoke` |
| 377 | 7 | `[0, 1, 3, 5, 6, 8, 9]` | 16 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank377Smoke` |

Required build policy:

```text
build targets serially
LEAN_NUM_THREADS=1
LAKE_JOBS=1
process-tree RSS cap: 5000 MiB
minimum MemAvailable floor: 12000 MiB
stop on first failure
```
