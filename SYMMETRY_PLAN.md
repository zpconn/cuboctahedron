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
- Ranks are an enumeration/addressing layer only. Do not use lexicographic
  pair-word rank intervals as the primary compression coordinate for new
  proof families.
- Heavy generated computational checkers should use integer-normalized or
  homogeneous/projective data wherever possible. `Rat`/`ℚ` remains acceptable
  for small hand-written statements and Real bridge theorems, but it should
  not be the substrate for large generated kernel reductions.

## Success Criteria

1. Dry-run compression profiler reports:
   - semantic state/family coverage below the hard leaf gate before any final
     rank adapter is emitted;
   - eventual full rank coverage of `[0, numPairWords)` through a small
     adapter layer;
   - no overlaps and no gaps;
   - total planned Lean-heavy leaves/nodes under 2,000;
   - projected generated source size under an agreed cap;
   - translation Farkas or pseudo-Boolean certificate count and family reuse
     statistics.
2. Lean core contains audited soundness theorems for:
   - prefix interval coverage;
   - `D4` start-face symmetry transport;
   - nonidentity prefix/residual families;
   - normalized Farkas shape transport;
   - integer/homogeneous certificate interpretation;
   - continuous or lifted pseudo-Boolean Farkas certificates.
3. Generated files export only semantic theorems; rank intervals appear only
   in the final enumeration adapter.
4. `Cuboctahedron.Generated.ExhaustiveCoverage` is built from compressed
   semantic roots plus a small rank bridge.
5. Step 15 can consume `Generated.rank_complete` without importing raw
   evidence leaves.

## Revised Strategy Synthesis

The current evidence strongly suggests that the previous generated-evidence
path was organized around the wrong proof coordinates. Gemini's latest
assessment names four distinct failure modes, and the repository's bounded
profiles support most of them:

1. **Coordinate-system fallacy.** Lexicographic pair-word ranks are useful for
   exhaustive enumeration, but they are a bad compression domain for
   continuous geometry. Adjacent ranks share a combinatorial prefix, not
   necessarily a useful geometric failure state.
2. **Boolean rasterization of continuous constraints.** Translation
   bad-direction masks are best understood as sign/half-space or more general
   pseudo-Boolean feasibility failures, not as axis-aligned mask rectangles.
3. **Data where deduction is needed.** Bad-direction failures should be
   eliminated by a generic necessary-condition theorem, not by generated
   certificates for every failing mask.
4. **Heavy rational computation in generated checkers.** Large generated
   kernel reductions over `Rat`/`ℚ` risk gcd/proof-term and expression-size
   blowups. The next checker backend should prefer integer-normalized linear
   algebra and homogeneous/projective encodings, with rational interpretation
   proved once in small bridge lemmas.

The first three are no longer just hypotheses. Three increasingly strong
bad-direction tilers have failed on `[0,100000)`:

- raw contiguous rank/mask rectangles;
- prefix/mask cubes using a common first bad impact;
- prefix/mask cubes using any common bad impact.

All three audits were exact on the bounded windows, so these are not tiler
bugs. They are compression failures. The bad-direction set is dense and
irregular in rank/mask coordinates because the denominator constraints are
sign-dependent half-space or pseudo-Boolean feasibility conditions; in the
current representation they even show degree-2 Walsh terms. Their feasible
sets cut through the Boolean cube in ways that axis-aligned mask rectangles do
not capture.

The active strategy is therefore no longer to generate proof evidence for
every bad-direction mask, and no longer to seek compression primarily in
contiguous rank intervals. Instead:

1. Prove a generic Lean theorem that translation feasibility implies
   `GoodDirection`, meaning all required impact denominators have the correct
   strict sign.
2. Generate evidence only for masks that satisfy `GoodDirection`.
3. Replace Boolean/rank tiling with semantic convex-geometric certificates:
   pseudo-Boolean/Farkas certificates over sign variables for translation, and
   cone/Farkas certificates over ray directions for nonidentity or shared
   prefix states.
4. Use integer-normalized or homogeneous/projective certificate data so Lean
   checks simple integer equalities/inequalities rather than performing large
   rational reductions.
5. Use ranks only as the final address bridge:

   ```lean
   r : Fin numPairWords
   pw := unrankPairWord r
   exact semantic_complete pw ...
   ```

   The semantic proof should be organized over pair-word states, denominator
   signatures, cone certificates, and Farkas shapes, not over `[lo, hi)` rank
   blocks except at the final coverage boundary.

This is the central pivot from the external model review. Bad-direction is a
necessary-condition lemma, not a generated certificate family.

### Trust Model For The Revised Path

Python profilers and generators may discover signatures, Farkas witnesses,
state DAGs, and symmetry representatives, but they are not proof. Lean must
check:

- the hand-written theorem `translation_feasible -> GoodDirection`;
- exact integer or integer-normalized Farkas certificates for survivor
  systems, together with small bridge theorems interpreting them over `ℚ`/`ℝ`;
- exact signature/shape application lemmas;
- exact `D4` transport lemmas where symmetry is used;
- exact rank/unrank bridge lemmas connecting semantic word-level coverage back
  to `Fin numPairWords`;
- semantic public coverage theorems consumed by Step 15.

Generated root APIs should expose semantic impossibility, such as
`Translation.complete` and `Generated.rank_complete`, not large certificate
objects or global arrays.

### Retired Compression Directions

The following are retained as historical evidence and diagnostic harnesses,
but they are no longer active paths to full coverage:

- raw singleton rank or translation-mask leaves;
- packed blobs or predecoded byte-list checkers;
- broad Boolean checker reduction over generated data;
- raw translation Farkas evidence before bad-direction is semantically
  refactored;
- bad-direction rectangle tiling;
- first-impact prefix/mask cubes;
- common-impact prefix/mask cubes;
- terminal residual obstruction-shape leaves;
- generated proof families whose only compression coordinate is contiguous
  lexicographic rank;
- any API that requires a generated certificate for every translation mask.

## Current Status Dashboard

Last updated after completing the GoodDirection bridge, bounded survivor
profiler, bounded survivor mask-tree profiler, and bounded translation
word/state DAG profiler. Existing bad-direction, mask-tree, and word/state DAG
tilers remain documented below only as rejected compression experiments.

