# Phase 6Z.6K.8AP.16BX Walsh Symbolic Coefficient Smoke

Status: accepted as a bounded Lean smoke.

## Purpose

AP16BX checks one concrete AP16BS denominator at the coefficient level without
replaying the heavy rank/mask denominator computation. The smoke uses:

- rank `100805`;
- impact `1`;
- the externally computed affine pre-impact normal;
- the externally computed affine translation vector;
- the AP16BS `WalshQuadratic` coefficient record for that denominator.

Lean forms the dot product via the AP16BW symbolic vector algebra and proves
that the resulting quadratic coefficient record is exactly the expected one.
It does **not** unfold `impactDenomAtRank`, `totalAff`, or
`translationChoiceSeq`.

## Guarded Build

```text
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 7000 \
  --min-available-mib 12000 \
  --poll-seconds 0.5 \
  --json /tmp/cuboctahedron_ap16bx_walsh_symbolic_smoke_guard.json \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 180s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolicSmoke'
```

Result:

```text
passed
elapsed: 3.00s
peak tree RSS: 3986 MiB
minimum available memory: 46231 MiB
```

## Decision

AP16BX is accepted. It proves the symbolic vector/dot route can check a
rank/impact denominator coefficient record without the AP16BT six-bit replay
shape.

The next step is to generalize this into a small generator for all selected
AP16BS impacts, emitting affine normal/vector coefficient records and expected
`WalshQuadratic` records, with the same symbolic-dot proof pattern.
