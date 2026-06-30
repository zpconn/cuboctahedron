# Phase 6Z.6K.8AP.16DJ Compact Walsh Batch Generation

Status: `dry_run`.

This is bounded smoke infrastructure, not final generated coverage.

- emitted Lean: `False`
- signatures: `4`
- planned guarded targets: `101`
- root module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9INBatchSmoke`

| rank | anchor mask | selected impacts | selected subcubes | cover module |
| ---: | ---: | --- | ---: | --- |
| 714 | 22 | `[0, 1, 3, 5, 6, 7, 11]` | 19 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank714Smoke` |
| 716 | 22 | `[0, 1, 3, 5, 6, 7, 10]` | 16 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank716Smoke` |
| 724 | 15 | `[0, 1, 3, 5, 6, 7, 9]` | 16 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank724Smoke` |
| 748 | 16 | `[0, 1, 3, 5, 6, 7, 8]` | 17 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank748Smoke` |

Required build policy:

```text
build targets serially
LEAN_NUM_THREADS=1
LAKE_JOBS=1
process-tree RSS cap: 5000 MiB
minimum MemAvailable floor: 12000 MiB
stop on first failure
```
