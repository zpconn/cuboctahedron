# Phase 6Z.6K.8AP.16DU.9GH Compact Hcover Batch Prep

This report is planning telemetry, not proof evidence.

- Plan: `scripts/generated/phase6z6k8ap16du9gh_compact_hcover_batch_plan.json`
- Source: `scripts/generated/phase6z6k8ap16du9gh_compact_hcover_batch_source.json`
- Generation report: `scripts/generated/phase6z6k8ap16du9gh_compact_hcover_batch_generation.json`
- Root Lean: `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9GHBatchSmoke.lean`
- Root namespace: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9GHBatchSmoke`
- Ranks: `[5, 9, 11, 17, 24, 27]`

| Rank | Anchor mask | Good masks | Selected subcubes | Selected word impacts |
| ---: | ---: | ---: | ---: | --- |
| 5 | 8 | 16 | 17 | `[0, 1, 3, 5, 7, 9, 11]` |
| 9 | 9 | 13 | 16 | `[0, 1, 3, 5, 7, 8, 11]` |
| 11 | 8 | 11 | 16 | `[0, 1, 3, 5, 7, 8, 10]` |
| 17 | 16 | 7 | 16 | `[0, 1, 3, 5, 7, 8, 9]` |
| 24 | 8 | 7 | 18 | `[0, 1, 3, 5, 7, 8, 9]` |
| 27 | 8 | 13 | 19 | `[0, 1, 3, 5, 7, 8, 11]` |

Dry-run command:

```bash
python3 scripts/generate_ap16dj_compact_walsh_batch.py --plan scripts/generated/phase6z6k8ap16du9gh_compact_hcover_batch_plan.json --source scripts/generated/phase6z6k8ap16du9gh_compact_hcover_batch_source.json --report scripts/generated/phase6z6k8ap16du9gh_compact_hcover_batch_generation.json --root-lean Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9GHBatchSmoke.lean --root-namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9GHBatchSmoke
```

Emit command, only after accepting the dry-run report:

```bash
python3 scripts/generate_ap16dj_compact_walsh_batch.py --emit --plan scripts/generated/phase6z6k8ap16du9gh_compact_hcover_batch_plan.json --source scripts/generated/phase6z6k8ap16du9gh_compact_hcover_batch_source.json --report scripts/generated/phase6z6k8ap16du9gh_compact_hcover_batch_generation.json --root-lean Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9GHBatchSmoke.lean --root-namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9GHBatchSmoke
```

Build policy after emission: run focused targets serially through the
AP16DI memory guard.  Do not attach the emitted files to a broad root
until per-target RSS is recorded.
