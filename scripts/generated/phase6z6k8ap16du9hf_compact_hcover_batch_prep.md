# Phase 6Z.6K.8AP.16DU.9HF Compact Hcover Batch Prep

This report is planning telemetry, not proof evidence.

- Plan: `scripts/generated/phase6z6k8ap16du9hf_compact_hcover_batch_plan.json`
- Source: `scripts/generated/phase6z6k8ap16du9hf_compact_hcover_batch_source.json`
- Generation report: `scripts/generated/phase6z6k8ap16du9hf_compact_hcover_batch_generation.json`
- Root Lean: `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9HFBatchSmoke.lean`
- Root namespace: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9HFBatchSmoke`
- Ranks: `[65, 72, 78, 80, 84, 86]`

| Rank | Anchor mask | Good masks | Selected subcubes | Selected word impacts |
| ---: | ---: | ---: | ---: | --- |
| 65 | 0 | 7 | 21 | `[0, 1, 3, 5, 7, 8, 9]` |
| 72 | 0 | 7 | 22 | `[0, 1, 3, 5, 7, 8, 9]` |
| 78 | 0 | 11 | 22 | `[0, 1, 3, 5, 7, 8, 10]` |
| 80 | 8 | 13 | 21 | `[0, 1, 3, 5, 7, 8, 11]` |
| 84 | 8 | 16 | 17 | `[0, 1, 3, 5, 7, 9, 11]` |
| 86 | 9 | 13 | 16 | `[0, 1, 3, 5, 7, 9, 10]` |

Dry-run command:

```bash
python3 scripts/generate_ap16dj_compact_walsh_batch.py --plan scripts/generated/phase6z6k8ap16du9hf_compact_hcover_batch_plan.json --source scripts/generated/phase6z6k8ap16du9hf_compact_hcover_batch_source.json --report scripts/generated/phase6z6k8ap16du9hf_compact_hcover_batch_generation.json --root-lean Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9HFBatchSmoke.lean --root-namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9HFBatchSmoke
```

Emit command, only after accepting the dry-run report:

```bash
python3 scripts/generate_ap16dj_compact_walsh_batch.py --emit --plan scripts/generated/phase6z6k8ap16du9hf_compact_hcover_batch_plan.json --source scripts/generated/phase6z6k8ap16du9hf_compact_hcover_batch_source.json --report scripts/generated/phase6z6k8ap16du9hf_compact_hcover_batch_generation.json --root-lean Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9HFBatchSmoke.lean --root-namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9HFBatchSmoke
```

Build policy after emission: run focused targets serially through the
AP16DI memory guard.  Do not attach the emitted files to a broad root
until per-target RSS is recorded.
