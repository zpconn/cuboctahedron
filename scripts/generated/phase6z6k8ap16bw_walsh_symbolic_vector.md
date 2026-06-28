# Phase 6Z.6K.8AP.16BW Walsh Symbolic Vector/Dot Algebra

Status: accepted as a small, memory-guarded theorem surface.

## Purpose

AP16BV proved symbolic multiplication for affine Walsh forms. AP16BW extends
that surface with the vector-level operations needed by a denominator
coefficient bridge:

- `WalshQuadratic.add`
- `WalshQuadratic.add_coeffEval`
- `WalshAffineVec3`
- `WalshAffineVec3.eval`
- `WalshAffineVec3.dot`
- `WalshAffineVec3.dot_coeffEval`

The dot theorem composes the AP16BV affine multiplication theorem and the new
quadratic-addition theorem. It avoids unfolding `totalAff`,
`translationChoiceSeq`, or `impactDenomAtRank`.

## Guarded Build

```text
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 7000 \
  --min-available-mib 12000 \
  --poll-seconds 0.5 \
  --json /tmp/cuboctahedron_ap16bw_walsh_symbolic_vector_guard.json \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 180s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshSymbolic'
```

Result:

```text
passed
elapsed: 12.02s
peak tree RSS: 4375 MiB
minimum available memory: 45788 MiB
```

## Decision

AP16BW is accepted. The symbolic vector/dot algebra is small enough to keep in
the trusted hand-written support layer.

The next AP16 step should generate or hand-write a coefficient-check smoke for
one rank/impact that constructs symbolic affine vectors and proves equality to
the AP16BS `WalshQuadratic` coefficients, still without branching over all
masks or unfolding the full translation geometry under those branches.
