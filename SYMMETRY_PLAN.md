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

## Current Status Dashboard

Last updated after the translation/Farkas compression gate rejected the current
translation family keys on `[0,5000)` and `[0,100000)`.

| Phase | Status | Notes |
| --- | --- | --- |
| Phase 0: inventory | Complete | Existing rank, coverage, classifier, symmetry, and generated APIs are recorded below. |
| Phase 1: prefix interval core | Complete | `Cuboctahedron/Generated/Coverage/PrefixInterval.lean` exists and is used by generated prefix roots. |
| Phase 2: started-face symmetry core | Complete for core API; needs wider proof use | `PairWordSymmetry.lean` and `SymmetryTransport.lean` exist. Reversal remains disabled for proof transport. |
| Phase 3: compression profiler | Complete as a tool; current nonidentity and translation gates reject | `scripts/profile_symmetry_compression.py` now has `--prefix-kill-tree` and `--translation-farkas-tree`; both current bounded gates are diagnostic-only. |
| Phase 4: nonidentity family checkers | Partially complete | Semantic adapters now cover bad pair balance, completion-local bad direction, uniform bad direction, uniform no-fixed-axis, and uniform bad-balance witnesses. Larger true prefix templates are still needed. |
| Phase 5: translation Farkas sharing | Gate added; current family keys reject | `FarkasShapeTransport.lean` exists, and `--translation-farkas-tree` shows Farkas-shape reuse, but bad-direction families still explode. |
| Phase 6: semantic tiling | Current gates rejected | Automatic bounded-window discovery works, but the current nonidentity prefix templates and translation family keys both produce far too many heavy leaves. |
| Phase 7: generated Lean architecture | Partially complete | External evidence-cache workflow works; final low-thousands hierarchy is not generated yet. |
| Phase 8: public coverage API | Blocked on compression | The raw/singleton/OOM paths are archived or avoided; public API should wait for compressed evidence. |
| Phase 9: Step 15 integration | Not ready | Requires `Generated.rank_complete` from compressed coverage. |
| Phase 10: final theorem/axioms | Not ready | Wait for Step 15. |

Completed current-work items:

- Added `Cuboctahedron/Generated/NonIdentity/PrefixPruning.lean`.
- Added reusable theorem `nonidentity_killed_of_axis_dot_zero`.
- Added `BadDirectionPrefixCert` and `BadDirectionPrefixCert.sound`.
- Added `nonidentity_killed_of_no_fixed_axis`.
- Added `UniformBadDirectionPrefixCert` and `UniformBadDirectionPrefixCert.sound`.
- Added `NoFixedAxisPrefixCert` and `NoFixedAxisPrefixCert.sound`.
- Added `UniformBadBalancePrefixCert` and `UniformBadBalancePrefixCert.sound`.
- Generalized the forced-sequence bridge in
  `Cuboctahedron/Search/Certificates.lean` via
  `forcedSeq_eq_of_axisForces_data`.
- Added `scripts/generate_prefix_pruning_prototype.py`.
- Generated externally checked roots:
  - `evidence/prefix_pruning/BadDirection090_096/VerifiedRoot.lean`
  - `evidence/prefix_pruning/BadPairBalance102/VerifiedRoot.lean`
  - `evidence/prefix_pruning/DiscoveredBadDirection_000002694_000002706/VerifiedRoot.lean`
  - `evidence/prefix_pruning/DiscoveredBadDirection_000002778_000002790/VerifiedRoot.lean`
- Verified all four roots through `scripts/check_family_interval_evidence.py`
  using the external `.olean` cache and a 44 GiB Lean memory cap.
- Generated and externally checked current active uniform-family roots:
  - `evidence/prefix_pruning/uniformBadDirection_000000000_000000003/VerifiedRoot.lean`
  - `evidence/prefix_pruning/uniformBadDirection_000000003_000000006/VerifiedRoot.lean`
- Verified both uniform roots through `scripts/check_family_interval_evidence.py`
  using the external `.olean` cache and a 44 GiB Lean memory cap.
- Recorded the bounded uniform profile at
  `scripts/generated/prefix_pruning_uniform_profile.json`: 487 uniform
  bad-direction candidates and 0 uniform no-fixed-axis candidates in
  `[0,5000)`, with the current width gate capped at 24 ranks.
- Added the nonidentity prefix-kill dry-run mode:
  `scripts/profile_symmetry_compression.py --prefix-kill-tree`.
