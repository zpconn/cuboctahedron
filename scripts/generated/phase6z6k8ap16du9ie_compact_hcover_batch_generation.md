# Phase 6Z.6K.8AP.16DJ Compact Walsh Batch Generation

Status: `emitted_pending_guarded_build`.

This is bounded smoke infrastructure, not final generated coverage.

- emitted Lean: `True`
- signatures: `2`
- planned guarded targets: `63`
- root module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IEBatchSmoke`

| rank | anchor mask | selected impacts | selected subcubes | cover module |
| ---: | ---: | --- | ---: | --- |
| 209 | 7 | `[0, 1, 3, 5, 6, 7, 8]` | 17 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank209Smoke` |
| 251 | 6 | `[0, 1, 3, 5, 6, 7, 8]` | 19 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank251Smoke` |

Required build policy:

```text
build targets serially
LEAN_NUM_THREADS=1
LAKE_JOBS=1
process-tree RSS cap: 5000 MiB
minimum MemAvailable floor: 12000 MiB
stop on first failure
```
