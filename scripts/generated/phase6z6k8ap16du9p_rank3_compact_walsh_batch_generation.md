# Phase 6Z.6K.8AP.16DJ Compact Walsh Batch Generation

Status: `emitted_pending_guarded_build`.

This is bounded smoke infrastructure, not final generated coverage.

- emitted Lean: `True`
- signatures: `1`
- planned guarded targets: `26`
- root module: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9PRank3BatchSmoke`

| rank | anchor mask | selected impacts | selected subcubes | cover module |
| ---: | ---: | --- | ---: | --- |
| 3 | 8 | `[0, 1, 3, 5, 7, 9, 10]` | 21 | `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomCoverRank3Smoke` |

Required build policy:

```text
build targets serially
LEAN_NUM_THREADS=1
LAKE_JOBS=1
process-tree RSS cap: 5000 MiB
minimum MemAvailable floor: 12000 MiB
stop on first failure
```
