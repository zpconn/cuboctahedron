# Symmetry Plan: Compressed Proof-Carrying Coverage Backend

## Goal

Replace the raw rank/mask generated-evidence path with a compressed proof-carrying backend that reduces Lean-checked generated leaves/nodes to the hundreds or low thousands.

Target:

- Preferred: 200-900 generated proof-carrying leaves.
- Hard gate: do not proceed to full Lean emission if the planned Lean-visible heavy leaf/node count exceeds 2,000.
- No raw one-leaf-per-rank backend.
- No raw one-leaf-per-translation-mask backend.
- No packed blob, byte-list, or giant Boolean-reduction backend.
- Final public API remains semantic:
  - `Cuboctahedron.Generated.NonIdentity.complete`
  - `Cuboctahedron.Generated.Translation.complete`
  - `Cuboctahedron.Generated.rank_complete`
  - `Cuboctahedron.Generated.exhaustiveGeneratedCoverage`

This plan is intentionally gated. Gemini's estimated 200-900 leaves is a target, not an assumption. The Python profiler must demonstrate comparable compression before Lean files are generated at scale.

## Hard Constraints

- No `sorry`, `admit`, custom `axiom`, `unsafe`, `native_decide`, or `decide +native`.
- No `Float`, tolerances, epsilon thresholds, or numerical approximations in proof code.
- External generators may search and propose witnesses, but Lean must check every witness.
- Do not trust Python/C++ counts as proof.
- Heavy generated data must not appear in public theorem statements.
- Root coverage files must import only small group/root modules, not thousands of leaves.
- Generated source must be memory-safe under a 45 GiB RAM budget.
- Broad `lake build` must not import heavy external proof leaves.

## Success Criteria

1. Dry-run compression profiler reports:
   - full rank coverage of `[0, numPairWords)`;
   - no overlaps and no gaps;
   - total planned Lean-heavy leaves/nodes under 2,000;
   - projected generated source size under an agreed cap;
   - translation Farkas shape count and family reuse statistics.
2. Lean core contains audited soundness theorems for:
   - prefix interval coverage;
   - `D4` start-face symmetry transport;
   - nonidentity prefix/residual families;
   - normalized Farkas shape transport.
3. Generated files export only semantic interval theorems.
4. `Cuboctahedron.Generated.ExhaustiveCoverage` is built from compressed interval roots.
5. Step 15 can consume `Generated.rank_complete` without importing raw evidence leaves.

## Phase 0: Inventory Existing Interfaces

Inspect and record the exact existing names for:

- `PairWord`, `PairId`, `numPairWords`, `unrankPairWord`, `rankPairWord?`;
- rank predicates such as `NoStartedUnfoldedOrbitAtRank`;
- nonidentity predicates and bridges;
- translation predicates and bridges;
- `CoversInterval`;
- current generated public coverage structures;
- current raw interval shard checker/emitter.

Deliverable:

- A short section added to this file or `everything_tried_so_far.md` listing the exact existing definitions reused by the symmetry backend.

Acceptance:

```bash
rg "def numPairWords|abbrev PairWord|NoStartedUnfoldedOrbitAtRank|CoversInterval|FarkasRankCertified|ResidualRankCertified" Cuboctahedron
```

### Phase 0 Inventory Results

Status: complete. The symmetry backend should reuse the following existing definitions rather than introduce parallel names.

Pair-word enumeration:

- `Cuboctahedron/Search/PairWords.lean`
  - `PairId`
  - `pairOfFace`
  - `canonicalNormalQ`
  - `faceOfPairSign`
  - `positiveSignOfFace`
  - `PairWord`
  - `pairCount`
  - `ValidPairWord`
- `Cuboctahedron/Search/Enumeration.lean`
  - `expectedNumPairWords`
  - `numPairWords`
  - `pairIdsInLexOrder`
  - `pairIdLexCode`
  - `PairCounts`
  - `PairCounts.initial`
  - `PairCounts.get`
  - `PairCounts.decrement`
  - `PairCounts.total`
  - `pairWordLexUnrank`
  - `unrankPairWord`
  - `rankPairWord?`
  - `unrankPairWord_valid`
  - `rank_unrank_pairword`
  - `unrank_rank_pairword`
  - `rankPairWord?_some_of_valid`
  - `rankPairWord?_eq_some_iff_unrank`
  - `rankPairWord?_none_of_invalid`
  - `SignMask`
  - `numSignMasks`
  - `unrankSignMask`
  - `rankSignMask`
  - `rank_unrank_signMask`
  - `unrank_rank_signMask`

