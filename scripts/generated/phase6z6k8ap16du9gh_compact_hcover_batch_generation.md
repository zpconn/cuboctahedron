# Phase 6Z.6K.8AP.16DJ Compact Walsh Batch Generation

Status: `emitted_pending_guarded_build`.

This is bounded smoke infrastructure, not final generated coverage.

- emitted Lean: `True`
- signatures: `6`
- planned guarded targets: `151`
- root module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9GHBatchSmoke`

| rank | anchor mask | selected impacts | selected subcubes | cover module |
| ---: | ---: | --- | ---: | --- |
| 5 | 8 | `[0, 1, 3, 5, 7, 9, 11]` | 17 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank5Smoke` |
| 9 | 9 | `[0, 1, 3, 5, 7, 8, 11]` | 16 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank9Smoke` |
| 11 | 8 | `[0, 1, 3, 5, 7, 8, 10]` | 16 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank11Smoke` |
| 17 | 16 | `[0, 1, 3, 5, 7, 8, 9]` | 16 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank17Smoke` |
| 24 | 8 | `[0, 1, 3, 5, 7, 8, 9]` | 18 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank24Smoke` |
| 27 | 8 | `[0, 1, 3, 5, 7, 8, 11]` | 19 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank27Smoke` |

Required build policy:

```text
build targets serially
LEAN_NUM_THREADS=1
LAKE_JOBS=1
process-tree RSS cap: 5000 MiB
minimum MemAvailable floor: 12000 MiB
stop on first failure
```
