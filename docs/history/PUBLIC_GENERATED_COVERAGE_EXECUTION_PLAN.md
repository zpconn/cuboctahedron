# Public Generated Coverage Execution Plan

This plan describes the next implementation push for the cuboctahedron
billiards Lean project: move from completed proof-carrying generated evidence
toward Step 15 by adding a memory-safe, buildable public generated coverage
API.

The immediate public API target is:

```text
Cuboctahedron.Generated.NonIdentity.complete
Cuboctahedron.Generated.Translation.complete
Cuboctahedron.Generated.exhaustiveGeneratedCoverage
```

The goal is not to revive packed blobs, byte-list parsing, or giant Boolean
checker reduction. The goal is to assemble small semantic theorems from
proof-carrying family evidence through a Prop-level interval coverage hierarchy.

## Background

The final mathematical target is that the cuboctahedron admits no nonsingular
period-14 omnihedral billiard orbit.

The proof strategy is already fixed:

1. Model the cuboctahedron exactly.
2. Unfold the billiard trajectory across reflected copies of the polyhedron.
3. Cyclically reindex any omnihedral orbit so the first face is `X+`.
4. Enumerate the remaining 13 face hits by valid pair-word ranks.
5. Split by whether the total unfolded linear part `M` is the identity.
6. Eliminate the non-identity branch by exact non-identity certificates and
   proof-carrying families.
7. Eliminate the identity-linear translation branch by exact translation/Farkas
   certificates and proof-carrying families.
8. Assemble the finite impossibility theorem.
9. Bridge the finite theorem back to the real billiard theorem.

The repo already has much of the trusted infrastructure:

- exact arithmetic and geometry;
- pair-word rank/unrank machinery;
- non-identity certificate soundness;
- translation and Farkas certificate soundness;
- proof-carrying family interfaces:
  - `CheckedNonIdRank`;
  - `CheckedTranslationCase`;
  - `ProofCarryingNonIdFamily`;
  - `ProofCarryingNonIdResidualFamily`;
  - `ProofCarryingTranslationFarkasFamily`;
- residual partition evidence under:
  - `Cuboctahedron/Generated/NonIdentity/Residual/Partition/All.lean`;
- residual partition names such as:
  - `residualPartitionCoversRank`;
  - `residualPartitionCoversRank_sound`;
  - `residualPartitionCheckedRank`;
  - `residualPartitionCheckedRank_rank`;
- proof-carrying smoke modules that build;
- generated metadata saying the proof-carrying shared-family backend is
  selected, complete, and projected around 0.437 GiB of source.

## Hard Constraints

Follow these constraints throughout this task:

- Do not use `sorry` or `admit`.
- Do not introduce custom `axiom`s.
- Do not use `unsafe`.
- Do not use `native_decide`.
- Do not trust Python/C++ counts, JSON summaries, or manifests as proof.
- Do not revive the packed blob backend.
- Do not revive the predecoded byte-list backend.
- Do not prove a giant theorem by reducing a huge Boolean checker.
- Do not emit one proof per raw case.
- Do not build global `List` or `Array` tables of millions of ranks,
  intervals, families, or certificates.
- Do not export theorem statements that mention huge generated certificate
  literals.
- Do not export large data definitions unless absolutely unavoidable.
- Prefer private or local data inside generated leaf modules.
- Export small semantic theorems from generated modules.
- The final public generated API should expose semantic impossibility or
  coverage, not raw certificate data.

## Lessons From Failed Approaches

Several approaches should not be repeated:

- Packed strings failed because Lean had to decode and check large blobs.
- Predecoded byte lists failed because the parser/checker still did not reduce
  well enough in Lean.
- Structured certificate literals still failed when used as one large Boolean
  checker goal.
- Even one-certificate chunks exposed reduction, stack, or memory problems.
- Splitting a bad reduction problem into smaller chunks is not sufficient when
  the smallest meaningful chunk already fails.

The successful direction was proof-carrying evidence:

- generated files provide smaller local theorem facts;
- trusted soundness theorems assemble those facts;
- the exported theorem types stay small;
- large data remains private inside leaf modules where possible.

## Phase 0: Inspect the Repo Before Editing