Observed naming mismatch from the draft:

- The repo uses `numPairWords`, not `pairWordCount`.
- There is no standalone `totalLinearAtRank`; current rank code should use `totalLinearOfPairWord (unrankPairWord r)` unless a small adapter is intentionally added.
- Existing semantic predicates are rank/mask wrappers around certificate soundness, not yet a final unconditional `rank_complete`.

Current interval and public coverage layer:

- `Cuboctahedron/Generated/Coverage/Interval.lean`
  - `CoversInterval`
  - `CoversInterval.empty`
  - `CoversInterval.single`
  - `CoversInterval.concat`
  - `CoversInterval.mono`
- `Cuboctahedron/Generated/Coverage/Predicates.lean`
  - `NonIdentityRankCertified`
  - `NonIdentityRankKilled`
  - `NonIdentityRankCertified.killed`
  - `NonIdentityRankCertifiedNat`
  - `NonIdentityRankKilledNat`
  - `NonIdentityRankCertifiedNat.killed`
  - `TranslationCaseCertified`
  - `TranslationCaseKilled`
  - `TranslationCaseCertified.killed`
  - `TranslationCaseCertifiedNat`
  - `TranslationCaseKilledNat`
  - `TranslationCaseCertifiedNat.killed`
- `Cuboctahedron/Generated/Coverage/ComputableClassifiers.lean`
  - `NonIdComputableClassifier`
  - `NonIdComputableClassifier.classOfRank`
  - `NonIdComputableClassifier.ResidualBridge`
  - `NonIdComputableClassifier.complete_of_residual_bridge`
  - `NonIdComputableClassifier.killed_of_residual_bridge`
  - `TranslationComputableClassifier`
  - `TranslationComputableClassifier.classOfChoice`
  - `TranslationComputableClassifier.FarkasBridge`
  - `TranslationComputableClassifier.complete_of_farkas_bridge`
  - `TranslationComputableClassifier.killed_of_farkas_bridge`
- `Cuboctahedron/Generated/NonIdentity/Complete.lean`
  - `ResidualBridge`
  - `complete_of_residual_bridge`
  - `complete_no_feasible_of_residual_bridge`
  - `complete_of_computable_residual_bridge`
  - `complete_no_feasible_of_computable_residual_bridge`
- `Cuboctahedron/Generated/Translation/Complete.lean`
  - `FarkasBridge`
  - `complete_of_farkas_bridge`
  - `complete_no_feasible_of_farkas_bridge`
  - `complete_of_computable_farkas_bridge`
  - `complete_no_feasible_of_computable_farkas_bridge`
- `Cuboctahedron/Generated/NonIdentity/Coverage/All.lean`
  - `ResidualRankCertified`
  - `residualBridge_of_interval`
  - `ResidualRankCertifiedBy`
  - `residualBridge_of_interval_by`
- `Cuboctahedron/Generated/Translation/Coverage/All.lean`
  - `FarkasRankCertified`
  - `farkasBridge_of_interval`
  - `FarkasRankCertifiedBy`
  - `farkasBridge_of_interval_by`
- `Cuboctahedron/Generated/ExhaustiveCoverage.lean`
  - `PublicCoverageBridges`
  - `PublicCoverageIntervals`
  - `PublicComputableCoverageBridges`
  - `PublicComputableCoverageIntervals`
  - `PublicCoverageIntervals.toBridges`
  - `PublicComputableCoverageIntervals.toBridges`
  - `allPairRanksChunk`
  - `allPairRanksChunk_covers`
  - `exhaustiveGeneratedCoverageOfBridges`
  - `exhaustiveGeneratedCoverageOfComputableBridges`
  - `exhaustiveGeneratedCoverageOfIntervals`
  - `exhaustiveGeneratedCoverageOfComputableIntervals`

Certificate and proof-carrying interfaces:

- `Cuboctahedron/Search/NonIdentityCase.lean`
  - `totalLinearOfPairWord`
- `Cuboctahedron/Search/Certificates.lean`
  - `CoverageChunk`
  - `CoverageChunk.CoversPairRank`
  - `ExhaustiveGeneratedCoverage`
  - `ExhaustiveGeneratedCoverage.nonidentity_failure_of_valid`
  - `ExhaustiveGeneratedCoverage.translation_failure_of_valid`
