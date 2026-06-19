# Codex Execution Steps

This document converts `RAW_PLAN.md` into an ordered implementation playbook for Codex.

The objective is not to translate the floating-point C++ verifier. The objective is to build a Lean 4/mathlib proof pipeline in which:

- all finite computations are exact over rational numbers;
- external scripts may generate certificates;
- Lean checks every certificate;
- the final theorem is a real billiard-orbit nonexistence theorem, not only a computational statement.

Final target:

```lean
theorem cuboctahedron_no_omnihedral :
  ¬ ∃ o : BilliardOrbit14,
      o.Nonsingular ∧ o.Periodic ∧ o.TouchesEachFaceExactlyOnce
```

## Global Rules

Follow these rules for every step.

1. Keep `RAW_PLAN.md` and `PROOF_SKETCH.md` as source notes. Do not edit them unless asked.
2. Put trusted Lean code under `Cuboctahedron/`.
3. Put generated Lean wrappers under `Cuboctahedron/Generated/`; put compact
   certificate blobs under `certs/`.
4. Put external untrusted generators and checkers under `scripts/`.
5. Do not use `Float`, `Double`, epsilon thresholds, tolerances, or approximate geometry in Lean proof code.
6. Do not use `sorry`, `admit`, custom `axiom`, or `unsafe`.
7. Do not use `native_decide` in any tracked Lean file under `Cuboctahedron/`.
   If an exploratory prototype needs it, keep that prototype outside the final
   import tree and outside the standard validation grep path.
8. Every generated certificate must have a Lean checker and a Lean soundness theorem.
9. Do not weaken the final theorem to only an unfolded or computational statement.
10. Run the validation commands at the end of every milestone.

Standard validation commands:

```bash
lake build
grep -R "sorry\|admit\|axiom\|native_decide\|unsafe" Cuboctahedron || true
lean Cuboctahedron/PrintAxioms.lean
```

Early milestones may not yet have `PrintAxioms.lean`. Until it exists, run:

```bash
lake build
grep -R "sorry\|admit\|axiom\|native_decide\|unsafe" Cuboctahedron || true
```

## Step 0: Repository Bootstrap

Goal: create a buildable Lean project with project rules.

Create:

```text
lean-toolchain
lakefile.lean
Cuboctahedron.lean
AGENTS.md
README.md
Cuboctahedron/
scripts/
```

`AGENTS.md` must include:

```markdown
# AGENTS.md

## Goal
Create a Lean 4/mathlib proof that the cuboctahedron has no nonsingular omnihedral periodic billiard orbit.

## Build commands
- lake build
- grep -R "sorry\|admit\|axiom\|native_decide\|unsafe" Cuboctahedron || true
- lean Cuboctahedron/PrintAxioms.lean

## Hard constraints
- No Float, Float32, Float64, Double, approximations, epsilon thresholds, or numerical tolerances in proof code.
- Use exact rational arithmetic for all finite computations.
- The final theorem must not use `sorry`, `admit`, custom `axiom`, `unsafe`, or `native_decide`.
- External scripts may generate certificate data, but Lean must check every certificate.
- Existing C++ outputs are not trusted as proof.
- Any generated data file must be covered by a Lean checker proving it corresponds to a complete finite enumeration.
- Prefer small, auditable definitions over clever metaprogramming.
- Do not weaken the theorem statement to an unfolded-only or computational-only claim unless that is explicitly marked as an intermediate theorem.
```

Implementation notes:

- Use a normal Lake project layout.
- Import mathlib if needed, but keep the core exact arithmetic small and auditable.
- Start with empty module files only when the project needs them for imports.

Done when:

```bash
lake build
```

passes.

## Step 1: Exact Arithmetic Core

Goal: define simple fixed-size algebraic objects over arbitrary coefficient types, with exact rational examples.

Create:

```text
Cuboctahedron/Basic/Vec3.lean
Cuboctahedron/Basic/Mat3.lean
Cuboctahedron/Basic/Aff3.lean
Cuboctahedron/Basic/RationalLemmas.lean
```

In `Vec3.lean`, define:

- `structure Vec3 (alpha : Type)`
- coordinate projections `x`, `y`, `z`
- `map`
- extensionality theorem
- `vecAdd`
- `vecSub`
- `scalarMul`
- `dot`
- `cross`

In `Mat3.lean`, define:

- `structure Mat3 (alpha : Type)`
- `matId`
- `matVec`
- `matMul`
- `outer`
- `scalarMat`
- matrix addition and subtraction as needed
- extensionality theorem

In `Aff3.lean`, define:

- `structure Aff3 (alpha : Type)`
- `affApply`
- `affCompose`
- `affId`
- cast/map operation for moving from `Rat` to `Real`

In `RationalLemmas.lean`, collect small exact arithmetic lemmas used repeatedly by reflection and certificate checkers.

Required sanity theorem:

```lean
theorem matId_matVec (p : Vec3 alpha) :
  matVec matId p = p := by
  ...
```

Exact expected behavior:

- Computations over `Rat` reduce by kernel normalization or simple `norm_num`.
- No dependence on floating-point arithmetic.

Done when:

```bash
lake build
grep -R "Float\|Double\|sorry\|admit\|axiom\|unsafe" Cuboctahedron || true
```

finds no forbidden proof code.

## Step 2: Cuboctahedron Faces and Polyhedron

Goal: formalize the exact cuboctahedron face data.

Create:

```text
Cuboctahedron/Geometry/Faces.lean
Cuboctahedron/Geometry/Polyhedron.lean
```

In `Faces.lean`, define:

```lean
inductive Face
  | xp | xm | yp | ym | zp | zm
  | tmmm | tmmp | tmpm | tmpp
  | tpmm | tpmp | tppm | tppp
deriving DecidableEq, Repr, Fintype
```

Define:

- `normalQ : Face -> Vec3 Rat`
- `offsetQ : Face -> Rat`
- `normalR : Face -> Vec3 Real`
- `offsetR : Face -> Real`

Face data must encode:

- square faces: `+/-x = 1`, `+/-y = 1`, `+/-z = 1`
- triangular faces: `+/-x +/-y +/-z = 2`

In `Polyhedron.lean`, define:

- `InPolyhedron`
- `OnFace`
- `InFaceInterior`

Prove useful face-interior simplification lemmas, starting with `xp`.

Required theorem shape:

```lean
theorem xp_face_interior_iff :
  InFaceInterior Face.xp { x := 1, y := y, z := z } <->
    y + z < 1 /\ y - z < 1 /\ -y + z < 1 /\ -y - z < 1 := by
  ...
```

If the exact right side needs extra square-face inequalities, prove an equivalent diamond form and document the equivalence.

Done when:

```bash
lake build
```

passes and the following evaluate:

```lean
#eval normalQ Face.xp
#eval offsetQ Face.tppp
```

## Step 3: Exact Reflections

Goal: implement affine reflections in rational arithmetic and prove basic formulas.

Create:

```text
Cuboctahedron/Geometry/Reflection.lean
```

Define:

- `reflM : Vec3 Rat -> Mat3 Rat`
- `reflD : Vec3 Rat -> Rat -> Vec3 Rat`
- `faceReflectionQ : Face -> Aff3 Rat`
- `reflectVec`
- real interpretation of rational affine reflections

Reflection formula:

```text
r_F(x) = x - 2 * ((n dot x - c) / (n dot n)) * n
```

Prove at least:

```lean
theorem xp_reflection_formula (p : Vec3 Rat) :
  affApply (faceReflectionQ Face.xp) p =
    { x := 2 - p.x, y := p.y, z := p.z } := by
  ...
```

Also prove a real-cast correctness theorem connecting `faceReflectionQ` to geometric reflection over `Real`.

Done when:

```bash
lake build
```

passes with the reflection formula theorem checked.

## Step 4: Unfolding Algebra

Goal: encode face-sequence affine products with a documented composition convention.

Create:

```text
Cuboctahedron/Geometry/Unfolding.lean
```

Define:

- `prefixAff : (Fin 14 -> Face) -> Fin 15 -> Aff3 Rat`
- `totalAff : (Fin 14 -> Face) -> Aff3 Rat`
- `totalLinear : (Fin 14 -> Face) -> Mat3 Rat`

Use this convention unless a proof forces a correction:

```text
A = r_F1 o r_F2 o ... o r_F13 o r_F0
```

with `r_F0` applied first.

Document the convention in a comment next to `totalAff`.

Add small test sequences and prove simple normalization lemmas so later certificate code can rely on the definitions.

Done when:

```bash
lake build
```

passes and `totalAff` is usable by exact computation.

## Step 5: Billiard-Orbit Model

Goal: define the real billiard-orbit object without certificate logic.

Create:

```text
Cuboctahedron/Geometry/BilliardOrbit.lean
```

Define:

- `BilliardOrbit14`
- `Nonsingular`
- `Periodic`
- `TouchesEachFaceExactlyOnce`
- `IsOmniSeq`
- `StartsXp`

Prefer `Fin 15` for impact points and velocities, and `Fin 14` for face hits and segment times.

Required structure shape:

```lean
structure BilliardOrbit14 where
  p : Fin 15 -> Vec3 Real
  v : Fin 15 -> Vec3 Real
  face : Fin 14 -> Face
  time : Fin 14 -> Real
  time_pos : forall i, 0 < time i
  impact_interior : forall i, InFaceInterior (face i) (p i.castSucc)
  ...
```

The exact fields may differ, but they must capture:

- positive travel times;
- impact points in relative face interiors;
- first-hit or segment-validity condition;
- reflection law;
- period closure for point and direction.

Prove:

```lean
theorem can_start_at_xp
  (o : BilliardOrbit14)
  (h : TouchesEachFaceExactlyOnce o) :
  exists o' : BilliardOrbit14,
    TouchesEachFaceExactlyOnce o' /\ o'.face 0 = Face.xp := by
  ...
```

Done when:

```lean
#check BilliardOrbit14
#check TouchesEachFaceExactlyOnce
#check can_start_at_xp
```

all work and `lake build` passes.

## Step 6: Unfolded Feasibility Bridge

Goal: prove the forward implication from real billiard orbit to unfolded feasible line.

Add to:

```text
Cuboctahedron/Geometry/Unfolding.lean
```

or split into:

```text
Cuboctahedron/Geometry/UnfoldingFeasible.lean
```

Define:

```lean
structure UnfoldedFeasible (seq : Fin 14 -> Face) : Prop where
  p0 : Vec3 Real
  w : Vec3 Real
  nonzero : w <> 0
  start_interior : InFaceInterior (seq 0) p0
  crossing_times : Fin 15 -> Real
  t0 : crossing_times 0 = 0
  t14 : crossing_times 14 = 1
  increasing : StrictMono crossing_times
  hit_conditions : ...
```

Prove:

```lean
theorem billiard_implies_unfolded
  (o : BilliardOrbit14)
  (hOmni : TouchesEachFaceExactlyOnce o)
  (hStart : o.face 0 = Face.xp) :
  UnfoldedFeasible o.face := by
  ...
```

Implementation approach:

1. Prove one-step reflection unfolding lemma.
2. Prove finite prefix unfolding by induction over the 14 impacts.
3. Use periodicity to normalize the final crossing time to `1`.
4. Preserve strict interior conditions through the unfolded face copies.

Done when:

```lean
#check billiard_implies_unfolded
```

works and `lake build` passes.

## Step 7: Pair-Word Reduction

Goal: reduce started omnihedral sequences to finite pair-word enumeration.

Create:

```text
Cuboctahedron/Search/PairWords.lean
Cuboctahedron/Search/Itineraries.lean
```

Define:

```lean
inductive PairId
  | x | y | z | d111 | d11m | d1m1 | dm11
deriving DecidableEq, Repr, Fintype
```

Define:

- `pairOfFace : Face -> PairId`
- `canonicalNormalQ : PairId -> Vec3 Rat`
- `faceOfPairSign : PairId -> Bool -> Face`
- `PairWord := Vector PairId 13`
- `ValidPairWord`
- `PairWordMatchesSeq`

Prove:

```lean
theorem seq_to_pairword
  (seq : Fin 14 -> Face)
  (hOmni : IsOmniSeq seq)
  (hStart : seq 0 = Face.xp) :
  exists w : PairWord, ValidPairWord w /\ PairWordMatchesSeq w seq := by
  ...
```

Done when:

```bash
lake build
```

passes and small hand-written sequences classify into the expected pair words.

## Step 8: Case Split API

Goal: expose the two exhaustive cases used by the finite proof.

Create:

```text
Cuboctahedron/Search/NonIdentityCase.lean
Cuboctahedron/Search/TranslationCase.lean
```

Define:

- `totalLinearOfPairWord`
- `IsIdentityLinear`
- relation connecting `totalLinear seq` to the pair word linear product

State and prove the easy case split:

```lean
theorem unfolded_feasible_cases
  (seq : Fin 14 -> Face)
  (h : UnfoldedFeasible seq) :
  totalLinear seq = matId \/ totalLinear seq <> matId := by
  exact Classical.em _
```

Do not prove impossibility here yet. This step only prepares the interfaces.

Done when:

```bash
lake build
```

passes and downstream files can import the case APIs.

## Step 9: Farkas Checker First

Goal: build the small reusable strict-linear infeasibility checker before handling translation certificates.

Create:

```text
Cuboctahedron/Search/LinearConstraints.lean
Cuboctahedron/Search/Farkas2D.lean
```

Define:

```lean
structure StrictLin2 where
  a : Rat
  b : Rat
  c : Rat
```

Define:

- `StrictLin2.Holds`
- weighted sum of constraints;
- `FarkasCert`
- `checkFarkas`

Prove:

```lean
theorem checkFarkas_sound
  {constraints : List StrictLin2}
  {cert : FarkasCert}
  (hcheck : checkFarkas constraints cert = true) :
  ¬ exists y z : Real, forall L, L in constraints -> L.Holds y z := by
  ...
```

Proof strategy:

1. From `hcheck`, extract nonnegative multipliers.
2. Multiply each strict inequality by its nonnegative multiplier.
3. Use at least one positive multiplier to preserve strictness.
4. Sum inequalities.
5. Use zero `y` and `z` coefficients plus nonpositive RHS to derive contradiction.

Done when:

```bash
lake build
```

passes with no generated data.

## Step 10: Translation Constraints and Certificates

Goal: reduce identity-linear itineraries to rational 2D strict systems and verify Farkas certificates.

Add to:

```text
Cuboctahedron/Search/TranslationCase.lean
Cuboctahedron/Search/Certificates.lean
```

Define:

- `translationConstraints`
- `TranslationFailure`
- `TranslationCert`
- `checkTranslationCert`

Prove:

```lean
theorem translation_feasible_implies_constraints
  {seq : Vector Face 14}
  {b : Vec3 Rat}
  (h : TranslationUnfoldedFeasible seq b) :
  exists y z : Real,
    forall L, L in translationConstraints seq b -> L.Holds y z := by
  ...
```

Then prove:

```lean
theorem checkTranslationCert_sound
  (cert : TranslationCert)
  (hcheck : checkTranslationCert cert = true) :
  ¬ exists seq,
      SeqRealizesTranslationChoice cert.word cert.signMask seq /\
      totalLinear seq = matId /\
      UnfoldedFeasible seq := by
  ...
```

Done when:

- one tiny hand-written translation certificate is checked;
- the soundness theorem compiles;
- `lake build` passes.

## Step 11: Non-Identity Certificates

Goal: verify exact non-identity axis failure certificates.

Add to:

```text
Cuboctahedron/Search/NonIdentityCase.lean
Cuboctahedron/Search/Certificates.lean
```

Define data records for:

- rank/kernel witnesses for the fixed eigenspace;
- 4x4 inverse or solve witnesses for the forced starting point;
- exact first-hit or bad-interior failure;
- `NonIdFailure`;
- `NonIdCert`;
- `checkNonIdCert`.

`checkNonIdCert` must verify:

1. valid pair word;
2. total linear part is not identity;
3. supplied axis is nonzero;
4. `M * axis = axis`;
5. rank witness proves the fixed eigenspace is one-dimensional;
6. direction signs force the supplied face sequence;
7. solve witness proves the starting point is forced;
8. exact failure proves no feasible unfolded orbit exists.

Prove:

```lean
theorem checkNonIdCert_sound
  (cert : NonIdCert)
  (hcheck : checkNonIdCert cert = true) :
  ¬ exists seq,
      SeqRealizesPairWord cert.word seq /\
      StartsXp seq /\
      totalLinear seq <> matId /\
      UnfoldedFeasible seq := by
  ...
```

Done when:

- one tiny hand-written non-identity certificate is checked;
- the soundness theorem compiles;
- `lake build` passes.

## Step 12: Exact Certificate Generator

Goal: generate rational certificate data without trusting the generator.

Create:

```text
scripts/generate_exact_certificates.py
scripts/check_certificates_independently.py
scripts/README.md
scripts/old_float_verifiers/
certs/
```

Generator requirements:

- use `fractions.Fraction` or another exact rational backend;
- do not use epsilon logic;
- do not use C++ output as a proof;
- support two evidence backends:
  - generated Lean literals for samples, debugging, and fallback;
  - compact certificate blobs for the exhaustive endgame.

Generator tasks:

1. Enumerate valid pair words.
2. Compute exact linear products.
3. For `M != I`, generate non-identity certificates.
4. For `M = I`, enumerate 64 sign masks and generate translation/Farkas certificates.
5. Split generated Lean output into small chunks.
6. Emit compact certificate sections with enough data for Lean to reconstruct
   the same checked `NonIdCert` and `TranslationCert` obligations.

Independent checker tasks:

1. Parse generated Lean samples and compact blob output.
2. Re-run exact checks.
3. Print sanity counts:
   - pair words: `97,297,200`
   - identity linear words: `2,468,088`
   - translation sign assignments: `157,957,632`
4. Do not turn these counts into Lean axioms.

Done when:

```bash
python3 scripts/generate_exact_certificates.py --small-sample
python3 scripts/check_certificates_independently.py --small-sample
lake build
```

passes for a small generated sample.

## Step 13: Generated Data Integration Samples

Goal: import representative generated certificate chunks through Lean checkers.
These chunks are the sample/debug backend and remain the fallback if the compact
certificate pilot fails; they are not the preferred exhaustive endgame.

Create:

```text
Cuboctahedron/Generated/NonIdentity/Chunk0000.lean
Cuboctahedron/Generated/Translation/Chunk0000.lean
Cuboctahedron/Generated/AllGenerated.lean
```

Each chunk must define:

- a chunk metadata record;
- an array or tree of certificates;
- a theorem that the chunk checker returns true.

Avoid massive `by decide` proofs. Prefer:

- small chunk sizes;
- proof-by-reflection with local `rfl` where possible;
- sparse rational witnesses;
- prefix-tree compression if chunked per-case data is too large.

Do not use `native_decide` for chunk checks. Generated samples must demonstrate
the same trusted checking style required for the final backend.

Done when:

- one non-identity chunk imports and checks;
- one translation chunk imports and checks;
- `lake build` passes.

