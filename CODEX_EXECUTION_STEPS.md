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
3. Put generated certificate data under `Cuboctahedron/Generated/`.
4. Put external untrusted generators and checkers under `scripts/`.
5. Do not use `Float`, `Double`, epsilon thresholds, tolerances, or approximate geometry in Lean proof code.
6. Do not use `sorry`, `admit`, custom `axiom`, or `unsafe`.
7. `native_decide` is allowed only in clearly marked prototype files that are not imported by the final theorem.
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
```

Generator requirements:

- use `fractions.Fraction` or another exact rational backend;
- do not use epsilon logic;
- do not use C++ output as a proof;
- emit Lean literals or a simple intermediate format that is converted to Lean literals.

Generator tasks:

1. Enumerate valid pair words.
2. Compute exact linear products.
3. For `M != I`, generate non-identity certificates.
4. For `M = I`, enumerate 64 sign masks and generate translation/Farkas certificates.
5. Split output into small chunks.

Independent checker tasks:

1. Parse generated output.
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

## Step 13: Generated Data Integration

Goal: import generated certificate chunks through Lean checkers.

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

## Step 15: Complete Finite Impossibility Theorems

Goal: assemble the certificate soundness and enumeration coverage into the two main finite case theorems.

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
7. If a proof needs `native_decide`, isolate it in a prototype file that is not imported by `MainTheorem.lean`, then replace it before final audit.

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
12. `assemble finite impossibility theorems`
13. `prove final cuboctahedron theorem`
14. `record final validation output`