- `Cuboctahedron/Search/CertificateFormat.lean`
  - `CheckedNonIdRank`
  - `CheckedNonIdRank.exists_cert`
  - `CheckedNonIdRank.no_feasible`
  - `CheckedTranslationCase`
  - `CheckedTranslationCase.exists_cert`
  - `CheckedTranslationCase.no_feasible`
  - `ProofCarryingNonIdFamily`
  - `ProofCarryingNonIdFamily.ContainsRank`
  - `ProofCarryingNonIdFamily.exists_cert`
  - `ProofCarryingNonIdFamily.no_feasible`
  - `ProofCarryingNonIdResidualFamily`
  - `ProofCarryingNonIdResidualFamily.exists_cert`
  - `ProofCarryingNonIdResidualFamily.no_feasible`
  - `ProofCarryingTranslationFarkasFamily`
  - `ProofCarryingTranslationFarkasFamily.ContainsCase`
  - `ProofCarryingTranslationFarkasFamily.exists_cert`
  - `ProofCarryingTranslationFarkasFamily.no_feasible`
  - `ProofCarryingTranslationFarkasShapeFamily`
  - `ProofCarryingTranslationFarkasShapeFamily.exists_cert`
  - `ProofCarryingTranslationFarkasShapeFamily.no_feasible`

Existing `X+`-stabilizing symmetry/canonicalization machinery:

- `Cuboctahedron/Search/Certificates.lean`
  - `StartedSym`
  - `startedSymIdentity`
  - `allStartedSyms`
  - `allPairIds`
  - `symVecQ`
  - `faceOfNormalQ`
  - `symFace`
  - `symPair`
  - `symPairWord`
  - `symFaceVector`
  - `symSeq`
  - `symTranslationMask`
  - `symFace_xp`
  - `symPair_x`
  - `startedSymActionKey`
  - `startedSymCompose?`
  - `startedSymHasInverse`
  - `checkStartedSymGroup`
  - `StartedSymGroupChecked`
  - `checkStartedSymGroup_sound`
  - `checkStartedSymGroup_true`
  - `allStartedSyms_complete`
  - `canonicalPairTransform`
  - `canonicalPairWord`
  - `CanonicalPairWordResult`
  - `canonicalPairWordWithTransform`
  - `canonicalTranslationTransform`
  - `canonicalTranslationChoice`
  - `CanonicalTranslationChoiceResult`
  - `canonicalTranslationChoiceWithTransform`
  - `checkSymLinearIdentityPreservation`
  - `sym_totalLinear_identity_iff`
  - `reversePairWord`
  - `reverseTranslationChoice`
  - `reversalProofTransportEnabled`
  - `reversal_grouping_only_policy`
  - `symTranslationMask_inverse`
  - `CanonicalPairCoverage`
  - `CanonicalTranslationCoverage`
  - `canonicalPairCoverage`
  - `canonicalTranslationCoverage`
  - `CanonicalPairCoverageSound`
  - `CanonicalTranslationCoverageSound`
  - `canonicalPairCoverage_sound`
  - `canonicalTranslationCoverage_sound`
  - `canonicalPairCoverage_exact_once`
  - `canonicalTranslationCoverage_exact_once`
  - `expectedTranslationChoiceCount`
  - `expectedCanonicalPairWordClassCount`
  - `expectedCanonicalTranslationChoiceClassCount`
  - `CanonicalCoverageManifest`

This is the key reuse point for Phase 2: the repo already has an order-8 started-face symmetry representation and canonicalization functions. The symmetry plan should harden and transport this machinery instead of creating a disconnected `D4` API from scratch. The current reversal path is explicitly disabled by `reversalProofTransportEnabled = false`, so reversal should remain a grouping/profiling optimization only until a separate proof transport theorem exists.

Current bounded public-evidence metadata:

- `Cuboctahedron/Generated/PublicEvidence/BoundedRange.lean`
  - `VerifiedBoundedRange`
  - `currentBoundedStartRank`
  - `currentBoundedEndRank`
  - `currentBoundedRankCount`
  - `currentBoundedCompleteForInterval`
  - `currentBoundedVerifiedRootPath`

Phase 0 conclusion:

- The new backend should add only thin adapters where names differ from the plan.
- The first real implementation target is not a new raw coverage structure; it is a prefix/rank interval layer that can feed the existing `CoversInterval` and proof-carrying family interfaces.
- Any generated root should prove semantic interval coverage using `NonIdentityRankKilledNat`/`TranslationCaseKilledNat` or their `Fin numPairWords` equivalents, then adapt into the existing public coverage structures.

