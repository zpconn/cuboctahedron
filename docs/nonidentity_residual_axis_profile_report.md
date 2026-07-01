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

| range | jobs | scanned | nonidentity | mismatches | forced zero | bad balance | residual survivors | terminal failures | exact keys | template keys | cert-template keys | residual signatures | elapsed | max RSS |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | --- | ---: | ---: | ---: | ---: | ---: | ---: |
| `[0,100)` | 1 | 100 | 70 | 0 | 52 | 0 | 6 | start-interior: 6 | 4 | 2 | 2 | 6 | 0.022s | n/a |
| `[0,10000)` | 4 | 10,000 | 9,288 | 0 | 5,601 | 2,078 | 1,014 | start-interior: 966; first-hit: 48 | 342 | 11 | 11 | 862 | 1.126s | 24,680 kB |
| `[0,100000)` | 4 | 100,000 | 94,435 | 0 | 54,794 | 24,364 | 9,036 | start-interior: 8,775; first-hit: 251; tie: 10 | 1,663 | 32 | 32 | 6,330 | 8.592s | 28,192 kB |
| `[10000000,10100000)` | 4 | 100,000 | 96,722 | 0 | 57,652 | 26,682 | 4,143 | start-interior: 3,952; first-hit: 187; tie: 4 | 972 | 37 | 37 | 3,258 | 8.972s | 26,280 kB |
| `[30000000,30100000)` | 4 | 100,000 | 98,072 | 0 | 62,683 | 23,857 | 961 | start-interior: 922; first-hit: 39 | 714 | 13 | 13 | 646 | 7.272s | 24,736 kB |
| `[60000000,60100000)` | 4 | 100,000 | 98,580 | 0 | 73,573 | 19,573 | 1,471 | start-interior: 1,444; first-hit: 27 | 629 | 10 | 10 | 680 | 7.078s | 24,736 kB |
| `[90000000,90100000)` | 4 | 100,000 | 98,971 | 0 | 52,135 | 36,342 | 2,251 | start-interior: 2,200; first-hit: 44; tie: 7 | 779 | 9 | 9 | 970 | 7.934s | 24,736 kB |

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

The current profiler also maps each terminal failure to the hand-written
Lean local-certificate surface in
`Cuboctahedron/Search/TerminalNonidentityTemplates.lean`:

| range | `AxisStartViolationCert` | `OpenSegmentViolationCert` | `PreImpactPointViolationCert` | cert-template keys |
| --- | ---: | ---: | ---: | ---: |
| `[0,100)` | 6 | 0 | 0 | 2 |
| `[0,10000)` | 966 | 48 | 0 | 11 |
| `[0,100000)` | 8,775 | 251 | 10 | 32 |
| `[10000000,10100000)` | 3,952 | 187 | 4 | 37 |
| `[30000000,30100000)` | 922 | 39 | 0 | 13 |
| `[60000000,60100000)` | 1,444 | 27 | 0 | 10 |
| `[90000000,90100000)` | 2,200 | 44 | 7 | 9 |

This is a useful checkpoint: every observed terminal bucket now lands on one
of the semantic certificate structures already available in Lean.  The
certificate-template key count matches the coarse terminal-template key count
on these windows because the certificate kind is determined by the terminal
failure kind.  It is still not final generated coverage; the remaining work is
to estimate and then emit reusable local fact leaves without falling back to
ordinary `NonIdCert` replay or exact-margin singleton families.

The first 100k ranks produce `1,663` exact terminal-family keys and `6,330`
residual signatures from `9,036` residual survivors, so exact-margin keys are
not viable as final generated leaves.  The same window has only `32` coarse
terminal-template keys, and the disjoint 100k windows have between `9` and
`37`.  This suggests a promising split: prove a small collection of generic
terminal-template theorems in Lean, while local generated evidence supplies
only the small numeric inequalities needed to instantiate those templates.

## Family-Gate Calibration