Before changing files, inspect the actual current definitions and names. Do not
assume exact names from this plan if the repo has evolved.

Search and open:

```text
Cuboctahedron/Generated/
Cuboctahedron/Generated/AllGenerated.lean
Cuboctahedron/Generated/NonIdentity/Residual/Partition/All.lean
Cuboctahedron/Search/Certificates.lean
Cuboctahedron/Search/CertificateChecker.lean
```

Search for definitions related to:

```text
ExhaustiveGeneratedCoverage
GeneratedCoverage
CheckedNonIdRank
CheckedTranslationCase
ProofCarryingNonIdFamily
ProofCarryingNonIdResidualFamily
ProofCarryingTranslationFarkasFamily
totalLinearAtRank
pairWordCount
NoStartedUnfoldedOrbitAtRank
NoNonIdentityStartedOrbitAtRank
NoTranslationStartedOrbitAtRank
generated_nonidentity_complete
generated_translation_complete
no_unfolded_omni_starting_xp
```

If a concept exists under a different name, use the existing name. Avoid
introducing parallel definitions unless a small adapter is genuinely needed.

## Phase 1: Add a Tiny Interval Coverage Core

Create this module unless an equivalent already exists:

```text
Cuboctahedron/Generated/Coverage/Interval.lean
```

Define Prop-level interval coverage combinators. These combinators must be
small and must not compute over generated data.

Preferred shape:

```lean
namespace Cuboctahedron.Generated.Coverage

def CoversInterval (P : Nat -> Prop) (lo hi : Nat) : Prop :=
  forall r, lo <= r -> r < hi -> P r

theorem CoversInterval.empty
    (P : Nat -> Prop) {a b : Nat} (h : b <= a) :
    CoversInterval P a b := by
  intro r hra hrb
  exact False.elim ((Nat.not_lt_of_ge h) (lt_of_le_of_lt hra hrb))

theorem CoversInterval.single
    {P : Nat -> Prop} {r : Nat}
    (h : P r) :
    CoversInterval P r (r + 1) := by
  intro r' hlo hhi
  have : r' = r := by
    omega
  simpa [this] using h

theorem CoversInterval.concat
    {P : Nat -> Prop} {a b c : Nat}
    (h1 : CoversInterval P a b)
    (h2 : CoversInterval P b c) :
    CoversInterval P a c := by
  intro r hra hrc
  by_cases hrb : r < b
  · exact h1 r hra hrb
  · exact h2 r (Nat.le_of_not_lt hrb) hrc

theorem CoversInterval.mono
    {P Q : Nat -> Prop} {a b : Nat}
    (hPQ : forall r, P r -> Q r)
    (h : CoversInterval P a b) :
    CoversInterval Q a b := by
  intro r hlo hhi
  exact hPQ r (h r hlo hhi)

end Cuboctahedron.Generated.Coverage
```

Use `omega` only if it is already acceptable in the project. Otherwise prove the
small Nat arithmetic by existing Nat lemmas.

Acceptance for Phase 1:

```bash
lake build Cuboctahedron.Generated.Coverage.Interval
```

## Phase 2: Choose Exported Semantic Predicates

Avoid making raw certificates the main public generated coverage result.

Prefer existing semantic predicates if they already exist:

```text
NoStartedUnfoldedOrbitAtRank r
NoNonIdentityStartedOrbitAtRank r
NoTranslationStartedOrbitAtRank r
```

If equivalent predicates exist under different names, reuse them. If no such
predicates exist, add small adapters in a hand-written module.

Example adapter shape:

```lean
def RankKilled (r : Nat) : Prop :=
  NoStartedUnfoldedOrbitAtRank r

def NonIdentityRankKilled (r : Nat) : Prop :=
  totalLinearAtRank r != Mat3.one -> NoNonIdentityStartedOrbitAtRank r

def TranslationRankKilled (r : Nat) : Prop :=
  totalLinearAtRank r = Mat3.one -> NoTranslationStartedOrbitAtRank r
```

If existing Step 15 assembly expects certificate-carrying structures, keep those
values inside leaf modules and immediately convert them to semantic
impossibility through the existing soundness theorems.