| Phase | Status | Notes |
| --- | --- | --- |
| Phase 0: inventory | Complete | Existing rank, coverage, classifier, symmetry, and generated APIs are recorded below. |
| Phase 1: prefix interval core | Complete | `Cuboctahedron/Generated/Coverage/PrefixInterval.lean` exists and is used by generated prefix roots. |
| Phase 2: started-face symmetry core | Complete for core API; needs wider proof use | `PairWordSymmetry.lean` and `SymmetryTransport.lean` exist. Reversal remains disabled for proof transport. |
| Phase 3: compression profiler | Complete as a tool; current nonidentity and translation gates reject | `scripts/profile_symmetry_compression.py` now has the prefix, bad-direction, survivor, mask-tree, and state-DAG dry-run gates; all current bounded gates are diagnostic-only. |
| Phase 4: nonidentity family checkers | Partially complete | Semantic adapters now cover bad pair balance, completion-local bad direction, uniform bad direction, uniform no-fixed-axis, and uniform bad-balance witnesses. Larger true prefix templates are still needed. |
| Phase 5: translation Farkas sharing | Gates added; waiting on survivor compression | `FarkasShapeTransport.lean` exists, and Farkas-shape reuse is real. It should now be applied only to GoodDirection survivor masks, but raw survivor-map grouping is still too large. |
| Phase 6: semantic translation pivot | Phase 6E/6F complete; Phase 6H/6I rejected; Phase 6J.1/6J.2 rejected; Phase 6K rejected; Phase 6L.0/6L.0A complete | GoodDirection exactly recovers the old Farkas-needed split with zero bad-direction evidence. Raw survivor-map, mask-tree, word/state DAG grouping, conservative all-signed empty-cone pair-prefix pruning, the D26 finite-axis hypothesis, and terminal residual shape grouping all fail bounded gates. The rank-boundary audit now passes, so Phase 6L.1 integer semantic-convex certificates are unblocked. |
| Phase 7: generated Lean architecture | Partially complete | External evidence-cache workflow works; final low-thousands hierarchy is not generated yet. |
| Phase 8: public coverage API | Blocked on survivor coverage | The raw/singleton/OOM paths are archived or avoided; public API should wait for GoodDirection survivor/Farkas coverage. |
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
- Added `Cuboctahedron/Search/TranslationBadDirectionFamilies.lean`, a small
  trusted wrapper proving that a rank/mask/impact bad-denominator witness
  produces an ordinary checked `TranslationCert`.
- Added the translation bad-direction box-tiling dry-run gate:
  `scripts/profile_symmetry_compression.py --translation-baddir-tree`.
- Recorded rejected translation bad-direction reports:
  - `scripts/generated/translation_baddir_compression_profile_0_5000.json`
    found 26,475 bad-direction cells but required 16,199 rectangular
    rank/mask tiles, with max rank width 2 and only 1.634 cases per tile.
  - `scripts/generated/translation_baddir_compression_profile_0_100000.json`
    found 316,450 bad-direction cells but required 205,667 rectangular
    rank/mask tiles, with max rank width 2 and only 1.539 cases per tile.
    The exact bounded audit found no gaps or overlaps, so the rejection is
    compression failure rather than tiling-bug failure.
- Added the translation bad-direction symbolic family dry-run gate:
  `scripts/profile_symmetry_compression.py --translation-baddir-family-tree`.
- Recorded rejected symbolic prefix/mask-cube bad-direction reports:
  - `scripts/generated/translation_baddir_family_profile_0_5000.json`
    found 26,475 bad-direction cells. It accepted 9 symbolic families
    averaging 75.56 cells each, but left 25,795 bad-direction cells as
    fallback.
  - `scripts/generated/translation_baddir_family_profile_0_100000.json`
    found 316,450 bad-direction cells. It accepted 35 symbolic families
    averaging 81.37 cells each, with max prefix width 630 and max mask-cube
    size 8, but left 313,602 bad-direction cells as fallback. The exact
    bounded audit found no gaps or overlaps, so the rejection is compression
    incompleteness rather than an audit failure.
- Added the translation bad-direction common-impact dry-run gate:
  `scripts/profile_symmetry_compression.py --translation-baddir-common-impact-tree`.
- Recorded rejected common-impact prefix/mask-cube reports:
  - `scripts/generated/translation_baddir_common_impact_profile_0_5000.json`
    found 26,475 bad-direction cells. It accepted 18 common-impact families
    averaging 94.89 cells each, but left 24,767 bad-direction cells as
    fallback.
  - `scripts/generated/translation_baddir_common_impact_profile_0_100000.json`
    found 316,450 bad-direction cells. It accepted 83 common-impact families
    averaging 94.41 cells each, with max prefix width 1,260 and max mask-cube
    size 8, but left 308,614 bad-direction cells as fallback. The exact
    bounded audit found no gaps or overlaps, so the rejection is compression
    incompleteness rather than an audit failure.
- Added the GoodDirection semantic bridge:
  - `Cuboctahedron/Search/TranslationGoodDirection.lean`
  - `Cuboctahedron/Generated/Coverage/TranslationSurvivors.lean`
- Added the translation survivor profiler:
  `scripts/profile_symmetry_compression.py --translation-survivors`.
- Added the translation survivor mask-tree profiler:
  `scripts/profile_symmetry_compression.py --translation-survivor-mask-tree`.
- Added the translation word/state DAG profiler:
  `scripts/profile_symmetry_compression.py --translation-state-dag`.
- Recorded survivor reports:
  - `scripts/generated/translation_survivors_profile_0_5000.json`
    found 4,693 GoodDirection survivor masks, 26,475 denominator-nonpositive
    masks, zero bad-direction generated evidence, and 487 raw survivor-map
    leaves.
  - `scripts/generated/translation_survivors_profile_0_100000.json`
    found 39,710 GoodDirection survivor masks, 316,450
    denominator-nonpositive masks, zero bad-direction generated evidence, and
    5,565 raw survivor-map leaves. This is above the 2,000-leaf hard gate, so
    raw survivor-map emission is rejected.
- Recorded mask-tree reports:
  - `scripts/generated/translation_survivor_mask_tree_profile_0_5000.json`
    found 4,693 GoodDirection survivor masks and 4,693 conservative
    signature-indexed leaf obligations.
  - `scripts/generated/translation_survivor_mask_tree_profile_0_100000.json`
    found 39,710 GoodDirection survivor masks, 39,754 conservative
    signature-indexed leaf obligations, 5,565 signature tree obligations, and
    only 44 bad-cube leaves. This is worse than raw survivor-map grouping for
    the Lean leaf gate, so Phase 6H mask-tree emission is rejected.
- Recorded word/state DAG reports:
  - `scripts/generated/translation_state_dag_profile_0_5000.json`
    found 487 identity terminal obligations, 5,577 unique internal DAG nodes,
    and 6,064 combined planned Lean obligations.
  - `scripts/generated/translation_state_dag_profile_0_100000.json`
    found 5,565 identity terminal obligations, 43,939 unique internal DAG
    nodes, and 49,504 combined planned Lean obligations. This is above the
    2,000-leaf hard gate, so Phase 6I emission is rejected.

Immediate next work:

1. Do not emit more Lean from the current prefix-kill strategy.
2. Do not emit Lean from the current translation/Farkas strategy in its old
   form; it still tries to account for dense bad-direction masks as generated
   evidence.
3. Do not emit Lean from the current translation bad-direction box strategy,
   symbolic prefix/mask-cube strategy, or common-impact prefix/mask-cube
   strategy. All three are retired.
4. Do not emit Lean from raw survivor-map grouping; the `[0,100000)` profile
   already projects 5,565 heavy leaves.
5. Do not scale Phase 6J geometric prefix filters. Phase 6H mask-tree/cube,
   Phase 6I word/state DAG profiling, Phase 6J empty-cone/D26 filters, and
   Phase 6K terminal residual shape grouping fragmented and should not be
   emitted as Lean evidence.
6. Only after a later compression gate falls below the 2,000-leaf hard gate,
   emit hierarchical generated coverage roots.

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
  revised path should not generate bad-direction families. It should first
  prove `TranslationFeasible -> GoodDirection`, then generate evidence only
  for masks satisfying that necessary condition.

Interpretation of the translation bad-direction box rejection:

- A direct Lean-checkable bad-direction witness is easy, and the bounded
  tiler exactly covers the observed bad-direction cells without gaps or
  overlaps.
