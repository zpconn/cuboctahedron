# Phase 6Z.6K.8AP.16BV Walsh Symbolic Algebra

Status: accepted as a small, memory-guarded theorem surface.

## Purpose

AP16BT showed that generated six-bit tactic simplification over the full
translation geometry still has the old replay memory shape. AP16BU introduced
a fixed `WalshQuadratic` coefficient surface. AP16BV adds the next reusable
algebra layer:

- `WalshAffine`
- `WalshAffine.eval`
- `WalshQuadratic.coeffEval`
- `WalshAffine.mul`
- `WalshAffine.mul_coeffEval`

The key theorem proves that multiplying two affine Walsh forms produces a
quadratic coefficient record whose coefficient evaluator agrees with pointwise
masked multiplication.

## Guarded Build

```text
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 7000 \
  --min-available-mib 12000 \
  --poll-seconds 0.5 \
  --json /tmp/cuboctahedron_ap16bv_walsh_symbolic_guard.json \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 180s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolic'
```

Result:

```text
passed
elapsed: 16.02s
peak tree RSS: 4337 MiB
minimum available memory: 45689 MiB
```

## Decision

AP16BV is accepted. This does not prove generated translation coverage, but it
does prove that the generic affine-times-affine symbolic algebra needed by the
Walsh-denominator bridge can be checked under the memory budget.

The next proof-producing step is to add symbolic vector/dot-product
combinators and a generated rank-100805 coefficient-check smoke that compares
computed denominator coefficients to the AP16BS `WalshQuadratic` data without
unfolding `totalAff` under mask branches.