Avoid making this the exported root shape unless existing APIs force it:

```lean
inductive CaseEliminated (r : Nat) : Prop
| nonIdentity (cert : CheckedNonIdRank) ...
| translation (cert : CheckedTranslationCase) ...
```

That shape is acceptable internally if needed. The root theorem should prefer a
semantic target such as `NoStartedUnfoldedOrbitAtRank r`.

Acceptance for Phase 2:

- The chosen predicates are documented in comments.
- They live in a small hand-written module or reuse an existing one.
- Their theorem statements do not mention generated data literals.

## Phase 3: Implement `NonIdentity.complete`

Create or complete:

```text
Cuboctahedron/Generated/NonIdentity/Complete.lean
```

Target theorem shape, adapted to actual repo names:

```lean
namespace Cuboctahedron.Generated.NonIdentity

theorem complete
    (r : Nat) (hr : r < pairWordCount)
    (hM : totalLinearAtRank r != Mat3.one) :
    NoNonIdentityStartedOrbitAtRank r := by
  ...

end Cuboctahedron.Generated.NonIdentity
```

Implementation plan:

1. Import existing non-identity proof-carrying family modules.
2. Import the residual partition module.
3. Do not compute over all ranks.
4. Do not build a global list or array of families.
5. Use a generated or hand-written interval/tree dispatcher that exports one of
   these theorem shapes:

```lean
theorem nonIdentity_covers_all :
  CoversInterval NonIdentityRankKilled 0 pairWordCount
```

or directly:

```lean
theorem nonIdentity_interval_all :
  CoversInterval
    (fun r => totalLinearAtRank r != Mat3.one ->
      NoNonIdentityStartedOrbitAtRank r)
    0 pairWordCount
```

Then define:

```lean
theorem complete
    (r : Nat) (hr : r < pairWordCount)
    (hM : totalLinearAtRank r != Mat3.one) :
    NoNonIdentityStartedOrbitAtRank r := by
  exact nonIdentity_interval_all r (Nat.zero_le r) hr hM
```

Leaf modules should export only small theorem statements:

```lean
theorem chunk_042_covers :
  CoversInterval NonIdentityRankKilled 21000000 21500000 := ...
```

or:

```lean
theorem chunk_042_covers :
  forall r, 21000000 <= r -> r < 21500000 ->
    NonIdentityRankKilled r := ...
```

Inside leaves, use existing proof-carrying family soundness and residual
partition soundness. Keep certificate and family data private.

Acceptance for Phase 3:

```bash
lake build Cuboctahedron.Generated.NonIdentity.Complete
```

and:

```lean
#check Cuboctahedron.Generated.NonIdentity.complete
```

works in an appropriate small check file or Lean invocation.

## Phase 4: Implement `Translation.complete`

Create or complete:

```text
Cuboctahedron/Generated/Translation/Complete.lean
```

Target theorem shape, adapted to actual repo names:

```lean
namespace Cuboctahedron.Generated.Translation

theorem complete
    (r : Nat) (hr : r < pairWordCount)
    (hM : totalLinearAtRank r = Mat3.one) :
    NoTranslationStartedOrbitAtRank r := by
  ...

end Cuboctahedron.Generated.Translation
```

Translation may need to quantify over sign masks or identity-case choices
internally. Do not expose the 157,957,632 sign assignments as a global data
table.

Preferred public shape:

```lean
theorem translation_interval_all :
  CoversInterval
    (fun r => totalLinearAtRank r = Mat3.one ->
      NoTranslationStartedOrbitAtRank r)
    0 pairWordCount
```

If the repo's semantics require sign masks, use an internal case theorem:

```lean
theorem translation_case_complete
    (r : Nat) (mask : Fin 64)
    (hr : r < pairWordCount)
    (hM : totalLinearAtRank r = Mat3.one)
    (hcase : SignMaskAdmissibleForRank r mask) :
    NoTranslationCase r mask := ...
```

Then provide the public adapter:

```lean
theorem complete
    (r : Nat) (hr : r < pairWordCount)
    (hM : totalLinearAtRank r = Mat3.one) :
    NoTranslationStartedOrbitAtRank r := by
  -- Extract or universally eliminate the sign-mask branch using existing
  -- translation feasibility reduction lemmas.
  ...
```