- However, raw contiguous rank/mask rectangles do not align with the failure
  structure. In `[0,100000)`, the largest tile spans only two ranks, and the
  average tile covers about 1.54 cells.
- Therefore direct bad-direction compression by rectangles is retired. The
  arithmetic source of the failure should now be handled by the generic
  GoodDirection necessary condition and, only as a fallback, by
  denominator-cube Farkas certificates inside the survivor profiler.

Interpretation of the translation bad-direction symbolic-family rejection:

- Prefix blocks plus mask-bit cubes do find some reusable failures. In
  `[0,100000)`, 35 families cover 2,848 bad-direction cells with an average
  of about 81 cells per family.
- However, that shape is far too incomplete: 313,602 of 316,450
  bad-direction cells remain fallback. Scaling it would still require a
  second case-local backend for almost all early translation failures.
- Therefore the next attempt should not tune the current cube threshold. The
  active path moved through Phase 6E/6F and then rejected Phase 6H mask-tree
  compression and Phase 6I word/state DAG sharing. The current path is Phase
  6J geometric prefix filtering.

Interpretation of the translation bad-direction common-impact rejection:

- Allowing a family to use any common bad impact, rather than the same first
  bad impact, improves the symbolic prefix/mask-cube profile but not enough.
  In `[0,100000)`, 83 common-impact families cover 7,836 bad-direction cells
  with an average of about 94 cells per family.
- The fallback is still overwhelming: 308,614 of 316,450 bad-direction cells
  remain uncovered by accepted families.
- Therefore the bottleneck is not merely the "first impact" choice. The
  prefix/mask-cube domains themselves are too coarse or the acceptance rule is
  too all-or-nothing. This validates the GoodDirection pivot: stop proving
  bad masks one family at a time, and generate Farkas evidence only for masks
  that survive denominator positivity.

Plain-language takeaway:

- The Farkas sharing idea is real, but it only helps the minority of
  translation cases that survive long enough to need a Farkas certificate.
  In the `[0,100000)` sample, that is 39,710 of 356,160 translation sign
  assignments.
- Most translation cases fail earlier because one required crossing direction
  or denominator already has the wrong sign. Those early failures are
  mathematically simple, but the current profiler treats them with nearly
  case-specific keys.
- Therefore the next compression step should not emit more bad-direction
  proof evidence. It should first prove the generic GoodDirection necessary
  condition and then profile only the survivor masks that can actually arise
  from a hypothetical translation orbit. Plain rectangles, first-impact cubes,
  and common-impact cubes were all tried and rejected.

## Revised Translation Strategy

The translation branch should be refactored around a semantic necessary
condition instead of dense mask coverage.

### GoodDirection

For an identity-linear pair word and translation sign mask, define the exact
impact denominator for each required crossing:

```lean
def impactDenomAtRank (r : Nat) (mask : SignMask) (i : Fin 14) : ℚ := ...

def GoodDirectionAtRank (r : Nat) (mask : SignMask) : Prop :=
  ∀ i : Fin 14, 0 < impactDenomAtRank r mask i
```

The exact indexing and names should reuse existing translation definitions.
If the project already has an equivalent denominator predicate, use it instead
of creating a parallel API.

The key hand-written theorem is:

```lean
theorem goodDirection_of_translation_feasible
    {r : Nat} {mask : SignMask}
    (h : TranslationFeasibleAtRank r mask) :
    GoodDirectionAtRank r mask := ...
```

This theorem eliminates the need to generate certificates for bad-direction
masks. In `Translation.complete`, a hypothetical feasible orbit supplies
`hgood : GoodDirectionAtRank r mask`; generated evidence only needs to kill
that survivor case.

### Survivor Coverage Target

The generated translation coverage target should become:

```lean
theorem FarkasGoodCoverage.complete
    (r : Nat) (mask : SignMask)
    (hr : r < numPairWords)
    (hM : totalLinearOfPairWord (unrankPairWord r) = matId)
    (hgood : GoodDirectionAtRank r mask) :
    TranslationSystemUnsatAtRank r mask := ...
```

or the equivalent names already present in the repo.

The public theorem remains semantic:

```lean
theorem Translation.complete
    (r : Nat) (hr : r < numPairWords)
    (hM : totalLinearOfPairWord (unrankPairWord r) = matId) :
    NoTranslationStartedOrbitAtRank r := by
  intro hfeas
  let mask := signMaskOfFeasible hfeas
  have hgood : GoodDirectionAtRank r mask :=
    goodDirection_of_translation_feasible hfeas
  exact FarkasGoodCoverage.complete r mask hr hM hgood hfeas
```

The exact proof shape may differ, but the dependency direction should not:
bad-direction is discharged by the generic theorem, not by generated cases.

### Denominator Signatures And Survivor Maps

For each identity-linear pair word, the impact denominators are affine-linear
or low-degree pseudo-Boolean forms in six sign bits, depending on the chosen
coordinate system and normalization. The old survivor profiler observed
degree-2 Walsh terms in the current representation, so do not assume linearity
until the new integer/homogeneous coordinate model re-profiles it.

The profiler should canonicalize exact integer forms whenever possible:

```lean
structure SignLinForm where
  const : Int
  coeff : Fin 6 -> Int

structure DenomSignature where
  forms : Fin 14 -> SignLinForm
  survivors : UInt64
```

The survivor bitset records exactly the masks satisfying all denominator
positivity constraints. Generated evidence should store only survivor masks
and their normalized Farkas-shape IDs. Bad masks are omitted.

If a denominator system is not linear in the six sign bits, use one of these
semantic certificate domains instead of falling back to mask leaves:

- a lifted pseudo-Boolean linear system with auxiliary variables for products
  and exact Boolean consistency constraints;
- a Sherali-Adams-style integer certificate over Boolean polynomial
  identities;
- a state split that restores linearity by carrying the relevant signed prefix
  state explicitly.

The acceptance gate is semantic compression below 2,000 Lean-visible
obligations, not the presence of a particular representation.

Profiler metrics:

- identity-linear words;
- total translation masks;
- bad-direction masks;
- GoodDirection survivor masks;
- unique denominator signatures;
- unique survivor bitsets;
- unique survivor-to-Farkas-shape maps;
- unique normalized Farkas shapes;
- largest signature class;
- projected Lean leaves if grouped by signature;
- projected Lean leaves if grouped by survivor-to-shape map.

Validation gate:

- GoodDirection survivor count must match the old “needs Farkas” count, up to
  any documented convention change.
- generated bad-direction evidence count must be zero.
- projected Lean-heavy leaves must be under 2,000 before emission.

### Denominator-Cube / Pseudo-Boolean Farkas Fallback

Status: the old exact 64-mask tree profile is rejected, but Gemini's stronger
continuous/pseudo-Boolean certificate idea remains an active next direction
under Phase 6L.

If raw denominator-signature grouping still produces too many survivor-map
families, use exact Farkas-style certificates over sign variables or a lifted
pseudo-Boolean system instead of common-bad-impact cubes.

For a mask cube with some sign bits fixed and others free, relax free bits to
real variables in `[-1,1]`. A strict Farkas certificate can prove that no point
in the relaxed cube satisfies all denominator inequalities. This proves:

```lean
∀ mask, MaskInCube cube mask -> ¬ GoodDirectionAtRank r mask
```

