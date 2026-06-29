# DU.9P Rank Slice Prep

This report is planning telemetry, not proof evidence.

- Rank: `2`
- Input profile: `scripts/generated/phase6z6k8ap16du9p_rank2_walsh_subcube_cover.json`
- Plan: `scripts/generated/phase6z6k8ap16du9p_rank2_compact_walsh_batch_plan.json`
- Source: `scripts/generated/phase6z6k8ap16du9p_rank2_compact_walsh_batch_source.json`
- Root Lean: `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9PRank2BatchSmoke.lean`
- Root namespace: `Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9PRank2BatchSmoke`
- Selected subcubes: `21`
- Selected word impacts: `[0, 1, 3, 5, 7, 9, 10]`
- Planned serial Lean targets including AP16DJ root: `11`

Next command:

```bash
python3 scripts/generate_ap16dj_compact_walsh_batch.py --emit --plan scripts/generated/phase6z6k8ap16du9p_rank2_compact_walsh_batch_plan.json --source scripts/generated/phase6z6k8ap16du9p_rank2_compact_walsh_batch_source.json --report scripts/generated/phase6z6k8ap16du9p_rank2_compact_walsh_batch_generation.json --root-lean Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshSymbolicCompactDenomDU9PRank2BatchSmoke.lean --root-namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicCompactDenomDU9PRank2BatchSmoke
```

Build policy after emission: run focused targets serially through
`scripts/run_memory_guarded.py`; do not run broad `lake build`.
