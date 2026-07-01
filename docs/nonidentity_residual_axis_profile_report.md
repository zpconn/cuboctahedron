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
- The smoke now factors the proof through a reusable fixed-linear-part theorem
  `direct_ym_violation_of_rank861_linear_form`.  That theorem assumes the
  affine-offset margin bound

  ```text
  4 - 269/176*b.x + 73/176*b.y + 25/88*b.z <= 0
  ```

  and derives the bad-face inequality from endpoint/fixed-direction equations
  plus `p0.x = 1`.
- Focused build:

  ```bash
  /usr/bin/time -v lake build Cuboctahedron.Generated.NonIdentity.Residual.DirectStartSmoke
  ```

  Result after factoring through the offset-bound theorem: success, `0:03.99`
  wall time, `3,367,152 KiB` max RSS.
- Decision: the direct theorem surface is viable for representatives and much
  cheaper than the old concrete local certificate smoke.  The remaining
  production gap is a family-level proof of the affine-offset margin bound.

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
  | margin linear forms in affine offset `b` | `60` |
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
  | margin linear forms in affine offset `b` | `3` |
  | bad-face margins | `69` |
  | affine RHS keys | `100` |
  | solution keys | `100` |
  | total affine keys | `100` |

- Decision: the largest exact-axis/reduced-shadow key confirms that the
  linear coefficient side is family-level and that bad-face margin linear
  forms are also small.  Concrete affine RHS values remain too fragmented.
  The next viable route is an offset-family theorem proving each margin linear
  form is nonpositive over a cancellation/translation family.

Direct-start offset-family profile:

- Added `scripts/direct_start_offset_family_profile.py`.
- This exact untrusted diagnostic decomposes `totalAff(seq).b` as the sum of
  transported reflection deltas and evaluates the accepted bad-face margin
  linear forms contribution-by-contribution.
- Full focused D4-axis command:

  ```bash
  /usr/bin/time -v python3 scripts/direct_start_offset_family_profile.py \
    --start 0 --end 100000 --jobs 4 --chunk-size 25000 \
    --target-bad-face yp --target-axis-d4 1,-3,-1 --top 20
  ```

- Result: success, `0:09.48` wall time, `26,520 KiB` max RSS, and zero
  offset-sum mismatches.
- Counts:

  | coordinate | distinct |
  | --- | ---: |
  | matched residuals | `1,427` |
  | margin linear forms | `60` |
  | contribution sequences | `1,427` |
  | contribution multisets | `235` |
  | contribution-by-face keys | `881` |
  | contribution-by-pair keys | `881` |
  | contribution sign patterns | `225` |

- Focused largest exact-axis/reduced-shadow key: `107` matches, `3` margin
  forms, `78` contribution multisets, and `94` contribution-by-face/pair keys.
- Focused dominant margin form
  `yp|const=-2|b=269/176,-73/176,-25/88`: `72` matches, but still `52`
  contribution multisets and `63` contribution-by-face/pair keys.
- Decision: direct transported-delta aggregation is rejected as the production
  partition.  The margin-linear-form theorem hook remains accepted, but the
  margin bound needs a coarser cancellation-tree / holonomy-state explanation
  rather than a family keyed by exact contribution values.
- The same profiler now also counts square-parity paths, triangular shadows,
  stack-cancellation pairings, cancellation shapes, and margin+cancellation
  combined keys.  Rerunning the three bounded commands stayed memory-safe
  (`25-29 MiB` max RSS).
- Cancellation-counter summary:

  | sample | matched | margin forms | cancellation pairings | margin+cancellation pairings | cancellation shapes |
  | --- | ---: | ---: | ---: | ---: | ---: |
  | full focused D4-axis class | `1,427` | `60` | `190` | `353` | `1` |
  | largest exact-axis/reduced-shadow key | `107` | `3` | `12` | `21` | `1` |
  | dominant margin form inside largest key | `72` | `1` | `11` | `11` | `1` |

- Decision: cancellation shape alone is useless here because every case has
  the same coarse shape (`pairs=1;survivors=6`).  Ordered cancellation pairing
  is the first offset-side coordinate that compresses while preserving useful
  structure.  The next scale test should measure margin+cancellation-pairing
  growth on a larger window before designing Lean family declarations.