without requiring the same denominator to fail for every mask in the cube.

This is stronger than the retired common-impact strategy. It proves
`∀ mask in cube, ∃ i, denom_i(mask) <= 0` by a single linear certificate.

Important local correction: the current profiler found degree-2 Walsh terms in
the existing denominator representation. Therefore Phase 6L must first
determine whether homogeneous/projective integer coordinates make the relevant
constraints linear. If not, it must use a lifted pseudo-Boolean certificate
instead of assuming ordinary six-variable linear Farkas is sound.

### Translation Word/State DAG Fallback

If rank intervals and denominator signatures still fragment too much, stop
using rank space as the primary proof domain for translation. Build a recursive
state DAG over pair-word completions:

```lean
structure PrefixState where
  remaining : PairCounts
  lin : Mat3 ℚ
  transConst : Vec3 ℚ
  transCoeff : Fin 6 -> Vec3 ℚ
  denomForms : ...
```

Hash-cons states modulo already-proved symmetries and sign-bit renamings. A
node theorem proves all completions from that state. This can merge algebraic
states that rank intervals separate.

The state-DAG route was profiled after the GoodDirection survivor profiler and
rejected on the `[0,100000)` gate. Do not keep optimizing bad-direction
rank/mask tilings.

Future DAG work is only worthwhile if the state key changes materially:
integer/homogeneous translation state, lifted pseudo-Boolean denominator
state, or cone/Farkas state. Re-running the old rank-shaped state hash is
explicitly out of scope.

## Optional Nonidentity Geometry Profilers

The external review suggested two potentially useful nonidentity or prefix
obstructions. Treat both as profiler-gated hypotheses until their mathematical
assumptions are formalized in Lean.

### D26 Axis Filter

For nonidentity linear parts in the cuboctahedron reflection group, a possible
invariant-axis filter is to track the 26 directed cube symmetry axes. At a
prefix, a candidate direction dies when the transformed normal has nonpositive
dot product with that direction. If all 26 directions die, the prefix is dead
for all nonidentity completions.

Before using this as proof evidence, Lean needs the exact theorem that every
nonidentity feasible orbit direction is represented by that finite direction
set in the project’s formal model. Until then, this is a profiler only.

### Empty-Cone Prefix Farkas

A valid unfolded ray must lie in the cone:

```text
transformedNormal_i · v > 0
```

If an exact positive linear combination of active transformed normals equals
zero, Gordan/Farkas-style reasoning kills the prefix for every possible future
direction. This can potentially prune both nonidentity and translation
branches before mask enumeration.

This is promising because it attacks the continuous geometry directly, rather
than tiling Boolean masks. It still needs a small exact Lean checker and
soundness theorem before being used as generated evidence.

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

Status: infrastructure exists, but this phase should now be resumed only after
Phase 6E proves the GoodDirection bridge. The Farkas backend should cover
GoodDirection survivor cases, not the dense set of all masks plus
bad-direction certificates.

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

Case transport family, after the GoodDirection refactor:

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
  CoversInterval
    (fun r => ∀ mask,
      GoodDirectionAtRank r mask ->
      TranslationSystemUnsatAtRank r mask)
    fam.intervalLo fam.intervalHi
```

Acceptance:

- Dry-run reports unique normalized Farkas shapes.
- At least one shared shape is used by multiple transported/canonical cases.
- The generated backend emits no bad-direction certificates.
- Farkas shape coverage is restricted to masks satisfying `GoodDirection`.
- One generated mini-shape library builds.

## Phase 6: Symmetry Canonicalization and Semantic Tiling

Status: partially complete and strategically revised. The generator/profiler
scaffolding exists, but the current externally checked semantic prefix evidence
covers only seven ranks and all dense bad-direction tilers have been rejected.
Phase 6 is now centered on GoodDirection survivor coverage. It is not complete
until the dry-run tiler demonstrates full `[0,numPairWords)` coverage below the
hard leaf/node gate.

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
   - for translation, do not generate bad-direction certificates; derive
     GoodDirection from feasibility and handle only survivor masks;
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

### Phase 6E: GoodDirection Semantic Refactor

Status: complete for the semantic bridge and public coverage adapter.

Purpose:

Stop covering bad-direction masks with generated evidence. Instead, prove that
any feasible translation case must satisfy exact denominator positivity.

Tasks:

1. Inspect existing translation feasibility and denominator definitions.
2. Add thin adapters only if needed:

   ```lean
   def impactDenomAtRank (r : Nat) (mask : SignMask) (i : Fin 14) : ℚ := ...

   def GoodDirectionAtRank (r : Nat) (mask : SignMask) : Prop :=
     ∀ i : Fin 14, 0 < impactDenomAtRank r mask i
   ```

3. Prove the hand-written theorem:

   ```lean
   theorem goodDirection_of_translation_feasible
       {r : Nat} {mask : SignMask}
       (h : TranslationFeasibleAtRank r mask) :
       GoodDirectionAtRank r mask := ...
   ```

4. Refactor the intended translation generated API so the generated theorem
   assumes `hgood : GoodDirectionAtRank r mask`.
5. Make `Translation.complete` derive `hgood` from a hypothetical feasible
   orbit before invoking generated survivor/Farkas coverage.

Acceptance:

- Focused Lean build for the new GoodDirection module passes.
- No generated data is needed for this phase.
- No `sorry`, `admit`, custom `axiom`, `unsafe`, or `native_decide`.
- The old certificate-valued “every mask gets evidence” translation API is no
  longer the active Step 15 target.

Completed implementation:

- Added `Cuboctahedron/Search/TranslationGoodDirection.lean`.
- Added `Cuboctahedron/Generated/Coverage/TranslationSurvivors.lean`.
- Defined `GoodDirectionAtRank` over the internal impacts `1..13`.
- Proved `goodDirection_of_translation_feasible_at_rank` from the existing
  sequence-level theorem `unfolded_feasible_translation_denominators_positive`.
- Added `TranslationGoodCaseKilled.killed`, which converts survivor-only
  translation elimination back into ordinary `TranslationCaseKilled`.
- Focused builds passed:
  - `lake build Cuboctahedron.Search.TranslationGoodDirection`
  - `lake build Cuboctahedron.Generated.Coverage.TranslationSurvivors`

### Phase 6F: Survivor And Denominator-Signature Profiler

Status: complete for bounded profiling; raw survivor-map grouping rejected.

Purpose:

Measure the size of the new proof obligation after Phase 6E removes bad masks
from generated coverage.

Implemented as:

```text
scripts/profile_symmetry_compression.py --translation-survivors
```

Profiler loop:

1. Traverse a bounded rank range.
2. Keep only identity-linear pair words.
3. Compute exact denominator values over the 64 sign masks and record their
   Walsh polynomial degree; do not assume these denominator forms are linear.
4. Enumerate the 64 sign masks externally.
5. Record only masks satisfying all denominator positivity inequalities.
6. For each survivor mask, compute the normalized Farkas shape ID.
7. Canonicalize denominator signatures and survivor-to-shape maps under
   proven `D4` actions. Reversal and larger symmetries are profiler-only until
   proof transport exists.

Required reports:

```text
scripts/generated/translation_survivors_profile_0_5000.json
scripts/generated/translation_survivors_profile_0_100000.json
```

Metrics:

- identity-linear words;
- total translation masks;
- bad-direction masks;
- GoodDirection survivor masks;
- survivor density;
- unique denominator signatures;
- unique survivor bitsets;
- unique survivor-to-shape maps;
- unique normalized Farkas shapes;
- largest signature class;
- projected Lean-heavy leaves for signature grouping;
- projected Lean-heavy leaves for survivor-map grouping.

Acceptance:

- GoodDirection survivor masks match the previous Farkas-needed count for the
  same window, up to documented convention differences.
- Generated bad-direction evidence count is zero.
- If projected survivor-map leaves are below 2,000 globally, proceed to
  Phase 6G.
- If not, profile Phase 6H/6I before any Lean evidence emission. The current
  bounded Phase 6H and Phase 6I results are rejected, so proceed to Phase 6J.

Observed bounded results:

- `[0,5000)`:
  - identity-linear words: 487;
  - translation sign assignments: 31,168;
  - GoodDirection survivor masks: 4,693;
  - denominator-nonpositive masks: 26,475;
  - bad-direction generated evidence: 0;
  - unique survivor shape maps: 487;
  - unique normalized Farkas shapes: 2,057.
- `[0,100000)`:
  - identity-linear words: 5,565;
  - translation sign assignments: 356,160;
  - GoodDirection survivor masks: 39,710;
  - denominator-nonpositive masks: 316,450;
  - bad-direction generated evidence: 0;
  - unique denominator signatures: 5,565;
  - unique survivor bitsets: 1,479;
  - unique survivor shape maps: 5,565;
  - unique normalized Farkas shapes: 11,478.

Conclusion: the GoodDirection pivot is correct and exactly recovers the old
Farkas-needed count, but raw survivor-map grouping is still above the
2,000-heavy-leaf gate. Do not emit Phase 6G roots directly from raw survivor
maps. Phase 6H mask-tree profiling and Phase 6I word/state DAG profiling have
also been rejected, so proceed to Phase 6J geometric prefix filtering.

### Phase 6G: Denominator Signature / Survivor Shape Coverage

Purpose:

Generate proof-carrying semantic coverage for GoodDirection survivor cases
only.

Generated shape:

```lean
theorem survivor_signature_00421_complete
    {r : Nat} {mask : SignMask}
    (hr : r < numPairWords)
    (hSig : RankHasDenomSignature00421 r)
    (hgood : GoodDirectionAtRank r mask) :
    TranslationSystemUnsatAtRank r mask := ...
