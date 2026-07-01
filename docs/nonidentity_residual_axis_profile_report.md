# Nonidentity Residual Axis Profile Report

This report tracks the first exact external clustering of nontranslation cases
that survive the forced-axis sign filter.

The profiler is:

```text
scripts/nonidentity_residual_axis_profile.py
```

It is not trusted proof.  It is an exact arithmetic diagnostic used to decide
whether terminal nonidentity affine-axis failures are compact enough to become
semantic Lean families.

## Convention

The product order matches the shadow normal-form classifier:

```text
R(w[0]) * R(w[1]) * ... * R(w[12]) * R(x)
```

The profiler:

1. classifies translation/nontranslation using the Lean-checked reduced-shadow
   coordinate;
2. recomputes the exact linear matrix as a diagnostic;
3. applies the exact forced-axis sign filter;
4. for forced-balance survivors, runs the exact terminal affine-axis
   candidate classifier;
5. records capped family keys for terminal failure shapes.

All arithmetic is exact `Fraction`/integer arithmetic.  There are no floating
point tolerances.

## Calibration Runs

| range | jobs | scanned | nonidentity | mismatches | forced zero | bad balance | residual survivors | terminal failures | exact keys | template keys | residual signatures | elapsed | max RSS |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | --- | ---: | ---: | ---: | ---: | ---: |
| `[0,100)` | 1 | 100 | 70 | 0 | 52 | 0 | 6 | start-interior: 6 | 4 | 2 | 6 | 0.022s | n/a |
| `[0,10000)` | 4 | 10,000 | 9,288 | 0 | 5,601 | 2,078 | 1,014 | start-interior: 966; first-hit: 48 | 342 | 11 | 862 | 1.126s | 24,680 kB |
| `[0,100000)` | 4 | 100,000 | 94,435 | 0 | 54,794 | 24,364 | 9,036 | start-interior: 8,775; first-hit: 251; tie: 10 | 1,663 | 32 | 6,330 | 8.516s | 28,192 kB |
| `[10000000,10100000)` | 4 | 100,000 | 96,722 | 0 | 57,652 | 26,682 | 4,143 | start-interior: 3,952; first-hit: 187; tie: 4 | 972 | 37 | 3,258 | 8.937s | 26,280 kB |
| `[30000000,30100000)` | 4 | 100,000 | 98,072 | 0 | 62,683 | 23,857 | 961 | start-interior: 922; first-hit: 39 | 714 | 13 | 646 | 7.326s | 24,736 kB |
| `[60000000,60100000)` | 4 | 100,000 | 98,580 | 0 | 73,573 | 19,573 | 1,471 | start-interior: 1,444; first-hit: 27 | 629 | 10 | 680 | 7.020s | 24,736 kB |
| `[90000000,90100000)` | 4 | 100,000 | 98,971 | 0 | 52,135 | 36,342 | 2,251 | start-interior: 2,200; first-hit: 44; tie: 7 | 779 | 9 | 970 | 7.934s | 24,736 kB |

The residual terminal failures are highly concentrated by reason:

- most survivors fail because the exact affine-axis start point is outside the
  relative interior of `X+`;
- a smaller bucket fails because the first actual hit is not the prescribed
  next face;
- a rare bucket ties on an edge or vertex.

There are two different key granularities:

- exact terminal-family keys include proof-local numeric margins and still
  fragment too much for direct Lean emission;
- coarse terminal-template keys erase those exact margins and retain only the
  semantic theorem shape, such as the canonical bad face or first-hit relation.

The first 100k ranks produce `1,663` exact terminal-family keys and `6,330`
residual signatures from `9,036` residual survivors, so exact-margin keys are
not viable as final generated leaves.  The same window has only `32` coarse
terminal-template keys, and the disjoint 100k windows have between `9` and
`37`.  This suggests a promising split: prove a small collection of generic
terminal-template theorems in Lean, while local generated evidence supplies
only the small numeric inequalities needed to instantiate those templates.

## Artifacts

- `scripts/nonidentity_residual_axis_profile.py`
- `scripts/generated/nonidentity_residual_axis_profile_000000000_000000100.json`
- `scripts/generated/nonidentity_residual_axis_profile_000000000_000000100.md`
- `scripts/generated/nonidentity_residual_axis_profile_000000000_000010000.json`
- `scripts/generated/nonidentity_residual_axis_profile_000000000_000010000.md`
- `scripts/generated/nonidentity_residual_axis_profile_000000000_000100000.json`
- `scripts/generated/nonidentity_residual_axis_profile_000000000_000100000.md`
- `scripts/generated/nonidentity_residual_axis_profile_010000000_010100000.json`
- `scripts/generated/nonidentity_residual_axis_profile_010000000_010100000.md`
- `scripts/generated/nonidentity_residual_axis_profile_030000000_030100000.json`
- `scripts/generated/nonidentity_residual_axis_profile_030000000_030100000.md`
- `scripts/generated/nonidentity_residual_axis_profile_060000000_060100000.json`
- `scripts/generated/nonidentity_residual_axis_profile_060000000_060100000.md`
- `scripts/generated/nonidentity_residual_axis_profile_090000000_090100000.json`
- `scripts/generated/nonidentity_residual_axis_profile_090000000_090100000.md`

## Decision

Accepted:

- The residual-axis profiler is memory-safe and fast enough for bounded
  parallel diagnostic windows.
- The terminal failure taxonomy is useful: start-interior misses dominate,
  with first-hit mismatches and hit ties as smaller terminal shapes.

Rejected for direct Lean emission:

- The current terminal-family key is not compressed enough.  It remains a
  diagnostic coordinate, not a final generated theorem coordinate.

Next nontranslation work:

1. Build a Lean theorem layer for the coarse terminal-template shapes:
   start-interior separation, first-hit mismatch, and hit tie/nonsingularity.
2. Design a local certificate format that instantiates those templates without
   exposing exact margins in public theorem statements.
2. Keep the forced-axis sign filter as a cheap front-end filter.
3. Use signed-state empty-cone/Gordan prefix pruning as the next fallback if
   local template certificates still produce too many generated leaves.
4. Do not generate terminal residual Lean leaves until the planned semantic
   family count is below the low-thousands gate.