- Recorded rejected Phase 6B prefix-kill reports:
  - `scripts/generated/prefix_kill_tree_profile_0_5000.json`
  - `scripts/generated/prefix_kill_tree_profile_0_100000.json`
- Added the translation/Farkas dry-run gate:
  `scripts/profile_symmetry_compression.py --translation-farkas-tree`.
- Recorded rejected translation/Farkas reports:
  - `scripts/generated/translation_farkas_compression_profile_0_5000.json`
    scanned 5,000 pair-word ranks, 487 identity-linear words, and 31,168
    translation masks. It found 2,057 exact normalized Farkas shapes, but
    still planned 15,032 heavy Lean leaves and only 2.073 cases per heavy
    leaf.
  - `scripts/generated/translation_farkas_compression_profile_0_100000.json`
    scanned 100,000 pair-word ranks, 5,565 identity-linear words, and
    356,160 translation masks. It found 11,478 exact normalized Farkas
    shapes with reuse, but the total heavy-family tracker exceeded its
    100,000-family cap.

Immediate next work:

1. Do not emit more Lean from the current prefix-kill strategy.
2. Do not emit Lean from the current translation/Farkas strategy either; the
   dry-run proves that the current `badDirectionSign` and per-case family
   keys remain effectively case-local.
3. Add a genuinely stronger mathematical family obstruction. The most urgent
   target is translation bad-direction sharing: in `[0,100000)`, 316,450 of
   356,160 translation sign assignments die before Farkas, and those cases
   currently dominate the heavy-family explosion.
4. Only after a new dry-run falls below the 2,000-leaf hard gate, emit
   hierarchical generated coverage roots.

Interpretation of the Phase 6B rejection:

- The current nonidentity prefix-kill templates are trustworthy as local proof
  shapes, but they do not yet provide useful compression.
- The best observed prefix-kill interval still has width 3, so scaling this
  path would behave like a case-by-case backend and would likely return to the
  same generated-data/OOM failure mode.
- Treat the current prefix-kill emitter as a diagnostic harness only. The next
  compression attempt should either introduce a new large-interval
  nonidentity obstruction or move effort to translation normalized Farkas
  sharing.

Interpretation of the translation/Farkas rejection:

- Normalized Farkas shapes do share across D4 orbits, but not enough by
  themselves. The `[0,100000)` sample already has 11,478 unique normalized
  Farkas shapes among 39,710 cases needing Farkas.
- The larger failure is the pre-Farkas branch: `badDirectionSign` covers
  316,450 translation sign assignments in `[0,100000)`, but the current
  family key includes enough exact sequence/vector data that it produces
  over 100,000 heavy families before the tracker stops counting.
- The current translation gate should remain a profiler, not an emitter. The
  next viable attempt needs a coarse, Lean-checkable bad-direction family
  theorem that groups many masks/ranks by sign/denominator obstruction
  patterns rather than by complete translated sequence data.

Plain-language takeaway:

- The Farkas sharing idea is real, but it only helps the minority of
  translation cases that survive long enough to need a Farkas certificate.
  In the `[0,100000)` sample, that is 39,710 of 356,160 translation sign
  assignments.
- Most translation cases fail earlier because one required crossing direction
  or denominator already has the wrong sign. Those early failures are
  mathematically simple, but the current profiler treats them with nearly
  case-specific keys.
- Therefore the next compression step should not emit more Farkas shapes yet.
  It should first prove and profile a coarse `badDirectionSign` family
  checker, for example a theorem saying that every rank/mask in a whole
  interval has some required crossing denominator nonpositive, so no
  translation orbit can realize that interval.

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

Status: partially complete.

Completed pieces:

- `Cuboctahedron/Search/NonIdentityFamilies.lean` exists.
- `Cuboctahedron/Generated/NonIdentity/Families.lean` exists.
- `Cuboctahedron/Generated/NonIdentity/PrefixPruning.lean` now provides
  semantic prefix adapters for:
  - forced-sequence bad pair balance;
  - bad direction via exact `AxisDotZeroAtWord` contradictions.
- The bad-direction adapter has been exercised by a depth-9 generated prefix
  interval covering `[90,96)`.

Remaining work in this phase is not more singleton/residual certificates. The
remaining work is to make the nonidentity families genuinely prefix-level and
high compression.

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

### 4.4 Current Prefix-Pruning Adapter

Current Lean API:

```lean
theorem nonidentity_killed_of_axis_forces_not_omni : ...
theorem nonidentity_killed_of_axis_dot_zero : ...

structure BadPairBalancePrefixCert (lo hi : Nat) where ...
structure BadDirectionPrefixCert (lo hi : Nat) where ...
```

Current generated evidence:

| root | interval | prefix length | status |
| --- | --- | ---: | --- |
| `BadDirection090_096/VerifiedRoot.lean` | `[90,96)` | 9 | externally checked |
| `BadPairBalance102/VerifiedRoot.lean` | `[102,103)` | 13 | externally checked control |

The bad-direction root still supplies per-completion witnesses inside the
bounded leaf. That is acceptable for proving the adapter, but it is not enough
for the final compression target.

### 4.5 Required Stronger Nonidentity Prefix Templates

Add emitter and Lean support for these templates, in this order:

1. **Uniform bad-direction prefix.**
   A single prefix-level theorem should prove that every completion has a
   zero or wrong-sign forced pre-impact dot product, without enumerating all
   completions in Lean.
2. **Uniform forced-pair-balance failure.**
   A prefix-level theorem should prove the forced signs cannot produce one
   face from each opposite pair for any completion.
3. **Early no-axis or low-rank fixed-space failure.**
   If a partial product already forces the final linear part away from a valid
   one-dimensional fixed axis for every completion, prove that as a prefix
   family. Do not use trace heuristics unless an exact theorem proves them.
4. **Axis-start exclusion family.**
   Group residuals whose fixed axis is exactly separated from the `X+`
   relative interior by the same rational inequality pattern.
5. **Bad first-hit/interior family.**
   Group residuals by the first exact failed hit/interior inequality pattern.

Acceptance for this subphase:

```bash
python3 scripts/generate_prefix_pruning_prototype.py --emit
python3 scripts/check_family_interval_evidence.py \
  evidence/prefix_pruning/manifest.json \
  --compile-external --lean-memory-limit-gib 44
```

plus a dry-run report showing at least one template covers hundreds or
thousands of ranks per generated root in a bounded test window.

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

Status: partially complete. The generator/profiler scaffolding exists, but the
current externally checked semantic prefix evidence covers only seven ranks.
Phase 6 is not complete until the dry-run tiler demonstrates full
`[0,numPairWords)` coverage below the hard leaf/node gate.

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

### Phase 6A: Automatic Prefix Interval Discovery

Status: complete for bounded bad-direction discovery; not a final compression
gate.

Extend the prefix-pruning emitter/profiler so it can discover candidate
intervals rather than hard-code `[90,96)` and `[102,103)`.

Required output:

```text
scripts/generated/prefix_pruning_window_profile.json
```

The report must include:

- search window;
- intervals discovered;
- prefix lengths;
- failure template;
- rank counts;
- whether witnesses are uniform over the prefix or completion-local;
- largest generated root size estimate;
- external compile time for a representative root.

Acceptance:

```bash
python3 scripts/generate_prefix_pruning_prototype.py \
  --profile-window 0 5000 \
  --report scripts/generated/prefix_pruning_window_profile.json
```

If the current script name or CLI changes, keep this behavior available under
the replacement script.

Observed completed run:

```bash
python3 scripts/generate_prefix_pruning_prototype.py \
  --profile-window 0 5000 \
  --report scripts/generated/prefix_pruning_window_profile.json

python3 scripts/generate_prefix_pruning_prototype.py \
  --profile-window 0 5000 \
  --emit-discovered \
  --max-roots 2 \
  --max-root-ranks 24 \
  --report scripts/generated/prefix_pruning_window_profile.json
```

Result:

- `candidate_count`: 1,805
- `largest_candidate_rank_count`: 12
- `witness_modes`: `["completion-local"]`
- selected discovered intervals:
  - `[2694,2706)`, prefix length 9, 12 ranks;
  - `[2778,2790)`, prefix length 9, 12 ranks.
- emitted roots:
  - `evidence/prefix_pruning/DiscoveredBadDirection_000002694_000002706/VerifiedRoot.lean`
  - `evidence/prefix_pruning/DiscoveredBadDirection_000002778_000002790/VerifiedRoot.lean`

External check:

```text
ok compile evidence/prefix_pruning/BadDirection090_096/VerifiedRoot.lean 32.0s
ok compile evidence/prefix_pruning/BadPairBalance102/VerifiedRoot.lean 24.3s
ok compile evidence/prefix_pruning/DiscoveredBadDirection_000002694_000002706/VerifiedRoot.lean 48.2s
ok compile evidence/prefix_pruning/DiscoveredBadDirection_000002778_000002790/VerifiedRoot.lean 48.4s
```

Important caveat: this completes automatic discovery and bounded evidence
emission, but it does not meet the final compression target. The discovered
roots still use completion-local witnesses and cover selected intervals rather
than a no-gap bounded range.

### Phase 6B: Compression Gate Rerun

New required work.

After adding automatic prefix discovery and stronger templates, rerun:

```bash
python3 scripts/profile_symmetry_compression.py \
  --dry-run --max-lean-leaves 2000 \
  --report scripts/generated/symmetry_compression_profile.json
```

The report must explicitly say:

- `status: accepted_for_lean_emission` or `status: rejected`;
- exact number of planned heavy leaves;
- exact number of public interval nodes;
- exact total rank coverage;
- gap/overlap result;
- largest projected generated Lean file;
- whether any raw per-rank or per-mask fallback remains.

Do not proceed to Phase 7 full emission unless this gate is accepted.

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

### Phase 8E status: semantic prefix-pruning prototype

Status: complete as a prototype; not complete as final coverage.

The first certificate-independent nonidentity prefix-pruning adapter is now:

```text
Cuboctahedron/Generated/NonIdentity/PrefixPruning.lean
```

It exports:

```lean
nonidentity_killed_of_axis_forces_not_omni
nonidentity_killed_of_axis_dot_zero
BadPairBalancePrefixCert
BadPairBalancePrefixCert.sound
BadDirectionPrefixCert
BadDirectionPrefixCert.sound
```

The trusted adapters do not require a local `NonIdCert` literal.  Instead, a
generated leaf supplies:

- a rank interval/prefix coverage theorem;
- an exact axis and kernel-line witness;
- exact forced-sequence sign facts;
- a proof that the forced sequence is not omnihedral.

For bad-direction prefixes, the generated leaf supplies:

- a rank interval/prefix coverage theorem;
- exact per-completion axis/kernel witnesses for the bounded prefix family;
- exact `AxisDotZeroAtWord` facts showing a required pre-impact dot product is
  zero, contradicting the positive forward-crossing condition for any feasible
  nonidentity unfolded orbit.

The prototype emitter is:

```text
scripts/generate_prefix_pruning_prototype.py
```

In control mode, it emits two bounded roots:

```text
evidence/prefix_pruning/BadDirection090_096/VerifiedRoot.lean
evidence/prefix_pruning/BadPairBalance102/VerifiedRoot.lean
```

The roots prove semantic nonidentity elimination for:

| interval | prefix length | failure template | ranks |
| --- | ---: | --- | ---: |
| `[90,96)` | 9 | bad direction | 6 |
| `[102,103)` | 13 | bad pair balance | 1 |

They do this via `BadDirectionPrefixCert.sound` and
`BadPairBalancePrefixCert.sound`, without `NonIdCert`, `certForRank`,
`CheckedNonIdRank`, singleton rank modules, `native_decide`, `unsafe`, or
custom axioms in the generated roots. The `[102,103)` root remains a
single-rank control sample; `[90,96)` is the first shorter-prefix multi-rank
semantic interval.

Validation:

```bash
lake build Cuboctahedron.Generated.NonIdentity.PrefixPruning

python3 scripts/generate_prefix_pruning_prototype.py --emit

python3 scripts/check_family_interval_evidence.py \
  evidence/prefix_pruning/manifest.json \
  --compile-external --lean-memory-limit-gib 44 \
  --report evidence/prefix_pruning/check_report.json
```

Observed result:

```text
ok compile evidence/prefix_pruning/BadDirection090_096/VerifiedRoot.lean 31.0s
ok compile evidence/prefix_pruning/BadPairBalance102/VerifiedRoot.lean 23.4s
```

This is still prototype-scale. Control mode reaches six ranks, and Phase 6A
discovery mode now reaches selected twelve-rank intervals. Both remain far
below the final compression target. The important milestone is that the proof
shape supports shorter prefix intervals whose exported theorem is semantic and
whose generated root has no active rank-certificate literal. The next
implementation step is to add stronger templates whose witnesses are shared
across all completions rather than supplied completion-by-completion inside the
bounded leaf.

### Phase 8F: Scaled Prefix-Pruning Evidence

Status: started, not complete.