```

Implementation rules:

- Keep denominator-signature data private inside leaf modules.
- Keep normalized Farkas shapes private or grouped behind small theorem names.
- Export only semantic theorems.
- Do not export global arrays from ranks to signatures or masks to shapes.
- Group leaves under bounded group/root modules.

Acceptance:

- A small generated mini-shard builds.
- The root imports group modules, not thousands of leaves.
- Estimated full global leaf count remains under 2,000.

### Phase 6H: Denominator-Cube / Pseudo-Boolean Farkas Fallback

Status: rejected for the current exact mask-tree/cube profile.

The original pseudo-Boolean idea assumed denominator constraints were affine in
the six sign bits. The bounded survivor profiler found many degree-2 Walsh
terms, so the implemented Phase 6H gate used exact 64-mask truth tables instead
of a linear relaxation assumption.

Implemented as:

```text
scripts/profile_symmetry_compression.py --translation-survivor-mask-tree
```

Reports:

```text
scripts/generated/translation_survivor_mask_tree_profile_0_5000.json
scripts/generated/translation_survivor_mask_tree_profile_0_100000.json
```

Observed bounded results:

- `[0,5000)`:
  - identity-linear words: 487;
  - GoodDirection survivor masks: 4,693;
  - total mask-tree leaves: 4,693;
  - bad-cube leaves: 0;
  - signature tree obligations: 487;
  - signature leaf obligations: 4,693.
- `[0,100000)`:
  - identity-linear words: 5,565;
  - GoodDirection survivor masks: 39,710;
  - total mask-tree leaves: 39,754;
  - bad-cube leaves: 44;
  - Farkas leaves: 39,710;
  - signature tree obligations: 5,565;
  - signature leaf obligations: 39,754.

Conclusion:

This mask-tree/cube route does not meet the 2,000-heavy-leaf gate and is worse
than raw survivor-map grouping. Do not emit Lean evidence from Phase 6H. Phase
6I has also now rejected, so proceed to Phase 6J geometric prefix filtering.

### Phase 6I: Translation Word/State DAG Fallback

Status: rejected for the current recursive word/state DAG profile.

Implemented as:

```text
scripts/profile_symmetry_compression.py --translation-state-dag
```

The profiler hashes recursive prefix subtrees using:

- remaining pair counts;
- current linear reflection product;
- deterministic child-node digests;
- exact identity-terminal GoodDirection survivor/Farkas obligations.

Reports:

```text
scripts/generated/translation_state_dag_profile_0_5000.json
scripts/generated/translation_state_dag_profile_0_100000.json
```

Observed bounded results:

- `[0,5000)`:
  - identity-linear words: 487;
  - GoodDirection survivor masks: 4,693;
  - unique identity terminal obligations: 487;
  - unique internal DAG nodes: 5,577;
  - combined planned Lean obligations: 6,064.
- `[0,100000)`:
  - identity-linear words: 5,565;
  - GoodDirection survivor masks: 39,710;
  - unique identity terminal obligations: 5,565;
  - unique internal DAG nodes: 43,939;
  - combined planned Lean obligations: 49,504;
  - reused DAG nodes: 17,006, with max reuse 94,435.

Conclusion:

The state-DAG profile finds reuse, especially for nonidentity-vacuous
subtrees, but not enough to meet the 2,000-heavy-leaf gate. Do not emit Lean
evidence from Phase 6I. Proceed to Phase 6J geometric prefix filters.

### Phase 6J: Continuous Prefix Geometry Profilers

These profilers are now the next active compression attempt after the
GoodDirection survivor, mask-tree, and state-DAG gates all rejected.

1. **Empty-cone Farkas prefix pruning.**
   Status: implemented and rejected as a standalone pair-prefix filter.
   The trusted Lean foundation is now present in
   `Cuboctahedron/Generated/NonIdentity/PrefixPruning.lean`:
   `no_ray_of_empty_cone4` and `EmptyConePrefixCert.sound`.
   The profiler mode is:

   ```bash
   python3 scripts/profile_symmetry_compression.py \
     --dry-run --nonidentity-empty-cone-tree --limit 5000 --allow-reject \
     --output scripts/generated/nonidentity_empty_cone_profile_0_5000.json

   python3 scripts/profile_symmetry_compression.py \
     --dry-run --nonidentity-empty-cone-tree --limit 100000 --allow-reject \
     --progress-interval 10000 \
     --output scripts/generated/nonidentity_empty_cone_profile_0_100000.json
   ```

   The profiler is conservative: a pair-prefix is killed only if every
   omnihedral-compatible signed face-prefix over that pair-prefix has an exact
   small-support nonnegative dependence among its active unfolded normals.

   Current result: rejected. On `[0,5000)` it found no empty-cone prefix kills.
   On `[0,100000)` it found 14 empty-cone prefixes covering only 222 ranks,
   with 7,116 planned heavy leaves and 99.778% residual fallback width. Do not
   scale this pair-prefix empty-cone strategy as a standalone backend.
2. **D26 nonidentity direction filter.**
   Status: implemented and rejected as stated. The profiler mode is:

   ```bash
   python3 scripts/profile_symmetry_compression.py \
     --dry-run --nonidentity-d26-audit --rank-start 0 --limit 100000
   ```

   The audit checks exact fixed axes against the 26 directed cube-symmetry
   directions, then asks whether any non-D26 axis survives the existing
   necessary gates: final-axis dot nonzero, no forced zero denominator, and
   forced sign balance.

   Current result: rejected. All five sampled 100k windows contain non-D26
   forced-balance survivors:

   | Window | Forced-balance survivors | D26 | Non-D26 |
   | ---: | ---: | ---: | ---: |
   | `[0,100000)` | 9,036 | 0 | 9,036 |
   | `[10000000,10100000)` | 4,143 | 0 | 4,143 |
   | `[30000000,30100000)` | 961 | 0 | 961 |
   | `[60000000,60100000)` | 1,471 | 0 | 1,471 |
   | `[90000000,90100000)` | 2,251 | 0 | 2,251 |

   Do not use D26 as proof evidence. The bounded audit directly falsifies the
   hypothesis that all plausible nonidentity survivors have D26-parallel axes.
3. **Stronger continuous cone certificates.**
   This is now the next possible geometric direction, but it must operate over
   richer signed-prefix/state information rather than unsigned pair-prefix
   intervals or D26 axes. The pair-prefix empty-cone profiler shows that the
   easy cone certificate is sound but sparse in raw rank-prefix coordinates,
   and the D26 audit shows the nonidentity survivor axis space is much larger
   than the cube symmetry axes.

### Phase 6K: Terminal Residual Shape Census

Status: implemented and rejected as a standalone compression direction.

This diagnostic asks whether, after the known necessary gates, the remaining
depth-13 obligations share a small number of exact terminal obstruction shapes.
It combines two measurements in a single range-aware profiler:

- nonidentity terminal candidate classification by exact rational affine-axis
  solve and exact first-hit simulation;
- translation GoodDirection survivor shape/Farkas reuse, with no generated
  evidence for denominator-nonpositive masks.

The profiler mode is:

```bash
python3 scripts/profile_symmetry_compression.py \
  --dry-run --terminal-residual-census --rank-start 0 --limit 100000 \
  --progress-interval 20000 \
  --output scripts/generated/terminal_residual_census_000000000_000100000.json