## Step 14: Enumeration Coverage

Goal: prove generated data covers all legal pair words and sign choices.

Create:

```text
Cuboctahedron/Search/Enumeration.lean
```

Define:

- `numPairWords : Nat := 97297200`
- `unrankPairWord : Fin numPairWords -> PairWord`
- `rankPairWord? : PairWord -> Option (Fin numPairWords)`
- sign-mask enumeration for the 64 legal translation choices.

Prove:

```lean
theorem rank_unrank_pairword :
  forall r : Fin numPairWords,
    rankPairWord? (unrankPairWord r) = some r := by
  ...

theorem unrank_rank_pairword :
  forall w : PairWord,
    ValidPairWord w ->
    exists r : Fin numPairWords, unrankPairWord r = w := by
  ...
```

Then define chunk or tree coverage:

- chunk intervals cover `[0, numPairWords)`;
- every certificate rank matches its covered case;
- every identity word has all 64 sign assignments covered;
- every non-identity word has a non-identity certificate.

Done when:

```lean
#check rank_unrank_pairword
#check unrank_rank_pairword
```

works and `lake build` passes.

## Step 14A: Strengthen Unfolded Feasibility

Goal: make `UnfoldedFeasible` strong enough that finite search certificates can
actually refute it.

Current blocker to avoid:

```lean
def InUnfoldedFaceInterior (seq : Step14 -> Face) (i : Step14)
    (_x : Vec3 Real) : Prop :=
  exists p : Vec3 Real, InFaceInterior (seq i) p
```

This ignores the line point `_x`, so Step 15 cannot honestly prove
`¬ UnfoldedFeasible seq`. Replace it with a predicate that says the actual
unfolded line point lies in the relative interior of the corresponding unfolded
copy of the intended face.

Complete or revise:

```text
Cuboctahedron/Geometry/UnfoldingFeasible.lean
Cuboctahedron/Geometry/Unfolding.lean
Cuboctahedron/Search/TranslationCase.lean
Cuboctahedron/Search/NonIdentityCase.lean
```

Define:

- exact real interpretation of the prefix affine copy at each impact;
- `InUnfoldedFaceInterior seq i x` in terms of the pulled-back or pushed-forward
  face interior, not an existential unrelated to `x`;
- unfolded hit constraints that imply the strict face-interior inequalities used
  by translation/Farkas certificates;
- unfolded nonidentity constraints that imply the exact axis/first-hit failures
  checked by nonidentity certificates.

Prove:

```lean
theorem unfolded_feasible_translation_constraints :
  -- a feasible identity-linear unfolded itinerary yields the generated
  -- strict linear constraints in y,z

theorem unfolded_feasible_nonidentity_axis_constraints :
  -- a feasible nonidentity unfolded itinerary yields the exact axis/sign/start
  -- conditions checked by nonidentity certificates
```

Keep:

```lean
theorem billiard_implies_unfolded
```

valid after strengthening the definition.

Done when:

```bash
lake build
```

passes and no theorem about `¬ UnfoldedFeasible` relies on a vacuous or
line-point-ignoring definition.

## Step 14B: Complete Failure Certificate Soundness

Goal: make the certificate checkers prove real impossibility, not just classify
linear parts or sign choices.

Complete:

```text
Cuboctahedron/Search/Certificates.lean
Cuboctahedron/Search/NonIdentityCase.lean
Cuboctahedron/Search/TranslationCase.lean
```

Nonidentity checker requirements:

- `checkNonIdCert` must have usable checked branches for all failure modes that
  the generator may emit:
  - no fixed axis / invalid kernel witness;
  - bad direction sign;
  - bad pair balance;
  - axis misses the `xp` start interior;
  - bad first hit;
  - bad hit interior.
- The only accepted `NonIdCert` branches may be branches with a proved
  contradiction against `UnfoldedFeasible`.
- `checkNonIdCert_sound` must consume checked certificates for valid pair words,
  not only the current invalid-pair-word smoke case.

Translation checker requirements:

- `SeqRealizesTranslationChoice` must include the sign-mask-specific face
  sequence, not ignore the mask.
- `checkTranslationCert` must accept real failure certificates:
  - bad translation vector or direction sign when applicable;
  - Farkas certificates for infeasible strict linear systems.
- `checkTranslationCert_sound` must use the strengthened translation constraints
  from Step 14A.

Done when:

```lean
#check checkNonIdCert_sound
#check checkTranslationCert_sound
```

work for nontrivial valid-word examples, and `lake build` passes.

## Step 14C: Generate Real Failure Certificates

Goal: make generated data contain checked impossibility certificates for every
covered case.

Update:

```text
scripts/generate_exact_certificates.py
scripts/check_certificates_independently.py
Cuboctahedron/Generated/NonIdentity/
Cuboctahedron/Generated/Translation/
Cuboctahedron/Generated/AllGenerated.lean
```

Requirements:

- nonidentity generated chunks contain `NonIdCert`, not only
  `NonIdentityLinearCert`;
- translation generated chunks contain `TranslationCert`, not only
  `TranslationChoiceCert`;
- every generated certificate is checked by Lean with `checkNonIdCert` or
  `checkTranslationCert`;
- every chunk or prefix-tree node proves the ranks/sign masks it covers;
- the independent checker verifies exact rational data and reports the known
  sanity counts, but Lean remains the trusted checker.

If full per-case chunks are too large, switch to prefix-tree compression before
Step 15. A prefix-tree leaf must still carry a checked failure certificate whose
soundness theorem rules out every completion covered by that leaf.

Done when:

```bash
python3 scripts/generate_exact_certificates.py --small-sample
python3 scripts/check_certificates_independently.py --small-sample
lake build
```

passes for representative nonidentity and translation failure certificates.

## Step 14D: Exhaustive Failure-Coverage Interface

Goal: expose exactly the coverage API Step 15 needs.

Revise `ExhaustiveGeneratedCoverage` so it no longer manufactures lightweight
rank-indexed classification certs. Its completeness fields must return checked
failure certificates:

```lean
structure ExhaustiveGeneratedCoverage : Prop where
  pair_rank_covered :
    forall r : Fin numPairWords,
      exists chunk : CoverageChunk, CoverageChunk.CoversPairRank chunk r
  sign_mask_covered :
    forall mask : SignMask, mask.val < numSignMasks
  nonidentity_complete :
    forall r : Fin numPairWords,
      totalLinearOfPairWord (unrankPairWord r) ≠ (matId : Mat3 Rat) ->
        exists cert : NonIdCert,
          cert.word = unrankPairWord r /\
          checkNonIdCert cert = true
  translation_complete :
    forall (r : Fin numPairWords) (mask : SignMask),
      totalLinearOfPairWord (unrankPairWord r) = (matId : Mat3 Rat) ->
        exists cert : TranslationCert,
          cert.word = unrankPairWord r /\
          cert.signMask = mask /\
          checkTranslationCert cert = true
```

Add bridge lemmas:

```lean
theorem ExhaustiveGeneratedCoverage.nonidentity_failure_of_valid :
  -- valid pair word + nonidentity linear part gives checked NonIdCert

theorem ExhaustiveGeneratedCoverage.translation_failure_of_valid :
  -- valid pair word + sign mask + identity linear part gives checked
  -- TranslationCert

theorem translation_mask_exists_of_omni_seq :
  -- started omnihedral sequence realizing an identity pair word has one of the
  -- 64 legal sign masks and matches `translationChoiceSeq`
```

Done when:

```lean
#check ExhaustiveGeneratedCoverage.nonidentity_failure_of_valid
#check ExhaustiveGeneratedCoverage.translation_failure_of_valid
#check translation_mask_exists_of_omni_seq
```

work and `lake build` passes.

## Step 14E: Exhaustive Real Certificate Data

Goal: produce the concrete exhaustive `ExhaustiveGeneratedCoverage` witness that
Step 15 needs, without raw flat per-case certificate output.

Step 14C may stop at representative real certificates. Step 14E must not. It
must extend the generator and generated Lean files so every nonidentity rank and
every identity rank/sign-mask case is covered by a checked real failure
certificate.

Raw one-certificate-per-case generation is not an acceptable default
implementation path: it is expected to be hundreds of GB to TB-scale and would
hide the actual mathematical structure of the search. Step 14E must be
canonical-first:

- start from the already proved cyclic reindexing to `Face.xp`;
- quotient by the full eight-element stabilizer of the started `xp` face;
- add itinerary reversal/time-reversal canonicalization where Lean transport is
  proved, and otherwise use reversal only as a grouping key backed by family
  certificates for every raw member;
- group by exact rational states before emitting generated Lean data;
- share kernel, axis, affine-solve, sign-balance, constraint, and Farkas
  witnesses wherever exact normalization proves they are identical.

Flat per-case chunks may be generated only for diagnostics behind an explicit
`--allow-flat-exhaustive` flag. Complete Steps 14E.1 through 14E.6C and then
14E.7 before starting Step 15.

## Step 14E.1: Exhaustive Case-State Profiler

Goal: measure exact compression opportunities before generating trusted proof
data.

Update:

```text
scripts/generate_exact_certificates.py
scripts/check_certificates_independently.py
```

Add non-proof modes:

```bash
python3 scripts/generate_exact_certificates.py --mode profile-exhaustive-states --with-symmetry --with-reversal --exact-state-groups
python3 scripts/check_certificates_independently.py --mode profile-exhaustive-states --with-symmetry --with-reversal --exact-state-groups
```

Requirements:

- Use exact rational arithmetic only.
- Enumerate all valid pair-word ranks.
- Report raw pair-word counts, identity/nonidentity counts, and translation
  sign-mask counts.