## Phase 1: Prefix Interval Core

Implement a small hand-written Lean module:

```text
Cuboctahedron/Generated/Coverage/PrefixInterval.lean
```

Definitions:

```lean
structure PrefixState where
  len : Nat
  data : Fin len -> PairId
  remaining : PairId -> Nat

def PairWordHasPrefix (p : PrefixState) (w : PairWord) : Prop := ...

def PrefixRankInterval (p : PrefixState) (lo hi : Nat) : Prop :=
  forall r : Fin numPairWords,
    lo <= r.val -> r.val < hi ->
      PairWordHasPrefix p (unrankPairWord r)
```

The exact structure may adapt to the repo, but the key theorem must be:

```lean
theorem prefix_interval_sound
    (p : PrefixState) (lo hi : Nat)
    (h : PrefixRankInterval p lo hi)
    (hkill : forall w, ValidPairWord w -> PairWordHasPrefix p w -> P w) :
    CoversInterval (fun r => P (unrankPairWord ⟨r, ...⟩)) lo hi := ...
```

Implementation notes:

- Do not enumerate completions in Lean.
- Use small arithmetic/ranking lemmas already present in the repo.
- If proving exact prefix/rank interval facts in Lean is large, use generated `by omega`/Nat proofs for numeric bounds, but not giant computation.

Acceptance:

- Small hand-picked prefixes prove contiguous rank intervals.
- No generated data yet.

## Phase 2: `D4` Start-Face Symmetry Core

Implement:

```text
Cuboctahedron/Geometry/Symmetry.lean
Cuboctahedron/Search/PairWordSymmetry.lean
Cuboctahedron/Generated/Coverage/SymmetryTransport.lean
```

Definitions:

- `D4`, the order-8 symmetry group stabilizing `Face.xp`.
- Its action on:
  - `Vec3`;
  - `Face`;
  - `PairId`;
  - `PairWord`;
  - translation sign masks;
  - 2D `X+` face coordinates `(y,z)`;
  - linear constraints.

Required theorems:

```lean
theorem d4_preserves_xp : ...
theorem d4_preserves_polyhedron : ...
theorem d4_preserves_started_unfolded_feasible : ...
theorem d4_preserves_totalLinear_identity : ...
theorem nonid_symm_transport :
  D4PrefixIntervalMap g lo hi lo' hi' ->
  CoversInterval NonIdentityRankKilled lo hi ->
  CoversInterval NonIdentityRankKilled lo' hi'

theorem translation_symm_transport :
  D4TranslationCaseMap g lo hi lo' hi' ->
  CoversInterval TranslationRankKilled lo hi ->
  CoversInterval TranslationRankKilled lo' hi'
```

Important caveat:

Only symmetries stabilizing `X+` are directly usable after cyclic reindexing to start at `X+`. Any larger octahedral symmetry must include a separate theorem that reindexes the start face back to `X+`.

Acceptance:

- `#eval` tables for the eight actions on `PairId`.
- A hand-picked rank interval can be transported by a `D4` symmetry.
- No generated large files.

## Phase 3: Python Dry-Run Compression Profiler

Create:

```text
scripts/profile_symmetry_compression.py
```

This script must not emit Lean by default. It computes compression statistics only.

Dry-run tasks:

1. Traverse the pair-word prefix tree.
2. For each prefix, compute:
   - rank interval `[lo, hi)`;
   - remaining multiplicities;
   - `D4` canonical representative;
   - whether it is canonical or transported.
3. Run exact rational prefix-pruning heuristics:
   - bad pair balance;
   - bad direction/sign cone;
   - forced future-sign impossibility;
   - any other exact prefix-level obstruction.
4. At depth 13, classify residual nonidentity and translation cases.
5. Normalize translation constraint systems and hash Farkas shapes.
6. Coalesce adjacent intervals killed by the same semantic family.
7. Print:
   - `canonical_prefixes_seen`;
   - `noncanonical_prefixes_transported`;
   - `canonical_dead_prefixes`;
   - `canonical_depth13_residuals`;
   - `identity_linear_words`;
   - `translation_cases_after_symmetry`;
   - `unique_normalized_farkas_shapes`;
   - `coalesced_semantic_tiles`;
   - `planned_lean_heavy_leaves`;
   - `planned_public_interval_nodes`;
   - `sum(hi - lo)`;
   - overlap/gap check result.