Goal:

Replace hand-picked prototype roots with generated bounded-window roots whose
intervals are discovered by the profiler and whose proofs use semantic prefix
families.

Required behavior:

- Generate multiple prefix roots from an automatic interval discovery pass.
- Prefer uniform prefix witnesses.
- Permit completion-local witnesses only as a temporary bounded-window
  diagnostic, and clearly label them as not final if used.
- Keep generated roots in `evidence/prefix_pruning/` or a successor evidence
  directory outside normal broad imports.
- Compile roots externally through `scripts/check_family_interval_evidence.py`.
- Update the manifest with:
  - total intervals;
  - total ranks covered;
  - largest root size;
  - number of uniform-prefix roots;
  - number of completion-local roots;
  - external compile timing.

Acceptance:

```bash
python3 scripts/check_family_interval_evidence.py \
  evidence/prefix_pruning/manifest.json \
  --compile-external --lean-memory-limit-gib 44 \
  --report evidence/prefix_pruning/check_report.json
```

and the manifest covers a nontrivial bounded range with no gaps, not merely
isolated hand-picked examples.

Current status: the active manifest now includes uniform-family roots for
`[0,3)` and `[3,6)`. The older automatically discovered completion-local roots
for `[2694,2706)` and `[2778,2790)` remain useful reference artifacts, but they
are no longer the active manifest path. The active uniform roots are still
selected intervals, not a gap-free bounded range. Therefore Phase 8F remains
incomplete.

### Phase 8G: Full Compressed Root Emission

Status: blocked on Phases 6B and 8F.

Goal:

Generate the final hierarchical semantic coverage roots after the compression
gate passes.

Rules:

- Root generated modules import only group/all modules.
- Heavy evidence roots stay outside broad package imports unless their `.olean`
  footprint is proven safe.
- No root may import thousands of leaves directly.
- No public theorem statement may mention large certificate literals.
- No raw singleton rank/mask backend may be used as fallback.

Acceptance:

```bash
lake build Cuboctahedron.Generated.ExhaustiveCoverage
```

or the actual final generated root module, with memory use below the 45 GiB
safety budget.

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

- [x] Implement Phase 0 inventory.
- [x] Implement Phase 1 prefix interval core.
- [x] Implement Phase 2 `D4` symmetry core and transport theorem skeletons.
- [x] Implement Phase 3 dry-run/profiler scaffolding.
- [x] Archive or avoid raw singleton/OOM generated-data paths.
- [x] Implement first semantic nonidentity family adapters.
- [x] Generate and externally check a tiny semantic prefix-pruning root.
- [x] Generate and externally check a shorter-prefix multi-rank root:
  `[90,96)` via bad direction.
- [x] Implement Phase 6A automatic prefix interval discovery.
- [x] Add first uniform prefix templates for nonidentity failures.
- [x] Add Phase 6B prefix-kill dry-run gate.
- [x] Rerun Phase 6B compression gate on bounded windows and record rejection.
- [ ] Add a stronger nonidentity prefix obstruction or pivot to translation
  normalized Farkas sharing.
- [ ] Implement/refresh translation normalized Farkas shape sharing and include
  it in the compression profiler.
- [ ] Generate bounded scaled prefix-pruning evidence and externally compile it
  with memory monitoring.
- [ ] Generate full compressed evidence only after the dry-run gate passes.
- [ ] Wire public generated coverage API:
  `NonIdentity.complete`, `Translation.complete`, `Generated.rank_complete`,
  and `exhaustiveGeneratedCoverage`.
- [ ] Finish Step 15.
- [ ] Finish final theorem and axiom validation.

Current next step:

Do not scale the current nonidentity prefix-kill emitter. The `[0,100000)`
dry-run still has maximum prefix-kill width 3 and 94,419 planned heavy leaves.
The next useful step is either a new mathematical nonidentity prefix
obstruction that kills large intervals, or a pivot to translation normalized
Farkas sharing, where the existing evidence suggests reusable shapes may be the
better compression source.

## Explicit Non-Goals

- Do not continue scaling raw `[0,8)` interval shards to the full rank range.
- Do not emit 97,297,200 rank leaves.
- Do not emit 157,957,632 translation-mask leaves.
- Do not emit hundreds of thousands of Lean interval proof nodes.
- Do not use packed blobs or byte-list decoding as the proof mechanism.
- Do not rely on Gemini's projected counts without local profiler evidence.
