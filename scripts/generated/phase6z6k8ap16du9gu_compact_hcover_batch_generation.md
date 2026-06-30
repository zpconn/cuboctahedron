# Phase 6Z.6K.8AP.16DJ Compact Walsh Batch Generation

Status: `emitted_pending_guarded_build`.

This is bounded smoke infrastructure, not final generated coverage.

- emitted Lean: `True`
- signatures: `6`
- planned guarded targets: `151`
- root module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9GUBatchSmoke`

| rank | anchor mask | selected impacts | selected subcubes | cover module |
| ---: | ---: | --- | ---: | --- |
| 45 | 8 | `[0, 1, 3, 5, 7, 9, 10]` | 19 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank45Smoke` |
| 47 | 8 | `[0, 1, 3, 5, 7, 9, 11]` | 17 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank47Smoke` |
| 49 | 13 | `[0, 1, 3, 5, 7, 8, 9]` | 18 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank49Smoke` |
| 57 | 8 | `[0, 1, 3, 5, 7, 8, 10]` | 16 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank57Smoke` |
| 59 | 8 | `[0, 1, 3, 5, 7, 8, 11]` | 21 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank59Smoke` |
| 60 | 0 | `[0, 1, 3, 5, 7, 8, 10]` | 22 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank60Smoke` |

Required build policy:

```text
build targets serially
LEAN_NUM_THREADS=1
LAKE_JOBS=1
process-tree RSS cap: 5000 MiB
minimum MemAvailable floor: 12000 MiB
stop on first failure
```