Hard gates:

- Reject if `sum(hi - lo) != numPairWords`.
- Reject if coverage intervals overlap or have gaps.
- Reject if `planned_lean_heavy_leaves > 2000`.
- Warn if `planned_lean_heavy_leaves > 900`.
- Reject if any family requires raw per-rank or per-mask fallback.

Acceptance:

```bash
python3 scripts/profile_symmetry_compression.py --dry-run --max-lean-leaves 2000
```

must produce a JSON report under:

```text
scripts/generated/symmetry_compression_profile.json
```

## Phase 4: Nonidentity Family Checkers

Create or extend:

```text
Cuboctahedron/Generated/NonIdentity/Families.lean
Cuboctahedron/Search/NonIdentityFamilies.lean
```

Family classes:

### 4.1 Bad Pair Balance Family

Purpose:

Kill prefixes whose remaining multiplicities cannot yield the required face-pair/sign balance.

Lean shape:

```lean
private structure NonIdBadBalanceFamily where
  prefix : PrefixState
  intervalLo : Nat
  intervalHi : Nat
  overusedPair : PairId
  witness : BalanceWitness
```

Required checker:

```lean
def checkNonIdBadBalanceFamily : NonIdBadBalanceFamily -> Bool
```

Soundness:

```lean
theorem checkNonIdBadBalanceFamily_sound :
  checkNonIdBadBalanceFamily fam = true ->
  CoversInterval NonIdentityRankKilled fam.intervalLo fam.intervalHi
```

### 4.2 Bad Direction Family

Purpose:

Kill a prefix when exact forced direction/sign inequalities make every completion impossible.

Lean shape:

```lean
private structure NonIdBadDirFamily where
  prefix : PrefixState
  intervalLo : Nat
  intervalHi : Nat
  partialLinear : Mat3 Rat
  coneWitness : DirectionConeWitness
```

Soundness:

```lean
theorem checkNonIdBadDirFamily_sound :
  checkNonIdBadDirFamily fam = true ->
  CoversInterval NonIdentityRankKilled fam.intervalLo fam.intervalHi
```

### 4.3 Residual Nonidentity Families

Depth-13 residuals may still need exact witnesses:

- no fixed `+1` axis;
- failed forced-sign balance;
- axis misses `X+` interior;
- bad first hit;
- bad hit interior.

These must be grouped by shared witness shape wherever possible.

Do not rely on a trace-only criterion unless an exact theorem proves it is sufficient for the current nonidentity obstruction.

Acceptance:

- One hand-generated family of each kind checks in Lean.
- Each exported theorem mentions only `CoversInterval ... lo hi`, not certificate internals.

## Phase 5: Translation Farkas Shape Sharing

Create or extend:

```text
Cuboctahedron/Generated/Translation/FarkasShapes.lean
Cuboctahedron/Search/FarkasShapeTransport.lean
```

Normalized shape:

```lean
structure NormalizedFarkasShape (n : Nat) where
  rows : Fin n -> StrictLin2Int
  weights : Fin n -> Nat
```

Normalization algorithm in Python:

1. Convert each strict inequality to integer coefficients.
2. Divide each row by `gcd(a,b,c)`.
3. Normalize sign by requiring a canonical leading coefficient convention.
4. Sort rows lexicographically.
5. Hash the normalized row list plus support of Farkas weights.
6. Deduplicate globally.

Shape theorem:

```lean
theorem shape_unsat_1405 : ShapeUnsat shape_1405 := by
  -- exact rational/integer proof, no native_decide
```

Case transport family:

```lean
private structure TransSourceFarkasFamily where
  intervalLo : Nat
  intervalHi : Nat
  maskClass : MaskClass
  shapeId : Nat
  rowMap : ...
  positiveScales : ...
```

Soundness:

```lean
theorem checkTransSourceFarkasFamily_sound :
  checkTransSourceFarkasFamily fam = true ->
  CoversInterval TranslationRankKilled fam.intervalLo fam.intervalHi
```

Acceptance:

- Dry-run reports unique normalized Farkas shapes.
- At least one shared shape is used by multiple transported/canonical cases.
- One generated mini-shape library builds.

## Phase 6: Symmetry Canonicalization and Semantic Tiling

Extend the profiler into a generator, but keep dry-run as the default:

```text
scripts/generate_symmetry_evidence.py
```

Algorithm:

1. DFS over valid pair-word prefixes.
2. Compute each prefix rank interval `[lo, hi)`.
3. Canonicalize the prefix under `D4`.
4. If noncanonical:
   - record a symmetry transport tile from canonical interval to this interval;
   - do not run heavy geometry.
5. If canonical:
   - try prefix-level nonidentity pruning;
   - try translation-prefix pruning where applicable;
   - if killed, record one semantic tile and do not descend.
6. At depth 13:
   - classify nonidentity vs identity;
   - attach residual nonidentity family or normalized translation/Farkas family.
7. Expand symmetry transports.
8. Coalesce adjacent tiles with identical semantic family and transport data.
9. Sort by `lo`.
10. Prove/report:
    - exact interval partition;
    - no overlap;
    - no gaps;
    - total rank count equals `numPairWords`.

Critical gate:

If the tile list cannot be reduced to low-thousands Lean-visible nodes, stop and improve family heuristics. Do not emit a raw interval list with hundreds of thousands of proof nodes.

Acceptance:

```bash
python3 scripts/generate_symmetry_evidence.py --dry-run --max-lean-leaves 2000
```

prints `status: accepted_for_lean_emission`.

## Phase 7: Generated Lean Architecture

Generate:

```text
Cuboctahedron/Generated/SymmetryEvidence/
  NonIdentity/
    Chunk000.lean
    ...
    Group000.lean
    All.lean
  Translation/
    FarkasShapes.lean
    Chunk000.lean
    ...
    Group000.lean
    All.lean
  Root.lean
```

Rules:

- Chunk files export one theorem:

```lean
theorem chunk_014_covers :
  CoversInterval NonIdentityRankKilled lo hi := ...
```

or the translation analogue.

- Heavy data is `private`.
- Public theorem statements mention only:
  - semantic predicate;
  - interval bounds;
  - small classifier/shape IDs if unavoidable.
- Chunks are grouped by balanced binary `CoversInterval.concat`.
- Root imports only group/all modules.
- No generated global arrays/lists of cases.
- No giant right-leaning proof terms.
- No `native_decide`.

Memory rule:

- Heavy chunks remain outside normal broad package imports if they are expensive.
- Public root imports only lightweight semantic summaries once checked.

Acceptance:

Focused builds:

```bash
lake build Cuboctahedron.Generated.Coverage.PrefixInterval
lake build Cuboctahedron.Search.PairWordSymmetry
lake build Cuboctahedron.Generated.SymmetryEvidence.NonIdentity.Chunk000
lake build Cuboctahedron.Generated.SymmetryEvidence.Translation.FarkasShapes
lake build Cuboctahedron.Generated.SymmetryEvidence.Translation.Chunk000
lake build Cuboctahedron.Generated.SymmetryEvidence.Root
```

## Phase 8: Public Coverage API

Wire compressed roots into the public API:

```text
Cuboctahedron/Generated/NonIdentity/Complete.lean
Cuboctahedron/Generated/Translation/Complete.lean
Cuboctahedron/Generated/ExhaustiveCoverage.lean
```

Target theorem shapes:

```lean
namespace Cuboctahedron.Generated.NonIdentity

theorem complete_interval :
  CoversInterval
    (fun r => totalLinearAtRank r != matId ->
              NoNonIdentityStartedOrbitAtRank r)
    0 numPairWords := ...

theorem complete
    (r : Nat) (hr : r < numPairWords)
    (hM : totalLinearAtRank r != matId) :
    NoNonIdentityStartedOrbitAtRank r := ...

end Cuboctahedron.Generated.NonIdentity
```

Translation analogue:

```lean
namespace Cuboctahedron.Generated.Translation

theorem complete_interval :
  CoversInterval
    (fun r => totalLinearAtRank r = matId ->
              NoTranslationStartedOrbitAtRank r)
    0 numPairWords := ...

theorem complete
    (r : Nat) (hr : r < numPairWords)
    (hM : totalLinearAtRank r = matId) :
    NoTranslationStartedOrbitAtRank r := ...

end Cuboctahedron.Generated.Translation
```

Root:

```lean
theorem rank_complete
    (r : Nat) (hr : r < numPairWords) :
    NoStartedUnfoldedOrbitAtRank r := by
  by_cases hM : totalLinearAtRank r = matId
  · exact translation_to_started_rank r hr hM
      (Translation.complete r hr hM)
  · exact nonidentity_to_started_rank r hr hM
      (NonIdentity.complete r hr hM)
```

