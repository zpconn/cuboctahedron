# Holonomy Pivot Repo Notes

These notes record the current repository interfaces for the
holonomy-normal-form pivot.  The goal is to stop using lexicographic rank
intervals as the main compression coordinate and instead classify started
pair words by exact finite holonomy data: square parity, triangular shadow,
reduced triangular stack, forced-axis signatures, and translation row
signatures.

## Existing Core Names

- Faces live in `Cuboctahedron/Geometry/Faces.lean`.
  - `Face` has square faces `xp xm yp ym zp zm` and triangular faces
    `tmmm tmmp tmpm tmpp tpmm tpmp tppm tppp`.
  - `normalQ : Face -> Vec3 Rat` and `offsetQ : Face -> Rat` are exact.
- Opposite-pair words live in `Cuboctahedron/Search/PairWords.lean`.
  - `PairId` is `x y z d111 d11m d1m1 dm11`.
  - `PairWord := Vector PairId 13`.
  - `ValidPairWord` enforces multiplicities `[1,2,2,2,2,2,2]`.
  - `canonicalNormalQ : PairId -> Vec3 Rat` uses
    `dm11 = (-1,1,1)`, which is projectively the same triangular normal as
    `(1,-1,-1)`.
  - `faceOfPairSign` and `positiveSignOfFace` bridge pair/sign data to faces.
- Rank/unrank machinery lives in `Cuboctahedron/Search/Enumeration.lean`.
  - `numPairWords = 97297200`.
  - `pairIdsInLexOrder = [x,y,z,d111,d11m,d1m1,dm11]`.
  - `PairCounts.initial` is `[1,2,2,2,2,2,2]`.
  - The rank order is lexicographic by that `PairId` order.
- Linear reflection products live in `Cuboctahedron/Search/NonIdentityCase.lean`.
  - `pairAtStartedIndex w 0 = PairId.x`.
  - `canonicalSeqOfPairWord w` is the all-positive signed started sequence.
  - `pairLinearProductRight w` is the pair-word linear product.
  - `totalLinearOfPairWord w := pairLinearProductRight w`.
- Product-order convention:
  - The started `X+` reflection is included as the final linear factor.
  - `pairLinearProductRight w` is
    `R(w[0]) * R(w[1]) * ... * R(w[12]) * R(x)`.
  - The external helper `scripts/exact_profile.py` matches this convention:
    `total_linear(word)` multiplies all 13 remaining pair reflections and then
    multiplies by `RPAIR["x"]`.
- Translation and GoodDirection live in
  `Cuboctahedron/Search/TranslationCase.lean` and
  `Cuboctahedron/Search/TranslationGoodDirection.lean`.
  - `translationChoiceSeq (unrankPairWord r) mask` is the signed translation
    sequence.
  - `impactDenomAtRank r mask i` is the denominator used by `GoodDirection`.
  - `GoodDirectionAtRank r mask` is the semantic survivor predicate.
  - `goodDirection_of_translation_feasible_at_rank` proves any feasible
    translation witness satisfies `GoodDirectionAtRank`; therefore generated
    evidence should not enumerate masks that fail `GoodDirection`.
- Public semantic coverage predicates live in
  `Cuboctahedron/Generated/Coverage/Predicates.lean`.
  - `NonIdentityRankKilled`.
  - `TranslationCaseKilled`.
  - Certificate-shaped predicates still exist, but the final scalable backend
    should target the semantic killed predicates.
- Two-source/Farkas infrastructure:
  - `Cuboctahedron/Search/Farkas2D.lean`.
  - `Cuboctahedron/Search/TwoSourceFarkas.lean`.
  - `TwoSourceFarkasSupport.Checked` is already a Prop-level certificate
    surface that avoids forcing Lean to reduce a full Boolean checker.
- Started-face symmetry lives in `Cuboctahedron/Search/PairWordSymmetry.lean`.
  - `StartedSym`/`D4` is the order-eight stabilizer of `Face.xp`.
  - `symPairWord` and `symTranslationMask` are available for transport work.

## Holonomy Normal-Form Interface

