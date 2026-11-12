Yes. Here is a detailed handoff plan you can give to Codex. The key instruction is: **do not ask Codex to “translate the C++ verifier into Lean.” Ask it to build a formal exact proof pipeline whose final theorem is checked by Lean.** Codex can edit and run code in a local repository, and OpenAI’s Codex docs recommend encoding build commands, repo layout, conventions, and “done” criteria in `AGENTS.md`; use that to keep it from wandering. ([OpenAI Developers][1])

---

# Plan for Codex: Fully Verified Lean Proof of Nonexistence of Cuboctahedron Omnihedral Billiard Orbit

## 0. Project goal

Build a Lean 4/mathlib project proving:

```lean
theorem cuboctahedron_no_omnihedral :
  ¬ ∃ o : BilliardOrbit Cuboctahedron,
      o.Nonsingular ∧ o.Periodic ∧ o.TouchesEachFaceExactlyOnce
```

The mathematical claim is:

> In the cuboctahedron, there is no nonsingular periodic billiard orbit that touches each of the 14 faces exactly once before repeating.

“Nonsingular” means every impact point lies in the relative interior of a face, not on an edge or vertex.

The existing C++ files are search evidence only. They may be used to understand the case split, but **they are not trusted** because they use floating point. The final proof must use exact rational arithmetic and Lean-checked certificates.

Lean validation should end with `lake build` succeeding and `#print axioms cuboctahedron_no_omnihedral` showing no custom axioms, no `sorry`, and no reliance on `native_decide` in the final theorem. Lean’s own validation docs emphasize checking what axioms a theorem depends on, and the tactic reference says `native_decide` is faster but adds compiler trust through `Lean.trustCompiler`; use it only for exploratory prototypes, not the final proof. ([Lean Language][2])

---

## 1. Non-negotiable constraints

Create an `AGENTS.md` with these rules:

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

Use Codex’s `AGENTS.md` support for this because Codex’s docs describe it as the place to define repo layout, build/test/lint commands, conventions, and done criteria. ([OpenAI Developers][3])

---

## 2. Repository layout

Use this structure:

```text
cuboctahedron-lean/
  lakefile.lean
  lean-toolchain
  AGENTS.md
  README.md

  Cuboctahedron/
    Basic/
      Vec3.lean
      Mat3.lean
      Aff3.lean
      RationalLemmas.lean

    Geometry/
      Faces.lean
      Polyhedron.lean
      Reflection.lean
      BilliardOrbit.lean
      Unfolding.lean

    Search/
      PairWords.lean
      Itineraries.lean
      NonIdentityCase.lean
      TranslationCase.lean
      LinearConstraints.lean
      Farkas2D.lean
      Certificates.lean

    Generated/
      NonIdentity/
        Chunk0000.lean
        Chunk0001.lean
        ...
      Translation/
        Chunk0000.lean
        Chunk0001.lean
        ...
      AllGenerated.lean

    MainTheorem.lean
    PrintAxioms.lean

  scripts/
    generate_exact_certificates.py
    check_certificates_independently.py
    old_float_verifiers/
      cuboctahedron_nonidentity_axis_check.cpp
      cuboctahedron_translation_check.cpp
    README.md
```

`Generated/` may become large. Split generated certificate files into chunks so `lake build` can cache work and failures are local.

---

## 3. Formal mathematical model

### 3.1 Exact cuboctahedron

Define the cuboctahedron as the convex polyhedron

[
P={(x,y,z): |x|,|y|,|z|\le 1,\ \pm x\pm y\pm z\le 2}.
]

Represent its 14 faces by an inductive type:

```lean
inductive Face
  | xp | xm | yp | ym | zp | zm
  | tmmm | tmmp | tmpm | tmpp
  | tpmm | tpmp | tppm | tppp
deriving DecidableEq, Repr, Fintype
```

Define exact rational normals and offsets:

```lean
def normalQ : Face → Vec3 ℚ
def offsetQ : Face → ℚ
```

with:

```lean
normalQ Face.xp = ⟨1,0,0⟩
offsetQ Face.xp = 1

normalQ Face.xm = ⟨-1,0,0⟩
offsetQ Face.xm = 1

...

normalQ Face.tppp = ⟨1,1,1⟩
offsetQ Face.tppp = 2
```

Then define the real interpretation:

```lean
def normalR (f : Face) : Vec3 ℝ := (normalQ f).map Rat.cast
def offsetR (f : Face) : ℝ := (offsetQ f : ℝ)
```

