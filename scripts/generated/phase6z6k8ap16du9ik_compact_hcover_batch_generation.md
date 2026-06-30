# Phase 6Z.6K.8AP.16DJ Compact Walsh Batch Generation

Status: `dry_run`.

This is bounded smoke infrastructure, not final generated coverage.

- emitted Lean: `False`
- signatures: `2`
- planned guarded targets: `63`
- root module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IKBatchSmoke`

| rank | anchor mask | selected impacts | selected subcubes | cover module |
| ---: | ---: | --- | ---: | --- |
| 519 | 6 | `[0, 1, 3, 5, 6, 7, 8]` | 15 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank519Smoke` |
| 561 | 5 | `[0, 1, 3, 5, 6, 7, 8]` | 15 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank561Smoke` |

Required build policy:

```text
build targets serially
LEAN_NUM_THREADS=1
LAKE_JOBS=1
process-tree RSS cap: 5000 MiB
minimum MemAvailable floor: 12000 MiB
stop on first failure
```
