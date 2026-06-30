# Phase 6Z.6K.8AP.16DU.9IA Compact Hcover Batch Prep

This report is planning telemetry, not proof evidence.

- Plan: `scripts/generated/phase6z6k8ap16du9ia_compact_hcover_batch_plan.json`
- Source: `scripts/generated/phase6z6k8ap16du9ia_compact_hcover_batch_source.json`
- Generation report: `scripts/generated/phase6z6k8ap16du9ia_compact_hcover_batch_generation.json`
- Root Lean: `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9IABatchSmoke.lean`
- Root namespace: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IABatchSmoke`
- Ranks: `[129, 131, 137, 144, 147, 149, 177, 179]`

| Rank | Anchor mask | Good masks | Selected subcubes | Selected word impacts |
| ---: | ---: | ---: | ---: | --- |
| 129 | 9 | 11 | 22 | `[0, 1, 3, 5, 6, 8, 11]` |
| 131 | 7 | 13 | 13 | `[0, 1, 3, 5, 6, 8, 10]` |
| 137 | 7 | 8 | 17 | `[0, 1, 3, 5, 6, 8, 9]` |
| 144 | 7 | 8 | 16 | `[0, 1, 3, 5, 6, 8, 9]` |
| 147 | 8 | 11 | 16 | `[0, 1, 3, 5, 6, 8, 11]` |
| 149 | 7 | 13 | 13 | `[0, 1, 3, 5, 6, 8, 10]` |
| 177 | 13 | 7 | 22 | `[0, 1, 3, 5, 6, 7, 11]` |
| 179 | 7 | 8 | 13 | `[0, 1, 3, 5, 6, 7, 10]` |

Dry-run command:

```bash
python3 scripts/generate_ap16dj_compact_walsh_batch.py --plan scripts/generated/phase6z6k8ap16du9ia_compact_hcover_batch_plan.json --source scripts/generated/phase6z6k8ap16du9ia_compact_hcover_batch_source.json --report scripts/generated/phase6z6k8ap16du9ia_compact_hcover_batch_generation.json --root-lean Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9IABatchSmoke.lean --root-namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IABatchSmoke
```

Emit command, only after accepting the dry-run report:

```bash
python3 scripts/generate_ap16dj_compact_walsh_batch.py --emit --plan scripts/generated/phase6z6k8ap16du9ia_compact_hcover_batch_plan.json --source scripts/generated/phase6z6k8ap16du9ia_compact_hcover_batch_source.json --report scripts/generated/phase6z6k8ap16du9ia_compact_hcover_batch_generation.json --root-lean Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9IABatchSmoke.lean --root-namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IABatchSmoke
```

Build policy after emission: run focused targets serially through the
AP16DI memory guard.  Do not attach the emitted files to a broad root
until per-target RSS is recorded.
