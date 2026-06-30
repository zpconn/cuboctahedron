# Phase 6Z.6K.8AP.16DJ Compact Walsh Batch Generation

Status: `dry_run`.

This is bounded smoke infrastructure, not final generated coverage.

- emitted Lean: `False`
- signatures: `5`
- planned guarded targets: `156`
- root module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IGBatchSmoke`

| rank | anchor mask | selected impacts | selected subcubes | cover module |
| ---: | ---: | --- | ---: | --- |
| 261 | 13 | `[0, 1, 3, 5, 6, 7, 11]` | 19 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank261Smoke` |
| 263 | 7 | `[0, 1, 3, 5, 6, 7, 10]` | 16 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank263Smoke` |
| 269 | 7 | `[0, 1, 3, 5, 6, 7, 9]` | 16 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank269Smoke` |
| 315 | 9 | `[0, 1, 3, 5, 6, 7, 11]` | 21 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank315Smoke` |
| 317 | 7 | `[0, 1, 3, 5, 6, 7, 10]` | 14 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank317Smoke` |

Required build policy:

```text
build targets serially
LEAN_NUM_THREADS=1
LAKE_JOBS=1
process-tree RSS cap: 5000 MiB
minimum MemAvailable floor: 12000 MiB
stop on first failure
```
