# Signed Prefix Empty-Cone Profile Report

This report tracks the first exact profiler for signed-state empty-cone/Gordan
prefix pruning.

The profiler is:

```text
scripts/signed_prefix_empty_cone_profile.py
```

It is not trusted proof.  It is an exact arithmetic diagnostic used to decide
whether a production Lean proof should formalize signed-prefix Gordan
certificates before trying to scale nontranslation residual axis certificates.

## Mathematical Check

For a signed started itinerary prefix, any unfolded straight-line witness has a
direction `v` satisfying strict inequalities

```text
n_i · v > 0
```

for the active unfolded crossing normals `n_i`.  The profiler searches for a
small Gordan certificate: nonnegative integer weights, not all zero, such that

```text
sum_i q_i n_i = 0.
```

Such a certificate contradicts strict positivity after multiplying and summing.
The current profiler searches supports of size at most `4`, enough to catch the
small positive dependencies expected in three-dimensional cone checks.

The active normals include:

- the starting inward condition from `X+`, represented by `(-1,0,0)`;
- each copied/unfolded normal for the signed prefix faces;
- at full depth, the final return-to-`X+` normal.

All arithmetic is exact `Fraction`/integer arithmetic.  There are no floating
point tolerances.

## Calibration Runs

| max depth | jobs | split depth | nodes visited | pruned nodes | killed signed completions | killed fraction | frontier completions | elapsed | max RSS |
| ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| 4 | 1 | 0 | 16,682 | 2,896 | 1,823,109,120 | 628/2145 | 4,403,911,680 | 3.93s | 19,200 kB |
| 5 | 4 | 1 | 125,905 | 27,560 | 2,817,561,600 | 1747/3861 | 3,409,459,200 | 17.17s | 19,392 kB |
| 6 | 8 | 2 | 802,372 | 199,848 | 3,685,893,120 | 293/495 | 2,541,127,680 | 1:32.20 | 23,808 kB |
| 7 clustered | 8 | 2 | 4,331,716 | 1,161,608 | 4,378,360,320 | 190033/270270 | 1,848,660,480 | 14:17.21 | 674,452 kB |

The depth-6 run was CPU-bound and memory-light.  Eight workers were safe on the
current machine: peak RSS stayed below 24 MiB for the timed process tree, with
no swap pressure.

The depth-7 clustered run was still memory-safe, but much more expensive.  The
RSS rose to about `674 MiB` because it stored capped frontier-cluster tables,
which is still comfortably below the machine limit.  It killed about `70%` of
the signed space, but both frontier coordinates overflowed a `50,000` distinct
key cap:

| frontier coordinate | exact? | stored keys | overflow signed completions |
| --- | --- | ---: | ---: |
| `frontier_holonomy_keys` | false | 50,000 | 963,456,480 |
| `frontier_cone_keys` | false | 50,000 | 1,726,660,800 |

## Interpretation

Accepted:

- Empty-cone/Gordan pruning is a real exact obstruction in this problem.
- It is cheap to profile and safe to parallelize.
- The discovered certificates are small: support sizes are `2`, `3`, and `4`,
  with many repeated integer weight patterns.

Not enough yet:

- By depth `6`, the profiler kills about `59%` of the signed itinerary space.
  This is useful, but not close enough to serve as the production
  nontranslation proof coordinate by itself.
- By depth `7`, the profiler kills about `70%`, but the surviving frontier
  still fragments beyond the current 50k cap even under coarse holonomy and
  stricter cone-state keys.
- The remaining frontier is still about `1.85B` signed completions, so this
  route needs either stronger certificates, better quotienting, or a hybrid
  with forced-axis/reduced-shadow residual filters.

Decision:

- Promote signed-state empty-cone/Gordan pruning as the next nontranslation
  compression line only as a front-end filter.
- Do not emit Lean leaves yet: the depth-7 frontier clustering shows this is
  not by itself a low-thousands family coordinate.
- Next work should combine cone pruning with the forced-axis/reduced-shadow
  classifiers already available, and profile whether the post-cone frontier
  collapses once nontranslation holonomy signatures are used.

## Artifacts

- `scripts/signed_prefix_empty_cone_profile.py`
- `scripts/generated/signed_prefix_empty_cone_depth04.json`
- `scripts/generated/signed_prefix_empty_cone_depth04.md`
- `scripts/generated/signed_prefix_empty_cone_depth05.json`
- `scripts/generated/signed_prefix_empty_cone_depth05.md`
- `scripts/generated/signed_prefix_empty_cone_depth06.json`
- `scripts/generated/signed_prefix_empty_cone_depth06.md`
- `scripts/generated/signed_prefix_empty_cone_depth04_clustered.json`
- `scripts/generated/signed_prefix_empty_cone_depth04_clustered.md`
- `scripts/generated/signed_prefix_empty_cone_depth07_clustered.json`
- `scripts/generated/signed_prefix_empty_cone_depth07_clustered.md`