The profiler now emits a `family_gate` section to make the scaling decision
explicit.  This gate uses the observed `LocalCertSmoke` build as a deliberately
conservative cost model:

```text
target: Cuboctahedron.Generated.NonIdentity.Residual.LocalCertSmoke
elapsed: 45.24s
max RSS: 5,184,428 KiB
```

Calibration command:

```bash
/usr/bin/time -v python3 scripts/nonidentity_residual_axis_profile.py \
  --start 0 --end 100000 \
  --jobs 4 \
  --chunk-size 25000 \
  --max-distinct 20000 \
  --top 30 \
  --sample-limit 10 \
  --include-key-tables \
  --json scripts/generated/nonidentity_residual_family_gate_000000000_000100000.json \
  --markdown scripts/generated/nonidentity_residual_family_gate_000000000_000100000.md
```

Telemetry:

| range | jobs | elapsed | max RSS | residual survivors |
| --- | ---: | ---: | ---: | ---: |
| `[0,100000)` | 4 | 8.51s | 31,188 kB | 9,036 |

Linear full-run projections from the first 100k window:

| coordinate | sample distinct | projected full distinct | projected CPU hours at smoke cost |
| --- | ---: | ---: | ---: |
| `certificate_template_keys` | 32 | 31,135 | 391.26 |
| `terminal_template_keys` | 32 | 31,135 | 391.26 |
| `terminal_by_axis` | 823 | 800,756 | 10,062.83 |
| `terminal_by_reduced_shadow` | 1,471 | 1,431,242 | 17,985.94 |
| `terminal_family_keys` | 1,663 | 1,618,052 | 20,333.52 |
| `residual_signatures` | 6,330 | 6,158,913 | 77,397.01 |

These projections are diagnostics, not proof evidence.  They are still enough
to reject broad local-certificate emission: even the coarse exact template
coordinate is far beyond the 5-6 hour target under the current theorem surface.

Decision from this gate:

- keep the terminal local-certificate files as API/soundness smoke tests;
- do not scale them into production generated evidence;
- promote signed-state empty-cone/Gordan prefix pruning as the next
  nontranslation compression target;
- if local axis certificates are revisited, first replace the Rat-heavy
  theorem surface with a much cheaper integer/projective instantiation.

Follow-up correction:

- The broader signed-prefix empty-cone profiler showed that cone pruning is a
  real front-end obstruction, but the combined forced-axis/cone profiler found
  `0 / 9,036` cone-killed forced-balance survivors on `[0,100000)`.
- Empty-cone/Gordan should therefore not be treated as the residual
  nontranslation cure after the forced-axis filter.  The residual route should
  return to cheaper local-axis-family theorem surfaces and stronger quotienting
  by reduced shadow, primitive axis, solve shape, and terminal source
  signature.

Terminal source quotient checkpoint:

- The profiler now also records diagnostic source-oriented quotients:
  `terminal_source_keys`, `terminal_source_axis_keys`, and
  `terminal_source_reduced_axis_keys`.  These retain solve/source information
  while erasing exact rational margins.
- On `[0,100000)`, the new coordinates are worse than the coarser terminal
  template coordinate:

  | Counter | Sample distinct | Linear projected full distinct | CPU hours at smoke cost |
  | --- | ---: | ---: | ---: |
  | `terminal_template_keys` | 32 | 31,135 | 391.26 |
  | `terminal_source_keys` | 8,540 | 8,309,181 | 104,418.71 |
  | `terminal_source_axis_keys` | 8,709 | 8,473,613 | 106,485.07 |
  | `terminal_source_reduced_axis_keys` | 8,733 | 8,496,964 | 106,778.51 |

- Conclusion: adding solve/source detail fragments the dominant
  `axis_misses_start_interior` bucket rather than compressing it.  These keys
  are useful diagnostics for understanding the failure surface, but they are
  rejected as generated proof coordinates.