- The `[0,1000000)` scale test for the same focused D4-axis class ran in
  `1:21.69` wall time with `31,684 KiB` max RSS.  It found:

  | coordinate | distinct/count |
  | --- | ---: |
  | matched residuals | `4,934` |
  | exact-axis/reduced-shadow keys | `16` |
  | margin linear forms | `60` |
  | contribution multisets | `545` |
  | triangular shadows / cancellation pairings | `284` |
  | margin+cancellation pairings | `599` |
  | margin+cancellation shapes | `60` |

- Decision after the 1M scale test: margin+cancellation-pairing families scale
  far better than concrete affine data and remain plausible.  The next Lean
  experiment should target one high-count margin+cancellation-pairing family
  and prove the margin bound from that semantic state.

Top margin+cancellation-pairing extraction and Lean smoke:

- Added a focused filter to `scripts/direct_start_offset_family_profile.py`:
  `--target-margin-cancellation-pairing`.
- Target family:

  ```text
  ym|const=2|b=-103/176,73/176,5/88|
  pairs=3-4:d11m;
  survivors=0:dm11|1:d111|2:d1m1|5:dm11|6:d111|7:d1m1
  ```

- Extraction command:

  ```bash
  /usr/bin/time -v python3 scripts/direct_start_offset_family_profile.py \
    --start 0 --end 1000000 --jobs 4 --chunk-size 250000 \
    --target-bad-face yp --target-axis-d4 1,-3,-1 \
    --target-margin-cancellation-pairing \
      "ym|const=2|b=-103/176,73/176,5/88|pairs=3-4:d11m;survivors=0:dm11|1:d111|2:d1m1|5:dm11|6:d111|7:d1m1" \
    --sample-limit 50 \
    --json-out scripts/generated/direct_start_offset_family_top_pairing_ym_const2_000000000_001000000.json \
    --md-out scripts/generated/direct_start_offset_family_top_pairing_ym_const2_000000000_001000000.md \
    --top 30
  ```

- Result: `37` matched residuals, `1:23.01` wall time, and
  `25,816 KiB` max RSS.
- The extraction has one exact-axis/reduced-shadow key, one margin linear
  form, one triangular shadow, one ordered cancellation pairing, and one
  reduced-position key.  It still has `37` square-parity paths, `29`
  tri-source keys, `18` contribution-by-pair keys, and `14` margin values.
- Added
  `Cuboctahedron/Generated/NonIdentity/Residual/DirectStartTopPairingSmoke.lean`.
  It proves `top_no_axis_constraints : ¬ NonIdentityAxisConstraints topSeq`
  for a representative by assuming the fixed linear part plus the
  affine-offset margin bound
  `2 - 103/176*b.x + 73/176*b.y + 5/88*b.z <= 0`.
- Focused build:

  ```bash
  /usr/bin/time -v lake build \
    Cuboctahedron.Generated.NonIdentity.Residual.DirectStartTopPairingSmoke
  ```

  passed in `0:11.09` wall time with `3,367,100 KiB` max RSS.
- Decision: the theorem surface is accepted, but the family is not covered
  yet.  The next required proof object is a Lean-checkable
  cancellation/margin-bound certificate for the full family, avoiding
  per-rank `totalAff` normalization.

Margin-bound bridge:

- Added `offsetMarginQ` and `offsetMarginQ_real_bound_of_value` to
  `Cuboctahedron/Search/TerminalNonidentityTemplates.lean`.
- `DirectStartTopPairingSmoke` now supplies the representative bound through
  an exact rational margin-value equation and a nonpositivity proof:
  `offsetMarginQ 2 {x=-103/176,y=73/176,z=5/88} topAff.b = -105/22`.
- Focused build:

  ```bash
  /usr/bin/time -v lake build \
    Cuboctahedron.Generated.NonIdentity.Residual.DirectStartTopPairingSmoke
  ```

  passed in `0:09.07` wall time with `3,355,340 KiB` max RSS after rebuilding
  `TerminalNonidentityTemplates`.
- Decision: this is still not family coverage, but it changes the missing
  proof from a Real inequality to exact rational margin-value certificates.