- Report started-symmetry orbit counts under the eight symmetries preserving
  `Face.xp`.
- Report itinerary-reversal orbit counts. Report combined
  started-symmetry/reversal canonical counts exactly for bounded runs; for the
  full compiled profile, report an explicit upper bound until Step 14E.2A
  computes the exact combined manifest.
- For nonidentity words, group by exact rational state: prefix counts, linear
  product, fixed-axis data, forced-sign data, affine-axis data, and first exact
  failure category.
- For identity words, group all 64 masks by translation vector, sequence,
  denominator-sign pattern, and normalized strict linear constraint system.
- For the full compiled profile, exact path-sensitive group totals may be
  reported by formula when the group key includes data, such as prefix-count
  paths or signed face sequences, that is injective on raw cases. Bounded runs
  must still materialize and check detailed exact buckets.
- Normalize translation constraint systems by clearing denominators, dividing
  by positive rational content, sorting duplicate positive-scalar inequalities,
  and retaining exact maps back to original constraint indices.
- Group sparse Farkas witnesses by normalized support and positive rational
  scale.
- Print size estimates for flat certificates, canonical representatives,
  prefix-tree leaves, exact-state family leaves, shared Farkas groups, and final
  generated Lean files.
- If estimates exceed the configured generated-data budget, this step must
  recommend the next required compression layer instead of proceeding to
  exhaustive emission.
- This step is profiling only. It must not emit trusted Lean completeness
  theorems.

Done when:

```bash
python3 scripts/generate_exact_certificates.py --mode profile-exhaustive-states --with-symmetry --with-reversal --exact-state-groups
python3 scripts/check_certificates_independently.py --mode profile-exhaustive-states --with-symmetry --with-reversal --exact-state-groups
```

pass and report the known sanity counts:

```text
pair-words: 97,297,200
identity linear words: 2,468,088
translation sign assignments: 157,957,632
```

## Step 14E.2: Full Canonicalization and Transport Layer

Goal: reduce raw cases by formally transporting failures from canonical
representatives under all proved started transformations.

Update:

```text
Cuboctahedron/Search/Certificates.lean
scripts/generate_exact_certificates.py
scripts/check_certificates_independently.py
```

Requirements:

- Formalize the full eight-element cuboctahedron symmetry group preserving the
  started-at-`xp` finite theorem shape: swap `y` and `z`, negate `y`, negate
  `z`, and their compositions.
- Prove the action laws needed by the checker: identity, closure under
  composition, inverse existence, pair-word validity preservation,
  sign-mask-legality preservation, and preservation of the identity/nonidentity
  linear classification.
- Define deterministic canonicalization for pair words and translation sign
  masks under those symmetries using the lexicographic minimum of the exact
  transformed data.
- Add a separate reversal transform:
  - reconstruct the exact started face sequence;
  - reverse the billiard itinerary with the documented unfolding convention;
  - cyclically restart at `Face.xp`;
  - re-extract the pair word and, for translation cases, the legal sign mask.
- Prove reversal transport before allowing reversal to reduce Lean proof
  obligations. Until that theorem exists, reversal may be used only as a
  generator grouping key, and every raw reversed member must still be covered by
  a checked family certificate.
- Define the combined canonical rule as the lexicographic minimum over all
  proved started symmetries and proved reversal transports.
- Prove Lean transport lemmas:
  - a checked nonidentity failure for a canonical case yields a checked failure
    for every raw case in its orbit;
  - a checked translation failure for a canonical `(rank, mask)` yields a
    checked failure for every transported raw `(rank, mask)`.
- The independent checker must verify that canonicalization is deterministic
  and every raw case maps to exactly one canonical representative. The full
  canonical-orbit manifest records:
  - the started-symmetry group checks;
  - the reversal checks and whether reversal is proof-transport-enabled;
  - the canonical rule used for pair words and translation choices;
  - raw counts, canonical counts, maximum orbit sizes, and exact transform ids.

Done when:

```lean
#check canonical_nonidentity_failure_transport
#check canonical_translation_failure_transport
#check canonical_reversal_nonidentity_transport
#check canonical_reversal_translation_transport
```

work for representative generated canonical and reversal cases, or the reversal
checks are replaced by a generated manifest explicitly marking reversal as
grouping-only and not proof-reducing,

```bash
python3 scripts/check_certificates_independently.py --mode canonical-orbit-coverage --limit 10000
python3 scripts/check_certificates_independently.py --mode canonical-orbit-coverage-manifest
! grep -R "checkCanonical.*RawFailure" Cuboctahedron scripts/generate_exact_certificates.py
```

passes as the development smoke test plus full-run manifest check, and
`lake build` passes.

## Step 14E.2A: Canonical Coverage Manifest

Goal: make raw-to-canonical coverage a compact trusted object before any
certificate families are generated.

Update:

```text
Cuboctahedron/Search/Certificates.lean
scripts/generate_exact_certificates.py
scripts/check_certificates_independently.py
Cuboctahedron/Generated/
```

Requirements:

- Define a compact manifest format mapping raw pair-word ranks and translation
  `(rank, mask)` choices to canonical case ids plus exact transform ids.
- The manifest may use intervals, prefix states, or run-length encoding, but it
  must not rely on approximate hashes or C++ counts.
- Lean checkers must verify:
  - every raw nonidentity rank and every raw identity `(rank, mask)` is covered;
  - no raw case is covered twice;
  - each transform listed in the manifest is one of the Lean-defined started
    symmetries or proved reversal transforms;
  - applying the transform to the canonical representative reconstructs the raw
    pair word or translation choice;
  - canonical ids are deterministic and match the canonicalization rule.
- The independent checker must run the same manifest checks with exact rational
  data and print raw counts, canonical counts, and compression ratios.

Done when:

```lean
#check checkCanonicalCoverageManifest_sound
#check Cuboctahedron.Generated.canonicalCoverageManifest
#check Cuboctahedron.Generated.canonicalCoverageManifest_sound
```

work, and:

```bash
python3 scripts/check_certificates_independently.py --mode canonical-coverage-manifest
lake build
```

pass.

## Step 14E.3: Prefix-State Coverage Trees

Goal: make compressed coverage a trusted Lean object.

Update:

```text
Cuboctahedron/Search/Certificates.lean
scripts/generate_exact_certificates.py
scripts/check_certificates_independently.py
```

Requirements:

- Define Lean datatypes for nonidentity and translation coverage trees.
- Trees are indexed by canonical case ids from Step 14E.2A, not by raw ranks
  directly. Raw coverage is recovered only through the canonical coverage
  manifest and transport/family soundness.
- A tree leaf must contain either:
  - a real checked `NonIdCert` or `TranslationCert`; or
  - a transported representative certificate; or
  - a family certificate whose checker returns a real checked certificate for
    every covered canonical case and therefore every raw case mapped to it; or
  - a shared-state certificate such as a reused kernel/rank/axis witness or a
    shared Farkas witness.
- Define Boolean checkers for tree structure, rank/mask interval coverage,
  branch disjointness, and leaf certificate validity.
- Prove soundness/completeness theorems:
  - every nonidentity canonical id routed to a checked tree yields a checked
    `NonIdCert`;
  - every identity canonical translation id routed to a checked tree yields a
    checked `TranslationCert`;
  - composing tree coverage with the canonical manifest gives raw-rank and
    raw-mask coverage.
- Do not use `native_decide`; generated tree proofs must be small enough for
  ordinary kernel checking.

Done when:

```lean
#check checkNonIdCoverageTree_sound
#check checkTranslationCoverageTree_sound
```

work for representative generated trees, and `lake build` passes.

## Step 14E.4: Nonidentity Family Certificates

Goal: prune large nonidentity pair-word subtrees with exact family failures.

Update:

```text
Cuboctahedron/Search/Certificates.lean
Cuboctahedron/Generated/NonIdentity/
scripts/generate_exact_certificates.py
scripts/check_certificates_independently.py
```

Requirements:

- Support prefix-tree pruning certificates for these exact failure families:
  - no fixed axis;
  - bad direction sign;
  - bad pair balance;
  - axis misses `xp` start interior;
  - bad first hit;
  - bad hit interior.
- Generate checked family leaves for every nonempty failure family in the
  current generated domain. If a supported failure constructor has no concrete
  family leaf in that domain, emit explicit failure-kind accounting explaining
  whether it is globally absent for valid nonidentity pair-words or merely not
  represented by the bounded sample.
- Prefer family leaves over explicit per-rank leaves. Emit explicit checked
  `NonIdCert` leaves only when no family certificate applies.
- Generate family leaves over canonical nonidentity groups after
  started-symmetry, proved reversal, and exact-state grouping.
- Share kernel-line, fixed-axis, sign-balance, affine-solve, start-interior,
  first-hit, and hit-interior witnesses by exact normalized state id.
- Every generated family leaf must prove all completions satisfy its family
  hypotheses and return a checked `NonIdCert` for each canonical member.
- Prove a generic Lean theorem that the checked canonical/family certificate
  excludes every raw rank mapped to it by the canonical manifest.
- The independent checker must reject any nonidentity raw rank or canonical id
  not covered by exactly one leaf.
- The independent checker must reject any supported nonidentity failure
  constructor that is neither present as a family leaf nor explicitly accounted
  for by the generated failure-kind accounting.

Done when:

```lean
#check Cuboctahedron.Generated.NonIdentity.sampleFamilyCoverage
#check Cuboctahedron.Generated.NonIdentity.sampleFamilyCoverage_sound
```

work for nontrivial prefix subtrees, and `lake build` passes.

## Step 14E.5: Translation Family and Shared Farkas Certificates