- The next nontranslation residual route should not be "more detailed
  local-certificate keys."  It should look for a new algebraic obstruction:
  integer/projective axis-family theorems, class-level holonomy invariants, or
  a still-coarser theorem that explains why the large `yp` start-interior
  bucket fails without replaying each affine solve.

Axis-class quotient checkpoint:

- The profiler now records four coarser start-interior-only coordinates:
  D4-projective axis class, absolute axis pattern, and the same two coordinates
  refined by reduced-shadow length.
- On `[0,100000)`, the run remained memory-safe:

  ```text
  elapsed: 0:08.52
  max RSS: 34,704 KiB
  ```

- These coordinates compress the dominant start-interior bucket much better
  than source/solve-shape keys:

  | Counter | Sample distinct | Linear projected full distinct | CPU hours at smoke cost |
  | --- | ---: | ---: | ---: |
  | `terminal_source_keys` | 8,540 | 8,309,181 | 104,418.71 |
  | `axis_start_d4_axis_keys` | 182 | 177,081 | 2,225.32 |
  | `axis_start_abs_axis_keys` | 182 | 177,081 | 2,225.32 |
  | `axis_start_len_d4_axis_keys` | 184 | 179,027 | 2,249.77 |
  | `axis_start_len_abs_axis_keys` | 184 | 179,027 | 2,249.77 |

- The largest class is
  `axisStart|badFace=yp|axisD4=1,-3,-1`, covering `1,427 / 9,036`
  residual survivors in the window.  The second largest is
  `axisStart|badFace=yp|axisD4=3,-1,-1`, covering `659`.
- Conclusion: D4/absolute axis classes are useful as theorem-design clues, but
  not as one-leaf-per-class production coordinates under the current
  `LocalCertSmoke` cost.  The next viable residual experiment should target
  one or two largest axis classes with a lightweight integer/projective theorem
  surface and measure that cost before any broader emission.

Largest axis-class focus checkpoint:

- Added `scripts/axis_start_focus_profile.py`, a focused exact profiler for
  one start-interior D4 axis class.
- Target:

  ```text
  canonical bad face: yp
  D4 axis class:      1,-3,-1
  ```

- On `[0,100000)`, the focused run used four workers, completed in `0:08.46`,
  and peaked at `24,752 KiB` RSS.
- It found `1,427` matched residuals inside the class.  Internal variation:

  | Coordinate | Distinct |
  | --- | ---: |
  | absolute axis pattern | 1 |
  | exact oriented axes | 8 |
  | reduced-shadow length | 1 |
  | reduced shadows | 16 |
  | exact-axis/reduced-shadow pairs | 16 |
  | actual bad faces | 4 |
  | forced-sign strings | 274 |
  | solve-shape hashes | 1,337 |

- The largest exact-axis/reduced-shadow pair is:

  ```text
  axis=1,3,1
  reduced=d11m d111 dm11 d11m d111 dm11
  count=107
  ```

- Conclusion: the target class has a small holonomy/axis spine but a highly
  fragmented affine solve surface.  The first Lean theorem-smoke should target
  the largest exact-axis/reduced-shadow pair and should avoid solve-shape hashes
  entirely.  If it still needs per-solve evidence, the route is not compressed
  enough.

Direct start-violation theorem hook:

- Added the semantic theorem
  `Cuboctahedron.no_nonidentity_axis_constraints_of_direct_start_violation` in
  `Cuboctahedron/Search/TerminalNonidentityTemplates.lean`.
- This theorem lets a future projective/holonomy family prove the bad start
  face inequality directly for every feasible axis datum:

  ```lean
  ∀ data,
    data.w ≠ zeroVec3R →
    InFaceInterior Face.xp data.p0 →
    linePoint data.p0 data.w 1 =
      affApply (affRatToReal (totalAff seq)) data.p0 →
    matVec (affRatToReal (totalAff seq)).M data.w = data.w →
    offsetR badFace ≤ dot (normalR badFace) data.p0
  ```

  and then derives `¬ NonIdentityAxisConstraints seq` without first producing
  a concrete solved `p0` value or an `AffineAxisSolveWitness`.
