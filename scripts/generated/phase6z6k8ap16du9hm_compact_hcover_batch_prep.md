# Phase 6Z.6K.8AP.16DU.9HM Compact Hcover Batch Prep

This report is planning telemetry, not proof evidence.

- Plan: `scripts/generated/phase6z6k8ap16du9hm_compact_hcover_batch_plan.json`
- Source: `scripts/generated/phase6z6k8ap16du9hm_compact_hcover_batch_source.json`
- Generation report: `scripts/generated/phase6z6k8ap16du9hm_compact_hcover_batch_generation.json`
- Root Lean: `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9HMBatchSmoke.lean`
- Root namespace: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9HMBatchSmoke`
- Ranks: `[87, 89, 120, 122, 123, 125]`

| Rank | Anchor mask | Good masks | Selected subcubes | Selected word impacts |
| ---: | ---: | ---: | ---: | --- |
| 87 | 8 | 13 | 16 | `[0, 1, 3, 5, 7, 9, 10]` |
| 89 | 8 | 16 | 17 | `[0, 1, 3, 5, 7, 9, 11]` |
| 120 | 8 | 13 | 21 | `[0, 1, 3, 5, 6, 9, 11]` |
| 122 | 8 | 8 | 24 | `[0, 1, 3, 5, 6, 9, 10]` |
| 123 | 8 | 8 | 20 | `[0, 1, 3, 5, 6, 9, 10]` |
| 125 | 8 | 13 | 21 | `[0, 1, 3, 5, 6, 9, 11]` |

Dry-run command:

```bash
python3 scripts/generate_ap16dj_compact_walsh_batch.py --plan scripts/generated/phase6z6k8ap16du9hm_compact_hcover_batch_plan.json --source scripts/generated/phase6z6k8ap16du9hm_compact_hcover_batch_source.json --report scripts/generated/phase6z6k8ap16du9hm_compact_hcover_batch_generation.json --root-lean Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9HMBatchSmoke.lean --root-namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9HMBatchSmoke
```

Emit command, only after accepting the dry-run report:

```bash
python3 scripts/generate_ap16dj_compact_walsh_batch.py --emit --plan scripts/generated/phase6z6k8ap16du9hm_compact_hcover_batch_plan.json --source scripts/generated/phase6z6k8ap16du9hm_compact_hcover_batch_source.json --report scripts/generated/phase6z6k8ap16du9hm_compact_hcover_batch_generation.json --root-lean Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9HMBatchSmoke.lean --root-namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9HMBatchSmoke
```

Build policy after emission: run focused targets serially through the
AP16DI memory guard.  Do not attach the emitted files to a broad root
until per-target RSS is recorded.
