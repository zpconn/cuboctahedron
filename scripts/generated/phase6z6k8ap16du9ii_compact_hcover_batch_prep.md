# Phase 6Z.6K.8AP.16DU.9II Compact Hcover Batch Prep

This report is planning telemetry, not proof evidence.

- Plan: `scripts/generated/phase6z6k8ap16du9ii_compact_hcover_batch_plan.json`
- Source: `scripts/generated/phase6z6k8ap16du9ii_compact_hcover_batch_source.json`
- Generation report: `scripts/generated/phase6z6k8ap16du9ii_compact_hcover_batch_generation.json`
- Root Lean: `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9IIBatchSmoke.lean`
- Root namespace: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IIBatchSmoke`
- Ranks: `[384, 387, 389, 413, 444, 447]`

| Rank | Anchor mask | Good masks | Selected subcubes | Selected word impacts |
| ---: | ---: | ---: | ---: | --- |
| 384 | 7 | 8 | 15 | `[0, 1, 3, 5, 6, 8, 9]` |
| 387 | 8 | 11 | 16 | `[0, 1, 3, 5, 6, 8, 11]` |
| 389 | 7 | 13 | 13 | `[0, 1, 3, 5, 6, 8, 10]` |
| 413 | 5 | 7 | 19 | `[0, 1, 3, 5, 6, 7, 8]` |
| 444 | 7 | 11 | 17 | `[0, 1, 3, 5, 6, 7, 9]` |
| 447 | 13 | 7 | 18 | `[0, 1, 3, 5, 6, 7, 11]` |

Dry-run command:

```bash
python3 scripts/generate_ap16dj_compact_walsh_batch.py --plan scripts/generated/phase6z6k8ap16du9ii_compact_hcover_batch_plan.json --source scripts/generated/phase6z6k8ap16du9ii_compact_hcover_batch_source.json --report scripts/generated/phase6z6k8ap16du9ii_compact_hcover_batch_generation.json --root-lean Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9IIBatchSmoke.lean --root-namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IIBatchSmoke
```

Emit command, only after accepting the dry-run report:

```bash
python3 scripts/generate_ap16dj_compact_walsh_batch.py --emit --plan scripts/generated/phase6z6k8ap16du9ii_compact_hcover_batch_plan.json --source scripts/generated/phase6z6k8ap16du9ii_compact_hcover_batch_source.json --report scripts/generated/phase6z6k8ap16du9ii_compact_hcover_batch_generation.json --root-lean Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9IIBatchSmoke.lean --root-namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9IIBatchSmoke
```

Build policy after emission: run focused targets serially through the
AP16DI memory guard.  Do not attach the emitted files to a broad root
until per-target RSS is recorded.