- Focused build:

  ```bash
  /usr/bin/time -v lake build Cuboctahedron.Search.TerminalNonidentityTemplates
  ```

  Initial result: success, `0:10.09` wall time, `3,249,292 KiB` max RSS.
- After strengthening the theorem hook so the direct inequality may use
  `InFaceInterior Face.xp data.p0`, the same focused build succeeded in
  `0:07.00` wall time with `3,227,668 KiB` max RSS.
- Next smoke target: use this theorem for the largest axis/reduced-shadow pair
  identified above.  The key acceptance question is whether a generated family
  can prove the direct inequality from the endpoint/fixed-direction equations
  and the `X+` start-interior fact by integer/projective algebra faster than
  the old `LocalCertSmoke` path.

Direct-start smoke result:

- Added `Cuboctahedron/Generated/NonIdentity/Residual/DirectStartSmoke.lean`.
- The smoke uses rank `861`, with forced sequence:

  ```text
  xp xm ym yp zm zp tmmp tppm tpmp tpmm tmmm tmpm tmpp tppp
  ```

  and the focused-class spine:

  ```text
  axis = 1,3,1
  reduced = d11m d111 dm11 d11m d111 dm11
  bad face = ym
  ```

- It proves:

  ```lean
  theorem Cuboctahedron.Generated.NonIdentity.Residual.DirectStartSmoke.rank861_no_axis_constraints :
      ¬ NonIdentityAxisConstraints rank861Seq
  ```

- This smoke does not use `AxisStartViolationCert` and does not check
  `AffineAxisSolveWitness`.  The core inequality follows from `p0.x = 1`,
  endpoint, and fixed-direction equations by linear arithmetic.
- Focused build:

  ```bash
  /usr/bin/time -v lake build Cuboctahedron.Generated.NonIdentity.Residual.DirectStartSmoke
  ```

  Result: success, `0:04.00` wall time, `3,341,448 KiB` max RSS.
- Decision: the direct theorem surface is viable for representatives and much
  cheaper than the old concrete local certificate smoke.  It still needs a
  family-level/projective form before broad emission.

Direct-start linear-system profile:

- Added `scripts/direct_start_linear_profile.py`.
- This exact untrusted diagnostic asks whether the direct-start proof can be
  grouped above the concrete-affine level.  It builds the linear system from
  endpoint, fixed direction, and `p0.x = 1`, then counts coefficient matrices,
  RHS values, solutions, total affine maps, actual bad faces, and margins.
- Command:

  ```bash
  /usr/bin/time -v python3 scripts/direct_start_linear_profile.py \
    --start 0 --end 100000 --jobs 4 --chunk-size 25000 \
    --target-bad-face yp --target-axis-d4 1,-3,-1 --top 15
  ```

- Result: success, `0:08.84` wall time, `25,224 KiB` max RSS.
- Counts for the focused class:

  | coordinate | distinct |
  | --- | ---: |
  | matched residuals | `1,427` |
  | exact-axis/reduced-shadow keys | `16` |
  | endpoint/fixed coefficient matrices | `16` |
  | actual bad faces | `4` |
  | bad-face margins | `163` |
  | affine RHS keys | `1,337` |
  | solution keys | `1,337` |
  | total affine keys | `1,337` |

- Decision: concrete `totalAff`, RHS, and solved `p0` are rejected as
  production grouping keys.  The coefficient matrix follows the
  exact-axis/reduced-shadow spine and is promising, but it needs a second
  semantic layer that proves margin nonpositivity over a family of affine
  translations.

Largest exact-axis/reduced-shadow refinement:

- Command:

  ```bash
  /usr/bin/time -v python3 scripts/direct_start_linear_profile.py \
    --start 0 --end 100000 --jobs 4 --chunk-size 25000 \
    --target-bad-face yp --target-axis-d4 1,-3,-1 \
    --target-exact-axis 1,3,1 \
    --target-reduced-shadow "d11m d111 dm11 d11m d111 dm11" \
    --json-out scripts/generated/direct_start_linear_exact_axis_1_3_1_shadow_d11m_d111_dm11_x2_000000000_000100000.json \
    --md-out scripts/generated/direct_start_linear_exact_axis_1_3_1_shadow_d11m_d111_dm11_x2_000000000_000100000.md \
    --top 20
  ```

- Result: success, `0:08.52` wall time, `24,516 KiB` max RSS.
- Counts:

  | coordinate | distinct |
  | --- | ---: |
  | matched residuals | `107` |
  | coefficient matrices | `1` |
  | actual bad faces | `3` |
  | bad-face margins | `69` |
  | affine RHS keys | `100` |
  | solution keys | `100` |
  | total affine keys | `100` |

- Decision: the largest exact-axis/reduced-shadow key confirms that the
  linear coefficient side is family-level, but the affine-offset side is not.
  The next viable route needs a cancellation-tree or offset-family theorem
  proving margin nonpositivity without enumerating RHS values.

## Artifacts

- `scripts/nonidentity_residual_axis_profile.py`
- `scripts/generated/nonidentity_residual_family_gate_000000000_000100000.json`
- `scripts/generated/nonidentity_residual_family_gate_000000000_000100000.md`
- `scripts/generated/nonidentity_residual_source_quotient_000000000_000100000.json`
- `scripts/generated/nonidentity_residual_source_quotient_000000000_000100000.md`
- `scripts/generated/nonidentity_residual_axisclass_000000000_000100000.json`
- `scripts/generated/nonidentity_residual_axisclass_000000000_000100000.md`
- `scripts/axis_start_focus_profile.py`
- `scripts/generated/axis_start_focus_yp_1_m3_m1_000000000_000100000.json`
- `scripts/generated/axis_start_focus_yp_1_m3_m1_000000000_000100000.md`
- `Cuboctahedron/Generated/NonIdentity/Residual/DirectStartSmoke.lean`
- `scripts/direct_start_linear_profile.py`
- `scripts/generated/direct_start_linear_yp_1_m3_m1_000000000_000100000.json`
- `scripts/generated/direct_start_linear_yp_1_m3_m1_000000000_000100000.md`
- `scripts/generated/direct_start_linear_exact_axis_1_3_1_shadow_d11m_d111_dm11_x2_000000000_000100000.json`
- `scripts/generated/direct_start_linear_exact_axis_1_3_1_shadow_d11m_d111_dm11_x2_000000000_000100000.md`
- `scripts/generated/nonidentity_forced_cone_profile_000000000_000100000.json`
- `scripts/generated/nonidentity_forced_cone_profile_000000000_000100000.md`
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
- A single generated-style `AxisStartViolationCert` smoke builds and proves a
  real semantic obstruction, but its calibration cost is too high for direct
  broad emission:

  ```text
  target: Cuboctahedron.Generated.NonIdentity.Residual.LocalCertSmoke
  theorem: rank12_no_axis_constraints
  elapsed: 0:45.24
  max RSS: 5,184,428 KiB
  ```

Next nontranslation work:

1. Stop refining residual keys by adding exact source/solve detail; the source
   quotient checkpoint shows that direction fragments the sample.
2. Keep the forced-axis sign filter as a cheap front-end filter.
3. Prototype a cheaper integer/projective axis-family theorem surface for the
   largest D4 axis-start classes, beginning with
   `axisStart|badFace=yp|axisD4=1,-3,-1`.
4. The first theorem-smoke target should be the largest exact-axis/reduced
   pair:
   `axis=1,3,1` and
   `reduced=d11m d111 dm11 d11m d111 dm11`.
5. Keep signed-state empty-cone/Gordan as a pre-forced-axis front-end only; do
   not expect it to solve the forced-axis residual branch.
6. Do not generate terminal residual Lean leaves until the planned semantic
   family count is below the low-thousands gate and representative leaves build
   substantially cheaper than the current smoke.