Acceptance:

```bash
lake build Cuboctahedron.Generated.ExhaustiveCoverage
```

### Phase 8A status: bounded semantic batch pilot

The archived singleton-backed implementation previously emitted a semantic
batch for ranks `[0,64)`:

```bash
python3 scripts/generate_symmetry_semantic_batch.py \
  --start-rank 0 --end-rank 64 --shard-size 8 --reuse-existing
```

This creates public interval shards under `evidence/public_interval_shards/`
and semantic wrapper/group roots under `evidence/symmetry_semantic_shards/`.
The default in-tree marker still intentionally remains at the already checked
`[0,8)` root until the larger batch is verified end-to-end.

After the `[8,16)` OOM, the default wrapper only reuses the known checked
`[0,8)` smoke shard. Reusing or generating any other singleton shard now
requires the diagnostic-only `--allow-legacy-singleton-leaves` flag.

The safe checker is:

```bash
python3 scripts/check_symmetry_semantic_batch.py \
  evidence/symmetry_semantic_shards/manifest.json \
  --compile-external --jobs 1 --memory-budget-gib 30 \
  --lean-memory-limit-gib 44 \
  --report evidence/symmetry_semantic_shards/check_report.json
```

Observed result: `[0,8)` is cached and checks, but the first new
non-identity singleton leaf in `[8,16)` still triggers a Lean out-of-memory
panic under the per-process crash guard:

```text
evidence/public_interval_shards/Shard000000008_000000016/NonIdentity/Rank000000008.lean
```

That means Phase 8 has not yet reached the intended family/prefix compression
shape. The next implementation step is not to push more singleton rank leaves;
it is to replace the residual non-identity singleton emitter with real
prefix/family interval leaves whose public theorem exposes only semantic
`CoversInterval` coverage.

### Phase 8B status: singleton shard backend archived

The singleton public interval shard backend is no longer a path forward.
It remains available only for tiny diagnostics and smoke tests:

- `scripts/generate_public_interval_evidence.py --mode interval-shard` now
  requires `--allow-legacy-singleton-leaves`.
- `scripts/generate_symmetry_semantic_batch.py` refuses to create missing
  singleton public shards unless `--allow-legacy-singleton-leaves` is passed.
- Existing verified `[0,8)` artifacts may still be reused as a bounded smoke
  root, but the in-tree marker must not advance beyond `[0,8)` using this
  backend.

The replacement target is:

```text
Cuboctahedron/Generated/SymmetryEvidence/FamilyInterval.lean
```

Generated family chunks should prove bounded witness intervals:

```lean
NonIdentityWitnessInterval classifier lo hi
TranslationWitnessInterval classifier lo hi
```

and then use the hand-written adapters to obtain bounded semantic elimination:

```lean
Coverage.CoversInterval Coverage.NonIdentityRankKilledNat lo hi
Coverage.CoversInterval TranslationRankKilledNat lo hi
```

This preserves the existing witness-producing trust model while avoiding a
global bridge and avoiding one `NonIdCert` proof per raw rank in public theorem
statements. The next generator must emit true family-level witnesses for those
intervals; it must not call `write_interval_shard` except in explicitly marked
diagnostic smoke mode.

### Phase 8C status: family interval template suite

The first replacement emitter is:

```text
scripts/generate_family_interval_evidence.py
scripts/check_family_interval_evidence.py
```

It emits real non-singleton family interval roots for the checked non-identity
family samples currently available in `FamilySample`:

| Interval | Template | Ranks |
| --- | --- | ---: |
| `[13,16)` | bad direction | 3 |
| `[102,103)` | bad pair balance | 1 |
| `[104,106)` | axis misses start interior | 2 |
| `[159,160)` | bad first hit | 1 |

```bash
python3 scripts/generate_family_interval_evidence.py --list-supported

python3 scripts/generate_family_interval_evidence.py \
  --emit-all-supported

python3 scripts/check_family_interval_evidence.py \
  evidence/family_interval_shards/manifest.json \
  --compile-external --lean-memory-limit-gib 44
```

Each generated root has public type-level bounds `[lo,hi)` and exports
`FamilyIntervalEvidence lo hi` plus semantic `nonidentity_killed` and
`translation_killed` interval theorems. The roots use one private
`NonIdParametricFamily` per interval, together with the core theorem that a
checked non-identity parametric family certifies `totalLinear ≠ I` throughout
its interval. This removes the old per-rank translation-branch proof boilerplate
and does not emit singleton `NonIdCert` leaves.