The first new classifier should be a small external exact profiler, not a Lean
theorem or generated proof backend.  It should use the product order above and
scan the 14 linear factors:

```text
w[0], w[1], ..., w[12], x
```

Square pair reflections `x,y,z` are diagonal sign changes.  Track their parity
as a triple of booleans.  Triangular pair reflections are represented by the
four projective normals:

```text
d111 = (1,  1,  1)
d11m = (1,  1, -1)
d1m1 = (1, -1,  1)
dm11 = (1, -1, -1)  -- projectively equal to repo normal (-1,1,1)
```

When a triangular reflection is scanned while square parity is `s`, append
`s • tri` to the triangular shadow, canonicalizing projectively.  Adjacent
equal projective triangular reflections cancel in the reduced stack.

The first validation target is external and exact:

```text
reducedShadow(word) = []  iff  totalLinearOfPairWord(word) = I
```

The full-run expected empty-shadow count is `2,468,088`.  Python/C++ counts
are not proof, but this exact profiler decides whether the shadow theorem is
worth formalizing next.

## Active Strategy Changes

- Rank remains an address for `unrankPairWord`; it is no longer the primary
  compression coordinate.
- The old DU9IQ singleton/range-repair path is useful diagnostic evidence but
  is not the active path to the final proof.
- Do not generate proof data for translation masks that fail `GoodDirection`.
- Do not kernel-reduce giant generated Boolean checkers.
- Prefer integer/projective data for generated semantic families; bridge back
  to `Rat`/`Real` in small hand-written theorems.

## Current Pivot Status

The new GPT/Gemini holonomy-normal-form prompt is aligned with what the repo
has already learned, but it should not reset the work back to Track 1.

- Track 1 is validated externally and formalized in Lean:
  - `scripts/shadow_normal_form_profile.py` completed a full exact scan with
    `2,468,088` empty reduced shadows, `2,468,088` exact identity products,
    and zero mismatches.
  - The Lean classifier theorem is
    `Cuboctahedron.Search.ShadowNormalFormClassifier.totalLinearOfPairWord_eq_identity_iff_reducedShadow_empty_of_valid`.
  - The proof is built from small modules:
    `ShadowNormalForm`, `ShadowNormalFormCounts`,
    `ShadowNormalFormTriangular`, `ShadowNormalFormMod3`,
    `ShadowNormalFormScaled`, `ShadowNormalFormProduct`, and
    `ShadowNormalFormClassifier`.
- Track 2 is already a profiler-backed filter, not a final proof:
  - `scripts/forced_axis_sign_profile.py` proves the exact external
    forced-axis sign filter is strong but incomplete.
  - `scripts/nonidentity_residual_axis_profile.py` classifies the remaining
    forced-balance survivors into terminal affine-axis failures.
- The current nontranslation residual proof surface is
  `Cuboctahedron/Search/TerminalNonidentityTemplates.lean`, which exposes
  semantic local-certificate structures:
  - `AxisStartViolationCert`;
  - `PreImpactPointViolationCert`;
  - `OpenSegmentViolationCert`.
  These target `NonIdentityAxisConstraints` directly and do not replay
  ordinary `NonIdCert` checkers.

Therefore the next strategy is not "finish rank interval coverage."  It is:

1. keep the shadow normal form as the trusted branch split;
2. use forced-axis signs as a cheap nontranslation front-end;
3. generate or profile semantic local-certificate families for the residual
   axis buckets;
4. if those families still exceed the low-thousands gate, promote signed-state
   empty-cone/Gordan pruning before emitting full residual Lean evidence;
5. for translation, work only on GoodDirection survivors and use cancellation
   tree / projective integer row / row-source signatures, not BadDirection
   mask data.

## Explicit Non-Goals

The following approaches are archived as diagnostics, not the active route to
`Generated.rank_complete`:

- raw rank intervals as the proof-compression coordinate;
- one proof leaf per rank, mask, or residual exact margin;
- packed blobs, byte-list decoders, or huge generated Boolean reductions;
- final generated leaves whose main work is reducing `checkNonIdCert` or
  `checkTranslationCert` for concrete cases;
