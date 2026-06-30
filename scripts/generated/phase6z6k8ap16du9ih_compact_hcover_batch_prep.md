# Phase 6Z.6K.8AP.16DU.9IH Compact Hcover Batch Prep

This report is planning telemetry, not proof evidence.

- Plan: `scripts/generated/phase6z6k8ap16du9ih_compact_hcover_batch_plan.json`
- Source: `scripts/generated/phase6z6k8ap16du9ih_compact_hcover_batch_source.json`
- Generation report: `scripts/generated/phase6z6k8ap16du9ih_compact_hcover_batch_generation.json`
- Root Lean: `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9IHBatchSmoke.lean`
- Root namespace: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IHBatchSmoke`
- Ranks: `[323, 357, 360, 362, 363, 365, 369, 371, 377]`

| Rank | Anchor mask | Good masks | Selected subcubes | Selected word impacts |
| ---: | ---: | ---: | ---: | --- |
| 323 | 7 | 11 | 17 | `[0, 1, 3, 5, 6, 7, 9]` |
| 357 | 7 | 7 | 17 | `[0, 1, 3, 5, 6, 7, 8]` |
| 360 | 9 | 13 | 19 | `[0, 1, 3, 5, 6, 9, 11]` |
| 362 | 16 | 8 | 20 | `[0, 1, 5, 6, 9, 10]` |
| 363 | 8 | 8 | 21 | `[0, 1, 3, 5, 6, 9, 10]` |
| 365 | 9 | 13 | 19 | `[0, 1, 3, 5, 6, 9, 11]` |
| 369 | 9 | 11 | 22 | `[0, 1, 3, 5, 6, 8, 11]` |
| 371 | 7 | 13 | 13 | `[0, 1, 3, 5, 6, 8, 10]` |
| 377 | 7 | 8 | 16 | `[0, 1, 3, 5, 6, 8, 9]` |

Dry-run command:

```bash
python3 scripts/generate_ap16dj_compact_walsh_batch.py --plan scripts/generated/phase6z6k8ap16du9ih_compact_hcover_batch_plan.json --source scripts/generated/phase6z6k8ap16du9ih_compact_hcover_batch_source.json --report scripts/generated/phase6z6k8ap16du9ih_compact_hcover_batch_generation.json --root-lean Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9IHBatchSmoke.lean --root-namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IHBatchSmoke
```

Emit command, only after accepting the dry-run report:

```bash
python3 scripts/generate_ap16dj_compact_walsh_batch.py --emit --plan scripts/generated/phase6z6k8ap16du9ih_compact_hcover_batch_plan.json --source scripts/generated/phase6z6k8ap16du9ih_compact_hcover_batch_source.json --report scripts/generated/phase6z6k8ap16du9ih_compact_hcover_batch_generation.json --root-lean Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9IHBatchSmoke.lean --root-namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IHBatchSmoke
```

Build policy after emission: run focused targets serially through the
AP16DI memory guard.  Do not attach the emitted files to a broad root
until per-target RSS is recorded.