Define membership:

```lean
def InPolyhedron (p : Vec3 ℝ) : Prop :=
  ∀ f : Face, dot (normalR f) p ≤ offsetR f

def OnFace (f : Face) (p : Vec3 ℝ) : Prop :=
  dot (normalR f) p = offsetR f ∧ InPolyhedron p

def InFaceInterior (f : Face) (p : Vec3 ℝ) : Prop :=
  dot (normalR f) p = offsetR f ∧
  ∀ g : Face, g ≠ f → dot (normalR g) p < offsetR g
```

Prove:

```lean
theorem xp_face_interior_iff :
  InFaceInterior Face.xp ⟨1,y,z⟩ ↔
    y + z < 1 ∧ y - z < 1 ∧ -y + z < 1 ∧ -y - z < 1
```

or an equivalent diamond description. This is useful for the translation case.

---

## 4. Exact linear algebra layer

Do **not** use mathlib `Matrix` first unless it makes proofs easier. A custom fixed-size structure is often more manageable:

```lean
structure Vec3 (α : Type) where
  x : α
  y : α
  z : α

structure Mat3 (α : Type) where
  m00 m01 m02 : α
  m10 m11 m12 : α
  m20 m21 m22 : α

structure Aff3 (α : Type) where
  M : Mat3 α
  b : Vec3 α
```

Define:

```lean
def dot
def cross
def matVec
def matMul
def matId
def vecAdd
def vecSub
def scalarMul
def affApply
def affCompose
```

For a face with normal (n) and offset (c), define exact reflection:

[
r_F(x)=x-2\frac{n\cdot x-c}{n\cdot n}n.
]

In Lean:

```lean
def reflM (n : Vec3 ℚ) : Mat3 ℚ :=
  matId - scalarMat (2 / dot n n) (outer n n)

def reflD (n : Vec3 ℚ) (c : ℚ) : Vec3 ℚ :=
  scalarMul (2 * c / dot n n) n

def faceReflectionQ (f : Face) : Aff3 ℚ :=
  ⟨reflM (normalQ f), reflD (normalQ f) (offsetQ f)⟩
```

Prove reflection correctness over reals:

```lean
theorem faceReflection_reflects_point :
  -- If p is interpreted over ℝ, faceReflectionQ casts to the geometric reflection.
```

This theorem links exact computation to billiard geometry.

---

## 5. Formal billiard-orbit definition

Define a nonsingular billiard orbit of period 14 as data:

```lean
structure BilliardOrbit where
  p : Fin 14 → Vec3 ℝ
  v : Fin 14 → Vec3 ℝ
  face : Fin 14 → Face
  time : Fin 14 → ℝ

  time_pos : ∀ i, 0 < time i
  impact_interior : ∀ i, InFaceInterior (face i) (p i)
  next_point :
    ∀ i, p (i+1) = p i + time i • v i
  first_hit :
    -- the segment from p i to p (i+1) stays inside P
    -- and no earlier boundary hit occurs
  reflection_law :
    ∀ i, v (i+1) = reflectVec (v i) (normalR (face (i+1)))
  periodic_point : p 0 = p 14
  periodic_dir : v 0 = v 14
```

Lean indexing with `Fin 14` makes `i+1` awkward. It may be easier to define the orbit using a `Vector` or list of length 15 for impact points and length 14 for transitions:

```lean
structure BilliardOrbit14 where
  p : Fin 15 → Vec3 ℝ
  v : Fin 15 → Vec3 ℝ
  face : Fin 14 → Face
  time : Fin 14 → ℝ
  ...
  p_periodic : p ⟨14, by decide⟩ = p ⟨0, by decide⟩
  v_periodic : v ⟨14, by decide⟩ = v ⟨0, by decide⟩
```

Define omnihedral:

```lean
def TouchesEachFaceExactlyOnce (o : BilliardOrbit14) : Prop :=
  Function.Bijective o.face
```

or equivalently:

```lean
def TouchesEachFaceExactlyOnce (o : BilliardOrbit14) : Prop :=
  ∀ f : Face, ∃! i : Fin 14, o.face i = f
```

---

## 6. Unfolding theorem

This is the most important mathematical bridge. Do not skip it.

Define, for a face sequence:

```lean
def IsOmniSeq (seq : Fin 14 → Face) : Prop :=
  Function.Bijective seq

def StartsXp (seq : Fin 14 → Face) : Prop :=
  seq 0 = Face.xp
```