- translation BadDirection mask enumeration.  Feasible translation witnesses
  must first satisfy `GoodDirectionAtRank`, so generated evidence belongs on
  the GoodDirection survivor side.

## Next Interfaces To Add After Profiling

Since the shadow profiler and Lean classifier have already validated the
identity split, the next interfaces are:

1. a profiler that estimates the full local-certificate family count by
   semantic template and reusable local fact, not exact margin;
2. signed-state empty-cone/Gordan certificates if the residual local
   certificate family count remains too high;
3. translation GoodDirection survivor mining by cancellation tree and
   projective integer row signatures, after the nontranslation residual
   family gate is understood.

Recent checkpoint:

- `Cuboctahedron/Generated/NonIdentity/Residual/LocalCertSmoke.lean` now
  proves one generated-style semantic residual obstruction end-to-end with
  `AxisStartViolationCert`.
- The public theorem is
  `Cuboctahedron.Generated.NonIdentity.Residual.LocalCertSmoke.rank12_no_axis_constraints`.
- Focused build:

  ```bash
  lake build Cuboctahedron.Generated.NonIdentity.Residual.LocalCertSmoke
  ```

  passed.  A timed run measured about `45.24s` wall time and
  `5,184,428 KiB` max RSS.
- This validates the local-certificate API but is too expensive to scale
  directly; the next residual work must profile reusable family counts and
  consider integer-normalized or empty-cone/Gordan theorem surfaces before
  broad generation.

Follow-up family gate:

- `scripts/nonidentity_residual_axis_profile.py` now emits a `family_gate`
  payload.  The first `[0,100000)` calibration ran with `--jobs 4`, completed
  in `8.51s`, and used only `31,188 KiB` peak RSS, so the profiler itself is
  safe.
- The scaling signal rejects direct production use of the local-certificate
  route.  In that window, exact residual signatures already number `6,330`
  and linearly project to about `6.16M` full-run signatures; even the coarse
  certificate-template coordinate projects to about `31,135` families.  At the
  observed `LocalCertSmoke` theorem cost, this is hundreds to many thousands of
  CPU hours, not the requested 5-6 hour build.
- Active nontranslation strategy is therefore: keep the local-certificate
  structures as soundness/API building blocks, but move the production
  compression target to signed-state empty-cone/Gordan prefix pruning and/or
  substantially cheaper integer/projective theorem surfaces before emitting
  broad generated residual evidence.

Signed-prefix empty-cone checkpoint:

- `scripts/signed_prefix_empty_cone_profile.py` profiles exact Gordan
  certificates over signed-prefix unfolded normals.  It is external diagnostic
  code only.
- Depth `4`, `5`, and `6` calibration runs are memory-light.  The depth-6 run
  used `8` workers, completed in `1:32.20`, peaked at `23,808 KiB` RSS, and
  killed `3,685,893,120 / 6,227,020,800` signed started itineraries (`293/495`).
- The depth-7 clustered run used `8` workers, completed in `14:17.21`, peaked
  at `674,452 KiB` RSS, and killed
  `4,378,360,320 / 6,227,020,800` signed started itineraries
  (`190033/270270`).  The frontier still overflowed the `50,000` key cap for
  both tested coordinates (`remaining+linear` and `remaining+linear+cone`).
- This confirms empty-cone pruning is a real and cheap obstruction, but not a
  standalone low-thousands family coordinate.  Use it as a front-end filter
  combined with forced-axis/reduced-shadow/holonomy signatures before emitting
  Lean proof leaves.

Combined forced-axis/cone checkpoint:

- `scripts/nonidentity_forced_cone_profile.py` tests empty-cone certificates
  only after the nonidentity forced-axis filter has selected the forced signed
  lift.
- On `[0,100000)`, the combined profiler found `9,036` forced-balance
  survivors and `0` cone-killed survivors.  It ran in `2:53.82` with
  `24,796 KiB` max RSS.
- Conclusion: empty-cone/Gordan is not the residual nonidentity cure.  The
  active residual route should focus on cheaper integer/projective
  local-axis-family theorems and quotienting by reduced shadow, primitive axis,
  solve shape, and terminal source signature.