```

Smoke/calibration reports were also recorded:

- `scripts/generated/terminal_residual_census_smoke_000000000_000001000.json`
- `scripts/generated/terminal_residual_census_calibration_000000000_000010000.json`

Current result: rejected on the first full `[0,100000)` gate.

| Metric in `[0,100000)` | Count |
| --- | ---: |
| Pair words scanned | 100,000 |
| Identity words | 5,565 |
| Nonidentity words | 94,435 |
| Nonidentity forced-balance survivors | 9,036 |
| Distinct all nonidentity obstruction keys | 38,073 |
| Distinct terminal candidate obstruction keys | 9,036 |
| Axis misses start interior | 8,775 |
| First-hit mismatch | 251 |
| Hit tie / edge impact | 10 |
| GoodDirection survivor masks | 39,710 |
| Translation survivor shape maps | 5,565 |
| Translation normalized Farkas shapes | 11,478 |

This is already far above the 2,000-heavy-leaf hard gate, so the remaining
planned 100k windows were intentionally not run. The result rules out the
simple idea that terminal exact failures can be grouped by final obstruction
shape at low-thousands scale. A useful next compression idea must change the
mathematical proof domain, not merely hash terminal certificates more finely.

### Phase 6L: Integer Semantic-Convex Certificate Backend

Status: next active strategy.

This phase fully incorporates the latest external assessment: stop trying to
compress continuous geometry in lexicographic rank space, stop rasterizing
continuous sign constraints with Boolean rectangles, and stop making large
generated checkers reduce `Rat` expressions. The goal is to discover a
semantic certificate domain whose natural objects are convex/geometric states
and integer witnesses.

#### Phase 6L.0: Rank Boundary Audit

Purpose: make the rank/geometry separation explicit.

Tasks:

1. List every generated/public theorem whose main compression claim is a
   `CoversInterval ... lo hi` theorem.
2. Classify each use as either:
   - final address bridge from `r : Fin numPairWords` to `unrankPairWord r`;
   - historical diagnostic/root scaffolding;
   - active compression mechanism.
3. Retire or mark historical any active compression mechanism that only works
   by hoping geometric failures are contiguous in lexicographic rank.
4. Define the intended semantic theorem shape over pair words or states, for
   example:

   ```lean
   theorem translation_semantic_complete
       (w : PairWord) (hw : ValidPairWord w)
       (hId : totalLinearOfPairWord w = matId)
       (mask : SignMask)
       (hgood : GoodDirectionForWord w mask) :
       TranslationSystemUnsatForWord w mask := ...
   ```

5. Keep this adapter as the only rank-facing layer:

   ```lean
   theorem translation_rank_complete
       (r : Fin numPairWords)
       (hId : totalLinearOfPairWord (unrankPairWord r) = matId) :
       NoTranslationStartedOrbitAtRank r := ...
   ```

Acceptance:

- `SYMMETRY_PLAN.md` and code comments clearly state that rank intervals are
  final enumeration adapters, not the main compression domain.
- The next profiler reports semantic state counts in addition to any rank
  coverage metadata.

Completed implementation:

- Added `scripts/audit_rank_boundary.py`.
- Generated `scripts/generated/rank_boundary_audit.json`.
- The strict command now passes after Phase 6L.0A quarantined the legacy
  rank-compression surfaces:

  ```bash
  python3 scripts/audit_rank_boundary.py \
    --output scripts/generated/rank_boundary_audit.json
  ```

- Current audit counts:
  - files scanned: 445;
  - files with rank-boundary occurrences: 71;
  - total occurrences: 509;
  - final adapter files: 7;
  - historical diagnostic files: 64;
  - legacy compression files: 0;
  - unknown files requiring review: 0.
- Phase 6L.0A added the explicit marker
  `PHASE_6L_HISTORICAL_RANK_BOUNDARY` to the 10 former blockers and taught
  `scripts/audit_rank_boundary.py` to classify that marker as
  historical/diagnostic. This is a quarantine, not a proof step: those files
  remain available for compatibility and forensic comparison but are not the
  forward generated-evidence path.

Decision:

Phase 6L.1 is now unblocked. The report confirms the desired boundary shape:
rank-facing interval code remains only as final adapters, historical
diagnostics, or explicitly quarantined compatibility code. New generated proof
compression must not add unmarked rank-boundary files.

#### Phase 6L.1: Integer/Homogeneous Arithmetic Core

Purpose: avoid large generated reductions over `Rat`/`ℚ`.

Tasks:

1. Add a small hand-written integer arithmetic module for generated
   certificates, separate from the existing geometric `Rat` API:

   ```lean
   structure IVec3 where
     x y z : Int

   structure IMat3 where
     m00 m01 m02 : Int
     m10 m11 m12 : Int
     m20 m21 m22 : Int

   structure HVec3 where
     x y z w : Int
   ```

2. Represent reflection products and copied normals in homogeneous/projective
   form whenever denominators would otherwise appear.
3. Prove small interpretation lemmas from integer/homogeneous data to the
   existing `Rat`/`Real` semantics.
4. For generated checkers, require exact integer equalities/inequalities such
   as zero dot products, nonnegative Farkas weights, and negative constants.
5. Do not replace the whole trusted geometry layer at once. Use the integer
   layer only for generated certificate checking and bridge to existing
   definitions by small lemmas.

Acceptance:

- A tiny sample certificate checks using only integer-normalized data.
- The generated theorem type does not mention large integer data.
- Focused Lean build passes without `native_decide`, `unsafe`, `sorry`, or
  broad generated imports.

#### Phase 6L.2: Translation Continuous/Pseudo-Boolean Profiler

Purpose: replace Boolean mask rasterization with semantic infeasibility
certificates over sign variables.

Tasks:

1. Recompute translation GoodDirection denominator constraints in the new
   integer/homogeneous representation.
2. Determine the actual algebraic degree of those constraints in the sign
   variables under that representation.
3. If the constraints are linear, profile strict Farkas certificates over
   variables `s_i ∈ [-1, 1]`.
4. If the constraints are not linear, profile a lifted pseudo-Boolean system:
   introduce product variables, exact Boolean consistency constraints, or
   Sherali-Adams-style polynomial certificates.
5. Generate no evidence for bad-direction masks. A certificate either proves
   `GoodDirection` impossible for a semantic state/cube, or maps a
   GoodDirection survivor to a normalized Farkas shape.

Profiler outputs:

- number of semantic translation states;
- algebraic degree histogram under the integer/homogeneous model;
- continuous Farkas leaves;
- lifted pseudo-Boolean leaves;
- survivor Farkas leaves;
- unresolved/fallback leaves;
- projected Lean-visible heavy leaves.

Gate:

- Reject if projected Lean-visible leaves exceed 2,000 on `[0,100000)`.
- Only scale beyond `[0,100000)` if the first gate is comfortably under the
  hard threshold and no fallback resembles one-case-per-mask.

#### Phase 6L.3: Nonidentity Convex Cone / State Certificates

Purpose: reuse the empty-cone idea in a coordinate/state space where it can
actually see geometry.

Tasks:

1. Stop applying empty-cone certificates only to unsigned pair-prefix rank
   intervals.
2. Carry richer signed-prefix or state information:
   - transformed active normals;
   - current reflection product;
   - feasible direction cone;
   - remaining face-pair counts;
   - started-face `D4` canonicalization.
3. Generate exact integer Farkas/Gordan certificates proving no ray direction
   can satisfy all active strict inequalities for that semantic state.
4. Profile state sharing before Lean emission.

Gate:

- Reject if the stateful cone profiler still leaves tens of thousands of
  terminal residuals in `[0,100000)`.
- Proceed only if the semantic state count plausibly scales to low thousands.

#### Phase 6L.4: Rank Adapter Only After Semantic Coverage

Purpose: preserve exhaustive coverage without making ranks the compression
engine.

Tasks:

1. Once semantic translation/nonidentity coverage is below the leaf gate,
   generate a rank adapter that proves every `unrankPairWord r` maps into one
   semantic covered state.
2. The adapter may use interval/rank facts for enumeration bookkeeping, but
   it must not expose one proof node per raw rank or one proof node per tiny
   lexicographic interval.
3. Root theorem shape:

   ```lean
   theorem Generated.rank_complete
       (r : Fin numPairWords) :
       NoStartedUnfoldedOrbitAtRank r := ...
   ```

Acceptance:

- Root generated coverage imports semantic group/root modules, not heavy
  leaves.
- Rank/unrank correctness is used only at this boundary.
- No generated file contains a global array/list of ranks, masks, or
  certificates.

Acceptance for Phase 6L:

- Profiler reports bounded-window compression statistics.
- Any generated Lean checker has a small soundness theorem.
- Integer/homogeneous certificate checking is used for generated arithmetic
  whenever possible.
- Ranks are used only as final coverage adapters.
- These optimizations are only adopted if they reduce the final survivor,
  cone, or semantic-state proof below the hard leaf gate.

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

### Phase 6C: Non-Rectangular Translation Bad-Direction Families

Historical rejected work after the raw translation bad-direction box-tiling
rejection.

The direct witness adapter now proves that an individual rank/mask/impact with
a nonpositive impact denominator produces an ordinary checked
`TranslationCert`, but rectangular rank/mask tiling is not a viable compression
shape. In `[0,100000)`, the largest bad-direction rectangle spans only two
ranks, and 316,450 bad-direction cells require 205,667 boxes.

This phase attempted stronger exact family shapes that follow the arithmetic
source of the denominator sign, rather than contiguous rectangles. Candidate
shapes considered:

- prefix-level denominator-sign formulas that prove a fixed impact denominator
  is nonpositive for all completions of a pair-word prefix;
- mask-bit cubes, where some subset of translation sign bits is fixed and all
  remaining mask choices share the same bad-denominator obstruction;
- canonical denominator-pattern templates, transported by the existing `D4`
  symmetry infrastructure;
- sparse Boolean decision diagrams over prefix letters and mask bits, exporting
  only semantic `CoversInterval` or `CoversTranslationMaskSet` theorems.

Profiler commands used:

```bash
python3 scripts/profile_symmetry_compression.py \
  --dry-run --translation-baddir-family-tree --limit 5000 --allow-reject \
  --output scripts/generated/translation_baddir_family_profile_0_5000.json

