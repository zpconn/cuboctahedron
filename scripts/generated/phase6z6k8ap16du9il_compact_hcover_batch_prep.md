# Phase 6Z.6K.8AP.16DU.9IL Compact Hcover Batch Prep

This report is planning telemetry, not proof evidence.

- Plan: `scripts/generated/phase6z6k8ap16du9il_compact_hcover_batch_plan.json`
- Source: `scripts/generated/phase6z6k8ap16du9il_compact_hcover_batch_source.json`
- Generation report: `scripts/generated/phase6z6k8ap16du9il_compact_hcover_batch_generation.json`
- Root Lean: `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9ILBatchSmoke.lean`
- Root namespace: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9ILBatchSmoke`
- Ranks: `[582, 585, 587, 600, 602, 603, 605, 609]`

| Rank | Anchor mask | Good masks | Selected subcubes | Selected word impacts |
| ---: | ---: | ---: | ---: | --- |
| 582 | 0 | 11 | 16 | `[0, 1, 3, 5, 6, 7, 9]` |
| 585 | 8 | 7 | 16 | `[0, 1, 3, 5, 6, 7, 11]` |
| 587 | 7 | 8 | 16 | `[0, 1, 3, 5, 6, 7, 10]` |
| 600 | 8 | 13 | 16 | `[0, 1, 3, 5, 6, 9, 11]` |
| 602 | 22 | 8 | 13 | `[0, 1, 5, 6, 9, 10]` |
| 603 | 13 | 8 | 13 | `[0, 3, 5, 6, 9, 10]` |
| 605 | 8 | 13 | 16 | `[0, 1, 3, 5, 6, 9, 11]` |
| 609 | 8 | 11 | 16 | `[0, 1, 3, 5, 6, 8, 11]` |

Dry-run command:

```bash
python3 scripts/generate_ap16dj_compact_walsh_batch.py --plan scripts/generated/phase6z6k8ap16du9il_compact_hcover_batch_plan.json --source scripts/generated/phase6z6k8ap16du9il_compact_hcover_batch_source.json --report scripts/generated/phase6z6k8ap16du9il_compact_hcover_batch_generation.json --root-lean Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9ILBatchSmoke.lean --root-namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9ILBatchSmoke
```

Emit command, only after accepting the dry-run report:

```bash
python3 scripts/generate_ap16dj_compact_walsh_batch.py --emit --plan scripts/generated/phase6z6k8ap16du9il_compact_hcover_batch_plan.json --source scripts/generated/phase6z6k8ap16du9il_compact_hcover_batch_source.json --report scripts/generated/phase6z6k8ap16du9il_compact_hcover_batch_generation.json --root-lean Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9ILBatchSmoke.lean --root-namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9ILBatchSmoke
```

Build policy after emission: run focused targets serially through the
AP16DI memory guard.  Do not attach the emitted files to a broad root
until per-target RSS is recorded.