Prove cyclic reindexing:

```lean
theorem can_start_at_xp
  (o : BilliardOrbit14)
  (h : TouchesEachFaceExactlyOnce o) :
  ∃ o' : BilliardOrbit14,
    TouchesEachFaceExactlyOnce o' ∧
    o'.face 0 = Face.xp
```

Then define unfolded feasibility.

For a sequence (F_0,\ldots,F_{13}), with (F_0=X_+), let

[
A = r_{F_{13}}\circ\cdots\circ r_{F_0}.
]

Depending on composition convention, match the C++ convention exactly and document it. The existing verifier used:

[
A=r_{F_1}\circ r_{F_2}\circ\cdots\circ r_{F_{13}}\circ r_{F_0}
]

with `r_F0` applied first. Pick one convention and prove all lemmas against it.

Define:

```lean
def prefixAff (seq : Fin 14 → Face) : Fin 15 → Aff3 ℚ
def totalAff (seq : Fin 14 → Face) : Aff3 ℚ
```

Define unfolded feasible line:

```lean
structure UnfoldedFeasible (seq : Fin 14 → Face) : Prop where
  p0 : Vec3 ℝ
  w  : Vec3 ℝ
  nonzero : w ≠ 0
  start_interior : InFaceInterior (seq 0) p0
  crossing_times : Fin 15 → ℝ
  t0 : crossing_times 0 = 0
  t14 : crossing_times 14 = 1
  increasing : StrictMono crossing_times
  hit_conditions :
    -- p0 + crossing_times i • w lies in the unfolded copy of face seq i
```

Then prove the forward unfolding theorem:

```lean
theorem billiard_implies_unfolded
  (o : BilliardOrbit14)
  (hOmni : TouchesEachFaceExactlyOnce o)
  (hStart : o.face 0 = Face.xp) :
  UnfoldedFeasible o.face
```

Only the forward direction is needed for nonexistence.

---

## 7. Finite reduction theorem

Once an orbit starts at `Face.xp`, its remaining 13 face hits determine:

* one remaining face from the `x` opposite pair, namely `xm`;
* two faces from each of the other six opposite face-pairs.

Define the seven face-pairs:

```lean
inductive PairId
  | x | y | z | d111 | d11m | d1m1 | dm11
deriving DecidableEq, Repr, Fintype
```

Define:

```lean
def pairOfFace : Face → PairId
def canonicalNormalQ : PairId → Vec3 ℚ
def faceOfPairSign : PairId → Bool → Face
```

Represent a pair-word:

```lean
abbrev PairWord := Vector PairId 13
```

A valid pair-word must have multiplicities:

[
[1,2,2,2,2,2,2].
]

Define:

```lean
def ValidPairWord (w : PairWord) : Prop :=
  count PairId.x w = 1 ∧
  count PairId.y w = 2 ∧
  ...
```

Prove:

```lean
theorem seq_to_pairword
  (seq : Fin 14 → Face)
  (hOmni : IsOmniSeq seq)
  (hStart : seq 0 = Face.xp) :
  ∃ w : PairWord, ValidPairWord w ∧ PairWordMatchesSeq w seq
```

Then prove that checking all valid pair-words and sign assignments suffices.

---

## 8. Case split: non-identity linear part vs translation

For each itinerary, the unfolded affine map is

[
A(x)=Mx+b.
]

The finite proof splits into:

1. `M ≠ I`: non-identity linear part.
2. `M = I`: translation case.

Formalize:

```lean
def totalLinearOfPairWord (w : PairWord) : Mat3 ℚ
def IsIdentityLinear (w : PairWord) : Prop :=
  totalLinearOfPairWord w = matId
```

Prove:

```lean
theorem unfolded_feasible_cases
  (seq : Fin 14 → Face)
  (h : UnfoldedFeasible seq) :
  totalLinear seq = matId ∨ totalLinear seq ≠ matId
```

This is trivial logically, but the useful content is the next two theorems:

```lean
theorem no_nonidentity_cases :
  ∀ seq,
    IsOmniSeq seq →
    StartsXp seq →
    totalLinear seq ≠ matId →
    ¬ UnfoldedFeasible seq

theorem no_translation_cases :
  ∀ seq,
    IsOmniSeq seq →
    StartsXp seq →
    totalLinear seq = matId →
    ¬ UnfoldedFeasible seq
```

The final finite theorem is:

```lean
theorem no_unfolded_omni_starting_xp :
  ∀ seq,
    IsOmniSeq seq →
    StartsXp seq →
    ¬ UnfoldedFeasible seq
```

---

## 9. Non-identity case certificate design

The existing C++ logic says:

* If (M\ne I), the periodic direction must lie on the unique (+1)-eigenaxis of (M).
* The signs of the actual faces in each pair are then forced by the direction.
* If the forced signs do not give one face from each opposite pair, impossible.
* Otherwise the starting point on (X_+) is uniquely forced by the affine axis condition.
* The candidate is checked exactly; it never realizes the proposed itinerary.

Lean should not recompute this with floating point. Use certificate records.

### 9.1 Certificate type

Create:

```lean
inductive NonIdFailure
  | noEigenAxisCertificate
  | badDirectionSign
      (step : Fin 13)
      (proofData : SignProofData)
  | badPairBalance
      (pair : PairId)
      (proofData : BalanceProofData)
  | axisMissesStartInterior
      (badFace : Face)
      (proofData : InequalityProofData)
  | badFirstHit
      (step : Fin 14)
      (expected actual : Face)
      (proofData : FirstHitProofData)
  | badHitInterior
      (step : Fin 14)
      (hitFace badFace : Face)
      (proofData : InequalityProofData)
```

Better: avoid storing proof terms directly. Store rational witnesses that a generic checker verifies.

```lean
structure NonIdCert where
  word : PairWord
  axis : Vec3 ℚ
  axisKernelWitness : KernelRankWitness
  seq : Vector Face 14
  p0 : Vec3 ℚ
  lambda : ℚ
  axisSolveWitness : Inverse4x4Witness
  w : Vec3 ℚ
  failure : NonIdFailure
```

### 9.2 Checker

Implement:

```lean
def checkNonIdCert (cert : NonIdCert) : Bool
```

It must verify:

1. `cert.word` is a valid pair-word.
2. `M ≠ I`.
3. `cert.axis ≠ 0`.
4. `M * cert.axis = cert.axis`.
5. Rank witness proves the fixed eigenspace is one-dimensional.
6. The forced face sequence agrees with the signs of dot products.
7. The 4×4 inverse witness proves the start point is uniquely forced.
8. Either the start point is not in the interior of `xp`, or the exact first-hit simulation contradicts the itinerary.

Then prove soundness:

```lean
theorem checkNonIdCert_sound
  (cert : NonIdCert)
  (hcheck : checkNonIdCert cert = true) :
  ¬ ∃ seq,
      SeqRealizesPairWord cert.word seq ∧
      StartsXp seq ∧
      totalLinear seq ≠ matId ∧
      UnfoldedFeasible seq
```

Do not use `native_decide` for this theorem. It should be an ordinary proof from exact rational equalities and inequalities.

---

## 10. Translation case certificate design

The existing C++ logic says:

* If (M=I), then (A(x)=x+b).
* A period line has direction (b).
* Starting points are (p=(1,y,z)) in the (X_+) face.
* Every required crossing and interior condition becomes a strict linear inequality in (y,z).
* The C++ clipped a polygon numerically and always got area zero.
* Lean should replace this with exact infeasibility certificates.

Use Farkas-style certificates over rational linear inequalities.

### 10.1 Linear constraints

Represent a strict inequality

[
a y + b z < c
]

as:

```lean
structure StrictLin2 where
  a : ℚ
  b : ℚ
  c : ℚ
```

Its real interpretation:

```lean
def StrictLin2.Holds (L : StrictLin2) (y z : ℝ) : Prop :=
  (L.a : ℝ) * y + (L.b : ℝ) * z < (L.c : ℝ)
```

For each translation itinerary, generate a list:

```lean
def translationConstraints
  (seq : Vector Face 14)
  (b : Vec3 ℚ) :
  List StrictLin2
```

These constraints include:

1. Start point in the relative interior of (X_+).
2. Crossing-time ordering:
   [
   0<t_1<t_2<\cdots<t_{14}=1.
   ]
3. Hit point lies in the relative interior of the intended unfolded face at each step.
4. Denominator positivity conditions for each crossing.

Prove:

```lean
theorem translation_feasible_implies_constraints
  {seq : Vector Face 14}
  {b : Vec3 ℚ}
  (h : TranslationUnfoldedFeasible seq b) :
  ∃ y z : ℝ,
    ∀ L ∈ translationConstraints seq b, L.Holds y z
```

### 10.2 Farkas certificate