The translation backend should share normalized Farkas shapes aggressively.
Generate or prove one theorem per normalized Farkas shape and transport it
across all covered `(rank, mask)` cases by proof-carrying family soundness.
Do not generate one theorem per translation sign assignment.

Acceptance for Phase 4:

```bash
lake build Cuboctahedron.Generated.Translation.Complete
```

and:

```lean
#check Cuboctahedron.Generated.Translation.complete
```

works in an appropriate small check file or Lean invocation.

## Phase 5: Implement `Generated.exhaustiveGeneratedCoverage`

Create or complete:

```text
Cuboctahedron/Generated/ExhaustiveCoverage.lean
```

Target theorem shape, adapted to actual repo names:

```lean
namespace Cuboctahedron.Generated

theorem rank_complete
    (r : Nat) (hr : r < pairWordCount) :
    NoStartedUnfoldedOrbitAtRank r := by
  by_cases hM : totalLinearAtRank r = Mat3.one
  · exact translation_to_started_rank
      r hr hM (Translation.complete r hr hM)
  · exact nonidentity_to_started_rank
      r hr hM (NonIdentity.complete r hr hM)

def exhaustiveGeneratedCoverage : ExhaustiveGeneratedCoverage where
  -- Fill the existing fields from rank_complete or branch-specific complete
  -- theorems. Do not store generated data in this structure.

end Cuboctahedron.Generated
```

If the existing `ExhaustiveGeneratedCoverage` structure requires certificate
witnesses rather than semantic impossibility:

1. Inspect how Step 15 consumes the structure.
2. Prefer adding a new semantic theorem `rank_complete`.
3. Fill `exhaustiveGeneratedCoverage` through minimal existing checked-witness
   adapters.
4. If the existing structure forces large data into a definition, consider
   replacing or extending it with a theorem-valued or Prop-valued structure,
   but keep the change small and compatible.

The root file must be tiny. It should import only:

```text
Cuboctahedron.Generated.NonIdentity.Complete
Cuboctahedron.Generated.Translation.Complete
Cuboctahedron.Generated.Coverage.Interval
```

plus at most one small existing Step 15 interface file. It must not import
thousands of leaf shards directly.

Acceptance for Phase 5:

```bash
lake build Cuboctahedron.Generated.ExhaustiveCoverage
```

and:

```lean
#check Cuboctahedron.Generated.rank_complete
#check Cuboctahedron.Generated.exhaustiveGeneratedCoverage
```

work, adapted to exact names.

## Phase 6: Generate Hierarchical Balanced Interval Modules If Needed

If the current generated family backend does not already provide chunk/root
interval coverage theorems, update the generator to emit them.

Required hierarchy:

```text
Cuboctahedron/Generated/Coverage/
  Interval.lean

Cuboctahedron/Generated/NonIdentity/Coverage/
  Chunk000.lean
  Chunk001.lean
  ...
  Group000.lean
  Group001.lean
  ...
  All.lean

Cuboctahedron/Generated/Translation/Coverage/
  Chunk000.lean
  Chunk001.lean
  ...
  Group000.lean
  Group001.lean
  ...
  All.lean

Cuboctahedron/Generated/NonIdentity/Complete.lean
Cuboctahedron/Generated/Translation/Complete.lean
Cuboctahedron/Generated/ExhaustiveCoverage.lean
```

Design rules:

- Chunk files should cover contiguous rank ranges where possible.
- If families are not naturally contiguous, use local prefix dispatch inside a
  chunk but still export a single interval theorem.
- Group files should import a bounded number of chunks, for example 16 to 64.
- The `All` file should import a bounded number of groups.
- The root exhaustive file should import only `All`/`Complete` modules, not
  leaves directly.
- Use balanced binary applications of `CoversInterval.concat`.
- Never build a right-leaning concat chain of thousands of nodes.
- Never use `List.foldl`, `Array.foldl`, `List.any`, or generated runtime
  search as the proof mechanism.