python3 scripts/profile_symmetry_compression.py \
  --dry-run --translation-baddir-family-tree --limit 100000 --allow-reject \
  --output scripts/generated/translation_baddir_family_profile_0_100000.json
```

The report must include:

- exact bounded audit status;
- number of bad-direction cells covered;
- number of symbolic families;
- average cells per symbolic family;
- maximum prefix width or mask-cube width, depending on the chosen shape;
- projected Lean leaf count;
- whether any per-rank/per-mask fallback remains.

Acceptance:

- The `[0,100000)` report is accepted under the same 2,000-heavy-leaf gate, or
  it is rejected with enough statistics to justify pivoting away from this
  family shape.
- No Lean evidence roots are emitted from this phase unless the dry-run gate is
  accepted.

Current result: rejected. The exact bounded audit passed, but the family shape
is too incomplete. In `[0,100000)`, 35 symbolic prefix/mask-cube families
covered 2,848 bad-direction cells, while 313,602 bad-direction cells remained
as fallback. Do not emit Lean roots from this Phase 6C family shape.

Superseded direction:

- Do not continue this family shape.
- Use Phase 6E/6F to remove bad-direction masks from generated coverage.
- Phase 6H mask-tree profiling was tried after the survivor path and rejected.
  Phase 6I word/state DAG profiling was then tried and rejected. Proceed to
  Phase 6J geometric prefix filtering.

### Phase 6D: Common-Impact Translation Bad-Direction Families

Historical rejected work after the Phase 6C first-impact prefix/mask-cube
rejection.

This dry-run relaxes the Phase 6C rule. A symbolic family may use a fixed
impact index if every rank/mask cell in its prefix/mask domain has that impact
denominator nonpositive, even when it is not the first bad impact for every
cell.

Required profiler commands:

```bash
python3 scripts/profile_symmetry_compression.py \
  --dry-run --translation-baddir-common-impact-tree --limit 5000 --allow-reject \
  --output scripts/generated/translation_baddir_common_impact_profile_0_5000.json