A strict infeasibility certificate is a sparse nonnegative rational combination of inequalities yielding:

[
0 < 0
]

or

[
0 < c,\quad c \le 0.
]

Define:

```lean
structure FarkasCert where
  terms : List (Nat × ℚ) -- constraint index and nonnegative multiplier
```

Checker:

```lean
def checkFarkas
  (constraints : List StrictLin2)
  (cert : FarkasCert) : Bool :=
  -- all multipliers ≥ 0
  -- at least one multiplier > 0
  -- weighted sum of y-coefficients = 0
  -- weighted sum of z-coefficients = 0
  -- weighted sum of RHS ≤ 0
```

Soundness theorem:

```lean
theorem checkFarkas_sound
  {constraints : List StrictLin2}
  {cert : FarkasCert}
  (hcheck : checkFarkas constraints cert = true) :
  ¬ ∃ y z : ℝ, ∀ L ∈ constraints, L.Holds y z
```

This is a small, reusable theorem and should be fully kernel-checked.

### 10.3 Translation certificate type

```lean
structure TranslationCert where
  word : PairWord
  signMask : Fin 64
  seq : Vector Face 14
  b : Vec3 ℚ
  directionProof : DirectionProofData
  failure :
    TranslationFailure
```

where:

```lean
inductive TranslationFailure
  | badTranslationVector
  | badDirectionSign
  | farkas (cert : FarkasCert)
```

Checker:

```lean
def checkTranslationCert (cert : TranslationCert) : Bool
```

Soundness:

```lean
theorem checkTranslationCert_sound
  (cert : TranslationCert)
  (hcheck : checkTranslationCert cert = true) :
  ¬ ∃ seq,
      SeqRealizesTranslationChoice cert.word cert.signMask seq ∧
      totalLinear seq = matId ∧
      UnfoldedFeasible seq
```

---

## 11. Exhaustive enumeration proof

This is where most formal-computation projects fail. Do not merely generate many certificates and assume they cover all cases.

Use a ranking/unranking scheme.

### 11.1 Pair-word ranking

Define an exact bijection:

```lean
def numPairWords : Nat := 97297200

def unrankPairWord : Fin numPairWords → PairWord
def rankPairWord? : PairWord → Option (Fin numPairWords)
```

Prove:

```lean
theorem rank_unrank_pairword :
  ∀ r : Fin numPairWords,
    rankPairWord? (unrankPairWord r) = some r

theorem unrank_rank_pairword :
  ∀ w : PairWord,
    ValidPairWord w →
    ∃ r : Fin numPairWords, unrankPairWord r = w
```

The count is:

[
\frac{13!}{2^6}=97,297,200.
]

This is small enough to state but not necessarily small enough to expand in Lean. Use combinatorial proof, not list enumeration.

### 11.2 Sign-mask ranking

For translation identity words, there are 64 sign assignments: one for each choice among the six non-`x` opposite face-pairs. Define:

```lean
def signChoiceFromMask (mask : Fin 64) : ...
```

Prove it enumerates all legal sign choices.

### 11.3 Certificate coverage

Generated certificate files must be chunked by rank intervals.

Example:

```lean
structure CertChunk where
  startRank : Nat
  endRank : Nat
  certs : Array CaseCert
```

Checker:

```lean
def checkChunk (chunk : CertChunk) : Bool :=
  -- certs cover exactly ranks [startRank, endRank)
  -- each cert rank matches its position
  -- each cert checks
```

Do not force a certificate for every raw rank. The exhaustive phase should be
canonical-first: cyclically start at `xp`, quotient by the started symmetry
group fixing `xp`, add itinerary reversal only after the relevant Lean transport
theorem is available, and group by exact rational state before emitting Lean
data. Prefix trees, family certificates, and shared Farkas witnesses should be
the default path rather than a fallback after flat chunks fail.

### 11.4 Prefix-tree compression

If raw certificate files are too large, implement:

```lean
inductive SearchTree
  | leafCert : CaseCert → SearchTree
  | pruneCert : PrefixCert → SearchTree
  | branch : PrefixState → List SearchTree → SearchTree
```

A `PrefixCert` proves all completions of a partial pair-word are impossible. A `branch` proves coverage by recursively covering all allowed next pair choices.

Checker:

```lean
def checkSearchTree : SearchTree → Bool
```

Soundness:

```lean
theorem checkSearchTree_sound :
  checkSearchTree tree = true →
  CoversAllCompletions tree →
  NoFeasibleCompletion tree
```

