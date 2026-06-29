# Phase 6Z.6K.8AP.16DP sparse coverage core

Status: accepted as a tiny memory-safe API step.

AP16DO proved five singleton all-Good coverage theorems, but those five ranks
are sparse:

```text
6000480
6000625
6000662
6000720
6000745
```

They cannot honestly be composed with `CoversInterval.concat` into one
contiguous interval without proving all ranks in the gaps.  AP16DP therefore
adds an isolated sparse Prop-level coverage helper:

```text
Cuboctahedron/Generated/Coverage/Sparse.lean
```

It defines:

```lean
def CoversRanks (P : Nat -> Prop) (ranks : List Nat) : Prop
theorem CoversRanks.nil
theorem CoversRanks.single
theorem CoversRanks.cons
theorem CoversRanks.append
theorem CoversRanks.mono
```

The helper is intentionally separate from `Coverage.Interval.lean` so this
smoke-only sparse API does not invalidate interval-based generated coverage
dependencies.

Validation:

```text
export LEAN_NUM_THREADS=1
export LAKE_JOBS=1
lake build Cuboctahedron.Generated.Coverage.Sparse
```

Result:

```text
passed
elapsed: 2.07s
Lean target build time reported by Lake: 165ms
```

Decision: accepted as a safe base for the next AP16DQ sparse five-rank root.
The root itself must still be guarded separately, because importing all five
AP16DO singleton leaves may pull in rank-local candidate-facts dependencies.
