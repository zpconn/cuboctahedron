# Phase 6Z.6K.8AP.16DU.9IJ Compact Hcover Batch Prep

This report is planning telemetry, not proof evidence.

- Plan: `scripts/generated/phase6z6k8ap16du9ij_compact_hcover_batch_plan.json`
- Source: `scripts/generated/phase6z6k8ap16du9ij_compact_hcover_batch_source.json`
- Generation report: `scripts/generated/phase6z6k8ap16du9ij_compact_hcover_batch_generation.json`
- Root Lean: `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9IJBatchSmoke.lean`
- Root namespace: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IJBatchSmoke`
- Ranks: `[449, 498, 501, 503]`

| Rank | Anchor mask | Good masks | Selected subcubes | Selected word impacts |
| ---: | ---: | ---: | ---: | --- |
| 449 | 7 | 8 | 17 | `[0, 1, 3, 5, 6, 7, 10]` |
| 498 | 0 | 11 | 16 | `[0, 1, 3, 5, 6, 7, 9]` |
| 501 | 8 | 7 | 18 | `[0, 1, 3, 5, 6, 7, 11]` |
| 503 | 7 | 8 | 15 | `[0, 1, 3, 5, 6, 7, 10]` |

Dry-run command:

```bash
python3 scripts/generate_ap16dj_compact_walsh_batch.py --plan scripts/generated/phase6z6k8ap16du9ij_compact_hcover_batch_plan.json --source scripts/generated/phase6z6k8ap16du9ij_compact_hcover_batch_source.json --report scripts/generated/phase6z6k8ap16du9ij_compact_hcover_batch_generation.json --root-lean Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9IJBatchSmoke.lean --root-namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IJBatchSmoke
```

Emit command, only after accepting the dry-run report:

```bash
python3 scripts/generate_ap16dj_compact_walsh_batch.py --emit --plan scripts/generated/phase6z6k8ap16du9ij_compact_hcover_batch_plan.json --source scripts/generated/phase6z6k8ap16du9ij_compact_hcover_batch_source.json --report scripts/generated/phase6z6k8ap16du9ij_compact_hcover_batch_generation.json --root-lean Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9IJBatchSmoke.lean --root-namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IJBatchSmoke
```

Build policy after emission: run focused targets serially through the
AP16DI memory guard.  Do not attach the emitted files to a broad root
until per-target RSS is recorded.