python3 scripts/profile_symmetry_compression.py \
  --dry-run --translation-baddir-common-impact-tree --limit 100000 --allow-reject \
  --output scripts/generated/translation_baddir_common_impact_profile_0_100000.json
```

Acceptance:

- exact bounded audit has no gaps or overlaps;
- zero bad-direction fallback cells;
- planned common-impact families are at most 2,000;
- average cells per family is at least 64;
- no Lean evidence roots are emitted unless the dry-run gate is accepted.

Current result: rejected. The exact bounded audit passed, but the family shape
is still too incomplete. In `[0,100000)`, 83 common-impact families covered
7,836 bad-direction cells, while 308,614 bad-direction cells remained as
fallback. Do not emit Lean roots from this Phase 6D family shape.

Superseded direction:

- Do not continue common-impact mask-cube tiling.
- Proceed to Phase 6E GoodDirection and Phase 6F survivor profiling.
- Reconsider decision diagrams only if a future Phase 6I state-DAG profiler
  shows they are useful inside DAG leaves.

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
- [x] Implement a direct Lean translation bad-direction witness adapter.
- [x] Add and run the translation bad-direction box-tiling dry-run gate.
- [x] Record rejection of raw rank/mask rectangular bad-direction tiling.
- [x] Add and run a symbolic prefix/mask-cube bad-direction dry-run gate.
- [x] Record rejection of the symbolic prefix/mask-cube bad-direction family.
- [x] Add and run a common-impact prefix/mask-cube bad-direction dry-run gate.
- [x] Record rejection of the common-impact prefix/mask-cube family.
- [x] Implement Phase 6E GoodDirection semantic refactor.
- [x] Implement Phase 6F survivor/denominator-signature profiler.
- [x] Reject Phase 6G raw survivor-map emission on the `[0,100000)` gate.
- [x] Implement and reject Phase 6H survivor mask-tree profiling on the
  `[0,100000)` gate.
- [x] Implement and reject Phase 6I translation word/state DAG profiling on
  the `[0,100000)` gate.
- [x] Implement and reject Phase 6J.1 conservative all-signed empty-cone
  pair-prefix profiling on the `[0,100000)` gate.
- [x] Implement and reject Phase 6J.2 D26 axis audit on five 100k windows.
- [x] Implement and reject Phase 6K terminal residual shape census on the
  first `[0,100000)` gate.
- [x] Implement Phase 6L.0 rank-boundary audit and semantic theorem target.
- [x] Retire or explicitly reclassify the 10 legacy rank-compression files
  reported by `scripts/generated/rank_boundary_audit.json`.
- [ ] Implement Phase 6L.1 integer/homogeneous arithmetic core for generated
  certificate checking.
- [ ] Implement Phase 6L.2 translation continuous/pseudo-Boolean profiler.
- [ ] Implement Phase 6L.3 stateful nonidentity cone/Farkas profiler.
- [ ] Implement Phase 6L.4 rank adapter only after semantic coverage passes
  the gate.
- [ ] Generate bounded scaled prefix-pruning evidence and externally compile it
  with memory monitoring.
- [ ] Generate full compressed evidence only after the dry-run gate passes.
- [ ] Wire public generated coverage API:
  `NonIdentity.complete`, `Translation.complete`, `Generated.rank_complete`,
  and `exhaustiveGeneratedCoverage`.
- [ ] Finish Step 15.
- [ ] Finish final theorem and axiom validation.

Current next step:

Do not scale the current nonidentity prefix-kill emitter, translation/Farkas
emitter, translation bad-direction box emitter, or symbolic prefix/mask-cube
bad-direction emitter, including the common-impact variant. The `[0,100000)`
nonidentity dry-run still has maximum prefix-kill width 3 and 94,419 planned
heavy leaves; the translation/Farkas dry-run exceeded the 100,000-family cap;
the translation bad-direction box dry-run produced 205,667 tiny boxes; the
first-impact prefix/mask-cube dry-run left 313,602 fallback cells; and the
common-impact prefix/mask-cube dry-run left 308,614 fallback cells.

Phase 6E and Phase 6F are complete, and Phase 6H/6I have now been rejected by
bounded gates. The GoodDirection survivor split matches the old Farkas-needed
count, but raw survivor-map grouping projects 5,565 heavy leaves, mask-tree
grouping projects 39,754 conservative leaf obligations, and state-DAG grouping
projects 49,504 combined obligations in `[0,100000)`. Phase 6J.1 empty-cone
pair-prefix pruning is also rejected as a standalone backend: the
`[0,100000)` run killed only 222 ranks and left 7,116 planned heavy leaves.
Phase 6J.2 D26 axis profiling is rejected too: five disjoint 100k windows all
contain non-D26 forced-balance survivors, with zero D26 survivors at that gate.
Phase 6K terminal residual shape grouping is rejected as well: the first full
`[0,100000)` census already has 9,036 distinct nonidentity terminal candidate
obstruction keys, 38,073 distinct all-nonidentity obstruction keys, and 11,478
translation normalized Farkas shapes.

The next useful step is Phase 6L.1: implement the integer/homogeneous
arithmetic core for generated certificate checking. The Phase 6L.0 audit now
passes with zero legacy or unknown rank-boundary files, so Phase 6L must change
the proof domain before terminal certificates: integer/homogeneous generated
arithmetic, continuous or lifted pseudo-Boolean Farkas certificates for
translation GoodDirection obligations, and stateful cone/Farkas certificates
for nonidentity direction constraints. Lexicographic rank intervals should
reappear only as final enumeration adapters once semantic coverage has passed
the low-thousands gate.

## Explicit Non-Goals

- Do not continue scaling raw `[0,8)` interval shards to the full rank range.
- Do not emit 97,297,200 rank leaves.
- Do not emit 157,957,632 translation-mask leaves.
- Do not emit hundreds of thousands of Lean interval proof nodes.
- Do not use packed blobs or byte-list decoding as the proof mechanism.
- Do not rely on Gemini's projected counts without local profiler evidence.
- Do not continue optimizing bad-direction rectangle/cube tilings.
- Do not require a common bad impact as the main compression mechanism.
- Do not generate proof certificates for bad-direction masks after
  GoodDirection is available.
- Do not make `Translation.complete` return or require certificate evidence
  for every sign mask.
- Do not use the D26 direction filter as proof evidence until Lean has the
  exact invariant theorem that justifies it.
- Do not scale the current pair-prefix empty-cone strategy as a standalone
  backend; its `[0,100000)` compression gate is rejected.
- Do not pursue D26 as the nonidentity survivor invariant; bounded exact audits
  found many non-D26 forced-balance survivors.
- Do not emit terminal residual obstruction-shape leaves from Phase 6K; the
  first `[0,100000)` census already exceeds the hard gate by several times
  even before scaling beyond the first sample window.
- Do not start another strategy whose main compression claim is that a
  geometric failure covers a large contiguous lexicographic rank interval.
- Do not build new heavy generated checkers over `Rat`/`ℚ` unless an explicit
  focused benchmark shows the generated reductions stay comfortably within
  the memory budget.
- Do not assume translation denominator constraints are linear in the six sign
  bits without re-profiling them in the new integer/homogeneous coordinate
  system.