Goal: prune translation cases by shared exact constraint systems and reusable
Farkas witnesses.

Update:

```text
Cuboctahedron/Search/Certificates.lean
Cuboctahedron/Generated/Translation/
scripts/generate_exact_certificates.py
scripts/check_certificates_independently.py
```

Requirements:

- Generate family certificates for:
  - zero translation vector;
  - bad denominator/direction sign;
  - shared infeasible strict systems via sparse exact `FarkasCert`.
- Normalize translation constraint systems so equivalent cases share one
  Farkas certificate.
- Normalize by clearing denominators, dividing by positive rational content,
  sorting duplicate positive-scalar inequalities, and storing exact index maps
  from normalized constraints back to original constraints.
- Normalize sparse Farkas certificates by support order and positive rational
  scale, then share the witness across every equivalent normalized system.
- Prove Lean transport from a normalized Farkas certificate to every canonical
  translation case in its group, and compose it with the canonical manifest to
  cover every raw `(rank, mask)` case.
- Emit explicit checked `TranslationCert` leaves only when grouping fails.
- The independent checker must reject any identity raw `(rank, mask)` or
  canonical translation id not covered by exactly one leaf.

Done when:

```lean
#check Cuboctahedron.Generated.Translation.sampleFamilyCoverage
#check Cuboctahedron.Generated.Translation.sampleFamilyCoverage_sound
```

work for nontrivial translation groups, and `lake build` passes.

## Step 14E.6: Exhaustive Real Certificate Generator Mode

Goal: generate compressed exhaustive real certificate data for the selected
evidence backend.

Update:

```text
scripts/generate_exact_certificates.py
scripts/check_certificates_independently.py
Cuboctahedron/Generated/NonIdentity/
Cuboctahedron/Generated/Translation/
Cuboctahedron/Generated/AllGenerated.lean
certs/
```

Add generator mode:

```bash
python3 scripts/generate_exact_certificates.py --mode exhaustive-real-certs
python3 scripts/check_certificates_independently.py --mode exhaustive-real-certs
```

Requirements:

- Use exact rational arithmetic only.
- Refuse to emit exhaustive generated Lean unless Steps 14E.1, 14E.2, 14E.2A,
  14E.3, 14E.4, and 14E.5 have produced valid manifests and summaries.
- Consume canonical/group manifests as the source of case ids. Do not enumerate
  flat raw certificate arrays by default.
- Generate compressed nonidentity coverage for every rank whose pair-word has
  nonidentity linear part.
- Generate compressed translation coverage for every identity rank and every
  legal `SignMask`.
- Emit JSON summaries including raw case counts, compressed leaf counts,
  generated Lean sizes, compact blob sizes, and independent checker counts.
- Reject the run if any raw case is uncovered, multiply covered, or covered
  only by a classifier instead of a real failure certificate.
- Reject the run if the generator would fall back to flat per-case data without
  the explicit `--allow-flat-exhaustive` diagnostic flag.
- Do not use C++ counts as proof data. They may be printed only as sanity
  checks.
- Do not treat `native_decide` as an available proof backend. Any certificate
  check proof that needs it must be rejected and the run must fall back to a
  trusted kernel-checked representation.

Done when:

```bash
python3 scripts/generate_exact_certificates.py --mode exhaustive-real-certs
python3 scripts/check_certificates_independently.py --mode exhaustive-real-certs
lake build
```

pass on the compressed evidence data selected by Step 14E.6D.

## Step 14E.6A: Compression Feasibility Audit

Goal: decide whether exhaustive real certificate generation can be made
GitHub- and CI-friendly by replacing one-certificate-per-canonical-case output
with reusable proof families.

Do this before Step 14E.7. If Step 14E.6 still estimates generated Lean data
above the configured repository-size budget, Step 14E.7 must not proceed until
this audit identifies a smaller representation and updates Step 14E.6 to emit
that representation.

Update:

```text
scripts/generate_exact_certificates.py
scripts/check_certificates_independently.py
scripts/generated/
CODEX_EXECUTION_STEPS.md
README.md
```

Add generator/checker modes:

```bash
python3 scripts/generate_exact_certificates.py --mode compression-audit
python3 scripts/check_certificates_independently.py --mode compression-audit
```

Requirements:

- Use exact rational arithmetic only.
- Consume the Step 14E.1 profile, Step 14E.2/14E.2A canonical coverage
  manifests, Step 14E.3 prefix-tree summaries, Step 14E.4 nonidentity family
  summaries, Step 14E.5 translation family summaries, and the Step 14E.6 gated
  size estimate.
- Report how many canonical cases are killed by each nonidentity failure
  family.
- Report how many translation cases share each normalized constraint system.
- Report how many translation cases share each normalized sparse Farkas
  certificate shape.
- Report how many prefix-tree nodes can replace leaf certificates, split by
  nonidentity and translation coverage.
- Estimate generated Lean source size after each compression layer:
  canonical representatives, prefix trees, nonidentity families, shared
  translation constraints, shared Farkas witnesses, and the final expected
  `ExhaustiveGeneratedCoverage` witness.
- Print explicit thresholds for whether the audited design is expected to fit
  under 1 GiB, 500 MiB, and 100 MiB of generated Lean source.
- If the audit cannot plausibly fit under the configured budget, recommend the
  next required compression layer instead of allowing exhaustive emission.
- Do not emit trusted Lean completeness theorems. This is a decision gate and
  sizing proof-of-concept only.

Done when:

```bash
python3 scripts/generate_exact_certificates.py --mode compression-audit
python3 scripts/check_certificates_independently.py --mode compression-audit
lake build
```

pass and the audit summary clearly answers whether the current compressed
certificate strategy can plausibly fit below 1 GiB, 500 MiB, or 100 MiB before
Step 14E.7 begins.

## Step 14E.6B: Full Aggregate Compression Profiler

Goal: run the complete exact aggregate profiler over all pair-words and all
translation masks, so Step 14E.6A can stop relying on partial histograms or
formula-only estimates.

Update:

```text
scripts/profile_exhaustive_states.cpp
scripts/exact_profile.py
scripts/generate_exact_certificates.py
scripts/check_certificates_independently.py
scripts/generated/aggregate_compression_profile.json
scripts/generated/compression_audit.json
README.md
CODEX_EXECUTION_STEPS.md
```

Add generator/checker modes:

```bash
python3 scripts/generate_exact_certificates.py --mode aggregate-compression-profile
python3 scripts/check_certificates_independently.py --mode aggregate-compression-profile
python3 scripts/generate_exact_certificates.py --mode compression-audit
python3 scripts/check_certificates_independently.py --mode compression-audit
```

Requirements:

- Use exact rational arithmetic for all profile computations.
- Run the aggregate profiler over all `97,297,200` valid pair-words and all
  `157,957,632` translation sign assignments.
- Keep aggregate mode compact: do not retain raw per-case string sets when a
  bounded exact histogram or shape hash is sufficient for profiling.
- Record exact raw counts, canonical symmetry/reversal class counts,
  nonidentity failure-shape histograms, bad translation-shape histograms,
  normalized translation constraint-system histograms, normalized sparse
  Farkas-shape histograms, unresolved Farkas counts, and size-threshold
  decisions.
- Feed the complete aggregate profile into the Step 14E.6A compression audit.
- If the aggregate result is still above the configured size budget, mark Step
  14E.7 blocked and add the next required intermediate compression step instead
  of proceeding to generated Lean coverage.
- This step is profiling and planning data only. It must not emit trusted Lean
  completeness theorems.

Current completed full-profile result:

```text
pair-words: 97,297,200
identity linear words: 2,468,088
nonidentity words: 94,829,112
translation sign assignments: 157,957,632
nonidentity family shapes: 42,409,280
bad translation shapes: 151,732,472
translation constraint systems: 3,095,090
translation Farkas shapes: 20,298
unresolved Farkas cases: 0
final certificate estimate: 15,957,252
estimated Lean source: 8,170,113,024 bytes
decision: blocked_exceeds_budget
```

Done when:

```bash
python3 scripts/generate_exact_certificates.py --mode aggregate-compression-profile
python3 scripts/check_certificates_independently.py --mode aggregate-compression-profile
python3 scripts/generate_exact_certificates.py --mode compression-audit
python3 scripts/check_certificates_independently.py --mode compression-audit
lake build
```

pass and `scripts/generated/aggregate_compression_profile.json` is complete.

## Step 14E.6C: Prefix and Parametric Family Compression

Goal: reduce the complete Step 14E.6B estimate below the generated-data budget
and decide whether the compact-certificate pilot is required before emitting the
concrete exhaustive coverage witness.

Step 14E.6B proves that symmetry, reversal, exact-state grouping, shared
translation constraints, and shared sparse Farkas witnesses are not enough by
themselves: the best current estimate is still about 7.61 GiB of generated Lean
source. Step 14E.6C must add a stronger compression layer before the compact
pilot and final coverage witness.

Update:

```text
scripts/profile_exhaustive_states.cpp
scripts/exact_profile.py
scripts/generate_exact_certificates.py
scripts/check_certificates_independently.py
Cuboctahedron/Search/
Cuboctahedron/Generated/
certs/
README.md
CODEX_EXECUTION_STEPS.md
```

Requirements:

- Analyze the complete aggregate profile and identify high-volume families that
  can be proved by prefix certificates or parametric certificates instead of by
  one certificate per canonical representative.
- Prefer certificates that cover whole subtrees of the valid pair-word search:
  prefix multiplicity states, linear-prefix states, forced-axis sign patterns,
  pair-balance obstructions, translation denominator-sign obstructions, and
  normalized constraint families.