Finite value-set smoke:

- `DirectStartTopPairingSmoke` now records the 14 observed top-family margin
  values in a local `TopPairingMarginValue` predicate and proves each is
  nonpositive.
- The representative proof now uses membership in this finite value set before
  applying `offsetMarginQ_real_bound_of_value`.
- Focused build passed in `0:05.84` wall time with `3,251,032 KiB` max RSS.
- Decision: the value inequality itself is cheap and reusable.  The remaining
  family gap is proving that every sequence covered by the top
  margin+cancellation-pairing state lands in that value set.

Bellman/potential pivot:

- GPT5.5 Pro's latest review changes the next scaling experiment.  Do not
  continue scaling the top-family extraction as certificate packing.
- The next nonidentity residual profiler should be
  `scripts/nonidentity_margin_bellman_profile.py`.  It should build a finite
  semantic automaton for a margin family, compute integer-scaled local gains,
  and search for a potential `V` satisfying transition inequalities
  `gain + V(next) <= V(state)` plus final nonpositivity.
- Acceptance gate before Lean emission:
  projected margin families `<= 2,000`, largest family `<= 10,000` states,
  largest family `<= 100,000` transitions, integer bit length preferably
  `<= 64` and at most `<= 256`, and a representative Lean family smoke
  `<= 10s` / `<= 4 GiB` RSS.
- The `[0,10000000)` top-family extraction that had just started was stopped
  with exit code `130` because it belonged to the old exact-value stability
  lane.

Bellman profiler prototype results:

- Added `scripts/nonidentity_margin_bellman_profile.py`, an untrusted exact
  diagnostic that extracts local margin gains for the top
  margin+cancellation-pairing family and solves exact Bellman/longest-path
  potentials on an observed state graph.
- Compilation smoke passed:

  ```bash
  python3 -m py_compile scripts/nonidentity_margin_bellman_profile.py
  ```

- On `[0,100000)`, `--state-key-mode with-step` covered the observed paths:
  `11` matched paths, `42` states, `52` edges, root bound `-38/11`, maximum
  margin bound `-16/11`.
- On `[0,1000000)`, the same coarse key failed: `37` matched paths, `73`
  states, `101` edges, root bound `-16/11`, maximum margin bound `6/11`.
  Adding signed-face inventory with `with-step-face` also failed with `75`
  states and the same maximum bound `6/11`.
- On `[0,1000000)`, `--state-key-mode with-prefix` succeeded:
  `270` states, `269` edges, root bound `-2`, maximum margin bound `0`.
- All three 1M four-worker diagnostics stayed memory-light, around `80s`
  wall time and roughly `25 MiB` max RSS.

Decision: Bellman/potential certificates are still the preferred next
nonidentity residual route, but the current coarse automata are too loose and
the exact-prefix automaton is too literal.  The next state-design experiment
should add cancellation-progress, target-pairing bracket progress, or
source-position progress so the graph describes the real top-family language
without keying by exact prefix, exact affine RHS, solved start point, or total
affine map.

Argmax spurious-path diagnostic:

- The profiler now records the Bellman-maximizing path, the ranks realizing
  each selected edge, and whether any observed rank realizes the whole path.
- Rerunning the failing `[0,1000000)` `with-step` profile kept the same counts
  (`73` states, `101` edges, max margin bound `6/11`) with `25,676 kB` max
  RSS.
- Rerunning `with-step-face` kept the same failure shape (`75` states,
  `101` edges, max margin bound `6/11`) with `25,668 kB` max RSS.
- In both reruns the argmax path had `14` edges, total gain `-16/11`, margin
  bound `6/11`, and `is_observed_path = false`.  No rank realizes the whole
  path.  The selected edges are individually observed, but they splice
  incompatible prefixes and suffixes from ranks such as `824407`, `914499`,
  `944199`, `946779`, `947439`, `947601`, and `151569`.

Decision: face inventory does not fix the Bellman over-approximation.  The
next profiler refinement should encode target cancellation-pairing/bracket
progress or source-position progress.  Do not add exact affine RHS, solved
start points, total affine maps, or full prefix words to the production state
unless every coarser semantic progress coordinate fails.