This prevents needing a Lean object for every one of the 97,297,200 pair-words
if a subtree can be killed earlier. Search trees should be indexed by canonical
case representatives, with a Lean-checked manifest transporting raw ranks and
translation masks to those representatives.

Codex should not begin with raw flat chunks for the exhaustive proof. It should
first profile symmetry orbits, reversal orbits, exact nonidentity state groups,
translation constraint groups, and shared Farkas witnesses. Flat chunks are only
diagnostic output behind an explicit opt-in flag.

---

## 12. External certificate generator

Write `scripts/generate_exact_certificates.py`.

It must use exact rational arithmetic only:

```python
from fractions import Fraction
```

or use Sage/FLINT/GMP if available, but the output must be rational literals that Lean checks.

The generator may use the old C++ files only as a guide. It must not copy epsilon logic.

### 12.1 Generator tasks

For each valid pair-word:

1. Compute the exact linear product (M).
2. If (M\ne I):

   * compute exact eigenaxis witness;
   * compute forced signs;
   * construct exact sequence if signs balance;
   * solve exact affine-axis system;
   * produce an exact failure certificate.
3. If (M=I):

   * for each of 64 sign masks:

     * compute exact translation vector (b);
     * reject immediately if direction signs fail;
     * otherwise construct strict linear constraints in (y,z);
     * find a sparse exact Farkas certificate.

### 12.2 Independent checker

Write `scripts/check_certificates_independently.py`.

This is not trusted, but it catches generator bugs before Lean does. It should:

* parse generated Lean or JSON certificate data;
* re-run exact checks;
* compare counts to known C++ counts:

  * pair-words: `97,297,200`
  * identity linear words: `2,468,088`
  * translation sign assignments for identity words: `157,957,632`
* print a summary.

Do **not** use these counts as Lean axioms. They are sanity checks only.

---

## 13. Lean-generated data format

Prefer Lean literals over JSON parsing.

Example generated file:

```lean
import Cuboctahedron.Search.Certificates

namespace Cuboctahedron.Generated.NonIdentity.Chunk0000

def certs : Array NonIdCert := #[
  {
    word := ⟨#[PairId.x, PairId.y, ...], by decide⟩,
    axis := ⟨1/3, -2/3, 1⟩,
    axisKernelWitness := ...,
    seq := ...,
    p0 := ...,
    lambda := ...,
    axisSolveWitness := ...,
    w := ...,
    failure := ...
  },
  ...
]

theorem certs_sound :
  CheckNonIdCerts certs = true := by
  native_decide -- TEMPORARY ONLY; replace before final.
```

The temporary `native_decide` is allowed during development, but the final version must replace it with one of:

```lean
by decide
```

if kernel reduction is feasible, or proof-by-reflection using small per-certificate `rfl` proofs, or prefix-tree compression with manageable kernel reduction.

The final theorem must not depend on any theorem proved using `native_decide`, because Lean’s docs explicitly warn that `native_decide` adds compiler trust. ([Lean Language][4])

---

## 14. Main theorem assembly

The final proof chain should be:

```lean
theorem generated_nonidentity_complete :
  ∀ seq,
    IsOmniSeq seq →
    StartsXp seq →
    totalLinear seq ≠ matId →
    ¬ UnfoldedFeasible seq :=
by
  -- derived from checked nonidentity certificates and enumeration coverage

theorem generated_translation_complete :
  ∀ seq,
    IsOmniSeq seq →
    StartsXp seq →
    totalLinear seq = matId →
    ¬ UnfoldedFeasible seq :=
by
  -- derived from checked translation certificates and enumeration coverage

theorem no_unfolded_omni_starting_xp :
  ∀ seq,
    IsOmniSeq seq →
    StartsXp seq →
    ¬ UnfoldedFeasible seq :=
by
  intro seq hOmni hStart hFeas
  by_cases hM : totalLinear seq = matId
  · exact generated_translation_complete seq hOmni hStart hM hFeas
  · exact generated_nonidentity_complete seq hOmni hStart hM hFeas

theorem cuboctahedron_no_omnihedral :
  ¬ ∃ o : BilliardOrbit14,
      o.Nonsingular ∧ o.Periodic ∧ o.TouchesEachFaceExactlyOnce :=
by
  intro h
  rcases h with ⟨o, hNonSing, hPeriodic, hOmni⟩
  obtain ⟨o', hOmni', hStart⟩ := can_start_at_xp o hOmni
  have hUnfolded := billiard_implies_unfolded o' hOmni' hStart
  exact no_unfolded_omni_starting_xp o'.face hOmni' hStart hUnfolded
```