- Aim for 0.5 to 2 MiB per generated leaf when possible.
- Avoid files above 5 MiB unless focused smoke builds show they are safe.
- Export one main theorem per chunk/group whenever possible.

Example generated group theorem:

```lean
theorem group_003_covers :
  CoversInterval NonIdentityRankKilled 15000000 20000000 :=
  CoversInterval.concat
    (CoversInterval.concat chunk_030_covers chunk_031_covers)
    (CoversInterval.concat chunk_032_covers chunk_033_covers)
```

Generate this as a balanced tree, not a long linear chain.

Acceptance for Phase 6:

```bash
lake build Cuboctahedron.Generated.NonIdentity.Coverage.All
lake build Cuboctahedron.Generated.Translation.Coverage.All
```

or the corresponding exact generated module names.

## Phase 7: Data and Proof Separation Rules

Avoid exported large values.

Bad pattern:

```lean
def family_123 : ProofCarryingNonIdFamily := {
  hugeData := ...,
  proof := by ...
}
```

Preferred pattern:

```lean
private def fam_123_data : NonIdFamilyData := ...

private theorem fam_123_checked :
    checkNonIdFamily fam_123_data = true := by
  -- small local proof facts

theorem fam_123_kills_interval :
    CoversInterval NonIdentityRankKilled lo hi := by
  intro r hlo hhi hM
  exact nonIdFamily_sound fam_123_data fam_123_checked r hlo hhi hM
```

Even better, if the public theorem can avoid mentioning `fam_123_data` in its
type, do that. Exported theorem types should mention only Nat bounds and
semantic predicates.

Use theorem/lemma declarations for proof facts, not large structures containing
proof fields, unless the existing trusted API absolutely requires the structure.

Acceptance for Phase 7:

- Large generated data definitions are private.
- Public theorem types are small.
- Root modules do not expose certificate literals.

## Phase 8: Memory-Safe Build and Validation Workflow

Use the Phase 8 validator as the canonical workflow:

```bash
python3 scripts/validate_public_coverage_build.py
```

The validator runs focused builds in memory-safe order, records per-command
elapsed time and peak RSS under `/tmp/cuboctahedron_public_coverage_validation`,
and stops immediately after any failed focused build, timeout, or suspected OOM.
It does not run a broad `lake build` by default.

If a broad build is needed after focused checks pass, run:

```bash
python3 scripts/validate_public_coverage_build.py --allow-full-lake-build
```

Do not use this flag until the focused workflow passes. Do not run a 24-way
generated-evidence build on a 48-64 GB machine. In this Lake version, `-J` is
not a jobs flag; the validator therefore runs focused `lake build` targets
serially and uses the existing `lake env lean -j1` public-only smoke path.

If `.lake` contains artifacts from failed packed-blob attempts, clean relevant
targets manually or run `lake clean` before evaluating the new backend. Do not
delete tracked source files.

Acceptance for Phase 8:

- Focused builds pass before any broad build.
- Peak memory observations are recorded when available.
- No broad build is attempted after a focused OOM.
- The public-only smoke check passes without selecting the legacy packed
  residual/Farkas chunks.

## Phase 9: Step 15 Integration

After `Cuboctahedron.Generated.ExhaustiveCoverage` builds, wire it into Step 15.

Create or complete theorems, adapted to existing names:

```lean
theorem generated_nonidentity_complete
    (r : Nat) (hr : r < pairWordCount)
    (hM : totalLinearAtRank r != Mat3.one) :
    NoNonIdentityStartedOrbitAtRank r :=
  Cuboctahedron.Generated.NonIdentity.complete r hr hM

theorem generated_translation_complete
    (r : Nat) (hr : r < pairWordCount)
    (hM : totalLinearAtRank r = Mat3.one) :
    NoTranslationStartedOrbitAtRank r :=
  Cuboctahedron.Generated.Translation.complete r hr hM

theorem no_unfolded_omni_starting_xp :
    forall pw : PairWord,
      ValidPairWord pw ->
      not (StartedUnfoldedOmniFeasible pw) := by
  -- Convert pw to a rank.
  -- Use rank/unrank correctness.
  -- Invoke Generated.rank_complete or branch-specific complete theorem.
  -- Bridge the semantic contradiction back to feasibility.
  ...
```