Triangular source-progress checkpoint:

- `with-step-linear` was tested on `[0,1000000)` to check whether current
  prefix holonomy blocks the splice.  It did not: `73` states, `101` edges,
  maximum margin bound `6/11`, and `proves_observed_nonpositive = false`.
- `with-step-tri-source` adds triangular source-position/parity progress while
  still avoiding exact affine RHS, solved start points, total affine maps, and
  full prefix words.
- On `[0,1000000)`, `with-step-tri-source` succeeded:

  | metric | value |
  | --- | ---: |
  | matched paths | `37` |
  | states | `223` |
  | edges | `229` |
  | final states | `29` |
  | root bound | `-2` |
  | max margin bound | `0` |
  | Bellman-max observed? | `true`, rank `946779` |
  | max RSS | `25,884 kB` |

Decision: triangular source-position progress is the first accepted semantic
state refinement for this Bellman route.  It is coarser than exact-prefix
state (`223` vs `270` states on the 1M window) and, unlike the coarse
`with-step`/`with-step-face`/`with-step-linear` keys, it prevents the observed
positive spurious path.  The next test should scale `with-step-tri-source` to
a larger window for the same top family before any Lean Bellman theorem is
designed around it.

Larger-window `with-step-tri-source` scale test:

```bash
/usr/bin/time -v python3 scripts/nonidentity_margin_bellman_profile.py \
  --start 0 --end 5000000 \
  --jobs 4 --chunk-size 250000 \
  --state-key-mode with-step-tri-source \
  --json scripts/generated/nonid_margin_bellman_top_pairing_000000000_005000000_with_step_tri_source.json \
  --markdown scripts/generated/nonid_margin_bellman_top_pairing_000000000_005000000_with_step_tri_source.md
```

| metric | value |
| --- | ---: |
| scanned | `5,000,000` |
| matched paths | `194` |
| states | `789` |
| edges | `863` |
| final states | `95` |
| margin values | `38` |
| root bound | `-2` |
| max margin bound | `0` |
| Bellman-max observed? | `true`, rank `946779` |
| elapsed | `5:57.77` |
| max RSS | `27,988 kB` |

Decision: the accepted state key still scales on the larger sample and remains
memory-light.  State/edge growth is real, so this is not a solved production
certificate yet, but the growth is meaningfully below exact-prefix behavior
and justifies a broader scale test before designing the Lean Bellman core.

Broader `[0,10000000)` scale test:

```bash
/usr/bin/time -v python3 scripts/nonidentity_margin_bellman_profile.py \
  --start 0 --end 10000000 \
  --jobs 8 --chunk-size 250000 \
  --state-key-mode with-step-tri-source \
  --json scripts/generated/nonid_margin_bellman_top_pairing_000000000_010000000_with_step_tri_source.json \
  --markdown scripts/generated/nonid_margin_bellman_top_pairing_000000000_010000000_with_step_tri_source.md
```

| metric | value |
| --- | ---: |
| scanned | `10,000,000` |
| matched paths | `273` |
| states | `970` |
| edges | `1,054` |
| final states | `116` |
| margin values | `46` |
| root bound | `-2` |
| max margin bound | `0` |
| Bellman-max observed? | `true`, rank `946779` |
| elapsed | `6:22.35` |
| max RSS | `28,780 kB` |

Decision: this is the strongest Bellman signal so far.  Doubling the window
from 5M to 10M increased states only from `789` to `970`, while preserving the
nonpositive Bellman bound and a real argmax path.  Continue with this
tri-source coordinate unless a later disjoint-window test shows very different
behavior.

Disjoint `[10000000,20000000)` validation:

```bash
/usr/bin/time -v python3 scripts/nonidentity_margin_bellman_profile.py \
  --start 10000000 --end 20000000 \
  --jobs 8 --chunk-size 250000 \
  --state-key-mode with-step-tri-source \
  --json scripts/generated/nonid_margin_bellman_top_pairing_010000000_020000000_with_step_tri_source.json \
  --markdown scripts/generated/nonid_margin_bellman_top_pairing_010000000_020000000_with_step_tri_source.md
```