The actual syntax will differ, but this is the intended dependency graph.

---

## 15. Validation file

Create `Cuboctahedron/PrintAxioms.lean`:

```lean
import Cuboctahedron.MainTheorem

#print axioms Cuboctahedron.cuboctahedron_no_omnihedral
```

The final README must include the output.

Expected acceptable output may include standard Lean/mathlib axioms such as `Classical.choice`, `propext`, or quotient-related axioms depending on implementation. It must **not** include:

* `sorryAx`
* custom project axioms
* `Lean.trustCompiler`
* axioms introduced only to bypass proof obligations

Lean’s validation docs distinguish “the theorem has a valid proof” from “the theorem statement means what you think it means”; include a short explanation of the theorem statement in the README so a reviewer can inspect both. ([Lean Language][2])

---

## 16. Suggested milestones for Codex

### Milestone 1 — Exact arithmetic skeleton

Deliverables:

* `Vec3.lean`, `Mat3.lean`, `Aff3.lean`
* exact reflection definitions
* face definitions
* basic tests/examples

Acceptance:

```bash
lake build
```

No billiards yet.

---

### Milestone 2 — Exact finite search prototype in Lean

Deliverables:

* pair-word representation
* exact linear products
* identity/nonidentity classifier
* exact translation-vector computation
* small test cases

Temporary use of `native_decide` is acceptable here only as a speed probe.

Acceptance:

* Lean can classify small hand-picked words.
* Python exact generator agrees with Lean on several random words.

---

### Milestone 3 — Billiard and unfolding formalization

Deliverables:

* `BilliardOrbit.lean`
* `Unfolding.lean`
* proof that a billiard orbit implies unfolded feasibility
* proof that an omnihedral orbit can be cyclically reindexed to start at `xp`

Acceptance:

```lean
#check billiard_implies_unfolded
#check can_start_at_xp
```

No generated certificates yet.

---

### Milestone 4 — Nonidentity certificate checker

Deliverables:

* `NonIdentityCase.lean`
* `NonIdCert`
* `checkNonIdCert`
* `checkNonIdCert_sound`
* generator support for nonidentity certificates

Acceptance:

* Prove soundness for at least one generated nonidentity certificate.
* Then scale to a chunk.

---

### Milestone 5 — Translation/Farkas checker

Deliverables:

* `LinearConstraints.lean`
* `Farkas2D.lean`
* `TranslationCase.lean`
* `TranslationCert`
* `checkTranslationCert`
* `checkFarkas_sound`
* generator support for exact Farkas certificates

Acceptance:

* Prove soundness for one translation certificate.
* Then scale to a chunk.

---

### Milestone 6 — Complete enumeration coverage

Deliverables:

* ranking/unranking for valid pair-words
* sign-mask enumeration
* chunk or prefix-tree coverage proof
* generated data chunks

Acceptance:

* Lean proves every valid itinerary is covered by either nonidentity or translation certificates.
* No reliance on C++ counts as assumptions.

---

### Milestone 7 — Final theorem

Deliverables:

* `MainTheorem.lean`
* `PrintAxioms.lean`
* README with exact theorem statement and validation output

Acceptance:

```bash
lake build
grep -R "sorry\|admit\|axiom\|native_decide\|unsafe" Cuboctahedron || true
lean Cuboctahedron/PrintAxioms.lean
```

Final theorem must compile.

---

## 17. Risks and required mitigations

### Risk 1: Generated certificates are too large

Mitigation:

* Chunk aggressively.
* Use sparse certificates.
* Switch from per-case certificates to prefix-tree certificates.
* Add subtree-pruning certificates where possible.
* Keep the soundness theorem independent of the data size.

### Risk 2: Lean kernel reduction is too slow

Mitigation:

* Avoid massive `by decide` goals.
* Use small local `rfl` proofs where computations normalize quickly.
* Split files.
* Precompute rational witnesses externally and make Lean verify only simple equalities/inequalities.
* Do not “solve” large systems in Lean; check supplied inverse/rank/Farkas witnesses.

### Risk 3: The theorem statement is too weak

Mitigation:

* Keep separate theorem layers:

  1. no unfolded feasible itinerary;
  2. billiard orbit implies unfolded feasible itinerary;
  3. no billiard orbit.
