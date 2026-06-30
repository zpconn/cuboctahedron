# Phase 6Z.6K.8AP.16DJ Compact Walsh Batch Generation

Status: `dry_run`.

This is bounded smoke infrastructure, not final generated coverage.

- emitted Lean: `False`
- signatures: `6`
- planned guarded targets: `187`
- root module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IIBatchSmoke`

| rank | anchor mask | selected impacts | selected subcubes | cover module |
| ---: | ---: | --- | ---: | --- |
| 384 | 7 | `[0, 1, 3, 5, 6, 8, 9]` | 15 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank384Smoke` |
| 387 | 8 | `[0, 1, 3, 5, 6, 8, 11]` | 16 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank387Smoke` |
| 389 | 7 | `[0, 1, 3, 5, 6, 8, 10]` | 13 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank389Smoke` |
| 413 | 5 | `[0, 1, 3, 5, 6, 7, 8]` | 19 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank413Smoke` |
| 444 | 7 | `[0, 1, 3, 5, 6, 7, 9]` | 17 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank444Smoke` |
| 447 | 13 | `[0, 1, 3, 5, 6, 7, 11]` | 18 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank447Smoke` |

Required build policy:

```text
build targets serially
LEAN_NUM_THREADS=1
LAKE_JOBS=1
process-tree RSS cap: 5000 MiB
minimum MemAvailable floor: 12000 MiB
stop on first failure
```