Do not postpone the rank/unrank bridge indefinitely. If generated coverage
builds but Step 15 is blocked by a missing bridge lemma, state the missing lemma
precisely and implement it if it is small.

Do not add theorem stubs with `sorry`. If a bridge is too large for this task,
stop and report the exact remaining gap, including file names and theorem names.

Before adding concrete theorem aliases, run:

```bash
python3 scripts/check_phase9_ready.py
```

This must pass. If it fails, do not create placeholder aliases; finish the
reported generated coverage prerequisite first. The expected blocker before the
interval hierarchy is complete is missing residual and translation interval
shards for `Cuboctahedron.Generated.exhaustiveGeneratedCoverage`.

Once the readiness check passes, add the concrete aliases in:

```text
Cuboctahedron/Search/GeneratedComplete.lean
```

using only the existing `_of_coverage` theorems and the concrete generated
witness:

```lean
theorem generated_nonidentity_complete :=
  generated_nonidentity_complete_of_coverage
    Cuboctahedron.Generated.exhaustiveGeneratedCoverage

theorem generated_translation_complete :=
  generated_translation_complete_of_coverage
    Cuboctahedron.Generated.exhaustiveGeneratedCoverage

theorem no_unfolded_omni_starting_xp :=
  no_unfolded_omni_starting_xp_of_coverage
    Cuboctahedron.Generated.exhaustiveGeneratedCoverage
```

Acceptance for Phase 9:

```bash
python3 scripts/check_phase9_ready.py
lake build Cuboctahedron.Search.GeneratedComplete
```

and the exact module must contain:

```text
generated_nonidentity_complete
generated_translation_complete
no_unfolded_omni_starting_xp
```

## Phase 10: Final Theorem and Axiom Check

Only start this after Step 15 is complete.

Create or complete:

```text
Cuboctahedron/MainTheorem.lean
Cuboctahedron/PrintAxioms.lean
```

Final intended theorem shape, adapted to existing names:

```lean
theorem cuboctahedron_no_omnihedral :
    not (exists gamma,
      NonsingularPeriodicOmnihedralOrbit cuboctahedron gamma) := by
  intro h
  obtain <pw, hpw, hfeas> := orbit_to_started_unfolded_pairword h
  exact no_unfolded_omni_starting_xp pw hpw hfeas
```

Print axioms:

```lean
import Cuboctahedron.MainTheorem

#print axioms cuboctahedron_no_omnihedral
```

Acceptable output should not include:

```text
sorryAx
Lean.trustCompiler
project-specific custom axioms
```

Depending on imports, standard Lean/mathlib axioms such as `propext`,
`Classical.choice`, and quotient-related axioms may appear.

Then run `lean4checker` on the built `.olean` containing the final theorem:

```bash
lean4checker --fresh .lake/build/lib/lean/Cuboctahedron/MainTheorem.olean
```

Adjust the `.olean` path to the actual Lake output.

## Overall Acceptance Criteria

This task is complete when:

1. The project has a small interval coverage core or equivalent.
2. `Cuboctahedron.Generated.NonIdentity.complete` exists and builds.
3. `Cuboctahedron.Generated.Translation.complete` exists and builds.
4. `Cuboctahedron.Generated.exhaustiveGeneratedCoverage` or an equivalent
   semantic `Generated.rank_complete` exists and builds.
5. The root generated coverage module does not import thousands of leaves
   directly.
6. No global generated `List` or `Array` tables are introduced for coverage.
7. No packed blob or predecoded byte-list checker path is revived.
8. No `native_decide`, `unsafe`, custom `axiom`, `sorry`, or `admit` is
   introduced.
9. Focused smoke builds are run before any broad build.
10. The implementation report includes:
    - files changed;
    - exact theorem names added;
    - exact commands run;
    - which commands passed or failed;
    - peak memory observations if available;
    - remaining gaps, with exact theorem names and file locations.

## Guiding Principle

Be conservative. The main goal is not clever compression for its own sake. The
main goal is a Lean-checkable public coverage API whose theorem statements are
small and whose build path is memory-safe on a 48-64 GB machine.