- Add exact Lean checker definitions for the new prefix/parametric certificate
  kinds before generating large data.
- Extend the independent checker to recompute each compressed family from exact
  data and to prove that every covered raw rank or canonical rank is covered
  exactly once.
- Update the compression audit to include the new family layer and require
  `ready_for_14E7 = true` only when the final estimate fits under the configured
  budget, with 1 GiB as the hard upper bound and 500 MiB/100 MiB reported as
  stricter targets.
- Treat `ready_for_14E7 = true` as permission to run Step 14E.6D, not as
  permission to skip the compact-certificate pilot.
- Do not proceed to Step 14E.6D while the audit status is
  `blocked_exceeds_budget` or `blocked_needs_deeper_compression`.

Current completed compression-gate result:

```text
parametric nonidentity families: 2
nonidentity residual singleton estimate: 2,038,656
parametric translation families: 2
shared translation Farkas estimate: 20,298
final certificate estimate: 2,058,958
estimated Lean source: 1,054,186,496 bytes
estimated Lean source: 0.98 GiB
decision: ready_for_14E7
```

This is a sizing and planning gate, not the final Lean proof data. Because the
current estimate is only barely below 1 GiB, Step 14E.6D must benchmark a
compact checked certificate representation before Step 14E.7 chooses the final
evidence backend.

Done when:

```bash
python3 scripts/generate_exact_certificates.py --mode prefix-parametric-compression
python3 scripts/check_certificates_independently.py --mode prefix-parametric-compression
python3 scripts/generate_exact_certificates.py --mode compression-audit
python3 scripts/check_certificates_independently.py --mode compression-audit
lake build
```

pass with `ready_for_14E7 = true` and a final generated Lean fallback estimate
below the configured repository-size budget.

## Step 14E.6D: Compact Certificate Import Pilot

Goal: determine whether exhaustive evidence should be stored as compact checked
certificate data instead of near-1 GiB generated Lean source.

This step is mandatory after Step 14E.6C because the generated Lean fallback is
large enough to be operationally fragile. The compact path may become the final
Step 14E.7 backend only if Lean checks it without `native_decide`.

Update:

```text
Cuboctahedron/Search/CertificateFormat.lean
Cuboctahedron/Search/CertificateDecode.lean
Cuboctahedron/Search/CertificateChecker.lean
Cuboctahedron/Generated/
scripts/generate_exact_certificates.py
scripts/check_certificates_independently.py
certs/
scripts/generated/
```

Add generator/checker modes:

```bash
python3 scripts/generate_exact_certificates.py --mode compact-cert-sample
python3 scripts/check_certificates_independently.py --mode compact-cert-sample
python3 scripts/generate_exact_certificates.py --mode compact-cert-pilot --limit 100000
python3 scripts/check_certificates_independently.py --mode compact-cert-pilot --limit 100000
```

Requirements:

- Use Base64 text for the v1 blob so decoding is simple and auditable in Lean.
  Use Base85 only if Base64 fails the pilot gate and the Base85 decoder is also
  proved sound.
- Define a compact binary schema with:
  - magic bytes and schema version;
  - a section table with byte lengths;
  - unsigned varints and signed zig-zag varints;
  - rational values as signed numerator plus positive denominator;
  - dictionaries for repeated pair words, face sequences, axes, affine solves,
    normalized constraint systems, Farkas witnesses, family ids, and coverage
    tree nodes.
- Add Lean APIs with these shapes:

```lean
def decodeCertBlob : String -> Except DecodeError CertBundle
def checkCertBundle : CertBundle -> Bool

theorem checkCertBundle_sound :
  checkCertBundle bundle = true -> ExhaustiveGeneratedCoverage
```

- The decoder checker must reject malformed input: bad magic/version, section
  length mismatch, integer overflow relative to declared bounds, invalid face or
  pair ids, nonpositive rational denominators, dangling dictionary references,
  duplicate coverage, and missing coverage.
- `checkCertBundle` must reconstruct or reference the existing checked
  obligations. It may not introduce a parallel unproved notion of failure.
  Every terminal obstruction must ultimately call the existing `checkNonIdCert`,
  `checkTranslationCert`, or a proved family/shared-witness checker whose
  soundness returns those checked certificates.
- The final proof of each pilot `checkCertBundle = true` theorem must use only
  trusted Lean kernel checking (`rfl`, `simp`, `norm_num`, ordinary `decide`, or
  small chunked reflection lemmas). Do not use `native_decide`.
- Compare the compact blob backend with the generated Lean backend on the same
  deterministic pilot slice. Record:
  - `.lean` source bytes;
  - blob bytes;
  - `.olean` bytes;
  - `lake build` wall time;
  - peak memory when available;
  - checker theorem style used.
- Accept the compact backend for Step 14E.7 only if:
  - the pilot builds without `native_decide`;
  - the axiom audit introduces no new trust dependency;
  - compact source plus blob size is at least 4x smaller than generated Lean
    source for the same pilot slice;
  - build time and memory are not materially worse than generated Lean;
  - the independent checker validates the same slice and reports identical
    coverage counts.
- If the compact proof of `checkCertBundle = true` cannot be made trusted, record
  the failure reason and use the generated Lean fallback from Step 14E.6C. Do
  not accept a compact path proved by `native_decide`.

Done when:

```lean
#check decodeCertBlob
#check checkCertBundle
#check checkCertBundle_sound
#check Cuboctahedron.Generated.compactPilotCoverage
```

work for the pilot, and:

```bash
python3 scripts/generate_exact_certificates.py --mode compact-cert-sample
python3 scripts/check_certificates_independently.py --mode compact-cert-sample
python3 scripts/generate_exact_certificates.py --mode compact-cert-pilot --limit 100000
python3 scripts/check_certificates_independently.py --mode compact-cert-pilot --limit 100000
lake build
grep -R "sorry\|admit\|axiom\|native_decide\|unsafe" Cuboctahedron || true
lean Cuboctahedron/PrintAxioms.lean
```

all pass, and `scripts/generated/compact_cert_pilot.json` records either
`selected_backend = "compact_blob"` or a concrete trusted-checking failure that
justifies `selected_backend = "generated_lean_fallback"`.

## Step 14E.7A: Deterministic Pair-Word Rank/Unrank Bridge

Goal: make Lean's public pair-word ranking agree with the deterministic
lexicographic rank used by generated certificate data.

This step is required before the generated Lean fallback can prove the public
`ExhaustiveGeneratedCoverage` API. Existing generated certificate checks use
`pairWordLexRank?`; the public API in Step 14E.7 is stated in terms of
`unrankPairWord`. These must be the same enumeration.

Update:

```text
Cuboctahedron/Search/Enumeration.lean
Cuboctahedron/Search/Certificates.lean
scripts/generate_exact_certificates.py
scripts/check_certificates_independently.py
```

Requirements:

- Promote the deterministic lexicographic pair-word ranking to the authoritative
  public enumeration.
- Use the fixed pair order:

```lean
[PairId.x, PairId.y, PairId.z, PairId.d111, PairId.d11m, PairId.d1m1,
  PairId.dm11]
```

  and the valid multiplicities `[1,2,2,2,2,2,2]`.
- Define the public APIs so generated ranks and Lean ranks coincide:

```lean
def rankPairWord? : PairWord -> Option (Fin numPairWords)
def unrankPairWord : Fin numPairWords -> PairWord
```

- Prove:

```lean
theorem unrankPairWord_valid :
  forall r : Fin numPairWords, ValidPairWord (unrankPairWord r)

theorem rank_unrank_pairword :
  forall r : Fin numPairWords, rankPairWord? (unrankPairWord r) = some r

theorem unrank_rank_pairword :
  forall w : PairWord,
    ValidPairWord w -> exists r : Fin numPairWords, unrankPairWord r = w

theorem rankPairWord?_eq_some_iff_unrank :
  forall (w : PairWord) (r : Fin numPairWords),
    rankPairWord? w = some r <-> w = unrankPairWord r
```

- Remove duplicate or conflicting rankers. If `pairWordLexRank?` remains for
  backwards compatibility, make it an alias or prove:

```lean
theorem pairWordLexRank?_eq_rankPairWord? :
  forall w : PairWord, pairWordLexRank? w = rankPairWord? w
```

- Add coverage-to-word bridge lemmas used by Step 14E.7B:

```lean
theorem checkNonIdCoveredRank_word
  {r : Fin numPairWords} {cert : NonIdCert} :
  checkNonIdCoveredRank r.val cert = true ->
    cert.word = unrankPairWord r

theorem checkTranslationCoveredCase_word_mask
  {r : Fin numPairWords} {mask : SignMask} {cert : TranslationCert} :
  checkTranslationCoveredCase
      { pairRank := r.val, signMask := mask.val } cert = true ->
    cert.word = unrankPairWord r /\ cert.signMask = mask
```

- The proof may use combinatorial counts and recursive unranking, but it must
  not use generated certificate data, C++ counts as assumptions, `native_decide`,
  `axiom`, `sorry`, or `admit`.

Done when:

```lean
#check rank_unrank_pairword
#check unrank_rank_pairword
#check rankPairWord?_eq_some_iff_unrank
#check checkNonIdCoveredRank_word
#check checkTranslationCoveredCase_word_mask
```

work, and:

```bash
lake build
grep -R "sorry\|admit\|axiom\|native_decide\|unsafe" Cuboctahedron || true
```

passes.

## Step 14E.7B0: Formal Parametric Family Checkers

Goal: turn the Step 14E.6C prefix-parametric compression plan from profiling
data into Lean-checkable family evidence that Step 14E.7B can emit.