The emitter intentionally refuses every other nonempty interval for now:

```text
no true family-level template is implemented for this nonempty range;
refusing singleton fallback
```

That is the desired failure mode until additional prefix/family templates are
implemented. The suite is still sample-scale: it covers 7 ranks total and is
not yet full-range coverage.

### Phase 8D status: synthesized same-failure interval profiler

The next bounded development tool is:

```text
scripts/synthesize_family_interval_templates.py
```

It scans an exact rank interval, groups contiguous non-identity ranks whose
generated certificates have the same failure constructor, and can emit a capped
set of `FamilyIntervalEvidence lo hi` roots under:

```text
evidence/synthesized_family_intervals/
```

The verified smoke run emitted two bad-direction roots:

| Interval | Ranks | External compile time |
| --- | ---: | ---: |
| `[422,430)` | 8 | 42.3s |
| `[468,481)` | 13 | 48.7s |

The checker command was:

```bash
python3 scripts/check_family_interval_evidence.py \
  evidence/synthesized_family_intervals/manifest.json \
  --compile-external --lean-memory-limit-gib 44 \
  --report evidence/synthesized_family_intervals/check_report.json
```

A larger dry-run over `[0,5000)` found 2,690 same-failure runs; the largest
emittable run covered only 36 ranks. This confirms that same-failure grouping
is useful for smoke tests and profiling, but is still far below the intended
Gemini-style compression target of hundreds/low-thousands of leaves for the
full 97,297,200 ranks.

Important distinction: these synthesized roots do not create singleton rank
leaf modules and do not export certificate literals in their public theorem
types, but they still contain local per-rank `NonIdCert` literals inside each
root. They are therefore not the final prefix-pruning backend. The next real
compression step is to add semantic prefix templates whose Lean soundness
theorems kill large prefix intervals without enumerating every rank in the
interval.

## Phase 9: Step 15 Integration

Use `Generated.rank_complete` to prove:

```lean
theorem generated_nonidentity_complete : ...
theorem generated_translation_complete : ...
theorem no_unfolded_omni_starting_xp : ...
```

Required bridge:

- convert any valid started pair-word to a rank;
- use rank/unrank correctness;
- apply `Generated.rank_complete`;
- transport semantic rank impossibility back to the unfolded feasibility object.

Acceptance:

```bash
lake build Cuboctahedron.Search.Step15
```

or the actual module containing `no_unfolded_omni_starting_xp`.

## Phase 10: Validation and Final Theorem

Only after Step 15 builds:

```text
Cuboctahedron/MainTheorem.lean
Cuboctahedron/PrintAxioms.lean
```

Commands:

```bash
lake build
grep -R "sorry\|admit\|axiom\|native_decide\|unsafe" Cuboctahedron || true
lean Cuboctahedron/PrintAxioms.lean
lean4checker --fresh .lake/build/lib/lean/Cuboctahedron/MainTheorem.olean
```

Acceptance:

- `lake build` succeeds.
- No `sorryAx`.
- No `Lean.trustCompiler`.
- No project-specific custom axioms.
- Final theorem is the billiard theorem, not only a computational/generated coverage theorem.

## Work Order

1. Implement Phase 0 inventory.
2. Implement Phase 1 prefix interval core.
3. Implement Phase 2 `D4` symmetry core and transport theorem skeletons.
4. Implement Phase 3 dry-run profiler.
5. Run profiler and inspect whether compression is plausible.
6. If projected Lean-heavy leaves exceed 2,000, improve prefix/symmetry/Farkas sharing before generating Lean.
7. Implement nonidentity families.
8. Implement translation normalized Farkas shapes.
9. Generate a tiny symmetry-evidence shard and build it.
10. Generate a bounded medium shard and build it with memory monitoring.
11. Generate full compressed evidence only after the dry-run gate passes.
12. Wire public coverage API.
13. Finish Step 15.
14. Finish final theorem and axiom validation.

## Explicit Non-Goals

- Do not continue scaling raw `[0,8)` interval shards to the full rank range.
- Do not emit 97,297,200 rank leaves.
- Do not emit 157,957,632 translation-mask leaves.
- Do not emit hundreds of thousands of Lean interval proof nodes.
- Do not use packed blobs or byte-list decoding as the proof mechanism.
- Do not rely on Gemini's projected counts without local profiler evidence.