* Do not stop after theorem 1.

### Risk 4: Edge/vertex impacts sneak in

Mitigation:

* Use strict inequalities for face interiors.
* In translation certificates, prove infeasibility of the strict system.
* In nonidentity simulation, any candidate impact on an edge/vertex is rejected by strict interior failure.

### Risk 5: Hidden trust from `native_decide`

Mitigation:

* Allow `native_decide` only in prototype branches.
* Final `MainTheorem.lean` must not import any generated theorem depending on `native_decide`.
* Confirm with `#print axioms`.

---

## 18. Copy-paste prompt for Codex

Use this as the initial Codex task:

```text
We need a Lean 4/mathlib project proving that the cuboctahedron has no nonsingular omnihedral billiard orbit.

Do not translate the existing floating-point C++ verifier directly. Treat it only as guidance. The final proof must use exact rational arithmetic and Lean-checked certificates.

Set up a Lake project with this goal theorem:

  theorem cuboctahedron_no_omnihedral :
    ¬ ∃ o : BilliardOrbit14,
        o.Nonsingular ∧ o.Periodic ∧ o.TouchesEachFaceExactlyOnce

Definitions:
- Cuboctahedron:
  |x|, |y|, |z| ≤ 1 and ±x ±y ±z ≤ 2.
- Faces:
  xp xm yp ym zp zm and eight triangular faces tmmm tmmp tmpm tmpp tpmm tpmp tppm tppp.
- Nonsingular means every impact point is in the relative interior of exactly one face.
- Omnihedral means the 14-period orbit touches each face exactly once.

Architecture:
1. Exact Vec3/Mat3/Aff3 over ℚ.
2. Exact face normals, offsets, and affine reflections.
3. BilliardOrbit14 over ℝ.
4. Prove billiard orbit implies unfolded feasible itinerary.
5. Prove cyclic reindexing lets every omnihedral orbit start at xp.
6. Reduce all started-at-xp omnihedral itineraries to finite pair-words with counts [1,2,2,2,2,2,2].
7. Split by total unfolded linear part M:
   - M ≠ I: use exact eigenaxis/axis-intersection certificates.
   - M = I: use exact translation constraints in y,z plus Farkas infeasibility certificates.
8. External scripts may generate rational certificates, but Lean must check them.
9. The final theorem must not depend on sorry, admit, custom axioms, unsafe code, Float, epsilon thresholds, or native_decide.

Start by creating AGENTS.md, the Lake project, and the exact geometry/arithmetic skeleton. Then proceed milestone by milestone. At the end, add PrintAxioms.lean with:

  #print axioms Cuboctahedron.cuboctahedron_no_omnihedral

The acceptance command is:
  lake build
  grep -R "sorry\|admit\|axiom\|native_decide\|unsafe" Cuboctahedron || true
  lean Cuboctahedron/PrintAxioms.lean

Do not weaken the final theorem to only a computational statement. If a temporary theorem uses native_decide, clearly mark it as prototype-only and do not let the final theorem import it.
```

---

## 19. What Codex should produce first

The first useful commit should **not** be generated certificate data. It should be the trusted core:

```text
Cuboctahedron/Basic/Vec3.lean
Cuboctahedron/Basic/Mat3.lean
Cuboctahedron/Basic/Aff3.lean
Cuboctahedron/Geometry/Faces.lean
Cuboctahedron/Geometry/Reflection.lean
```

After that, ask Codex to prove small sanity lemmas:

```lean
#eval normalQ Face.xp
#eval offsetQ Face.tppp
#eval faceReflectionQ Face.xp
```

and theorem-level checks such as:

```lean
theorem xp_reflection_formula (p : Vec3 ℚ) :
  affApply (faceReflectionQ Face.xp) p =
    ⟨2 - p.x, p.y, p.z⟩ := by
  ext <;> norm_num [faceReflectionQ, reflM, reflD, affApply]
```

That kind of small exact lemma is the right foundation. Once those compile, scale toward the full certificate checker.

[1]: https://developers.openai.com/codex/cli "CLI – Codex | OpenAI Developers"
[2]: https://lean-lang.org/doc/reference/latest/ValidatingProofs/ "Validating a Lean Proof"
[3]: https://developers.openai.com/codex/learn/best-practices "Best practices – Codex | OpenAI Developers"
[4]: https://lean-lang.org/doc/reference/latest/Tactic-Proofs/Tactic-Reference/ "Tactic Reference"