| metric | value |
| --- | ---: |
| scanned | `10,000,000` |
| matched paths | `100` |
| states | `417` |
| edges | `457` |
| final states | `51` |
| margin values | `21` |
| root bound | `-38/11` |
| max margin bound | `-16/11` |
| Bellman-max observed? | `true`, rank `15543335` |
| elapsed | `5:10.35` |
| max RSS | `26,648 kB` |

Decision: the disjoint window also validates the tri-source coordinate and is
strictly negative.  The active next step is to either run a few more disjoint
windows to estimate full-family state count, or begin designing the small
generic Lean Bellman theorem while the external profiler continues gathering
coverage data.

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
- `scripts/direct_start_offset_family_profile.py`
- `scripts/generated/direct_start_offset_family_yp_1_m3_m1_000000000_000100000.json`
- `scripts/generated/direct_start_offset_family_yp_1_m3_m1_000000000_000100000.md`
- `scripts/generated/direct_start_offset_family_exact_axis_1_3_1_shadow_d11m_d111_dm11_x2_000000000_000100000.json`
- `scripts/generated/direct_start_offset_family_exact_axis_1_3_1_shadow_d11m_d111_dm11_x2_000000000_000100000.md`
- `scripts/generated/direct_start_offset_family_exact_axis_1_3_1_shadow_d11m_d111_dm11_x2_margin_yp_m2_000000000_000100000.json`
- `scripts/generated/direct_start_offset_family_exact_axis_1_3_1_shadow_d11m_d111_dm11_x2_margin_yp_m2_000000000_000100000.md`
- `scripts/nonidentity_margin_bellman_profile.py`
- `scripts/generated/nonid_margin_bellman_top_pairing_000000000_000100000_with_step.json`
- `scripts/generated/nonid_margin_bellman_top_pairing_000000000_000100000_with_step.md`
- `scripts/generated/nonid_margin_bellman_top_pairing_000000000_001000000_with_step.json`
- `scripts/generated/nonid_margin_bellman_top_pairing_000000000_001000000_with_step.md`
- `scripts/generated/nonid_margin_bellman_top_pairing_000000000_001000000_with_step_face.json`
- `scripts/generated/nonid_margin_bellman_top_pairing_000000000_001000000_with_step_face.md`
- `scripts/generated/nonid_margin_bellman_top_pairing_000000000_001000000_with_prefix.json`
- `scripts/generated/nonid_margin_bellman_top_pairing_000000000_001000000_with_prefix.md`
- `scripts/generated/nonid_margin_bellman_top_pairing_000000000_001000000_with_step_linear.json`
- `scripts/generated/nonid_margin_bellman_top_pairing_000000000_001000000_with_step_linear.md`
- `scripts/generated/nonid_margin_bellman_top_pairing_000000000_001000000_with_step_tri_source.json`
- `scripts/generated/nonid_margin_bellman_top_pairing_000000000_001000000_with_step_tri_source.md`
- `scripts/generated/nonid_margin_bellman_top_pairing_000000000_005000000_with_step_tri_source.json`
- `scripts/generated/nonid_margin_bellman_top_pairing_000000000_005000000_with_step_tri_source.md`
- `scripts/generated/nonid_margin_bellman_top_pairing_000000000_010000000_with_step_tri_source.json`
- `scripts/generated/nonid_margin_bellman_top_pairing_000000000_010000000_with_step_tri_source.md`
- `scripts/generated/nonid_margin_bellman_top_pairing_010000000_020000000_with_step_tri_source.json`
- `scripts/generated/nonid_margin_bellman_top_pairing_010000000_020000000_with_step_tri_source.md`
- `scripts/generated/direct_start_offset_family_yp_1_m3_m1_000000000_001000000.json`
- `scripts/generated/direct_start_offset_family_yp_1_m3_m1_000000000_001000000.md`
- `scripts/generated/direct_start_offset_family_top_pairing_ym_const2_000000000_001000000.json`
- `scripts/generated/direct_start_offset_family_top_pairing_ym_const2_000000000_001000000.md`
- `Cuboctahedron/Generated/NonIdentity/Residual/DirectStartTopPairingSmoke.lean`
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