Step 14E.6C records that high-volume early failures can be represented by a
small number of prefix or parametric families, but that JSON profile is not
proof data. Before the generated Lean fallback can honestly mark
`complete = true`, Lean must have checker APIs and soundness theorems for those
families. A manifest that records only counts or selected backend is not enough.

Update:

```text
Cuboctahedron/Search/Certificates.lean
Cuboctahedron/Generated/NonIdentity/
Cuboctahedron/Generated/Translation/
scripts/generate_exact_certificates.py
scripts/check_certificates_independently.py
scripts/generated/exhaustive_real_certs_summary.json
```

Requirements:

- Add real Lean certificate/checker types for the Step 14E.6C compressed
  families:
  - nonidentity bad direction sign prefix families;
  - nonidentity bad pair balance prefix families;
  - translation bad direction denominator-sign families;
  - translation zero-vector families;
  - shared Farkas translation families.
- Each family checker must prove, for any covered raw rank or translation case,
  an obstruction strong enough for the existing finite proof pipeline. Prefer
  returning a checked `NonIdCert` or `TranslationCert`; if a family theorem
  avoids constructing each singleton certificate, its soundness must still have
  equivalent strength and be integrated into `ExhaustiveGeneratedCoverage`.
- Do not treat Step 14E.6C counts, profile JSON, C++ outputs, or generated
  manifests as proof assumptions.
- Extend the generator so it emits representative non-sample family objects for
  these checker types, not just family counts.
- Extend the independent checker so it recomputes family coverage exactly and
  rejects any completed exhaustive summary whose evidence is only a manifest.
- Keep `scripts/generated/exhaustive_real_certs_summary.json` at
  `complete = false` until Step 14E.7B emits actual evidence. If prerequisites
  are otherwise ready, the status should remain
  `ready_but_full_emitter_not_implemented`.
- Do not use `native_decide`, `axiom`, `sorry`, `admit`, `unsafe`, Float, or
  numerical tolerances in Lean proof code.

Done when:

```lean
#check checkNonIdParametricFamily
#check checkNonIdParametricFamily_sound
#check checkTranslationParametricFamily
#check checkTranslationParametricFamily_sound
```

or equivalently named APIs work for non-sample generated family evidence, and:

```bash
python3 scripts/generate_exact_certificates.py --mode exhaustive-real-certs
python3 scripts/check_certificates_independently.py --mode exhaustive-real-certs
lake build
grep -R "sorry\|admit\|axiom\|native_decide\|unsafe" Cuboctahedron || true
```

passes with the exhaustive summary still gated, unless Step 14E.7B has already
emitted the actual full witness.

Implemented artifacts:

- `NonIdParametricFamily`, `TranslationParametricFamily`, their executable
  checkers, and soundness theorems live in `Cuboctahedron/Search/Certificates.lean`.
- Representative generated witnesses live in
  `Cuboctahedron/Generated/NonIdentity/ParametricSample.lean` and
  `Cuboctahedron/Generated/Translation/ParametricSample.lean`.
- The generator/checker mode is:

```bash
python3 scripts/generate_exact_certificates.py --mode parametric-family-checkers
python3 scripts/check_certificates_independently.py --mode parametric-family-checkers
```

This completes the checker layer and representative family evidence for
Step 14E.7B0. It deliberately does not mark exhaustive coverage complete;
Step 14E.7B must still emit or otherwise provide the full witness.

## Step 14E.7B1: Exhaustive Parametric Family Semantics

Goal: turn the Step 14E.7B0 representative parametric-family checker layer into
actual exhaustive Lean semantics for every rank/case covered by the high-volume
compressed families.

This is required before Step 14E.7B can honestly emit the generated Lean
fallback. `ExhaustiveGeneratedCoverage` requires a checked `NonIdCert` or
`TranslationCert`, or an equivalently strong obstruction theorem, for every
covered rank/case. The current prefix-parametric JSON contains counts and
representative samples only; those are not proof data.

Update:

```text
Cuboctahedron/Search/Certificates.lean
Cuboctahedron/Generated/NonIdentity/ParametricSample.lean
Cuboctahedron/Generated/Translation/ParametricSample.lean
scripts/generate_exact_certificates.py
scripts/check_certificates_independently.py
scripts/generated/parametric_family_checkers.json
scripts/generated/exhaustive_real_certs_summary.json
```

Requirements:

- Add Lean predicates or certificates that characterize the full compressed
  families, not just sample intervals:
  - nonidentity `badDirectionSign`;
  - nonidentity `badPairBalance`;
  - translation `badDirectionSign`;
  - translation `badTranslationVector`.
- For each family, prove a soundness theorem whose conclusion is strong enough
  to satisfy `ExhaustiveGeneratedCoverage` without emitting one singleton
  certificate per raw case. Acceptable conclusions are:
  - `∃ cert, cert.word = unrankPairWord r ∧ checkNonIdCert cert = true`;
  - `∃ cert, cert.word = unrankPairWord r ∧ cert.signMask = mask ∧
      checkTranslationCert cert = true`;
  - or a refactored `ExhaustiveGeneratedCoverage` field with equivalent
    downstream strength for `generated_nonidentity_complete_of_coverage` and
    `generated_translation_complete_of_coverage`.
- The generator may compute exact family witnesses externally, but Lean must
  check the family predicates and the coverage theorem.
- The independent checker must reject any `complete = true` exhaustive summary
  unless these exhaustive family semantics are present and referenced.
- Keep `scripts/generated/exhaustive_real_certs_summary.json` at
  `complete = false` until this step and Step 14E.7B both have actual emitted
  evidence.
- Do not use `native_decide`, `axiom`, `sorry`, `admit`, `unsafe`, Float, or
  numerical tolerances in Lean proof code.

Done when:

```lean
#check exhaustiveNonIdBadDirectionFamily_sound
#check exhaustiveNonIdBadPairBalanceFamily_sound
#check exhaustiveTranslationBadDirectionFamily_sound
#check exhaustiveTranslationBadVectorFamily_sound
```

or equivalently named theorems compile, and:

```bash
python3 scripts/generate_exact_certificates.py --mode parametric-family-checkers
python3 scripts/check_certificates_independently.py --mode parametric-family-checkers
lake build
grep -R "sorry\|admit\|axiom\|native_decide\|unsafe" Cuboctahedron || true
```

passes with the exhaustive summary still gated.

## Step 14E.7B: Generated Lean Fallback Emitter

Goal: emit the concrete generated Lean fallback evidence selected by
Step 14E.6D, using the Step 14E.6C prefix-parametric strategy.

This step is the large-data generation step. Do not start it until Step 14E.7A
Step 14E.7B0, and Step 14E.7B1 are complete, because every emitted rank must
prove facts about the public `unrankPairWord` and every compressed family must
have exhaustive Lean-checked soundness, not merely representative samples.

Update:

```text
Cuboctahedron/Generated/NonIdentity/
Cuboctahedron/Generated/Translation/
Cuboctahedron/Generated/AllGenerated.lean
scripts/generate_exact_certificates.py
scripts/check_certificates_independently.py
scripts/generated/exhaustive_real_certs_summary.json
```

Requirements:

- `scripts/generate_exact_certificates.py --mode exhaustive-real-certs` must
  emit actual Lean fallback evidence when:
  - `scripts/generated/compact_cert_pilot.json` selects
    `generated_lean_fallback`;
  - `scripts/generated/prefix_parametric_compression.json` has
    `ready_for_14E7 = true`;
  - the estimated generated source fits the configured hard budget;
  - free disk space is above the configured floor.
- Keep the existing refusal behavior for stale prerequisites, budget failures,
  missing disk space, or a non-fallback backend selection.
- Emit the fallback evidence using exactly this strategy:
  - nonidentity prefix family for `badDirectionSign`;
  - nonidentity prefix family for `badPairBalance`;
  - singleton nonidentity residual certificates for axis/simulation cases;
  - translation prefix family for `badDirectionSign`;
  - translation prefix family for `badTranslationVector`;
  - shared Farkas translation families for all normalized Farkas shapes.
- Every emitted leaf/family must ultimately return a checked `NonIdCert` or
  `TranslationCert` through existing sound checkers or newly proved family
  checkers whose soundness returns those same checked certificate types.
- Generated files must be chunked. Use deterministic chunk names and stable
  ordering so interrupted builds can resume by regenerating the same files.
- `scripts/generated/exhaustive_real_certs_summary.json` must change from a
  gated estimate to a completed generated fallback manifest:

```json
{
  "mode": "exhaustive-real-certs",
  "complete": true,
  "summary_kind": "generated-lean-fallback",
  "selected_backend": "generated_lean_fallback"
}
```

- `scripts/check_certificates_independently.py --mode exhaustive-real-certs`
  must validate the completed manifest, emitted chunk counts, coverage counts,
  selected backend, and generated paths.
- Do not emit sample-only chunks as completeness evidence.
- Do not use `native_decide`, `axiom`, `sorry`, `admit`, `unsafe`, or C++
  floating-point output in generated Lean.

Done when:

```bash
python3 scripts/generate_exact_certificates.py --mode exhaustive-real-certs
python3 scripts/check_certificates_independently.py --mode exhaustive-real-certs
lake build
grep -R "sorry\|admit\|axiom\|native_decide\|unsafe" Cuboctahedron || true
```

passes, and the generated manifest records `complete = true`.

## Step 14E.7: Concrete Exhaustive Coverage Witness

Goal: expose the concrete Lean witness consumed by Step 15 using the completed
evidence backend selected by Step 14E.6D.

Prerequisites:

- Step 14E.7A is complete.
- Step 14E.7B0 is complete if Step 14E.6D selected
  `generated_lean_fallback`.
