# Phase 6Z.6K.8AP.16DU.9GU Compact Hcover Batch Prep

This report is planning telemetry, not proof evidence.

- Plan: `scripts/generated/phase6z6k8ap16du9gu_compact_hcover_batch_plan.json`
- Source: `scripts/generated/phase6z6k8ap16du9gu_compact_hcover_batch_source.json`
- Generation report: `scripts/generated/phase6z6k8ap16du9gu_compact_hcover_batch_generation.json`
- Root Lean: `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9GUBatchSmoke.lean`
- Root namespace: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9GUBatchSmoke`
- Ranks: `[45, 47, 49, 57, 59, 60]`

| Rank | Anchor mask | Good masks | Selected subcubes | Selected word impacts |
| ---: | ---: | ---: | ---: | --- |
| 45 | 8 | 13 | 19 | `[0, 1, 3, 5, 7, 9, 10]` |
| 47 | 8 | 16 | 17 | `[0, 1, 3, 5, 7, 9, 11]` |
| 49 | 13 | 7 | 18 | `[0, 1, 3, 5, 7, 8, 9]` |
| 57 | 8 | 11 | 16 | `[0, 1, 3, 5, 7, 8, 10]` |
| 59 | 8 | 13 | 21 | `[0, 1, 3, 5, 7, 8, 11]` |
| 60 | 0 | 11 | 22 | `[0, 1, 3, 5, 7, 8, 10]` |

Dry-run command:

```bash
python3 scripts/generate_ap16dj_compact_walsh_batch.py --plan scripts/generated/phase6z6k8ap16du9gu_compact_hcover_batch_plan.json --source scripts/generated/phase6z6k8ap16du9gu_compact_hcover_batch_source.json --report scripts/generated/phase6z6k8ap16du9gu_compact_hcover_batch_generation.json --root-lean Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9GUBatchSmoke.lean --root-namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9GUBatchSmoke
```

Emit command, only after accepting the dry-run report:

```bash
python3 scripts/generate_ap16dj_compact_walsh_batch.py --emit --plan scripts/generated/phase6z6k8ap16du9gu_compact_hcover_batch_plan.json --source scripts/generated/phase6z6k8ap16du9gu_compact_hcover_batch_source.json --report scripts/generated/phase6z6k8ap16du9gu_compact_hcover_batch_generation.json --root-lean Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9GUBatchSmoke.lean --root-namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9GUBatchSmoke
```

Build policy after emission: run focused targets serially through the
AP16DI memory guard.  Do not attach the emitted files to a broad root
until per-target RSS is recorded.
