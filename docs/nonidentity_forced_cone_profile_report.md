# Nonidentity Forced-Axis Empty-Cone Profile Report

This report records the combined nonidentity profiler:

```text
scripts/nonidentity_forced_cone_profile.py
```

The profiler is untrusted diagnostic code.  It asks a narrower question than
the signed-prefix empty-cone profiler:

> Once the nonidentity forced-axis filter has selected the only possible signed
> lift for a pair word, do the resulting forced unfolded normals already have an
> empty cone?

All arithmetic is exact `Fraction`/integer arithmetic.  There are no floating
point tolerances.

## Calibration Run

Command:

```bash
/usr/bin/time -v python3 scripts/nonidentity_forced_cone_profile.py \
  --start 0 --end 100000 \
  --jobs 4 \
  --chunk-size 25000 \
  --min-check-depth 2 \
  --max-support 4 \
  --top 30 \
  --sample-limit 8 \
  --json scripts/generated/nonidentity_forced_cone_profile_000000000_000100000.json \
  --markdown scripts/generated/nonidentity_forced_cone_profile_000000000_000100000.md
```

Telemetry:

| range | jobs | elapsed | max RSS |
| --- | ---: | ---: | ---: |
| `[0,100000)` | 4 | 2:53.82 | 24,796 kB |

Counts:

| metric | count |
| --- | ---: |
| `shadow_identity` | 5,565 |
| `shadow_nonidentity` | 94,435 |
| `final_axis_reject` | 6,241 |
| `forced_zero_denominator` | 54,794 |
| `bad_pair_balance` | 24,364 |
| `forced_balance_survivors` | 9,036 |
| `cone_killed` | 0 |
| `cone_survivors` | 9,036 |

Terminal failures after the cone survivors are exactly the same terminal
residual split seen by the residual-axis profiler:

| terminal failure | count |
| --- | ---: |
| `axis_misses_start_interior` | 8,775 |
| `first_hit_mismatch` | 251 |
| `hit_tie` | 10 |

## Interpretation

The signed-prefix empty-cone obstruction is real for arbitrary signed prefixes,
but it is not a residual reducer after the forced-axis sign filter.  On the
first 100k ranks, every forced-balance survivor also survives the empty-cone
test.

This is mathematically plausible: once a nonidentity word has a valid forced
axis orientation and strict signs for every crossing, that axis itself is a
witness direction satisfying the prefix cone inequalities.  Empty-cone pruning
is therefore mostly a front-end bad-direction obstruction, while the existing
forced-axis filter already removes those cases more directly in the
nonidentity branch.

## Decision

Rejected as the next residual proof-compression route:

- Do not spend further near-term effort trying to make signed-prefix
  empty-cone/Gordan certificates cover the forced-axis residual branch.
- Keep the profiler as evidence and as a possible front-end tool for other
  branches, but not as the production nonidentity residual layer.

Next nonidentity work should instead focus on:

1. cheaper integer/projective versions of the local axis-start, first-hit, and
   hit-tie theorem surfaces;
2. stronger quotienting of residual survivors by reduced shadow, primitive
   axis, solve shape, and canonical bad-face/source signature;
3. proving semantic families that avoid replaying full Rat-heavy local
   certificates.

## Artifacts

- `scripts/nonidentity_forced_cone_profile.py`
- `scripts/generated/nonidentity_forced_cone_profile_000000000_000100000.json`
- `scripts/generated/nonidentity_forced_cone_profile_000000000_000100000.md`