- Step 14E.7B is complete if Step 14E.6D selected `generated_lean_fallback`.
- The compact semantic checker is complete if Step 14E.6D selected
  `compact_blob`.

Update:

```text
Cuboctahedron/Generated/NonIdentity/
Cuboctahedron/Generated/Translation/
Cuboctahedron/Generated/AllGenerated.lean
certs/
```

Requirements:

- The selected evidence backend must prove:

```lean
theorem Cuboctahedron.Generated.NonIdentity.complete :
  forall r : Fin numPairWords,
    totalLinearOfPairWord (unrankPairWord r) ≠ (matId : Mat3 Rat) ->
      exists cert : NonIdCert,
        cert.word = unrankPairWord r /\
          checkNonIdCert cert = true

theorem Cuboctahedron.Generated.Translation.complete :
  forall (r : Fin numPairWords) (mask : SignMask),
    totalLinearOfPairWord (unrankPairWord r) = (matId : Mat3 Rat) ->
      exists cert : TranslationCert,
        cert.word = unrankPairWord r /\
          cert.signMask = mask /\
            checkTranslationCert cert = true
```

- `Cuboctahedron.Generated.AllGenerated` must define:

```lean
def exhaustiveGeneratedCoverage : ExhaustiveGeneratedCoverage := ...
```

- If Step 14E.6D selected `compact_blob`, the final generated Lean wrapper must:
  - include the final blob with `include_str`;
  - decode it with `decodeCertBlob`;
  - check it with `checkCertBundle`;
  - derive `exhaustiveGeneratedCoverage` from `checkCertBundle_sound`;
  - prove the required Boolean check using only trusted kernel-checked
    reduction/chunked reflection, never `native_decide`.

- If Step 14E.6D selected `generated_lean_fallback`, the generated Lean witness
  must be the completed fallback evidence emitted by Step 14E.7B and assembled
  from:
  - the canonical coverage manifest from Step 14E.2A;
  - canonical nonidentity and translation coverage trees from Step 14E.3;
  - nonidentity family soundness from Step 14E.4;
  - translation shared-Farkas/family soundness from Step 14E.5;
  - transport soundness for started symmetries and any proved reversal
    transforms.

- In either backend, the public theorem names and
  `Generated.exhaustiveGeneratedCoverage` interface must be identical so Step 15
  does not depend on the representation of the exhaustive evidence.

- Do not use `axiom`, `sorry`, `admit`, `native_decide`, `unsafe`, C++ counts,
  or sample-only chunks to prove completeness.
- Do not choose the compact backend unless `scripts/generated/compact_cert_pilot.json`
  selected it and recorded passing size/build/trust checks.

Done when:

```lean
#check Cuboctahedron.Generated.NonIdentity.complete
#check Cuboctahedron.Generated.Translation.complete
#check Cuboctahedron.Generated.exhaustiveGeneratedCoverage
```

work, and:

```bash
python3 scripts/generate_exact_certificates.py --mode exhaustive-real-certs
python3 scripts/check_certificates_independently.py --mode exhaustive-real-certs
python3 scripts/check_certificates_independently.py --mode compact-cert-pilot --limit 100000
lake build
grep -R "sorry\|admit\|axiom\|native_decide\|unsafe" Cuboctahedron || true
lean Cuboctahedron/PrintAxioms.lean
```

all pass.

## Step 15: Complete Finite Impossibility Theorems

Goal: assemble the certificate soundness and enumeration coverage into the two main finite case theorems.

Prerequisites:

- Step 14A has strengthened `UnfoldedFeasible`.
- Step 14B has sound real failure certificate checkers.
- Step 14C has generated checked `NonIdCert` and `TranslationCert` data.
- Step 14D exposes exhaustive coverage returning those checked failure
  certificates.
- Step 14E.6D has selected either the compact blob backend or the generated
  Lean fallback with recorded trusted-checking benchmark data.
- Step 14E.7 has produced a concrete, Lean-checked
  `Generated.exhaustiveGeneratedCoverage` witness.

Do not start Step 15 while `ExhaustiveGeneratedCoverage` still returns only
`NonIdentityLinearCert` or `TranslationChoiceCert`. Those classify cases but do
not prove impossibility.

Do not start Step 15 while generated data is sample-only. Step 15 requires a
concrete exhaustive coverage witness, not just the `_of_coverage` assembly
lemmas.

Create or complete:

```text
Cuboctahedron/Search/Certificates.lean
Cuboctahedron/Generated/AllGenerated.lean
```

Prove:

```lean
theorem generated_nonidentity_complete :
  forall seq,
    IsOmniSeq seq ->
    StartsXp seq ->
    totalLinear seq <> matId ->
    ¬ UnfoldedFeasible seq := by
  ...

theorem generated_translation_complete :
  forall seq,
    IsOmniSeq seq ->
    StartsXp seq ->
    totalLinear seq = matId ->
    ¬ UnfoldedFeasible seq := by
  ...
```

Then prove:

```lean
theorem no_unfolded_omni_starting_xp :
  forall seq,
    IsOmniSeq seq ->
    StartsXp seq ->
    ¬ UnfoldedFeasible seq := by
  intro seq hOmni hStart hFeas
  by_cases hM : totalLinear seq = matId
  · exact generated_translation_complete seq hOmni hStart hM hFeas
  · exact generated_nonidentity_complete seq hOmni hStart hM hFeas
```

Done when:

```lean
#check generated_nonidentity_complete
#check generated_translation_complete
#check no_unfolded_omni_starting_xp
```

all work and `lake build` passes.

## Step 16: Final Theorem

Goal: lift no unfolded itinerary to no nonsingular omnihedral billiard orbit.

Create:

```text
Cuboctahedron/MainTheorem.lean
Cuboctahedron/PrintAxioms.lean
```

In `MainTheorem.lean`, prove:

```lean
theorem cuboctahedron_no_omnihedral :
  ¬ exists o : BilliardOrbit14,
      o.Nonsingular /\ o.Periodic /\ o.TouchesEachFaceExactlyOnce := by
  intro h
  rcases h with ⟨o, hNonSing, hPeriodic, hOmni⟩
  obtain ⟨o', hOmni', hStart⟩ := can_start_at_xp o hOmni
  have hUnfolded := billiard_implies_unfolded o' hOmni' hStart
  exact no_unfolded_omni_starting_xp o'.face hOmni' hStart hUnfolded
```

Adjust syntax to match the final definitions.

In `PrintAxioms.lean`, add:

```lean
import Cuboctahedron.MainTheorem

#print axioms Cuboctahedron.cuboctahedron_no_omnihedral
```

Done when:

```bash
lake build
lean Cuboctahedron/PrintAxioms.lean
```

passes.

## Step 17: Final Audit

Goal: verify that the final theorem is trustworthy and reviewable.

Run:

```bash
lake build
grep -R "sorry\|admit\|axiom\|native_decide\|unsafe" Cuboctahedron || true
lean Cuboctahedron/PrintAxioms.lean
```

Inspect the grep output:

- no `sorry`;
- no `admit`;
- no custom `axiom`;
- no `unsafe`;
- no `native_decide` in imported final theorem dependencies.

Inspect `#print axioms` output:

- acceptable standard Lean/mathlib axioms may appear;
- `sorryAx` must not appear;
- `Lean.trustCompiler` must not appear;
- no project-specific proof-bypass axiom may appear.

Update `README.md` with:

- theorem statement;
- exact mathematical meaning of nonsingular and omnihedral;
- coordinate model of the cuboctahedron;
- summary of non-identity and translation case split;
- exact validation commands;
- recorded `#print axioms` output;
- warning that C++ verifier files are search evidence only, not trusted proof.

Done when the repository contains:

```text
AGENTS.md
README.md
RAW_PLAN.md
PROOF_SKETCH.md
CODEX_EXECUTION_STEPS.md
lean-toolchain
lakefile.lean
Cuboctahedron/
scripts/
```

and all final validation commands pass.

## Recovery Rules

Use these rules if the project gets too large or slow.

1. If generated certificate files are too large, chunk more aggressively.
2. If chunking is still too large, implement prefix-tree certificates.
3. If Lean reduction is too slow, precompute rational witnesses externally and make Lean check only small equalities and inequalities.
4. If `by decide` creates huge kernel work, replace it with smaller local proofs or reflection lemmas.
5. If the theorem statement becomes hard to connect to the finite search, do not weaken it. Add intermediate lemmas:
   - billiard orbit implies unfolded feasible;
   - unfolded feasible implies finite case;
   - finite cases are all impossible.
6. If a generated certificate fails, debug with the independent checker first, then minimize to a single Lean certificate.
7. If a proof seems to need `native_decide`, treat that as a failed trusted
   checking strategy. Move the experiment outside `Cuboctahedron/`, record the
   blocker, and replace it with kernel-checked reductions, smaller reflection
   lemmas, or the generated Lean fallback before continuing.

## Suggested Commit Order

1. `bootstrap lean project and agent rules`
2. `add exact vector matrix affine core`
3. `formalize cuboctahedron faces and reflections`
4. `add billiard orbit and unfolding bridge`
5. `add pair-word reduction`
6. `add Farkas checker and soundness`
7. `add translation certificate checker`
8. `add non-identity certificate checker`
9. `add exact certificate generator`
10. `integrate generated sample chunks`
11. `prove enumeration coverage`
12. `strengthen unfolded feasibility`
13. `complete failure certificate soundness`
14. `generate real failure certificates`
15. `expose exhaustive failure coverage`
16. `assemble finite impossibility theorems`
17. `prove final cuboctahedron theorem`
18. `record final validation output`
