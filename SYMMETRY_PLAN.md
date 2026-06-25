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
profiler, bounded survivor mask-tree profiler, bounded translation word/state
DAG profiler, rank-boundary audit, integer arithmetic core, Phase 6L.2A
translation pseudo-Boolean denominator profiler, Phase 6L.2B lifted
pseudo-Boolean search profiler, Phase 6L.3A signed-state cone profiler,
Phase 6M coarse terminal-obstruction algebra profiler, Phase 6N combined
residual/portfolio profiler, Phase 6O translation survivor/Farkas shape-map
compression, Phase 6P survivor-bitset theorem pilot profiling, Phase 6V exact
source-Farkas burden profiling, and Phase 6W source-support multiplier
variation profiling, Phase 6X two-source Farkas support profiling, the
Phase 6Y Lean proof-carrying two-source emitter pilot plus its `[0,10000)`
scaling/memory measurement, Phase 6Z support-family coverage scaffolding,
Phase 6Z.5 reusable row-relation theorem schemas, and the Phase 6Z.6A
bounded row-relation classifier emitter with witness-based negative branches
and a sharded `[0,10)` Lean coverage root, plus the Phase 6Z.6B
external-cache validator and hierarchical `[0,64)` row-relation coverage root,
Phase 6Z.6C semantic killed bridges, and the Phase 6Z.6D row-template census
runner plus representative calibration.
Phase 6P is rejected: the diagnostic survivor-bitset
classes still fragment into multiple source-Farkas skeletons. Phase 6Q and
Phase 6R are complete: the conditional trusted proof skeleton now runs from
`ExhaustiveGeneratedCoverage` through started unfolded itineraries to the full
billiard-orbit theorem shape, and is axiom-checked. Full generated coverage
work should now proceed through semantic killed-family theorems, not through
ordinary checked-certificate bridges. The Phase 6Z two-source support-family
backend remains the best translation evidence source, but the final generated
surface must be `...Killed` theorems over families/languages rather than
`exists cert, checkCert = true` witnesses.
Phase 6Z.6D confirms that the row-template census runner is memory-safe and
reproduces the first `[0,100000)` window. Phase 6Z.6D.1 then closes the
representative calibration gap by adding proof-usable `axis_b_only` and
`exact_two_source_valid` template surfaces: five 100k-rank calibration windows
now cover 63,725/63,725 GoodDirection survivors with zero overlaps. Phase
6Z.6D.2 tests the proposed universal diamond obstruction and finds that it is
a strong supplemental template, not a replacement: it covers 63,276/63,725
calibration survivors and subsumes 387 of the 749 fallback-template cases, but
362 fallback cases remain. The next active move is the full global
row-template/diamond census before production family emission.
Existing bad-direction, mask-tree, word/state DAG, D26, empty-cone, terminal
residual, lifted-PB, signed-state cone, and coarse terminal-algebra tilers
remain documented below only as rejected or diagnostic compression
experiments in their previously tested forms. This does not reject the stronger
semantic prefix/state cone plan below, which is now the preferred fallback for
nonidentity and leftover compression.
Phase 6T completed the cross-family obstruction synthesis diagnostic across
the same five disjoint 100k-rank windows. It found a small selected template
portfolio that projects every sampled window below the 2,000-leaf gate:
`cross.pairNormal`, `nonidentity.zeroAxis`, `nonidentity.zeroNormal`, and
`nonidentity.zeroRemainingCounts`. This is not proof evidence, but it is the
first accepted compression gate since the failed rank/mask tiling attempts.
The next phase audited those template families for sound Lean theorem schemas
before any generated evidence was emitted. Phase 6U factored the nonidentity
zero-normal schema into a tiny public prototype, then rejected the proof-usable
split portfolio: once `cross.pairNormal` is forbidden as a standalone theorem,
the first 100k-rank window still has 43,475 remaining proof leaves after 500
templates. The cross-family template must not be used as evidence.

### Build-Time Budget and Strategic Reset

The final generated proof must build in at most 5-6 wall-clock hours. With the
currently safe four-worker profile, this is about a 24 CPU-hour budget for all
generated checking. The Phase 6Z.6B `[0,64)` run proves the memory model is
safe but rejects one-rank leaves as a final architecture:

```text
one-rank nonidentity leaf:       ~22.3s
one-rank identity-heavy leaf:   ~388.6s
slowest observed leaf:          423.9s
full one-rank extrapolation:     ~97 CPU-years
```

Therefore the next proof architecture is a semantic-family architecture:

1. Semantic killed bridges now exist parallel to the existing certificate
   bridges. Final public coverage can consume
   `Coverage.TranslationCaseKilled`, `Coverage.NonIdentityRankKilled`, and
   related semantic predicates directly. Certificate-producing bridges stay
   for smoke/regression checks.
2. Keep the universal diamond obstruction as a supplemental semantic theorem
   candidate. The profiler shows it covers almost all sampled GoodDirection
   survivors, but it does not replace the expanded row-template catalog.
3. Run the full global row-template/diamond census next.
   The full census must still report zero uncovered cases before Phase 6Z.6E
   family emission.
4. Globalize the translation row-relation or diamond templates into family theorems.
   Generated leaves should prove that whole symbolic support/row-normal-form
   families satisfy a template, then invoke a hand-written semantic theorem.
5. Add signed prefix/state cone or Gordan-family pruning for nonidentity and
   any translation leftovers. This should prove languages of completions
   impossible, not lexicographic rank intervals.
6. Use D4 symmetry as a proof transport multiplier after semantic families are
   identified. D4 should reduce family/index size, but it is not trusted as the
   primary compression argument until transport lemmas are proved and profiled.
7. Profile integer/scaled/projective arithmetic as a constant-factor
   optimization for generated semantic checkers. This is not a substitute for
   family compression, but it may be needed to keep each semantic leaf cheap.
8. Use rank intervals only as a cheap final adapter/root composition mechanism.
   They must not be the main geometric compression coordinate.

Gemini's latest reflection proposal is incorporated only in this selective
form. We have profiled the universal diamond translation inequality and should
still profile:

- integer/scaled arithmetic for the eventual generated semantic checks;
- nonidentity forced-axis forced-sign multiset filters as an early census;
- D4 canonicalization after semantic predicates exist.

We should not adopt the proposed "emit canonical word arrays and prove
chunks by `decide`" architecture as the production proof without a separate
benchmark that includes parsing, elaboration, `.olean` size, import memory,
and build time. Large Lean arrays are still generated data, even if the proof
term is small. The production path remains semantic family theorems; a
chunked internal-`Bool` checker is only an experiment unless it beats the same
5-6 hour build target under the no-`native_decide` and no-giant-import rules.

Hard gate for all future generated backends:

```text
projected generated checking <= 24 CPU-hours
projected semantic leaves <= low thousands, preferably <= 2000
no final leaf primarily reduces checkTranslationCert/checkNonIdCert
no final leaf exports huge concrete cert values or per-rank witness tables
no checksum-only or external-oracle dispatch is accepted as proof evidence
no production proof by giant canonical-word arrays unless separately benchmarked
```

Nonidentity caveat:

- A census by total linear part `M` is useful, but `M` alone should not be
  treated as a proof-complete invariant. It can kill classes with no nonzero
  fixed vector. For `M` with a `+1` axis, feasibility also depends on affine
  part, face signs, order, forced start point, first-hit/interior failures, and
  D4/reversal state. Any nonidentity family theorem beyond pure no-axis cases
  must include those additional semantic invariants.

| Phase | Status | Notes |
| --- | --- | --- |
| Phase 0: inventory | Complete | Existing rank, coverage, classifier, symmetry, and generated APIs are recorded below. |
| Phase 1: prefix interval core | Complete | `Cuboctahedron/Generated/Coverage/PrefixInterval.lean` exists and is used by generated prefix roots. |
| Phase 2: started-face symmetry core | Complete for core API; needs wider proof use | `PairWordSymmetry.lean` and `SymmetryTransport.lean` exist. Reversal remains disabled for proof transport. |
| Phase 3: compression profiler | Complete as a tool; current nonidentity and translation gates reject | `scripts/profile_symmetry_compression.py` now has the prefix, bad-direction, survivor, mask-tree, and state-DAG dry-run gates; all current bounded gates are diagnostic-only. |
| Phase 4: nonidentity family checkers | Partially complete | Semantic adapters now cover bad pair balance, completion-local bad direction, uniform bad direction, uniform no-fixed-axis, and uniform bad-balance witnesses. Larger true prefix templates are still needed. |
| Phase 5: translation Farkas sharing | Gates added; waiting on survivor compression | `FarkasShapeTransport.lean` exists, and Farkas-shape reuse is real. It should now be applied only to GoodDirection survivor masks, but raw survivor-map grouping is still too large. |
| Phase 6: semantic translation pivot | Phase 6E/6F complete; Phase 6H/6I rejected; Phase 6J.1/6J.2 rejected; Phase 6K rejected; Phase 6L.0/6L.0A/6L.1/6L.2A complete; Phase 6L.2B/6L.3A rejected; Phase 6M rejected; Phase 6N rejected; Phase 6O rejected; Phase 6P rejected; Phase 6Q complete; Phase 6R complete; Phase 6S rejected; Phase 6T accepted; Phase 6U split audit rejected; Phase 6X accepted on `[0,100000)`; Phase 6Y bounded emitter accepted on `[0,1000)` and shard-scaled on `[0,10000)`; Phase 6Z largest shape accepted but exact row-shape portfolio rejected; Phase 6Z.2 source-pair gate accepted; Phase 6Z.3 high-variation source-pair pilot accepted; Phase 6Z.4 row-relation template profiler accepted on `[0,100000)`; Phase 6Z.5 row-relation theorem schemas complete; Phase 6Z.6A witness-based sharded smoke accepted on `[0,10)`; Phase 6Z.6B external-cache hierarchy accepted on `[0,64)` as telemetry; Phase 6Z.6C semantic killed bridges complete; Phase 6Z.6D census runner complete; Phase 6Z.6D.1 row-template extension accepted on representative calibration; Phase 6Z.6D.2 diamond supplemental; Phase 6Z.6D.3 fixed-window global attempt rejected as too slow/granular; Phase 6Z.6D.4 adaptive planner rejects further global rank sweeps; Phase 6Z.6E first bounded family profiler needed more samples; Phase 6Z.6E.1 representative family profile accepted for Lean smoke; one-rank leaves rejected for final build time | GoodDirection exactly recovers the old Farkas-needed split with zero bad-direction evidence. Most earlier rank/mask/state and terminal-shape approaches fail bounded gates. Phase 6X proves every `[0,100000)` GoodDirection survivor is handled by computed two-source certificates, with 235 source-support classes. Phase 6Y makes bounded per-case evidence Lean-checkable but direct heavy-shard roots are not memory-safe. Phase 6Z adds the semantic family-coverage API and a real largest-family row-shape theorem covering 11,589 survivors, but the generalized exact row-shape portfolio fragments into 8,970 shapes. Phase 6Z.4 shows the initial semantic row-relation templates cover all 39,710 GoodDirection survivors and all 235 source pairs in the first 100k window, with zero overlap and zero uncovered cases. Phase 6Z.5 proves those template schemas generically in Lean via `SupportPair.Applies`. Phase 6Z.6A/6Z.6B show direct semantic `TranslationGoodCoverageOnRange` leaves can be checked safely through an external cache and shallow groups, but their per-rank witness granularity projects far beyond the 24 CPU-hour budget. Phase 6Z.6C adds semantic killed bridges, semantic interval adapters, and a semantic exhaustive coverage root, so future family evidence no longer has to produce ordinary `TranslationCert`/`NonIdCert` witnesses. Phase 6Z.6D adds a resumable parallel census runner; Phase 6Z.6D.1 adds `axis_b_only` and `exact_two_source_valid`, making calibration cover 63,725/63,725 GoodDirection survivors. Phase 6Z.6D.2 classifies the universal diamond obstruction as supplemental: it covers 63,276/63,725 calibration survivors but leaves 362 fallback cases after sharp row templates. Phase 6Z.6D.3 shows blind fixed-size global rank sweeps are the wrong next compression coordinate: 5k windows are safe but too many, while 100k dense windows are too slow. Phase 6Z.6D.4 observes 429,636 covered GoodDirection survivors with zero uncovered cases, but projects 20.54 mean wall hours and 64.57 p95 wall hours, so it rejects further global rank sweeps. Phase 6Z.6E adds a family-key profiler; Phase 6Z.6E.1 accepts the proof-relevant `template_source` coordinate on 4,779 representative survivors with 123 families and zero uncovered cases. Signed prefix/state cone pruning, D4 transport, nonidentity axis/sign filters, and integer/scaled arithmetic remain measured support tracks. |
| Phase 7: generated Lean architecture | Partially complete | External evidence-cache workflow works; final low-thousands hierarchy is not generated yet. |
| Phase 8: public coverage API | Partially complete | The semantic public API now exists as `SemanticExhaustiveGeneratedCoverage` plus semantic Step-15 adapters. It still needs full generated semantic evidence before `Generated.rank_complete`/final Step 15 can be unconditional. |
| Phase 9: Step 15 integration | Not ready | Requires `Generated.rank_complete` from compressed coverage. |
| Phase 10: final theorem/axioms | Not ready | Wait for Step 15. |

Completed current-work items:

- Completed Phase 6Z.6C semantic killed bridge layer:
  - `Cuboctahedron/Generated/Coverage/ComputableClassifiers.lean`
    now has semantic killed bridge variants for nonidentity residuals and
    translation Farkas cases.
  - `Cuboctahedron/Generated/NonIdentity/Complete.lean` and
    `Cuboctahedron/Generated/Translation/Complete.lean` now expose semantic
    complete theorems parallel to the older certificate-producing complete
    theorems.
  - `Cuboctahedron/Generated/NonIdentity/Coverage/All.lean` and
    `Cuboctahedron/Generated/Translation/Coverage/All.lean` now expose
    semantic interval predicates, including GoodDirection-specific translation
    interval predicates.
  - `Cuboctahedron/Generated/ExhaustiveCoverage.lean` now defines
    `SemanticExhaustiveGeneratedCoverage` and semantic Step-15-facing theorem
    adapters.
- Added `Cuboctahedron/Generated/NonIdentity/PrefixPruning.lean`.
- Added reusable theorem `nonidentity_killed_of_axis_dot_zero`.
- Added `Cuboctahedron/Generated/NonIdentity/TemplateSoundness.lean`.
- Exposed Phase 6U theorem schema `zeroNormal_sound`.
- Classified `zeroAxis` and `zeroRemainingCounts` as grouping keys that must
  refine to zero-normal witnesses.
- Added Phase 6U proof-usable split mode to
  `scripts/profile_cross_family_obstructions.py`.
- Generated `scripts/generated/cross_family_obstructions_phase6u_split_000000000_000001000.*`
  and `scripts/generated/cross_family_obstructions_phase6u_split_000000000_000100000.*`.
- Rejected the Phase 6U split portfolio on `[0,100000)`: after 500
  proof-usable templates, 43,475 leaves remain, far above the 2,000 gate.
- Added Phase 6V exact source-Farkas audit mode and reports:
  `scripts/generated/translation_farkas_phase6v_000000000_000001000.*`
  and `scripts/generated/translation_farkas_phase6v_000000000_000100000.*`.
- Phase 6V is blocked, not accepted: the best proof-ready first-window layer
  is 5,521 leaves, while the 235-shape source-support layer still lacks a
  theorem that removes the need for exact per-case multipliers.
- Added Phase 6X deterministic two-source Farkas support profiling and Lean
  adapter:
  `Cuboctahedron/Search/TwoSourceFarkas.lean`,
  `scripts/generated/translation_two_source_farkas_000000000_000001000.*`,
  and
  `scripts/generated/translation_two_source_farkas_000000000_000100000.*`.
- Phase 6X is accepted on `[0,100000)`: all 39,710 GoodDirection survivor
  masks are two-source, all deterministic two-source checks pass, and the
  window has 235 source-support classes.
- Added the Phase 6Y proof-carrying two-source Lean core:
  `FarkasCert.Valid.sound`,
  `TwoSourceFarkasSupport.Checked`,
  `TwoSourceFarkasSupport.Checked.sound`,
  `Cuboctahedron/Generated/Translation/TwoSource/Core.lean`, and
  `Cuboctahedron/Generated/Translation/TwoSource/Sample.lean`.
- Phase 6Y sample status: an explicit concrete sequence/vector two-source
  contradiction builds without the native compiler decision tactic or the
  legacy large Boolean certificate path. A naive rank-level `decide` proof
  timed out, so the next emitter must generate explicit sequence/vector
  facts plus a small rank/mask bridge strategy.
- Phase 6Y bounded emitter status: accepted on `[0,1000)`. The generator
  emits 1,465 GoodDirection survivor cases across 59 small shards, stores
  explicit source rows and deterministic multipliers locally, and each case
  exports a `TranslationGoodCaseKilled` theorem through generated rank,
  unrank, sequence, and translation-vector bridge lemmas.
- Phase 6Y scaling status: the same emitter now supports dry-run summaries,
  configurable generated namespaces, and a bounded shard validator. The
  isolated `[0,10000)` pilot emits 6,389 GoodDirection survivor cases across
  256 shards in `Coverage10k`; all 256 shards compile through the external
  cache validator with zero failures and max observed per-shard RSS about
  4.72 GiB.
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
  - files scanned: 446;
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

Completed implementation:

- Added `Cuboctahedron/Generated/Arithmetic/Int3.lean`.
- Introduced the generated-certificate arithmetic namespace
  `Cuboctahedron.Generated.Arithmetic`.
- Added integer aliases and operations:
  - `IVec3`, `IMat3`, `HVec3`;
  - `ivecAdd`, `ivecScale`, `ivecDot`, `imatVec`, `imatMul`;
  - `HVec3.validDen`, `HVec3.toRatVec3`, `HVec3.toRealVec3`.
- Proved cast/interpretation bridges for integer vector dot products, matrix
  application/multiplication, homogeneous coordinates, and positive-denominator
  homogeneous dot inequalities.
- Added `EmptyCone3Cert`, `EmptyCone3Cert.Checked`,
  `EmptyCone3Cert.sound`, and the tiny smoke theorem
  `sampleEmptyCone3Cert_no_ray`.
- Imported the module from `Cuboctahedron.lean`; the focused target builds in
  seconds and does not import broad generated evidence.

Decision:

Phase 6L.2A is complete as a profiler. The exact sign-polynomial profile shows
that the translation GoodDirection denominator constraints are not ordinary
linear forms in the six sign variables. In the `[0,100000)` benchmark every
identity-linear word has maximum degree 2, so the next certificate family must
be a lifted pseudo-Boolean system or an equivalent quadratic Boolean
polynomial certificate.

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

Phase 6L.2A implementation results:

- Added `scripts/profile_symmetry_compression.py --translation-pseudoboolean`.
- The mode emits no Lean evidence and no bad-direction certificates. It only
  profiles exact denominator sign-polynomials and records primitive integer
  signatures.
- `scripts/generated/translation_pseudoboolean_profile_0_000005000.json`:
  - pair words scanned: 5,000;
  - identity-linear words: 487;
  - translation sign assignments: 31,168;
  - GoodDirection survivor masks: 4,693;
  - denominator-nonpositive masks: 26,475;
  - denominator degree histogram: `{1: 487, 2: 5844}`;
  - every identity word has maximum degree 2.
- `scripts/generated/translation_pseudoboolean_profile_0_000100000.json`:
  - pair words scanned: 100,000;
  - identity-linear words: 5,565;
  - translation sign assignments: 356,160;
  - GoodDirection survivor masks: 39,710;
  - denominator-nonpositive masks: 316,450;
  - bad-direction generated evidence: 0;
  - denominator degree histogram: `{0: 21, 1: 5558, 2: 66766}`;
  - every identity word has maximum degree 2;
  - ordinary linear states: 0;
  - lifted pseudo-Boolean states: 5,565;
  - max lifted variables: 20;
  - max quadratic variables: 15;
  - max McCormick constraints: 60.

Decision:

- Ordinary continuous Farkas over only the six sign variables is rejected.
- The next active translation step is Phase 6L.2B: exact lifted
  pseudo-Boolean certificate search. It should use the degree-2 denominator
  forms measured here, prove infeasibility of GoodDirection cells/states using
  integer certificates, and only map true GoodDirection survivors to normalized
  Farkas shape proofs.
- Phase 6L.2B must still satisfy the low-thousands Lean-heavy-leaf gate before
  any generated Lean evidence is emitted.

#### Phase 6L.2B: Lifted Pseudo-Boolean Certificate Search

Purpose: turn the quadratic denominator profile into a proof-carrying
certificate family small enough for Lean.

Tasks:

1. Build an exact external search over the degree-2 sign-polynomial
   denominators measured by Phase 6L.2A.
2. Introduce lifted product variables for the observed quadratic terms, or use
   an equivalent Boolean polynomial/Sherali-Adams certificate.
3. For cells or semantic states with no possible GoodDirection assignment,
   emit integer certificates proving infeasibility of the lifted system.
4. For assignments that truly satisfy GoodDirection, map them to normalized
   Farkas shape proofs; do not generate evidence for masks contradicted by the
   generic GoodDirection premise.
5. Profile distinct lifted certificate shapes, survivor Farkas shapes, and
   projected Lean-heavy leaves on `[0,100000)`.

Gate:

- Reject if the projected Lean-heavy leaves exceed 2,000 on `[0,100000)`.
- Reject if point/singleton fallback dominates.
- Only after the gate passes should a Lean checker and generated evidence
  emitter be added.

Phase 6L.2B implementation results:

- Added `scripts/profile_symmetry_compression.py --translation-lifted-pb-search`.
- The mode emits no Lean evidence and no bad-direction certificates.
- It canonicalizes quadratic denominator problems under signed permutations of
  the six sign variables, greedily covers non-GoodDirection masks by exact
  mask cubes, and counts true GoodDirection survivor obligations by normalized
  Farkas shape.
- `scripts/generated/translation_lifted_pb_search_profile_0_000005000.json`:
  - pair words scanned: 5,000;
  - identity-linear words: 487;
  - GoodDirection survivor masks: 4,693;
  - canonical lifted problems: 67;
  - canonical survivor bitsets: 55;
  - unique bad-cube certificate shapes: 630;
  - unique survivor Farkas shapes: 2,057;
  - unique survivor leaf obligations: 2,065;
  - planned heavy Lean leaves: 2,695;
  - accepted for Phase 6L.2B: false.
- `scripts/generated/translation_lifted_pb_search_profile_0_000100000.json`:
  - pair words scanned: 100,000;
  - identity-linear words: 5,565;
  - translation sign assignments: 356,160;
  - GoodDirection survivor masks: 39,710;
  - denominator-nonpositive masks: 316,450;
  - bad-direction generated evidence: 0;
  - canonical lifted problems: 346;
  - canonical survivor bitsets: 209;
  - total bad-cube leaves: 51,967;
  - unique bad-cube certificate shapes: 2,950;
  - point bad-cube fallback ratio: 0.253;
  - max bad-cube size: 64;
  - total survivor Farkas leaves: 39,710;
  - unique survivor Farkas shapes: 11,478;
  - unique survivor leaf obligations: 11,496;
  - planned heavy Lean leaves: 14,446;
  - accepted for Phase 6L.2B: false.

Decision:

- Phase 6L.2B is rejected by both the 5k and 100k gates.
- The bad-cube side compresses somewhat, and singleton fallback does not
  dominate, but survivor Farkas obligations still exceed the 2,000-leaf hard
  gate by a wide margin.
- Do not emit Lean evidence from the current lifted-PB cube/Farkas profile.
- The next active step is Phase 6L.3: stateful nonidentity cone/Farkas
  profiling, or a materially different semantic state model that can merge the
  survivor Farkas obligations before returning to translation evidence.

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

Phase 6L.3A implementation results:

- Added `scripts/profile_symmetry_compression.py --nonidentity-state-cone-tree`.
- The mode emits no Lean evidence.
- It tracks signed face-prefix states directly, checks exact empty-cone
  certificates for active transformed normals up to the configured depth, and
  classifies nonidentity signed terminals only after the fixed axis is
  compatible with the signed cone.
- The profiler is guarded by `--max-state-cone-states` because the signed
  state tree grows quickly.
- `scripts/generated/nonidentity_state_cone_profile_0_000005000.json`:
  - signed states visited: 250,000;
  - truncated: true;
  - empty-cone states: 1,491;
  - empty-cone signed completion width: 160,080;
  - unique empty-cone shapes: 1,491;
  - identity signed terminals: 11,239;
  - nonidentity signed terminals: 80,032;
  - axis-cone failures: 79,571;
  - unique terminal obstruction shapes: 46,835;
  - planned heavy Lean leaves: 48,326;
  - accepted for Phase 6L.3A: false.
- `scripts/generated/nonidentity_state_cone_profile_0_000100000.json`:
  - signed states visited: 250,000;
  - truncated: true;
  - empty-cone states: 1,548;
  - empty-cone signed completion width: 197,784;
  - unique empty-cone shapes: 1,548;
  - identity signed terminals: 6,981;
  - nonidentity signed terminals: 84,288;
  - axis-cone failures: 83,900;
  - unique terminal obstruction shapes: 50,616;
  - planned heavy Lean leaves: 52,164;
  - accepted for Phase 6L.3A: false.

Decision:

- Phase 6L.3A is rejected.
- The signed-state cone model fixes the over-conservative unsigned-prefix
  problem, but it still fragments into far too many terminal obstruction
  shapes before finishing even the bounded windows.
- Do not emit Lean evidence from the current signed-state cone profile.
- The next step should not be another shallow tiler variant. It should either
  introduce a genuinely coarser mathematical theorem for the terminal
  obstruction families or switch to a smaller target theorem layer that can be
  proved before attempting full generated coverage again.

#### Phase 6M: Coarse Terminal-Obstruction Algebra Profiler

Purpose: test whether the Phase 6K/6L.3A terminal explosion was mostly caused
by over-specific keys containing full sequences, axes, and ranks.

Tasks:

1. Keep the exact nonidentity forced-axis and terminal simulation logic.
2. Add a profiler-only terminal classifier whose counted keys do not contain
   rank, full word, full sequence, or raw axis data.
3. Group terminal failures by theorem family plus small exact witness shapes:
   - start-face separating margin;
   - first-hit mismatch comparison;
   - hit-interior margin;
   - hit tie/no-hit/closure failure shape.
4. Group preterminal nonidentity filters by similarly smaller witness shapes
   where possible, especially transformed-normal/axis orthogonality for
   forced-zero denominators.
5. Emit no Lean evidence. Use the profiler only to decide whether this theorem
   family layer is worth formalizing.

Gate:

- Reject if projected Lean-heavy leaves exceed 2,000 on `[0,100000)`.
- Reject if any single obstruction family exceeds 2,000 unique shapes.
- Reject if counted keys contain `rank=`, `word=`, `seq=`, or `axis=`.

Phase 6M implementation results:

- Added `scripts/profile_symmetry_compression.py
  --nonidentity-terminal-algebra`.
- The mode emits no Lean evidence.
- The counted keys exclude rank, full pair word, full forced sequence, and raw
  axis data.
- A 1k smoke profile passed the gate:
  - pair words scanned: 1,000;
  - identity words: 138;
  - nonidentity words: 862;
  - forced-balance survivors: 185;
  - terminal failures:
    `axis_misses_start_interior = 174`,
    `first_hit_mismatch = 11`;
  - unique coarse obstruction shapes: 340;
  - accepted for Phase 6M: true.
- The `[0,100000)` bounded profile is
  `scripts/generated/nonidentity_terminal_algebra_profile_000000000_000100000.json`:
  - pair words scanned: 100,000;
  - identity words: 5,565;
  - nonidentity words: 94,435;
  - forced-balance survivors: 9,036;
  - terminal failures:
    `axis_misses_start_interior = 8,775`,
    `first_hit_mismatch = 251`,
    `hit_tie = 10`;
  - unique coarse obstruction shapes: 6,282;
  - max shape reuse: 1,492;
  - family counts:
    `axis_misses_start_interior = 1,593`,
    `bad_pair_balance = 106`,
    `final_axis_zero = 120`,
    `first_hit_mismatch = 67`,
    `forced_zero_denominator = 4,393`,
    `hit_tie = 3`;
  - forbidden rank/word/sequence/axis markers in counted keys: none;
  - accepted for Phase 6M: false.

Decision:

- Phase 6M is rejected.
- Coarse terminal algebra removes much of the over-specific sequence/axis
  noise from Phase 6K, but it still exceeds the 2,000-leaf gate.
- The dominant obstruction is now preterminal `forced_zero_denominator`, not
  the terminal first-hit simulation itself.
- Do not emit Lean evidence from this profile.
- The next useful nonidentity step must target `forced_zero_denominator` with
  a generic theorem or state invariant, or else switch to a smaller formally
  useful theorem target before trying full generated coverage again.

#### Phase 6N: Combined Residual / Portfolio Profiler

Purpose: determine whether the already-profiled filters become viable when
combined in a fixed semantic pipeline, instead of judging each profile as a
standalone backend.

Rationale:

- The rejected profiles are not all mutually exclusive.
- Several are alternative descriptions of the same failures, so their raw
  counts cannot simply be added or subtracted.
- The missing measurement is overlap: after applying one filter, how many
  genuinely new obligations remain for the next filter?

Tasks:

1. Add a profiler-only mode:

   ```bash
   python3 scripts/profile_symmetry_compression.py \
     --dry-run \
     --combined-residual-portfolio \
     --limit 100000 \
     --progress-interval 10000 \
     --output scripts/generated/combined_residual_portfolio_profile_000000000_000100000.json
   ```

2. Apply reusable filters in a fixed order and report residual counts after
   each stage:
   - generic translation `GoodDirection` theorem;
   - translation lifted-PB bad-cube diagnostics, only as a profiler filter;
   - translation normalized Farkas survivor shapes;
   - nonidentity no-fixed-axis and fixed-axis orientation filters;
   - nonidentity bad pair balance;
   - nonidentity empty-cone/state-cone diagnostics, where applicable;
   - nonidentity coarse terminal algebra from Phase 6M;
   - explicit residual singleton fallback count.
3. Report both case counts and projected Lean-heavy shape counts per stage.
4. Record overlap statistics:
   - cases killed by each first-applicable filter;
   - cases also killable by later filters;
   - residual shape families after each stage.
5. Emit no Lean evidence and no generated checker data.
6. Reject if the final projected Lean-heavy leaf count is still above 2,000
   on `[0,100000)`.

Acceptance:

- The output answers whether the current portfolio already fits under the
  low-thousands gate.
- The profile is explicitly ordered and deterministic.
- The report distinguishes:
  - “first filter that kills this case”;
  - “other filters that also would kill this case”;
  - “remaining residual fallback.”
- If accepted, the next step is to design a Lean API for the accepted
  portfolio order.
- If rejected, the report must identify the largest remaining residual family,
  with `forced_zero_denominator` expected to be checked first.

Phase 6N implementation results:

- Added `scripts/profile_symmetry_compression.py
  --combined-residual-portfolio`.
- The mode emits no Lean evidence.
- A 1k smoke profile passed the hard gate but exceeded the warning gate:
  - pair words scanned: 1,000;
  - identity words: 138;
  - nonidentity words: 862;
  - translation GoodDirection masks: 1,465;
  - translation non-GoodDirection masks: 7,367;
  - unique primary shapes: 1,210;
  - largest residual family:
    `translation.farkas_survivor = 870`;
  - accepted for Phase 6N: true.
- The `[0,100000)` bounded profile is
  `scripts/generated/combined_residual_portfolio_profile_000000000_000100000.json`:
  - pair words scanned: 100,000;
  - identity words: 5,565;
  - nonidentity words: 94,435;
  - translation GoodDirection masks: 39,710;
  - translation non-GoodDirection masks: 316,450;
  - unique primary shapes: 17,760;
  - accepted for Phase 6N: false.
- First-applicable case counts:
  - `translation.generic_good_direction = 316,450`;
  - `translation.farkas_survivor = 39,710`;
  - `nonidentity.bad_pair_balance = 24,364`;
  - `nonidentity.final_axis_zero = 6,241`;
  - `nonidentity.forced_zero_denominator = 54,794`;
  - `nonidentity.terminal_algebra.axis_misses_start_interior = 8,775`;
  - `nonidentity.terminal_algebra.first_hit_mismatch = 251`;
  - `nonidentity.terminal_algebra.hit_tie = 10`.
- Unique primary shape counts:
  - `translation.farkas_survivor = 11,478`;
  - `nonidentity.forced_zero_denominator = 4,393`;
  - `nonidentity.terminal_algebra.axis_misses_start_interior = 1,593`;
  - `nonidentity.bad_pair_balance = 106`;
  - `nonidentity.final_axis_zero = 120`;
  - `nonidentity.terminal_algebra.first_hit_mismatch = 67`;
  - `nonidentity.terminal_algebra.hit_tie = 3`.
- Overlap diagnostics:
  - `translation.lifted_pb_bad_cube_diagnostic = 2,950` unique shapes;
  - these are diagnostic only and are not counted as primary generated leaves.

Decision:

- Phase 6N is rejected.
- The existing filters do not already combine under the 2,000-leaf gate.
- The largest remaining residual family is now translation normalized Farkas
  survivor shapes, not nonidentity `forced_zero_denominator`.
- The next useful step should target translation survivor/Farkas shape-map
  compression directly, or choose a smaller formal target theorem before full
  generated coverage is retried.

#### Phase 6O: Translation Survivor / Farkas Shape-Map Compression

Purpose: reduce the dominant Phase 6N residual,
`translation.farkas_survivor`, before returning to public generated coverage.

Rationale:

- Phase 6N proves the existing filter portfolio is not enough.
- The largest remaining family is translation normalized Farkas survivor
  shapes:
  - 39,710 GoodDirection survivor masks in `[0,100000)`;
  - 11,478 unique normalized Farkas shapes;
  - 17,760 total portfolio leaves against the 2,000 gate.
- Nonidentity `forced_zero_denominator` remains a real problem, but it is now
  second-order relative to translation survivor shape explosion.

Tasks:

1. Add a profiler-only mode:

   ```bash
   python3 scripts/profile_symmetry_compression.py \
     --dry-run \
     --translation-farkas-shape-map \
     --limit 100000 \
     --progress-interval 10000 \
     --output scripts/generated/translation_farkas_shape_map_profile_000000000_000100000.json
   ```

2. Profile the translation survivor shapes by increasingly semantic keys:
   - raw normalized Farkas constraint system digest;
   - denominator signature digest;
   - survivor bitset;
   - survivor-mask to Farkas-shape map;
   - Farkas certificate support pattern;
   - row-count/row-normal multiset;
   - shape under row permutation and positive row scaling;
   - shape under started-face `D4`;
   - shape under sign-bit renaming/complement induced by repeated pair labels;
   - shape under affine changes of the start-face coordinates `(y,z)` if an
     exact, auditable normal form can be implemented.
3. Report cumulative compression factors for each canonicalization layer.
4. Track whether a small number of proof skeletons can cover many shape
   digests:
   - same Farkas multiplier support;
   - same coefficient-sign pattern;
   - same normalized row dependency graph;
   - same source-row transport map.
5. Emit no Lean evidence.
6. Reject if the best projected translation survivor leaf count remains above
   2,000 on `[0,100000)`.

Acceptance:

- The output identifies which equivalences actually reduce the 11,478-shape
  residual.
- The profiler reports both:
  - unique canonical shape-map classes;
  - remaining cases requiring per-shape proof skeletons.
- If accepted, the next step is a Lean checker/API for the winning
  translation shape-map equivalence.
- If rejected, the plan should either:
  - target a generic theorem about translation feasible polygons/Farkas
    systems, or
  - downshift to a smaller formal theorem target before full generated
    coverage.

Phase 6O implementation results:

- Implemented `--translation-farkas-shape-map`.
- Ran:

  ```bash
  python3 scripts/profile_symmetry_compression.py \
    --dry-run \
    --translation-farkas-shape-map \
    --limit 100000 \
    --progress-interval 10000 \
    --output scripts/generated/translation_farkas_shape_map_profile_000000000_000100000.json
  ```

- Results on `[0,100000)`:
  - pair words scanned: 100,000;
  - identity-linear words: 5,565;
  - translation sign assignments: 356,160;
  - GoodDirection survivor masks: 39,710;
  - denominator-nonpositive masks discharged by the generic theorem: 316,450;
  - raw normalized Farkas shapes: 39,582;
  - raw survivor shape maps: 5,521;
  - started-face `D4` survivor shape maps: 5,521;
  - denominator signatures: 5,565;
  - signed-variable survivor shape maps: 5,521;
  - survivor bitsets: 1,479.
- Decision: Phase 6O is rejected as a proof-ready backend.
- Reason:
  - the best proof-ready layer is `raw_survivor_shape_map`, with 5,521
    obligations, still above the 2,000 gate;
  - the only layer under the gate is `survivor_bitset`, with 1,479 classes,
    but this is diagnostic-only because a bitset alone does not prove Farkas
    infeasibility.

#### Phase 6P: Upgrade Survivor-Bitset Compression or Downshift

Purpose: determine whether the only Phase 6O low-count layer can become a
real theorem instead of a diagnostic coincidence.

Tasks:

1. For each survivor-bitset class, profile the associated Farkas systems:
   - number of raw shape maps in the class;
   - number of normalized Farkas shapes in the class;
   - whether the class has a common row-support pattern, multiplier support,
     or denominator-signature family.
2. Try to extract one reusable proof skeleton for the largest survivor-bitset
   classes:
   - a shared Farkas multiplier template;
   - a theorem that the bitset plus a small denominator signature implies the
     corresponding strict system is unsatisfiable;
   - or a theorem about the translation feasible polygon that bypasses
     per-shape Farkas data.
3. Implement one Lean pilot theorem for one high-reuse class before generating
   any broad evidence.
4. Reject Phase 6P if the pilot theorem still needs raw Farkas-shape data for
   most members of the class.
5. If Phase 6P rejects, stop pursuing full generated coverage in this
   architecture and deliberately choose a smaller formal target theorem.

Acceptance:

- A survivor-bitset or bitset-plus-signature theorem eliminates many raw
  Farkas shapes with a proof-ready obligation count below 2,000 on
  `[0,100000)`.
- The pilot Lean theorem compiles without `sorry`, `native_decide`, `unsafe`,
  or custom axioms.
- If no such theorem exists, the plan records the failure and names the
  smaller target theorem to finish next.

Phase 6P implementation results:

- Implemented `--translation-bitset-class-pilot`.
- Ran:

  ```bash
  python3 scripts/profile_symmetry_compression.py \
    --dry-run \
    --translation-bitset-class-pilot \
    --limit 100000 \
    --progress-interval 10000 \
    --output scripts/generated/translation_bitset_class_pilot_000000000_000100000.json
  ```

- Results on `[0,100000)`:
  - pair words scanned: 100,000;
  - identity-linear words: 5,565;
  - translation sign assignments: 356,160;
  - GoodDirection survivor masks: 39,710;
  - survivor-bitset classes: 1,479;
  - top bitset: `80c0a000f1452300`;
  - top-bitset identity words: 96;
  - top-bitset survivor cases: 1,536;
  - top-bitset normalized Farkas shapes: 1,500;
  - top-bitset raw shape maps: 96;
  - sampled top-bitset source supports: 7;
  - sampled top-bitset multiplier patterns: 11.
- Decision: Phase 6P is rejected.
- Reason:
  - survivor bitsets compress the set of identity words, but do not determine
    a reusable Farkas proof skeleton;
  - even the highest-reuse bitset class still fragments into multiple source
    supports and multiplier patterns;
  - a Lean theorem based only on survivor bitsets would need extra raw
    Farkas-shape data for most members of the class.

#### Phase 6Q: Conditional Trusted Skeleton Target

Purpose: deliberately downshift to a smaller formal target that is already
mathematically meaningful and buildable: the Lean proof skeleton saying that
an `ExhaustiveGeneratedCoverage` object implies no started unfolded omnihedral
itinerary.

Rationale:

- The repeated bounded compression gates show that the remaining full
  generated evidence problem is an engineering/research bottleneck, not a
  good next Lean implementation target.
- `Cuboctahedron/Search/Certificates.lean` already contains:
  - `generated_nonidentity_complete_of_coverage`;
  - `generated_translation_complete_of_coverage`;
  - `no_unfolded_omni_starting_xp_of_coverage`.
- This conditional layer is the trusted theorem skeleton Step 15 needs once
  full evidence exists, and it can be validated now without pretending the
  generated coverage problem is solved.

Tasks:

1. Create a small public-facing module importing only the necessary trusted
   files and exposing the conditional theorem under a clear name, e.g.
   `conditional_no_unfolded_omni_starting_xp`.
2. Add a validation file that prints axioms for the conditional theorem.
3. Document in the README or a short markdown note:
   - what the theorem proves;
   - what assumption remains (`ExhaustiveGeneratedCoverage`);
   - why this is not the final theorem.
4. Build only the conditional module and validation file.
5. Run the repository grep for forbidden proof escapes.

Acceptance:

- The conditional theorem compiles without `sorry`, `admit`,
  `native_decide`, `unsafe`, or custom axioms.
- The axiom printout contains no `sorryAx`, `Lean.trustCompiler`, or
  project-specific custom axioms.
- The documentation makes clear that full generated evidence remains open.

Phase 6Q implementation results:

- Added `Cuboctahedron/ConditionalTheorem.lean` exposing:
  - `conditional_generated_nonidentity_complete`;
  - `conditional_generated_translation_complete`;
  - `conditional_no_unfolded_omni_starting_xp`.
- Added `Cuboctahedron/PrintConditionalAxioms.lean`.
- Added `CONDITIONAL_PROOF_SKELETON.md`.
- Validation commands:

  ```bash
  lake build Cuboctahedron.ConditionalTheorem
  lake env lean Cuboctahedron/PrintConditionalAxioms.lean
  grep -R "sorry\|admit\|axiom\|native_decide\|unsafe" Cuboctahedron || true
  ```

- Axiom output:

  ```text
  'Cuboctahedron.conditional_no_unfolded_omni_starting_xp' depends on axioms: [propext, Classical.choice, Quot.sound]
  ```

- Decision: Phase 6Q is complete.
- Caveat: this remains conditional on `ExhaustiveGeneratedCoverage` and is not
  the final cuboctahedron billiards theorem.
- The forbidden-text scan reports only the intentional `#print axioms` command
  in `Cuboctahedron/PrintConditionalAxioms.lean`.

#### Phase 6R: Conditional Full Billiard Theorem

Purpose: extend the conditional trusted skeleton from the started unfolded
itinerary layer to the full billiard-orbit theorem shape, still assuming a
coverage witness:

```lean
theorem conditional_cuboctahedron_no_omnihedral
    (coverage : ExhaustiveGeneratedCoverage) :
  ¬ ∃ o : BilliardOrbit14,
      o.Nonsingular ∧ o.Periodic ∧ o.TouchesEachFaceExactlyOnce
```

The exact syntax should be adapted to the repository's current
`BilliardOrbit14` fields and predicates.

Rationale:

- Phase 6Q validates `conditional_no_unfolded_omni_starting_xp`.
- The existing geometry bridge layer includes the intended ingredients:
  cyclic reindexing to start at `xp` and billiard-to-unfolded feasibility.
- If those bridges are strong enough, Phase 6R completes the conditional
  theorem skeleton all the way to the intended user-facing billiard-orbit
  statement.
- This remains conditional on `ExhaustiveGeneratedCoverage`; it does not solve
  generated evidence or make the final theorem unconditional.

Tasks:

1. Inspect the actual names and theorem shapes for:
   - `BilliardOrbit14`;
   - `Nonsingular`;
   - `Periodic`;
   - `TouchesEachFaceExactlyOnce`;
   - `can_start_at_xp`;
   - `billiard_implies_unfolded`.
2. Add `conditional_cuboctahedron_no_omnihedral`, either in
   `Cuboctahedron/ConditionalTheorem.lean` or a small adjacent module.
3. Add or update an axiom-print validation file for the conditional full
   theorem.
4. Document that the theorem is still conditional on
   `ExhaustiveGeneratedCoverage`.
5. If the orbit bridge is weaker than the final theorem needs, record the
   exact missing lemma and its expected statement instead of weakening the
   theorem silently.

Acceptance:

- The conditional full theorem compiles without `sorry`, `admit`,
  `native_decide`, `unsafe`, or custom axioms.
- `#print axioms` for `conditional_cuboctahedron_no_omnihedral` contains no
  `sorryAx`, no `Lean.trustCompiler`, and no project-specific custom axioms.
- The documentation clearly distinguishes this conditional theorem from the
  final unconditional theorem.

Phase 6R implementation results:

- Extended `Cuboctahedron/ConditionalTheorem.lean` with:

  ```lean
  theorem conditional_cuboctahedron_no_omnihedral
      (coverage : ExhaustiveGeneratedCoverage) :
      ¬ exists o : BilliardOrbit14,
        o.Nonsingular /\ o.Periodic /\ o.TouchesEachFaceExactlyOnce
  ```

- The proof uses `can_start_at_xp`, `billiard_implies_unfolded`, and
  `conditional_no_unfolded_omni_starting_xp`.
- Extended `Cuboctahedron/PrintConditionalAxioms.lean` to print axioms for the
  conditional full theorem.
- Updated `CONDITIONAL_PROOF_SKELETON.md`.
- Validation commands:

  ```bash
  lake build Cuboctahedron.ConditionalTheorem
  lake env lean Cuboctahedron/PrintConditionalAxioms.lean
  grep -R "sorry\|admit\|axiom\|native_decide\|unsafe" Cuboctahedron || true
  git diff --check
  ```

- Axiom output:

  ```text
  'Cuboctahedron.conditional_no_unfolded_omni_starting_xp' depends on axioms: [propext, Classical.choice, Quot.sound]
  'Cuboctahedron.conditional_cuboctahedron_no_omnihedral' depends on axioms: [propext, Classical.choice, Quot.sound]
  ```

- Decision: Phase 6R is complete.
- Caveat: this remains conditional on `ExhaustiveGeneratedCoverage`; the
  unconditional final theorem still needs actual generated coverage.

#### Phase 6S: Obstruction Atlas And Global-Lemma Synthesis

Purpose: stop inventing new emitters until the dominant residual obstructions
are understood as theorem candidates. Phase 6S is diagnostic only: it emits no
Lean evidence and proves nothing.

Implementation:

- Added `scripts/profile_obstruction_atlas.py`.
- The script reuses the exact combined-residual portfolio classifier from
  `scripts/profile_symmetry_compression.py`.
- It supports:
  - direct bounded window traversal via `--start-rank` / `--end-rank`;
  - conversion from an existing combined-residual portfolio JSON via
    `--from-portfolio-json`;
  - JSON and Markdown outputs.

First atlas result:

- Generated:
  - `scripts/generated/obstruction_atlas_000000000_000100000.json`
  - `scripts/generated/obstruction_atlas_000000000_000100000.md`
- Source portfolio:
  `scripts/generated/combined_residual_portfolio_profile_000000000_000100000.json`
- Window: `[0,100000)`.
- Shaped residual cases: `134145`.
- Shaped residual families: `17760`.
- Top-three case share: `0.886`.
- Top-three shape share: `0.983`.
- Dominant residuals by shape count:
  1. `translation.farkas_survivor`: `39710` cases, `11478` shapes;
  2. `nonidentity.forced_zero_denominator`: `54794` cases, `4393` shapes;
  3. `nonidentity.terminal_algebra.axis_misses_start_interior`: `8775` cases,
     `1593` shapes.

Interpretation:

- The atlas confirms the next useful target is not another interval/rank/mask
  emitter.
- The largest proof burden is still translation survivor Farkas evidence.
- The top three theorem-candidate families cover enough cases on the first
  bounded window to justify cross-window atlas profiling before choosing the
  next Lean theorem.
- The recommended next candidate after the first atlas is
  `translation.farkas_survivor`: a shared source-Farkas skeleton, stronger
  survivor-system theorem, or related compact transport theorem.

Validation commands:

```bash
python3 -m py_compile scripts/profile_obstruction_atlas.py
python3 scripts/profile_obstruction_atlas.py \
  --start-rank 0 --end-rank 1000 --progress-interval 0 \
  --output-json /tmp/obstruction_atlas_smoke.json \
  --output-md /tmp/obstruction_atlas_smoke.md
python3 scripts/profile_obstruction_atlas.py \
  --start-rank 0 --end-rank 100000 \
  --from-portfolio-json scripts/generated/combined_residual_portfolio_profile_000000000_000100000.json
```

Cross-window result:

- Added `scripts/compare_obstruction_atlases.py`.
- Generated additional atlas windows:
  - `scripts/generated/obstruction_atlas_010000000_010100000.json`
  - `scripts/generated/obstruction_atlas_030000000_030100000.json`
  - `scripts/generated/obstruction_atlas_060000000_060100000.json`
  - `scripts/generated/obstruction_atlas_090000000_090100000.json`
- Generated:
  - `scripts/generated/obstruction_atlas_cross_window_summary.json`
  - `scripts/generated/obstruction_atlas_cross_window_summary.md`
- Summary decision: `phase6s_rejected`.
- All five windows have top-three case share at least `0.800`.
- The top-three case-family set is not stable across windows.
- Aggregate largest shape burden: `translation.farkas_survivor`.
- `nonidentity.forced_zero_denominator` is the largest case family in every
  sampled window and becomes the largest shape burden in the later windows.

Cross-window table:

| Window | Top-three case share | Largest case family | Largest shape burden |
| --- | ---: | --- | --- |
| `[0,100000)` | `0.886` | `nonidentity.forced_zero_denominator` | `translation.farkas_survivor` |
| `[10000000,10100000)` | `0.896` | `nonidentity.forced_zero_denominator` | `translation.farkas_survivor` |
| `[30000000,30100000)` | `0.990` | `nonidentity.forced_zero_denominator` | `nonidentity.forced_zero_denominator` |
| `[60000000,60100000)` | `0.977` | `nonidentity.forced_zero_denominator` | `nonidentity.forced_zero_denominator` |
| `[90000000,90100000)` | `0.969` | `nonidentity.forced_zero_denominator` | `nonidentity.forced_zero_denominator` |

Interpretation:

- Phase 6S succeeds as a diagnostic but fails as an approval gate for a single
  generated-evidence backend.
- A one-family theorem phase would be rank-window brittle: early samples point
  at translation survivor Farkas shapes, while later samples point at
  nonidentity forced-zero denominators.
- The next phase must compare or synthesize the two blockers at the semantic
  feature level. Do not emit atlas leaves or promote one sampled winner into
  Lean evidence.

#### Phase 6T: Cross-Family Obstruction Synthesis

Purpose: use the Phase 6S atlas rejection constructively. The goal is to find
one or two semantic theorem templates that simultaneously reduce the unstable
top burdens:

- `translation.farkas_survivor`
- `nonidentity.forced_zero_denominator`

Phase 6T remains diagnostic only and emits no Lean evidence.

Tasks:

1. Add a cross-family profiler that records shared semantic features for the
   two dominant families across the same five 100k windows.
2. Use integer or homogeneous arithmetic in the profiler output format where
   possible, so any later Lean checker does not inherit avoidable `Rat`
   reduction pressure.
3. For `translation.farkas_survivor`, group survivors by source Farkas
   skeleton, denominator signature, survivor bitset, and normalized inequality
   support.
4. For `nonidentity.forced_zero_denominator`, group failures by the zero
   denominator's unfolded normal, prefix/reflection state, pair-count state, and
   exact sign/balance context.
5. Measure whether the same semantic state object can explain both branches,
   especially cases where translation survivor denominators and nonidentity
   zero-denominator normals share the same reflected normal support.
6. Report:
   - per-window and aggregate group counts;
   - top shared states by case coverage;
   - top shared states by shape burden;
   - residual burden after applying the best `k` shared templates;
   - whether the projected theorem count is below the 2,000 gate.
7. If the gate passes, create a Lean theorem phase for the winning semantic
   templates.
8. If the gate fails, update the plan with the exact remaining obstruction and
   pause generated coverage again.

Result:

- Added `scripts/profile_cross_family_obstructions.py`.
- Generated:
  - `scripts/generated/cross_family_obstructions_000000000_000100000.json`
  - `scripts/generated/cross_family_obstructions_010000000_010100000.json`
  - `scripts/generated/cross_family_obstructions_030000000_030100000.json`
  - `scripts/generated/cross_family_obstructions_060000000_060100000.json`
  - `scripts/generated/cross_family_obstructions_090000000_090100000.json`
  - `scripts/generated/cross_family_obstructions_cross_window_summary.json`
- Summary decision: `phase6t_accepted`.
- Selected template family union:
  - `cross.pairNormal`;
  - `nonidentity.zeroAxis`;
  - `nonidentity.zeroNormal`;
  - `nonidentity.zeroRemainingCounts`.

Cross-window table:

| Window | Initial leaves | Remaining leaves at k=500 | Selected templates |
| --- | ---: | ---: | ---: |
| `[0,100000)` | `43,975` | `0` | `204` |
| `[10000000,10100000)` | `28,612` | `0` | `281` |
| `[30000000,30100000)` | `4,058` | `0` | `223` |
| `[60000000,60100000)` | `1,685` | `0` | `90` |
| `[90000000,90100000)` | `1,718` | `0` | `94` |

Interpretation:

- This is the first bounded diagnostic since the failed rank/mask emitters to
  project below the `2,000`-leaf gate on all five sample windows.
- The result is still not proof evidence. The most dangerous family is
  `cross.pairNormal`: it is a diagnostic grouping across translation survivor
  Farkas shapes and nonidentity forced-zero denominator shapes, not yet a
  Lean theorem.
- Do not emit generated evidence from Phase 6T directly. First audit whether
  these four template families correspond to small, sound Lean theorem
  schemas.

Validation commands:

```bash
python3 -m py_compile scripts/profile_cross_family_obstructions.py
python3 scripts/profile_cross_family_obstructions.py \
  --start-rank 0 --end-rank 1000 --progress-interval 0
python3 scripts/profile_cross_family_obstructions.py --compare-default-windows
python3 -m json.tool scripts/generated/cross_family_obstructions_cross_window_summary.json
```

#### Phase 6U: Template Soundness Audit And Lean Schema Prototypes

Purpose: determine whether Phase 6T's accepted diagnostic portfolio can become
trusted generated evidence.

Tasks:

1. For each selected template family, define the intended semantic theorem
   statement in a small hand-written design note before editing Lean:
   - `cross.pairNormal`;
   - `nonidentity.zeroAxis`;
   - `nonidentity.zeroNormal`;
   - `nonidentity.zeroRemainingCounts`.
2. Classify each family as:
   - already covered by an existing soundness theorem;
   - requiring a small new Lean theorem;
   - diagnostic-only and therefore not proof-usable.
3. Implement one minimal Lean prototype only for families in the first two
   categories, using one generated sample per family and no large data.
4. For `cross.pairNormal`, explicitly prove or reject the claim that a shared
   pair/reflected-normal support can transport translation survivor Farkas
   unsatisfiability and nonidentity forced-zero contradiction. If it cannot be
   made sound, split it into separate proof-usable subfamilies before any
   evidence emitter is designed.
5. Run focused builds for the prototype modules only.
6. Update this plan with either:
   - `Phase 6U accepted`, including theorem names and the next evidence
     emitter phase; or
   - `Phase 6U rejected`, including the exact diagnostic family that was not
     proof-usable.

Gate:

- At least the four selected template families must have sound theorem schemas
  or proof-usable replacements.
- No Phase 6T diagnostic key may be treated as trusted coverage merely because
  it groups many leaves.
- No generated evidence emission resumes until Phase 6U passes.

Current audit result:

| Phase 6T family | Phase 6U classification | Proof path |
| --- | --- | --- |
| `nonidentity.zeroNormal` | Proof-usable | Implemented wrapper theorem `Cuboctahedron.Generated.NonIdentity.TemplateSoundness.zeroNormal_sound`, which reuses the checked nonidentity axis-line proof and `AxisDotZeroAtWord` contradiction. |
| `nonidentity.zeroAxis` | Grouping key only | Implemented `zeroAxis_refines_to_zeroNormal`; the axis label is trusted only after a generated leaf supplies a concrete impact and `AxisDotZeroAtWord` witness. |
| `nonidentity.zeroRemainingCounts` | Grouping key only | Implemented `zeroRemainingCounts_refines_to_zeroNormal`; remaining-count labels must dispatch to concrete zero-normal witnesses for every covered completion. |
| `cross.pairNormal` | Split required | Not accepted as a standalone theorem. The nonidentity part may reduce to `zeroNormal_sound`; the translation part must transport to existing `TranslationGoodCaseKilled`/Farkas evidence and cannot be inferred from pair-normal support alone. |

Implemented prototype module:

```lean
Cuboctahedron.Generated.NonIdentity.TemplateSoundness.zeroNormal_sound
Cuboctahedron.Generated.NonIdentity.TemplateSoundness.zeroAxis_refines_to_zeroNormal
Cuboctahedron.Generated.NonIdentity.TemplateSoundness.zeroRemainingCounts_refines_to_zeroNormal
```

Current proof viability assessment:

- The project is more on track than it was during the failed raw-rank,
  packed-blob, singleton-shard, and dense bad-direction attempts, because a
  high-coverage diagnostic family has now been reduced to an actual Lean
  theorem schema instead of generated case data.
- This is not yet a functioning full proof. The final generated coverage API,
  Step 15 theorem, and final billiard theorem still require a proof-usable
  coverage backend for both branches.
- The decisive remaining Phase 6U risk is the translation/cross-family side:
  `cross.pairNormal` must split into sound subfamilies, and its translation
  half must connect to real `TranslationGoodCaseKilled`/Farkas evidence. Shared
  pair/reflected-normal support alone is not a theorem.
- If the split `cross.pairNormal` portfolio remains below the low-thousands
  leaf target on the five sample windows, the current route is plausibly
  viable for generated coverage and Step 15. If it expands again, the project
  still needs a stronger translation survivor/Farkas compression idea.

Remaining Phase 6U work:

Phase 6U split result:

- Implemented a proof-usable split mode in
  `scripts/profile_cross_family_obstructions.py`.
- In this mode, standalone `cross.pairNormal` is not a candidate template.
  Translation leaves are counted through concrete `translation.farkasShape`
  obligations, and nonidentity leaves are counted through concrete
  `nonidentity.zeroNormalWitness` obligations backed by `zeroNormal_sound`.
- Smoke window `[0,1000)` passed only because the whole window is below the
  2,000-leaf budget:

  ```text
  initial leaves: 1,671
  remaining leaves at k=500: 1,171
  status: phase6u_split_window_passes
  ```

- The first full default window `[0,100000)` rejects decisively:

  ```text
  initial leaves: 43,975
  translation leaves: 39,582
  nonidentity leaves: 4,393
  remaining leaves at k=500: 43,475
  status: phase6u_split_window_rejected
  ```

- The largest fanout is translation-side:

  ```text
  cross_pair_normal_to_translation_farkas_shapes
  pair=x|normal=1,0,0 -> 39,582 concrete Farkas-shape obligations
  pair=y|normal=0,1,0 -> 39,582 concrete Farkas-shape obligations
  pair=z|normal=0,0,1 -> 20,590 concrete Farkas-shape obligations
  ```

Decision:

- `Phase 6U rejected`.
- Do not run the remaining four 100k windows for this split portfolio unless a
  stronger translation-side theorem is added first; the first default window
  already fails by more than an order of magnitude.
- Keep `zeroNormal_sound` as useful trusted infrastructure.
- Do not use `cross.pairNormal` directly as generated proof evidence.

Validation commands:

```bash
python3 -m py_compile scripts/profile_cross_family_obstructions.py
python3 scripts/profile_cross_family_obstructions.py \
  --start-rank 0 --end-rank 1000 \
  --proof-usable-portfolio --progress-interval 0
python3 scripts/profile_cross_family_obstructions.py \
  --start-rank 0 --end-rank 100000 \
  --proof-usable-portfolio --progress-interval 10000
python3 -m json.tool \
  scripts/generated/cross_family_obstructions_phase6u_split_000000000_000100000.json
lake build Cuboctahedron.Generated.NonIdentity.TemplateSoundness
```

#### Phase 6V: Translation Farkas-Shape Burden Compression

Purpose: address the obstruction exposed by Phase 6U. The concrete
translation Farkas-shape obligations were audited by exact source-indexed
Farkas data, not by pair/reflected-normal support.

Status: blocked on a missing theorem, not accepted for evidence emission.

Implementation:

- Added `--translation-farkas-phase6v` to
  `scripts/profile_symmetry_compression.py`.
- The Phase 6V mode reconstructs exact `SourceFarkasCert`-style terms for
  every GoodDirection survivor in a bounded window and separately counts:
  exact normalized Farkas shapes, exact source rows plus multipliers, exact
  survivor shape maps, and diagnostic-only source-row support.
- It writes both JSON and Markdown reports, e.g.
  `scripts/generated/translation_farkas_phase6v_000000000_000100000.{json,md}`.

First-window result `[0,100000)`:

```text
identity-linear words:               5,565
translation sign assignments:      356,160
GoodDirection survivor masks:       39,710
source Farkas reconstruction failures:   0

best proof-ready layer:
  raw_survivor_shape_map              5,521

other proof-ready layers:
  raw_source_farkas_terms             8,939
  raw_normalized_farkas_shape        39,582
  normalized_shape_plus_source_terms 39,614
  raw_row_multiset                   39,710

best diagnostic-only layer:
  raw_source_farkas_support             235
```

Decision:

- `Phase 6V blocked_on_transport_theorem`.
- Do not emit generated Lean evidence from the current proof-ready layers:
  the best proof-ready first-window count is still `5,521`, above the 2,000
  gate.
- The source-support layer is genuinely promising (`235` shapes), but it is
  not proof-ready because the existing Lean path needs exact multipliers, not
  just the source rows.
- The next viable task is a theorem or certificate schema that turns shared
  source-row support into exact reusable Farkas evidence, or replaces the
  concrete multiplier burden with a stronger parametric/linear-algebra
  theorem.

Gate:

- Re-run the first default window only after a theorem-backed source-support
  compression candidate exists.
- No generated Lean evidence emitter is allowed from Phase 6V's current
  proof-ready layers.

Validation commands:

```bash
python3 -m py_compile scripts/profile_symmetry_compression.py
python3 scripts/profile_symmetry_compression.py \
  --dry-run --translation-farkas-phase6v \
  --limit 1000 --allow-reject --progress-interval 0 \
  --output scripts/generated/translation_farkas_phase6v_000000000_000001000.json
python3 scripts/profile_symmetry_compression.py \
  --dry-run --translation-farkas-phase6v \
  --limit 100000 --allow-reject --progress-interval 10000 \
  --output scripts/generated/translation_farkas_phase6v_000000000_000100000.json
python3 -m json.tool \
  scripts/generated/translation_farkas_phase6v_000000000_000100000.json
```

#### Phase 6W: Source-Support Farkas Transport or Replacement

Purpose: decide whether the `235` source-row supports from Phase 6V can become
a trusted proof family, or whether the translation branch needs a different
parametric certificate.

Status: blocked on a parametric multiplier theorem.

Tasks:

1. Inspect several top `raw_source_farkas_support` classes and compare their
   exact multipliers, normalized rows, and generated source constraints.
2. Determine whether multiplier variation is only positive rescaling/row
   normalization, affine parameter variation, or genuinely case-specific.
3. If variation is structural and simple, write a tiny Lean theorem schema:
   a source-support family carries symbolic or interval-parameter multipliers
   and proves `checkSourceFarkas`/`checkFarkas` soundness without one exact
   multiplier vector per case.
4. If variation is not structurally simple, reject source-support transport
   and pivot to a stronger translation theorem, such as denominator-cube
   Farkas or a word/state DAG over semantic constraints.
5. The first `[0,100000)` window must project below 2,000 theorem-backed
   leaves before any generated Lean evidence emitter resumes.

Implementation and validation:

- Added Phase 6W source-support multiplier profiling to
  `scripts/profile_symmetry_compression.py`.
- Added rank-window-aware Phase 6W traversal and a memory-safe parallel runner:
  `--parallel-jobs` and `--parallel-window-size`.
- Parallel workers return compact exact counters and source-support class
  summaries; the parent verifies shard contiguity before writing the merged
  report. No generated Lean evidence is emitted.
- Smoke validation compared serial vs parallel on `[0,1000)` and passed 31
  JSON equality checks covering headline counts, source-support summaries,
  source-Farkas histograms, and per-layer unique/reuse counts.

First-window parallel result `[0,100000)`:

```text
wall time:                         189.65s
parallel jobs:                          12
rank shards:                            20
shard width:                         5,000
max worker shard time:              151.28s
worker RSS during run: roughly 80-112 MiB each

pair words scanned:                100,000
identity-linear words:               5,565
nonidentity words skipped:          94,435
translation sign assignments:      356,160
GoodDirection survivor masks:       39,710
denominator-nonpositive masks:     316,450
bad-direction generated evidence:        0

raw_source_farkas_support:             235
raw_source_farkas_terms:             8,939
raw_survivor_shape_map:              5,521
raw_normalized_farkas_shape:        39,582
normalized_shape_plus_source_terms: 39,614
raw_row_multiset:                   39,710

source term count histogram: {2: 39710}
source Farkas reconstruction failures: 0
decision: blocked_parametric
```

Interpretation:

- The GoodDirection refactor worked: the dense `316,450` bad-direction masks
  require no generated evidence in this window.
- The remaining generated-data pressure is entirely in the GoodDirection
  survivor Farkas branch.
- The promising compression coordinate is source-row support: `39,710`
  survivor cases collapse to `235` support classes.
- However, source support alone is not yet proof-ready because exact Farkas
  multipliers vary inside those support classes.
- Every survivor Farkas cert in this bounded window uses exactly two source
  terms. That is the main new mathematical target: prove a reusable
  two-source-term parametric Farkas theorem, or split each source-support
  class into a small theorem-backed family of multiplier patterns.

Gate:

- Do not emit translation Farkas survivor leaves from
  `raw_source_farkas_terms`, `raw_survivor_shape_map`, or raw normalized
  Farkas shapes.
- Resume Lean evidence generation only after one of these becomes true:
  1. A Lean theorem turns a two-source-term support class plus checked
     parameter bounds into Farkas unsatisfiability.
  2. A refined source-support/multiplier-family split keeps the first
     `[0,100000)` window below the 2,000 proof-ready leaf gate.
  3. A replacement translation theorem eliminates the survivor Farkas branch
     more directly.

Validation commands:

```bash
python3 -m py_compile scripts/profile_symmetry_compression.py
python3 scripts/profile_symmetry_compression.py \
  --dry-run --translation-farkas-phase6w \
  --limit 1000 --allow-reject --progress-interval 0 \
  --output scripts/generated/translation_farkas_phase6w_serial_000000000_000001000.json
python3 scripts/profile_symmetry_compression.py \
  --dry-run --translation-farkas-phase6w \
  --limit 1000 --parallel-jobs 4 --parallel-window-size 250 \
  --allow-reject --progress-interval 0 \
  --output scripts/generated/translation_farkas_phase6w_parallel_000000000_000001000.json
python3 scripts/profile_symmetry_compression.py \
  --dry-run --translation-farkas-phase6w \
  --limit 100000 --parallel-jobs 12 --parallel-window-size 5000 \
  --allow-reject --progress-interval 0 \
  --output scripts/generated/translation_farkas_phase6w_000000000_000100000.json
```

#### Phase 6X: Deterministic Two-Source Farkas Support Theorem

Purpose: turn the Phase 6W observation into a proof-usable theorem shape. In
the first 100k-rank window, every GoodDirection survivor source-Farkas
certificate has exactly two source rows. For two strict linear inequalities

```text
L(y,z) : a y + b z < c
M(y,z) : A y + B z < C
```

a deterministic Farkas candidate can cancel the active coordinate by choosing
weights `(A, -a)` if either `a` or `A` is nonzero, otherwise `(B, -b)`, and
then orienting both weights nonnegative. Lean then checks the resulting
two-source `SourceFarkasCert` with `checkSourceFarkas`, so soundness follows
from the existing `checkSourceFarkas_sound` theorem.

Status: accepted on `[0,100000)` as a bounded profiling gate. This is not yet
full generated evidence, but it is the first translation survivor path since
GoodDirection that is both proof-oriented and below the 2,000-leaf gate.

Implementation:

- Added `Cuboctahedron/Search/TwoSourceFarkas.lean`.
- Defined `TwoSourceFarkasSupport`, deterministic multiplier construction,
  `TwoSourceFarkasSupport.check`, and
  `TwoSourceFarkasSupport.check_sound`.
- Added `--translation-two-source-farkas` to
  `scripts/profile_symmetry_compression.py`.
- Added a memory-safe parallel runner for Phase 6X using the same shard model
  as Phase 6W. Workers return compact counters; the parent verifies shard
  contiguity before merging.

Bounded results:

```text
Smoke window `[0,1000)`:
pair words scanned:                  1,000
identity-linear words:                 138
translation sign assignments:        8,832
GoodDirection survivor masks:        1,465
two-source cases:                    1,465
checker pass cases:                  1,465
checker fail cases:                      0
source-support classes:                 72
decision: accepted

First-window gate `[0,100000)`:
wall time:                         168.62s
parallel jobs:                          12
rank shards:                            20
shard width:                         5,000
max worker shard time:              154.88s

pair words scanned:                100,000
identity-linear words:               5,565
nonidentity words skipped:          94,435
translation sign assignments:      356,160
GoodDirection survivor masks:       39,710
denominator-nonpositive masks:     316,450
source Farkas reconstruction failures:  0
non-two-source cases:                    0
two-source cases:                   39,710
checker pass cases:                 39,710
checker fail cases:                      0
source-support classes:                235
decision: accepted
```

Validation commands:

```bash
python3 -m py_compile scripts/profile_symmetry_compression.py
lake build Cuboctahedron.Search.TwoSourceFarkas
python3 scripts/profile_symmetry_compression.py \
  --dry-run --translation-two-source-farkas \
  --limit 1000 --allow-reject --progress-interval 0 \
  --output scripts/generated/translation_two_source_farkas_000000000_000001000.json
python3 scripts/profile_symmetry_compression.py \
  --dry-run --translation-two-source-farkas \
  --limit 100000 --parallel-jobs 12 --parallel-window-size 5000 \
  --allow-reject --progress-interval 0 \
  --output scripts/generated/translation_two_source_farkas_000000000_000100000.json
```

Phase 6Y follow-up:

1. Scale the accepted `[0,1000)` emitter architecture to larger bounded
   windows, measuring source size, build time, and peak memory.
2. Keep GoodDirection as the generic necessary-condition theorem; do not emit
   bad-direction evidence.
3. Add a real semantic coverage root only after the translation window is large
   enough and the nonidentity branch has a matching compressed backend.
4. Profile the remaining nonidentity branch separately. Phase 6X solves the
   dominant translation survivor bottleneck; it does not by itself cover
   nonidentity terminal residuals.

#### Phase 6Y: Proof-Carrying Two-Source Translation Emitter

Purpose: turn the accepted Phase 6X two-source profile into actual
Lean-checkable generated evidence without returning to large Boolean reduction.

Current status: accepted on the bounded `[0,1000)` pilot and shard-scaled on
the isolated `[0,10000)` pilot. The core theorem layer, explicit sample,
generated shards, and generated rank/mask bridge facts build. The `[0,10000)`
individual shard sweep is memory-safe under the external validator, but a root
file that imports every heavy shard directly is not memory-safe and should not
be used as the final public coverage architecture.

Implemented Lean support:

- `FarkasCert.Valid.sound` proves infeasibility from Prop-level Farkas validity,
  avoiding the need to reduce `checkFarkas`.
- `TwoSourceFarkasSupport.Checked` stores small exact facts for a two-row
  source Farkas contradiction:
  - both source rows are legal translation constraint sources;
  - both deterministic multipliers are nonnegative;
  - at least one multiplier is positive;
  - weighted `a` and `b` coefficients cancel;
  - the weighted RHS is nonpositive.
- `TwoSourceFarkasSupport.Checked.sound` turns that record into
  infeasibility of the translation constraint system.
- `Cuboctahedron.Generated.Translation.TwoSource.goodCaseKilled_of_checked`
  connects a checked rank/mask two-source witness to
  `TranslationGoodCaseKilled`.
- `Cuboctahedron.Generated.Translation.TwoSource.Sample.sampleNoTranslationConstraints`
  is a hand-authored smoke test for one concrete Phase 6X survivor.

Important implementation lesson:

- A naive rank-level generated proof using `decide` on
  `translationSeqAtRankMask`, `translationBAtRankMask`, or
  `goodDirectionAtRankBool` times out even for a tiny sample.
- The accepted generated leaf shape is explicit:
  - private concrete `seq : Step14 -> Face`;
  - private concrete `b : Vec3 Rat`;
  - private `TwoSourceFarkasSupport`;
  - private concrete source rows and deterministic multipliers;
  - a small `support.Checked seq b` proof that rewrites to those concrete
    source rows instead of repeatedly simplifying the full geometry;
  - local rank, unrank, sequence-choice, and translation-vector bridge facts;
  - a public per-case `TranslationGoodCaseKilled rank mask` theorem.
- The first naive generated proof shape repeated full source-row simplification
  in every field of `support.Checked`; it timed out on an early late-impact
  interior source. The accepted proof shape caches the two source rows and
  multipliers as private definitions and rewrites to them.

Implemented generated evidence:

- Added `scripts/generate_translation_two_source_evidence.py`.
- Added `scripts/check_translation_two_source_shards.py`.
- Generated
  `Cuboctahedron/Generated/Translation/TwoSource/Coverage/Shard000.lean`
  through
  `Cuboctahedron/Generated/Translation/TwoSource/Coverage/Shard058.lean`.
- Generated
  `Cuboctahedron/Generated/Translation/TwoSource/Coverage/All.lean`.
- Generated summary:
  `scripts/generated/translation_two_source_evidence_000000000_000001000.json`.
- Generated isolated scale-pilot evidence:
  `Cuboctahedron/Generated/Translation/TwoSource/Coverage10k/Shard000.lean`
  through
  `Cuboctahedron/Generated/Translation/TwoSource/Coverage10k/Shard255.lean`.
- Generated scale summaries:
  `scripts/generated/translation_two_source_evidence_000000000_000010000.dry_run.json`,
  `scripts/generated/translation_two_source_evidence_000000000_000010000.json`,
  `scripts/generated/translation_two_source_10k_focused_check.json`, and
  `scripts/generated/translation_two_source_10k_all_shards_check.json`.

Bounded `[0,1000)` result:

```text
pair words scanned:                  1,000
identity-linear words:                 138
nonidentity words skipped:             862
translation sign assignments:        8,832
bad-direction or zero-vector masks:   7,367
GoodDirection survivor masks:        1,465
two-source cases emitted:            1,465
non-two-source cases:                    0
generated shards:                       59
cases per shard:                        25
```

Validation commands:

```bash
python3 -m py_compile scripts/generate_translation_two_source_evidence.py
python3 scripts/generate_translation_two_source_evidence.py \
  --rank-start 0 --limit 1000 --cases-per-shard 25 \
  --summary scripts/generated/translation_two_source_evidence_000000000_000001000.json
lake build Cuboctahedron.Generated.Translation.TwoSource.Coverage.Shard000
lake build Cuboctahedron.Generated.Translation.TwoSource.Coverage.Shard058
lake build Cuboctahedron.Generated.Translation.TwoSource.Coverage.All
grep -R "sorry\|admit\|axiom\|native_decide\|unsafe" \
  Cuboctahedron/Generated/Translation/TwoSource \
  scripts/generate_translation_two_source_evidence.py || true
```

Observed build behavior:

- One-case smoke shard built.
- The original 25-case Shard000 proof shape timed out at 1,200,000
  heartbeats on a late-impact interior source.
- After source-row caching, Shard000 built in about 21 seconds and Shard058
  built in about 15 seconds.
- The aggregate bounded root `Coverage.All` built successfully. Lake compiled
  many shards concurrently by default; representative shard waves took roughly
  263-293 seconds elapsed, and the final tail wave took roughly 115-119
  seconds.
- This Lake version does not accept `lake build -J 4 ...`; `-J` is reserved
  for JSON output in `lake query`, and `lake build -J 4 ...` parses `4` as a
  target. Future larger generated builds therefore need external memory
  monitoring and shard-cost control rather than relying on a Lake jobs flag.
- The `[0,10000)` dry run passed the scale gate:

```text
pair words scanned:                 10,000
identity-linear words:                 712
nonidentity words skipped:           9,288
translation sign assignments:       45,568
bad-direction or zero-vector masks:  39,179
GoodDirection survivor masks:        6,389
two-source cases emitted:            6,389
non-two-source cases:                    0
generated shards:                      256
cases per shard:                        25
generated source bytes:         40,635,686
```

- The `[0,10000)` focused check built first, middle, largest, and last shards
  with max RSS about 4.58 GiB.
- The `[0,10000)` all-shard external-cache sweep built all 256 shards with
  zero failures, eight validator jobs, 16 cache hits, max per-shard RSS
  4,944,740 KiB (about 4.72 GiB), max per-shard elapsed time about 188.4
  seconds, and total per-task elapsed time about 40,290 seconds.
- `Coverage10k.All` is not an acceptable root pattern. Even after all shards
  were compiled into an external cache, directly importing the 256 heavy shard
  `.olean`s failed during root import/load behavior. The final public generated
  coverage layer must therefore expose small semantic summaries or a manifest
  checked outside normal imports; it must not rely on a root module importing
  every heavy generated shard.

Phase 6Z status:

- Added `Cuboctahedron/Generated/Translation/TwoSource/FamilyCoverage.lean`.
  This is the small semantic interface for the next backend:
  `TranslationGoodCoverageOnRange`, `SupportFamilyCoverageOnRange`, and
  `TranslationGoodCoverageOnRange.of_supportFamily`.
- Added `largestObservedSupport` and
  `largestObservedSupport_kills_checked` as a theorem-backed prototype target
  for the largest Phase 6X source-support family.
- Added `scripts/profile_translation_two_source_families.py`.
- Added `scripts/generate_translation_support_family_pilot.py`.
- Generated reports:
  `scripts/generated/translation_two_source_family_phase6z_000000000_000100000.json`
  and
  `scripts/generated/translation_two_source_family_phase6z_000000000_000100000.md`.
- The Phase 6Z report accepts the `[0,100000)` support-family gate:

```text
GoodDirection survivor masks:          39,710
two-source cases:                      39,710
non-two-source cases:                       0
checker failures:                           0
source-support classes:                   235
max cases per support:                 10,435
singleton support classes:                  8
classes with one computed pattern:         40
```

- The per-case two-source emitter now refuses non-dry-run rank windows above
  10,000 unless `--allow-large-per-case-pilot` is passed explicitly. This keeps
  the validated `[0,10000)` per-case corpus available for diagnostics without
  accidentally scaling the wrong architecture.
- Focused validation passed:

```bash
python3 -m py_compile \
  scripts/generate_translation_two_source_evidence.py \
  scripts/profile_translation_two_source_families.py
lake build Cuboctahedron.Generated.Translation.TwoSource.FamilyCoverage
python3 scripts/generate_translation_two_source_evidence.py \
  --rank-start 0 --limit 10001 \
  --out-dir /tmp/should_not_write \
  --summary /tmp/should_not_write.json
```

The last command intentionally fails unless the output contains
`refusing large per-case Lean emission`; the guard test returned `guard-ok`.
- Added the first theorem-backed support-family pilot module:
  `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/Largest.lean`.
  The module proves:

```lean
Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Largest.largestSupportPilot_checkedOn
Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Largest.largestSupportPilot_killsOn
```

  It targets `SupportFamilyCheckedOn largestObservedSupport` for a finite
  pilot predicate containing 16 sampled cases from the largest support family.
  This is not full coverage for the 10,435-case support family.
- Generated pilot reports:
  `scripts/generated/translation_support_family_pilot_largest.json` and
  `scripts/generated/translation_support_family_pilot_largest.md`.
- Focused build result for the generated pilot:

```bash
/usr/bin/time -v lake build \
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Largest
```

  The first observed focused build after generation completed in about 18.9s
  wall time with max RSS about 4,544,356 KiB. A cached replay completed in
  about 0.9s with max RSS about 853,100 KiB.
- Added the first generic theorem-backed support-family shape module:
  `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/LargestShape.lean`.
  This replaces the finite 16-case pilot predicate with the semantic predicate
  `LargestObservedSupportShape`.

  The module proves:

```lean
Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.LargestShape.largestObservedSupport_checked_of_shape
Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.LargestShape.largestObservedSupport_shape_checkedOn
Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.LargestShape.largestObservedSupport_shape_killsOn
```

  The theorem is deliberately stated over the row shape, not over an external
  sparse-solver digest. If the first row is the `impact 1 / tmmm` interior
  source with coefficients `(-1, -1, c)` and `c + 1 <= 0`, then the fixed
  `xpStart 0` row and multipliers `(1, 1)` give a checked two-source Farkas
  contradiction.
- Added `scripts/profile_translation_largest_support_shape.py`, including a
  process-parallel sharded mode. The profiler is diagnostic only; it confirms
  how many GoodDirection survivors the semantic row-shape theorem can cover.
  The default mode avoids one sparse Farkas solve per survivor and checks the
  proof-relevant row predicate directly; the optional
  `--check-support-digest` mode retains the slower digest audit.
- The `[0,100000)` shape profile accepted:

```text
workers:                                  8
rank shards:                             20
pair words scanned:                 100,000
identity-linear words:                5,565
GoodDirection survivor masks:        39,710
semantic shape matches:              11,589
known largest source-support count:  10,435
decision: accepted
```

  The semantic shape covers more cases than the originally discovered largest
  source-support digest. This is proof-safe: Lean proves the row contradiction
  for every case satisfying the shape predicate, regardless of which sparse
  support the Python search would have selected.
- Added the Phase 6Z.1 generic row-shape template module:
  `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ShapeTemplate.lean`.
  It defines `RowShape`, `RowShape.Valid`, and `RowShape.Applies`, and proves:

```lean
Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowShape.checked_of_valid_applies
Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowShape.checkedOn_of_valid
Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowShape.killsOn_of_valid
```

  This is the reusable theorem shape that a generated row-shape portfolio would
  have used.
- Added `scripts/profile_translation_support_shapes.py`, with process-parallel
  bounded-window profiling for the exact facts consumed by `RowShape`.
- The full `[0,100000)` row-shape portfolio gate rejected:

```text
workers:                              8
rank shards:                         20
elapsed seconds:                 295.07
pair words scanned:             100,000
identity-linear words:            5,565
GoodDirection survivor masks:    39,710
row-shape cases:                 39,710
unique row shapes:                8,970
max cases per shape:             10,435
singleton row shapes:             4,843
source pairs:                       235
decision: rejected
```

  No row-shape portfolio shards were emitted. Exact fixed row coefficients and
  deterministic multipliers fragment almost as badly as earlier proof-ready
  Farkas shapes. The useful compression signal is one level higher: source
  pairs remain at 235 classes, but exact row-shape predicates split those
  source pairs into 8,970 proof leaves.

- Added the Phase 6Z.2 source-pair parametric theorem adapter:
  `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PairTemplate.lean`.
  It defines the looser predicate
  `SupportPair.Applies support r mask` and proves:

```lean
Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.checked_of_applies
Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.checkedOn
Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SupportPair.killsOn
```

  This does not fix row coefficients or multipliers in the predicate. It is the
  intended target for generated parametric source-pair proofs.
- Added `scripts/profile_translation_source_pair_params.py`, with the same
  process-parallel bounded-window scan shape as the rejected row-shape
  profiler, but grouping GoodDirection survivors by source pair only.
- The full `[0,100000)` source-pair parametric gate accepted:

```text
workers:                                  8
rank shards:                             20
elapsed seconds:                     296.68
pair words scanned:                 100,000
identity-linear words:                5,565
GoodDirection survivor masks:        39,710
source-pair cases:                   39,710
unique source pairs:                    235
exact row shapes behind those pairs:  8,970
max row shapes per source pair:         273
source pairs with >100 row shapes:       32
max multiplier variants per pair:       273
max weighted-c values per pair:         868
decision: accepted
```

  The acceptance is diagnostic, not a finished Lean coverage proof. It confirms
  that the right scaling unit is still the 235 source pairs, while also showing
  that any generated Lean proof must establish coefficient/multiplier facts
  parametrically; exact row or exact multiplier enumeration would immediately
  return to thousands of leaves.

- Added the Phase 6Z.3 high-variation source-pair pilot:
  `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/HighVariation.lean`.
  It proves the source pair
  `278db1f49b17f0333e2d33788b892e0b8624c42f213541e9a7d9f02f7c961482`
  (`interior impact 4 face xp` with `xpStart index 0`) parametrically. The
  semantic predicate requires the first row to be `(a, a, c)` with `a < 0` and
  `c <= a`; the theorem derives deterministic multipliers `(1, -a)` and a
  nonpositive weighted RHS.
- The module proves:

```lean
Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.HighVariation.highVariationSupport_applies_of_shape
Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.HighVariation.highVariationSupport_checked_of_shape
Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.HighVariation.highVariationSupport_shape_checkedOn
Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.HighVariation.highVariationSupport_shape_killsOn
```

- Added `scripts/profile_translation_high_variation_support.py`, with the same
  8-worker bounded-window scan style. The `[0,100000)` gate accepted:

```text
workers:                                      8
rank shards:                                 20
elapsed seconds:                         283.96
pair words scanned:                     100,000
identity-linear words:                    5,565
GoodDirection survivor masks:            39,710
target source-pair cases:                 1,016
target shape matches:                     1,016
target shape misses:                          0
shape matches among all GoodDirection:    1,770
shape extra cases:                          754
decision: accepted
```

  The extra 754 semantic matches are proof-safe, but future generated
  classifiers must assign cases deliberately to avoid overlapping-family
  bookkeeping problems.

- Added `scripts/profile_translation_row_relation_templates.py`, a diagnostic
  profiler for reusable source-pair row-relation templates. It assigns each
  GoodDirection survivor to the first matching semantic template and also
  tracks overlap.
- The `[0,100000)` row-relation template gate accepted:

```text
workers:                                  8
rank shards:                             20
elapsed seconds:                     296.84
pair words scanned:                 100,000
identity-linear words:                5,565
GoodDirection survivor masks:        39,710
template candidate cases:            39,710
covered cases:                       39,710
uncovered cases:                          0
overlap cases:                            0
total source pairs:                     235
fully covered source pairs:             235
partial source pairs:                     0
source pairs with uncovered cases:        0
decision: accepted
```

  Assigned template counts:

```text
eq_eq_pos_var_first:   18,238
opp_1m_var_first:       8,677
eq_eq_pos_var_second:   4,210
opp_m1_var_first:       4,017
opp_1m_var_second:      2,086
opp_m1_var_second:      1,103
eq_eq_neg_var_first:    1,003
eq_eq_neg_var_second:     240
axis_a_only:              136
```

Next Phase 6Z tasks:

1. Semantic killed bridges for translation and nonidentity completion modules
   are implemented. Keep certificate-producing bridges as smoke tests only.
2. The Phase 6Z.6D.1 row-template extension is implemented. The expanded
   catalog covers 63,725/63,725 GoodDirection survivors in representative
   calibration with zero overlaps.
3. Implement a universal diamond obstruction profiler before the full global
   census. It should test Gemini's proposed two-row/time-order inequality
   against every GoodDirection survivor in the same bounded and calibration
   windows already used by the row-template census.
4. Run the full global row-template/diamond census with the selected expanded
   catalog. Do not emit production row-template or diamond family Lean before
   this accepts.
5. Build a row-template or diamond family profiler that groups GoodDirection survivors by
   semantic row-template family keys, not by raw rank leaves.
6. Emit a small row-template/diamond family Lean smoke proving whole family predicates
   imply `Coverage.TranslationCaseKilled` without replaying ordinary
   `TranslationCert`/`SourceFarkasCert` checkers.
7. Promote signed prefix/state cone pruning to the main nonidentity/leftover
   compression track if row-template family profiling leaves nontranslation
   residuals above the 24 CPU-hour budget.
8. Add a nonidentity linear-part/axis census, but use it only as a profiler and
   for pure no-fixed-axis class kills unless stronger affine/order invariants
   are included.
9. Add integer/scaled/projective arithmetic microbenchmarks for generated
   semantic checkers before any broad arithmetic rewrite.
10. Use D4 transport to canonicalize semantic families after the family keys are
   established and the transport proof cost is profiled.
11. Use the Phase 6Z.6B external-cache hierarchy only as a validation transport
   for generated semantic leaves. Do not resume one-rank leaf scaling except
   as a regression benchmark.

Phase 6Z.6A current result:

- Added `scripts/generate_translation_row_relation_classifier.py`.
- Added the identity-premised semantic adapter
  `SupportFamilyCoverageOnIdentityRange` in
  `Cuboctahedron/Generated/Translation/TwoSource/FamilyCoverage.lean`.
- Added `not_goodDirectionAtRank_of_nonpositive_denom` and `Mat3` field
  inequality helpers so generated branches can use small exact witnesses
  instead of reducing whole classifiers.
- The row-relation classifier now emits direct
  `TranslationGoodCoverageOnRange` interval theorems:
  - GoodDirection survivor masks use the existing two-source support-family
    row-relation theorem schemas.
  - bad-direction masks use one generated internal-impact denominator witness
    and `not_goodDirectionAtRank_of_nonpositive_denom`.
  - nonidentity ranks use generated pair-word `get` simp lemmas, a checked
    exact total-linear matrix equality, and a field disequality against
    `matId`.
- The `[0,1000)` dry-run accepts:

```text
pair words scanned:             1,000
identity words:                   138
translation sign assignments:   8,832
GoodDirection survivors:        1,465
two-source survivor cases:      1,465
row-template covered cases:     1,465
uncovered row-template cases:       0
overlap cases:                      0
```

- Template split on `[0,1000)`:

```text
eq_eq_pos_var_first:   711
eq_eq_pos_var_second:  240
opp_1m_var_first:      227
opp_m1_var_first:      126
opp_1m_var_second:      73
opp_m1_var_second:      44
eq_eq_neg_var_first:    32
axis_a_only:             9
eq_eq_neg_var_second:    3
```

- The first monolithic generated `[0,10)` interval module is rejected as an
  architecture, not as a theorem shape. It ran for about 310 seconds and then
  exposed a huge unreduced nonidentity linear expression. The fix was to emit
  nonidentity pair-word `get` simp lemmas and a full matrix equality, following
  the older nonidentity sample pattern.
- Focused build results for the witness-based emitter:

```text
lake build Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000000_000000001
  passed, about 49s

lake build Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.Window000000001_000000002
  passed, about 20s

lake build Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.AllWindow000000000_000000002
  passed, root about 1.2s after cached leaves

lake build Cuboctahedron.Generated.Translation.TwoSource.RowRelationClassifier.AllWindow000000000_000000010
  passed; new one-rank leaves took about 83-131s each, root about 1.2s
```

- Generated sharded files for the accepted smoke live under
  `Cuboctahedron/Generated/Translation/TwoSource/RowRelationClassifier/`.
  The accepted `[0,10)` summary is
  `scripts/generated/translation_row_relation_classifier_sharded_000000000_000000010.json`.
- Phase 6Z.6A is accepted as a bounded Lean smoke for the witness-based
  classifier and root-composition architecture. It is not full coverage and is
  not a final architecture. Phase 6Z.6B validated the external-cache hierarchy;
  the production path now needs semantic killed-family compression.

Phase 6Z.6B current result:

- Extended `scripts/generate_translation_row_relation_classifier.py` with
  hierarchical root emission:
  - `Window...` leaves keep one-rank proof work local.
  - `Group...` roots import bounded batches of leaves.
  - `AllWindow...` roots import groups only.
  - every root composes semantic `TranslationGoodCoverageOnRange` theorems by
    balanced `CoversInterval.concat`.
- Added `scripts/check_row_relation_classifier_shards.py`, a row-relation
  validator that:
  - compiles selected leaves/groups/roots with `lean -j1`;
  - records `/usr/bin/time -v` peak RSS;
  - stores checked `.olean`s in
    `evidence/.row_relation_classifier_olean_cache`;
  - can mirror successful cache objects into `.lake/build/lib/lean` so
    later group/root imports do not recheck expensive leaves.
- Generated and checked the bounded `[0,64)` hierarchy:

```text
python3 scripts/generate_translation_row_relation_classifier.py \
  --rank-start 0 --limit 64 --emit-shards --shard-size 1 --group-size 16 \
  --summary scripts/generated/translation_row_relation_classifier_sharded_000000000_000000064.json

python3 scripts/check_row_relation_classifier_shards.py \
  --summary scripts/generated/translation_row_relation_classifier_sharded_000000000_000000064.json \
  --kind leaves --select all --jobs 4 --memory-budget-gib 40 --job-gib 8 \
  --lean-memory-limit-gib 12 --timeout-seconds 1800 --time \
  --compile-external --reuse-cache \
  --output scripts/generated/translation_row_relation_classifier_sharded_000000000_000000064_all_leaves_check.json

python3 scripts/check_row_relation_classifier_shards.py \
  --summary scripts/generated/translation_row_relation_classifier_sharded_000000000_000000064.json \
  --kind groups --select all --jobs 4 --memory-budget-gib 40 --job-gib 8 \
  --lean-memory-limit-gib 12 --timeout-seconds 600 --time \
  --compile-external --reuse-cache --mirror-to-lake \
  --output scripts/generated/translation_row_relation_classifier_sharded_000000000_000000064_groups_check.json

python3 scripts/check_row_relation_classifier_shards.py \
  --summary scripts/generated/translation_row_relation_classifier_sharded_000000000_000000064.json \
  --kind root --select all --jobs 1 --memory-budget-gib 40 --job-gib 8 \
  --lean-memory-limit-gib 12 --timeout-seconds 600 --time \
  --compile-external --reuse-cache --mirror-to-lake \
  --output scripts/generated/translation_row_relation_classifier_sharded_000000000_000000064_root_check.json
```

- `[0,64)` inventory:

```text
pair words scanned:                 64
identity words:                     22
translation sign assignments:    1,408
GoodDirection survivors:           264
bad/zero direction witnesses:    1,144
nonidentity words skipped:          42
row-template uncovered cases:        0
overlap cases:                       0
```

- `[0,64)` Lean validation:

```text
leaves checked:        64
leaf failures:          0
leaf cached hits:       4
leaf max RSS:     6,940,684 KiB  (~6.62 GiB)
slowest leaf:       423.9s
leaf elapsed sum: 8,298.4s
effective jobs:         4

groups checked:         4
group failures:         0
group max RSS:   3,273,380 KiB  (~3.12 GiB)
slowest group:       1.55s

root checked:           1
root failures:          0
root max RSS:    3,577,820 KiB  (~3.41 GiB)
root elapsed:        1.29s
```

- The external row-relation cache for `[0,64)` uses about `1.9G`.
- The generated `[0,64)` source uses about `7.3M`.
- Forbidden-token scan passed on the touched row-relation generated path and
  scripts:

```text
rg -n "sorry|admit|axiom|native_decide|unsafe" \
  Cuboctahedron/Generated/Translation/TwoSource/RowRelationClassifier \
  scripts/generate_translation_row_relation_classifier.py \
  scripts/check_row_relation_classifier_shards.py || true
```

- Phase 6Z.6B is accepted as the memory-safe bounded hierarchy check for the
  witness-based row-relation classifier. It is not full coverage and is not a
  final architecture: the one-rank leaf timing projects far beyond the
  5-6-hour build target. The next scaling step is semantic-family compression,
  not more one-rank leaf tuning.

Phase 6Z.6C implementation result: semantic killed bridges.

- Added final-surface bridge theorems parallel to the existing certificate
  bridges. The certificate-producing bridges remain available for
  smoke/regression checks, but the new bridge surface consumes semantic killed
  predicates directly.

Implemented names:

- `Coverage.NonIdComputableClassifier.KilledResidualBridge`
- `Coverage.NonIdComputableClassifier.complete_killed_of_residual_bridge`
- `Coverage.TranslationComputableClassifier.KilledFarkasBridge`
- `Coverage.TranslationComputableClassifier.complete_killed_of_farkas_bridge`
- `Generated.NonIdentity.KilledResidualBridge`
- `Generated.NonIdentity.complete_killed_of_residual_bridge`
- `Generated.NonIdentity.complete_killed_of_computable_residual_bridge`
- `Generated.Translation.KilledBridge`
- `Generated.Translation.complete_killed_of_bridge`
- `Generated.Translation.complete_killed_of_computable_farkas_bridge`
- `Generated.NonIdentity.Coverage.ResidualRankKilled`
- `Generated.NonIdentity.Coverage.ResidualRankKilledBy`
- `Generated.Translation.Coverage.FarkasRankKilled`
- `Generated.Translation.Coverage.FarkasRankKilledBy`
- `Generated.Translation.Coverage.FarkasGoodRankKilled`
- `Generated.Translation.Coverage.FarkasGoodRankKilledBy`

The intended theorem shapes are now available in Lean:

```lean
namespace Cuboctahedron.Generated.Translation

abbrev KilledBridge : Prop :=
  ∀ {r : Fin numPairWords} {mask : SignMask},
    translationEarlyFamilyClassOfChoice r mask =
        TranslationFamilyClass.needsFarkas →
    totalLinearOfPairWord (unrankPairWord r) = (matId : Mat3 ℚ) →
      Coverage.TranslationCaseKilled r mask

theorem complete_killed_of_bridge
    (bridge : KilledBridge)
    (r : Fin numPairWords) (mask : SignMask) :
    Coverage.TranslationCaseKilled r mask := ...
```

```lean
namespace Cuboctahedron.Generated.NonIdentity

abbrev KilledResidualBridge : Prop :=
  ∀ {r : Fin numPairWords},
    nonIdEarlyFamilyClassOfRank r = NonIdFamilyClass.residual →
    totalLinearOfPairWord (unrankPairWord r) ≠ (matId : Mat3 ℚ) →
      Coverage.NonIdentityRankKilled r

theorem complete_killed_of_bridge
    (bridge : KilledResidualBridge)
    (r : Fin numPairWords) :
    Coverage.NonIdentityRankKilled r := ...
```

- Added a parallel semantic public coverage structure and Step-15-facing
  adapters:
  - `Generated.SemanticExhaustiveGeneratedCoverage`
  - `Generated.semanticGeneratedCoverageOfBridges`
  - `Generated.semanticGeneratedCoverageOfIntervals`
  - `Generated.semanticGeneratedCoverageOfGoodIntervals`
  - `Generated.semanticGeneratedCoverageOfComputableBridges`
  - `Generated.semanticGeneratedCoverageOfComputableIntervals`
  - `Generated.semanticGeneratedCoverageOfComputableGoodIntervals`
  - `Generated.generated_nonidentity_complete_of_semantic_coverage`
  - `Generated.generated_translation_complete_of_semantic_coverage`
  - `Generated.no_unfolded_omni_starting_xp_of_semantic_coverage`

Validation commands passed:

```text
lake build Cuboctahedron.Generated.Coverage.ComputableClassifiers
lake build Cuboctahedron.Generated.NonIdentity.Complete
lake build Cuboctahedron.Generated.Translation.Complete
lake build Cuboctahedron.Generated.NonIdentity.Coverage.All
lake build Cuboctahedron.Generated.Translation.Coverage.All
lake build Cuboctahedron.Generated.ExhaustiveCoverage
lake build Cuboctahedron.Generated.Translation.TwoSource.FamilyCoverage
grep -R "sorry\|admit\|axiom\|native_decide\|unsafe" Cuboctahedron || true
```

The grep scan only hit existing `#print axioms` validation lines in
`PrintConditionalAxioms.lean`, not proof-bypass tokens introduced by this
phase.

Phase 6Z.6D implementation result: row-template census runner and calibration.

- Added `scripts/run_translation_row_relation_census.py`, a resumable,
  memory-safe, parallel diagnostic runner around the row-relation template
  classifier. It writes atomic per-window checkpoints outside the generated
  source tree, aggregates JSON/Markdown reports, supports aggregate-only reuse,
  and records per-window runtime and max RSS.
- Validation passed:

```text
python3 -m py_compile \
  scripts/run_translation_row_relation_census.py \
  scripts/profile_translation_row_relation_templates.py

python3 scripts/run_translation_row_relation_census.py \
  --rank-start 0 --limit 1000 --chunk-size 250 --workers 4 \
  --checkpoint-dir /tmp/cuboctahedron_rowrel_census_1k \
  --output /tmp/cuboctahedron_rowrel_census_1k.json \
  --markdown-output /tmp/cuboctahedron_rowrel_census_1k.md \
  --resume

python3 scripts/run_translation_row_relation_census.py \
  --rank-start 0 --limit 1000 --chunk-size 250 --workers 4 \
  --checkpoint-dir /tmp/cuboctahedron_rowrel_census_1k \
  --output /tmp/cuboctahedron_rowrel_census_1k_aggregate.json \
  --markdown-output /tmp/cuboctahedron_rowrel_census_1k_aggregate.md \
  --aggregate-only
```

- The first `[0,100000)` regression report was regenerated with 20 workers and
  5k-rank chunks:

```text
report:
  scripts/generated/translation_row_relation_templates_census_000000000_000100000.json
  scripts/generated/translation_row_relation_templates_census_000000000_000100000.md

GoodDirection survivors: 39,710
covered cases:           39,710
uncovered cases:              0
overlap cases:                0
source pairs:               235
elapsed:                 213.63s
max window RSS:          20,328 KiB
decision: accepted
```

- Representative calibration over five 100k-rank windows was first run with
  the old catalog and rejected with 749 uncovered GoodDirection survivors.
  Phase 6Z.6D.1 then added proof-usable `axis_b_only` and
  `exact_two_source_valid` templates and reran the same calibration:

```text
report:
  scripts/generated/translation_row_relation_templates_census_calibration.json
  scripts/generated/translation_row_relation_templates_census_calibration.md

windows completed:       100/100
pair words scanned:      500,000
identity-linear words:    13,220
sign assignments:        846,080
GoodDirection survivors:  63,725
covered cases:            63,725
uncovered cases:               0
overlap cases:                 0
source pairs:                555
source pairs uncovered:        0
elapsed:                  277.23s
max window RSS:           20,560 KiB
decision: accepted
```

- Assigned template counts in the accepted calibration:

```text
eq_eq_pos_var_first:  27,681
opp_1m_var_first:    13,330
eq_eq_pos_var_second: 7,292
opp_m1_var_first:     6,324
opp_1m_var_second:    3,445
opp_m1_var_second:    2,162
eq_eq_neg_var_first:  1,652
exact_two_source_valid: 749
eq_eq_neg_var_second:   697
axis_a_only:            272
axis_b_only:            121
```

- Interpretation:
  - The census infrastructure is accepted.
  - The expanded row-template catalog passes representative calibration.
  - The broad `exact_two_source_valid` fallback closes the 749 calibration
    cases that were outside the sharper row-shape templates.
  - Do not emit Phase 6Z.6E family leaves yet; first run the diamond profiler,
    then the full global row-template/diamond census with the selected catalog.

Phase 6Z.6D.1 implementation result: row-template extension from uncovered calibration.

- Added classifier support for `exact_two_source_valid` as a deterministic
  fallback template. It is only assigned when no sharper primary template
  matches, so existing primary-template counts remain meaningful and overlap
  remains zero.
- Added Lean support for:
  - `AxisBOnly`
  - `axisBOnly_applies_of_shape`
  - `axisBOnly_checkedOn`
  - `axisBOnly_killsOn`
  - `ExactTwoSourceValid`
  - `exactTwoSourceValid_applies_of_shape`
  - `exactTwoSourceValid_checkedOn`
  - `exactTwoSourceValid_killsOn`
- Validation passed:

```text
python3 -m py_compile \
  scripts/profile_translation_row_relation_templates.py \
  scripts/run_translation_row_relation_census.py

lake build \
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates

python3 scripts/run_translation_row_relation_census.py \
  --rank-start 0 --limit 1000 --chunk-size 250 --workers 4 \
  --checkpoint-dir /tmp/cuboctahedron_rowrel_census_1k_v2 \
  --output /tmp/cuboctahedron_rowrel_census_1k_v2.json \
  --markdown-output /tmp/cuboctahedron_rowrel_census_1k_v2.md \
  --resume

python3 scripts/run_translation_row_relation_census.py \
  --rank-start 0 --limit 100000 --chunk-size 5000 --workers 20 \
  --checkpoint-dir /tmp/cuboctahedron_rowrel_census_100k_v2 \
  --output scripts/generated/translation_row_relation_templates_census_000000000_000100000.json \
  --markdown-output scripts/generated/translation_row_relation_templates_census_000000000_000100000.md \
  --resume

python3 scripts/run_translation_row_relation_census.py \
  --rank-start 0 --limit 97297200 --calibration \
  --calibration-width 100000 --chunk-size 5000 --workers 20 \
  --checkpoint-dir /tmp/cuboctahedron_rowrel_census_calibration_v2 \
  --output scripts/generated/translation_row_relation_templates_census_calibration.json \
  --markdown-output scripts/generated/translation_row_relation_templates_census_calibration.md \
  --resume
```

Phase 6Z.6D.2 implementation result: universal diamond obstruction profiler.

- Added exact diagnostic diamond profiling to the row-template scanner and
  resumable census runner. The profiler is diagnostic only; it is not trusted
  proof evidence.
- The implemented check uses the repo's actual `StrictLin2` convention
  `a*y + b*z < c`. On the closed `X+` diamond `|y| + |z| <= 1`,
  `a*y + b*z >= -max(|a|, |b|)`, so a source row is diamond-impossible when
  `c <= -max(|a|, |b|)`.
- The runner now supports `--enable-diamond`, stores `diamond_enabled` in
  checkpoints, and refuses to aggregate checkpoints produced in the wrong
  diamond mode.
- Validation passed:

```text
python3 -m py_compile \
  scripts/profile_translation_row_relation_templates.py \
  scripts/run_translation_row_relation_census.py

python3 scripts/run_translation_row_relation_census.py \
  --rank-start 0 --limit 1000 --chunk-size 250 --workers 4 \
  --checkpoint-dir /tmp/cuboctahedron_rowrel_diamond_1k \
  --output /tmp/cuboctahedron_rowrel_diamond_1k.json \
  --markdown-output /tmp/cuboctahedron_rowrel_diamond_1k.md \
  --enable-diamond --resume

python3 scripts/run_translation_row_relation_census.py \
  --rank-start 0 --limit 100000 --chunk-size 5000 --workers 20 \
  --checkpoint-dir /tmp/cuboctahedron_rowrel_diamond_100k \
  --output scripts/generated/translation_row_relation_templates_census_000000000_000100000.json \
  --markdown-output scripts/generated/translation_row_relation_templates_census_000000000_000100000.md \
  --enable-diamond --resume

python3 scripts/run_translation_row_relation_census.py \
  --rank-start 0 --limit 97297200 --calibration \
  --calibration-width 100000 --chunk-size 5000 --workers 20 \
  --checkpoint-dir /tmp/cuboctahedron_rowrel_diamond_calibration \
  --output scripts/generated/translation_row_relation_templates_census_calibration.json \
  --markdown-output scripts/generated/translation_row_relation_templates_census_calibration.md \
  --enable-diamond --resume
```

- `[0,1000)` smoke:

```text
GoodDirection survivors:           1,465
row-template covered:              1,465
diamond covered:                   1,462
left after diamond + sharp rows:       0
decision: accepted
```

- `[0,100000)` regression:

```text
GoodDirection survivors:          39,710
row-template covered:             39,710
diamond covered:                  39,654
left after diamond + sharp rows:       0
left after diamond + expanded:         0
elapsed:                          210.55s
max window RSS:                   20,472 KiB
decision: accepted
```

- Five-window representative calibration:

```text
GoodDirection survivors:          63,725
row-template covered:             63,725
sharp-template covered:           62,976
fallback-template cases:             749
diamond covered:                  63,276
fallback cases subsumed by diamond:  387
fallback cases not diamond-covered:  362
left after diamond + sharp rows:     362
left after diamond + expanded:         0
elapsed:                          276.66s
max window RSS:                   20,476 KiB
decision: accepted
```

- Interpretation:
  - The universal diamond obstruction is a strong supplemental semantic
    theorem candidate, but it is not a replacement for the row-template
    catalog.
  - In representative calibration, diamond plus sharp row templates still
    leaves 362 cases, all handled by `exact_two_source_valid`.
  - Keep diamond as an early family key if it simplifies generated family
    leaves, but retain the expanded row-template catalog and fallback
    `exact_two_source_valid` surface.
  - Proceed to Phase 6Z.6D.3: full global row-template/diamond census.

Reference formula from Gemini's notation:

```text
V       = N_i * (b · N_j) - N_j * (b · N_i)
C_bound = c_i * (b · N_j) - c_j * (b · N_i)
diamond_max(V) = V.x + max(|V.y|, |V.z|)
```

Phase 6Z.6D.3 planned result: full global row-template/diamond census.

- Run the selected expanded classifier over the full rank domain with
  resumable checkpoints outside the tracked source tree. The selected catalog
  may be row-template-only or diamond-plus-row-template depending on
  Phase 6Z.6D.2.
- Hard decision gate:

```text
full global uncovered = 0 -> continue to Phase 6Z.6E semantic family profiler
full global uncovered > 0 -> add/validate more semantic templates before family emission
```

Phase 6Z.6D.3 implementation note: retry-safe runner and fixed-window global
attempt.

- The global runner now has a bounded `--max-pool-restarts` option. If a Python
  worker dies abruptly, completed windows remain checkpointed atomically and the
  runner can restart the process pool instead of losing the whole run.
- A full fixed-window run was attempted with `--chunk-size 5000`,
  `--workers 20`, `--enable-diamond`, `--resume`, and `--stop-on-reject`.
  It reached roughly the first 2.9M ranks with zero uncovered windows and
  stable low memory before being stopped as too granular for a practical full
  global census. The checkpoint cache was kept under
  `/tmp/cuboctahedron_rowrel_diamond_global`.
- A coarse calibration with `--chunk-size 100000` showed the opposite problem:
  sparse 100k windows are fine, but dense early windows become long single
  tasks with poor progress visibility. Three sparse calibration windows
  completed cleanly:

```text
[30,000,000,30,100,000): good=0, uncovered=0
[60,000,000,60,100,000): good=797, uncovered=0
[90,000,000,90,100,000): good=814, uncovered=0
```

- Conclusion: do not continue with a blind fixed-size global sweep as the main
  plan. The runner is memory-safe and checkpoint-safe, but the full census
  should be replaced by an adaptive/family-level census that uses small windows
  only in dense regions and, preferably, groups by semantic row-template family
  keys before scanning every rank.

Phase 6Z.6D.4 planned result: adaptive row-template/diamond census planner.

- Add a planning mode that consumes existing checkpoints and/or samples to
  propose adaptive windows. It should split dense regions, merge sparse regions,
  and estimate runtime before launching the full census.
- The planner should report:

```text
checkpointed rank mass
contiguous checkpoint coverage
good-direction density by sampled region
recommended window sizes by region
estimated wall time and CPU time
regions requiring semantic family profiling before further brute-force census
```

- Hard gate:

```text
projected global diagnostic wall time <= a few hours -> run adaptive census
projected global diagnostic wall time too high -> skip full fixed-rank census and
  move directly to semantic family/state-space profiling
```

Phase 6Z.6D.4 implementation result: adaptive planner rejects further global
rank-sweep diagnostics.

- Added `scripts/plan_translation_row_relation_census.py`, a diagnostic-only
  planner that reads existing row-template/diamond checkpoint files and does
  not launch new scans or emit proof evidence.
- Ran the planner on both existing checkpoint caches:

```bash
python3 scripts/plan_translation_row_relation_census.py \
  --checkpoint-dir /tmp/cuboctahedron_rowrel_diamond_global \
  --checkpoint-dir /tmp/cuboctahedron_rowrel_diamond_calibration_100k \
  --workers 12 \
  --output scripts/generated/translation_row_relation_census_plan.json \
  --markdown-output scripts/generated/translation_row_relation_census_plan.md
```

- Result:

```text
checkpoint files:              593
checkpointed rank mass:        3,250,000
contiguous coverage end:       2,945,000
GoodDirection survivors:         429,636
covered cases:                   429,636
uncovered cases:                       0
median window seconds:             30.22
p95 window seconds:               158.11
max window seconds:               307.64
max window RSS KiB:               71,720
mean projected wall hours:         20.54
p95 projected wall hours:          64.57
decision: skip_to_semantic_family_profiling
```

- Interpretation:
  - The expanded row-template/diamond catalog remains mathematically promising
    on observed windows: all 429,636 observed GoodDirection survivors are
    covered.
  - Even an adaptive rank sweep is projected beyond the 5-6 hour target and is
    no longer the right next step.
  - Phase 6Z.6E should now group GoodDirection survivors by semantic family
    keys directly, so the proof surface is family/state based rather than
    rank-window based.

Phase 6Z.6E planned result: row-template/diamond semantic family profiler.

- Profile GoodDirection survivors by family keys such as:

```text
template id
diamond obstruction id if selected
canonical source-pair / row-source class
integer row normal form up to positive scale
D4 canonical representative
sign-bit/source renaming data
symbolic state needed to prove row extraction
```

- The profiler must report:

```text
GoodDirection survivors covered
families by template id
largest family size
singleton family count and mass
uncovered cases
projected semantic leaves
projected generated source size
projected generated checking CPU-hours
```

- Hard acceptance gate before Lean emission:

```text
uncovered = 0
projected translation semantic families <= 1200
projected generated checking <= 24 CPU-hours total after adding nonidentity
largest emitted family leaf <= 2 MiB
```

Phase 6Z.6E implementation result: first bounded family profiler and fast-window
profile.

- Added `scripts/profile_translation_row_relation_families.py`, a
  diagnostic-only profiler that selects bounded checkpoint windows, rescans
  their GoodDirection survivors, and groups them by semantic family variants:

```text
template_only
template_source
diamond_then_template_source
d4_diamond_then_template_source
exact_row_shape_reference
```

- A first dense-window attempt with 20k rank mass was intentionally stopped
  after it proved too slow for a smoke run. The profiler now supports explicit
  `--window START:END` overrides and `--dense-selection throughput` so future
  runs can avoid accidentally selecting only the slowest windows.
- Completed a targeted smoke:

```bash
python3 scripts/profile_translation_row_relation_families.py \
  --checkpoint-dir /tmp/cuboctahedron_rowrel_diamond_global \
  --from-planner scripts/generated/translation_row_relation_census_plan.json \
  --workers 1 --max-rank-mass 5000 \
  --dense-window-count 0 --sparse-window-count 0 \
  --window 255000:260000 \
  --sample-limit 8 --enable-diamond --use-d4 \
  --output scripts/generated/translation_row_relation_families_profile_smoke.json \
  --markdown-output scripts/generated/translation_row_relation_families_profile_smoke.md
```

- Completed a fast-window bounded profile:

```bash
python3 scripts/profile_translation_row_relation_families.py \
  --checkpoint-dir /tmp/cuboctahedron_rowrel_diamond_global \
  --from-planner scripts/generated/translation_row_relation_census_plan.json \
  --workers 5 --max-rank-mass 25000 \
  --dense-window-count 0 --sparse-window-count 0 \
  --window 255000:260000 \
  --window 2735000:2740000 \
  --window 300000:305000 \
  --window 2530000:2535000 \
  --window 2585000:2590000 \
  --sample-limit 16 --enable-diamond --use-d4 \
  --output scripts/generated/translation_row_relation_families_profile.json \
  --markdown-output scripts/generated/translation_row_relation_families_profile.md
```

- Result:

```text
selected windows:                5
scanned rank mass:          25,000
identity-linear words:          24
GoodDirection survivors:        50
covered cases:                  50
uncovered cases:                 0
invalid cases:                   0
non-two-source cases:            0
decision: needs_more_samples

template_only families:          6
template_source families:       14
diamond/source families:        14
D4 diamond/source families:     26
exact row-shape families:       44
```

- Interpretation:
  - The semantic template catalog still covers all observed GoodDirection
    survivors.
  - Exact row shapes remain highly fragmented even in this tiny sample.
  - `template_only` is small but too coarse to be proof-useful by itself;
    source-aware variants are proof-relevant but need more samples.
  - The current D4 family key increased family count in this sample because it
    includes canonical-mask/source detail. Do not assume D4 helps until Phase
    6Z.6J proves a better transport-family key.
  - Phase 6Z.6E should continue with a second, more representative run after
    adding per-window progress logging and/or checkpoint-backed reuse of the
    per-window family payloads.

Phase 6Z.6E.1 implementation result: representative semantic family profile
accepted.

- Extended `scripts/profile_translation_row_relation_families.py` with
  per-window family-profile checkpoints, `--resume`, progress logging,
  `--target-good-survivors`, and proof-relevant acceptance variants.
- The acceptance decision now excludes `template_only`; it remains diagnostic
  only because it is too coarse to justify a semantic row-source theorem.
- Cache smoke:

```bash
python3 scripts/profile_translation_row_relation_families.py \
  --checkpoint-dir /tmp/cuboctahedron_rowrel_diamond_global \
  --checkpoint-dir /tmp/cuboctahedron_rowrel_diamond_calibration_100k \
  --from-planner scripts/generated/translation_row_relation_census_plan.json \
  --family-checkpoint-dir /tmp/cuboctahedron_rowrel_family_profile_smoke \
  --workers 2 --max-rank-mass 10000 \
  --dense-window-count 0 --sparse-window-count 0 \
  --window 255000:260000 \
  --window 300000:305000 \
  --sample-limit 8 --enable-diamond --use-d4 \
  --output /tmp/cuboctahedron_family_profile_cache_smoke.json \
  --markdown-output /tmp/cuboctahedron_family_profile_cache_smoke.md
```

- A second run with `--resume` hit both cached windows and reproduced the
  same semantic counts and decision.
- Representative run:

```bash
python3 scripts/profile_translation_row_relation_families.py \
  --checkpoint-dir /tmp/cuboctahedron_rowrel_diamond_global \
  --checkpoint-dir /tmp/cuboctahedron_rowrel_diamond_calibration_100k \
  --from-planner scripts/generated/translation_row_relation_census_plan.json \
  --family-checkpoint-dir /tmp/cuboctahedron_rowrel_family_profile_6z6e1 \
  --resume --workers 8 --max-rank-mass 250000 \
  --target-good-survivors 750 --dense-window-count 80 \
  --sparse-window-count 8 --dense-selection throughput \
  --sample-limit 32 --enable-diamond --use-d4 \
  --output scripts/generated/translation_row_relation_families_profile_representative.json \
  --markdown-output scripts/generated/translation_row_relation_families_profile_representative.md
```

- Result:

```text
selected windows:                 9
scanned rank mass:          140,000
identity-linear words:        2,410
GoodDirection survivors:      4,779
covered cases:                4,779
uncovered cases:                  0
invalid cases:                    0
non-two-source cases:             0
decision: accepted_for_family_smoke

template_source families:       123
diamond/source families:        124
D4 diamond/source families:     462
exact row-shape families:     1,641
template_only families:           9  diagnostic only
```

- Interpretation:
  - The proof-relevant `template_source` coordinate is accepted for a Lean
    smoke on this representative sample: 123 observed families, largest family
    1,260 cases, singleton case mass 0.25%, and zero tail discovery after the
    dense window.
  - `diamond_then_template_source` is effectively tied at 124 families and can
    remain as the immediate fallback if the Lean family theorem needs the
    diamond/source split.
  - The current D4 key still increases family count, so Phase 6Z.6J remains a
    later transport optimization rather than a prerequisite for the first
    family smoke.
  - Proceed to Phase 6Z.6F: generate a small semantic family Lean smoke using
    `template_source` first, without replaying ordinary `TranslationCert`
    certificates.

Phase 6Z.6F planned result: row-template family Lean smoke.

- Generate a small set of semantic family leaves. Each leaf should export a
  theorem of the form:

```lean
theorem family_042_kills :
    ∀ r mask,
      RowTemplateFamily042.Contains r mask →
      GoodDirectionAtRank r mask →
        Coverage.TranslationCaseKilled r mask
```

- The proof should invoke hand-written row-template infeasibility theorems and
  generated symbolic row-normal-form facts. It must not construct
  `TranslationCert`, `SourceFarkasCert`, or call `checkTranslationCert` as its
  primary proof method.

Phase 6Z.6F implementation result: semantic row-family Lean smoke accepted.

- Added `scripts/generate_translation_row_family_smoke.py`, a diagnostic-only
  emitter that reads the representative family profile, selects the largest
  proof-relevant `template_source` families, and emits exact Lean membership
  proofs for representative cases.
- Generated
  `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/FamilySmoke.lean`
  and `scripts/generated/translation_row_family_smoke_summary.json`.
- The smoke covers three families and six representative cases:

```text
eq_eq_pos_var_first | source 5adcd...3580b | profile cases 1,260
opp_1m_var_first    | source 5803...f201  | profile cases   555
opp_m1_var_first    | source 7689...198   | profile cases   271
```

- The generated Lean proves:

```lean
fam_000_killsOn : SupportFamilyKillsOn fam_000_support fam_000_contains
case_000002_goodKilled : TranslationGoodCaseKilled case_000002_rank case_000002_mask
case_000002_translationKilled : TranslationCaseKilled case_000002_rank case_000002_mask
```

  with analogous theorems for all six samples.
- Validation:

```bash
python3 -m py_compile scripts/generate_translation_row_family_smoke.py
python3 scripts/generate_translation_row_family_smoke.py --families 3 --cases-per-family 2
lake env lean Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/FamilySmoke.lean
grep -R "sorry\|admit\|axiom\|native_decide\|unsafe\|TranslationCert\|checkTranslationCert" \
  Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/FamilySmoke.lean \
  scripts/generate_translation_row_family_smoke.py || true
git diff --check
```

- Result:

```text
generated smoke size: 49,862 bytes
Lean smoke build:    passed in about 8.1 seconds
hygiene grep:        no matches
```

- Interpretation:
  - The accepted `template_source` coordinate now has a real Lean proof-shape
    smoke that targets semantic killed predicates and avoids ordinary
    certificate replay in the generated module.
  - The next step should scale this exact pattern to a bounded representative
    family coverage root before attempting global translation coverage.

Phase 6Z.6F.1 planned result: bounded representative row-family coverage root.

- Extend the smoke emitter into a bounded family emitter over the Phase
  6Z.6E.1 representative windows.
- Emit one family module per selected `template_source` family, or small groups
  of families, and one root theorem for the bounded representative window set.
- Keep the root semantic and small:

```lean
theorem representativeFamilyCoverage :
  -- bounded TranslationGoodCoverageOnRange or an equivalent window-set theorem
```

- Do not emit a global rank/mask table. If the representative root fragments
  or builds slowly, switch to Phase 6Z.6G/6Z.6J before scaling further.

Phase 6Z.6F.1 implementation result: bounded representative semantic root accepted.

- Extended `scripts/generate_translation_row_family_smoke.py` with
  `--mode representative-root`.
- Added the missing proof-usable Python template mappings for
  `axis_b_only` and `exact_two_source_valid`, matching the already-formalized
  Lean templates in `RowRelationTemplates.lean`.
- Generated bounded representative modules under:

```text
Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/Representative/
  Group000.lean ... Group007.lean
  All.lean
```

- The generated root is intentionally semantic and family-valued:

```lean
RepresentativeFamilyCovered : Nat -> SignMask -> Prop

theorem representativeGoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : RepresentativeFamilyCovered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask
```

- It does not export or replay ordinary `TranslationCert` evidence.
- Summary from
  `scripts/generated/translation_row_family_representative_summary.json`:

```text
expected representative GoodDirection survivors: 4,779
template_source families:                         123
groups:                                           8
largest family:                                   1,260
singleton families:                               12
support witnesses searched:                       123
unsupported GoodDirection survivors:              0
```

- Validation:

```bash
python3 -m py_compile scripts/generate_translation_row_family_smoke.py \
  scripts/generate_translation_row_relation_classifier.py
python3 scripts/generate_translation_row_family_smoke.py --mode smoke \
  --families 3 --cases-per-family 2
lake env lean Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/FamilySmoke.lean
python3 scripts/generate_translation_row_family_smoke.py --mode representative-root
lake env lean Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/Representative/Group000.lean
lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.All
rg -n "sorry|admit|axiom|native_decide|unsafe|TranslationCert|checkTranslationCert" \
  Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/Representative \
  scripts/generate_translation_row_family_smoke.py
git diff --check
```

- Result:

```text
FamilySmoke direct Lean build: passed in about 14.8s
Group000 direct Lean build:    passed in about 1.5s
Representative All lake build: passed; generated groups each about 1.6s
hygiene rg:                    no matches
```

- Interpretation:
  - The semantic family-root shape scales across the representative
    `template_source` families with tiny generated source and fast Lean checks.
  - This root is not yet final public coverage: it proves all cases satisfying
    the generated family-union predicate are killed, while the summary records
    the bounded representative survivor assignment.
  - Next, resume the compression/profiling tracks needed for global coverage:
    signed prefix/state cone pruning, nonidentity axis/linear census, integer
    arithmetic constants, and D4 transport.

Phase 6Z.6G planned result: signed prefix/state cone profiler for leftovers.

- Use signed prefix/state languages and Gordan/Farkas empty-cone certificates
  to kill whole languages of completions:

```text
n_i · v > 0 for all active unfolded normals
Σ w_i n_i = 0 with w_i >= 0 and some w_i > 0
therefore no feasible direction v exists
```

- This is promoted from optional to primary for nonidentity/leftover
  compression if simple semantic row families leave the projected proof above
  the build-time budget.

Phase 6Z.6H planned result: nonidentity linear-part/axis census.

- Enumerate valid pair words by total linear part and projective fixed-axis
  data.
- Report:

```text
linear-part classes appearing
classes with no nonzero fixed vector
classes with +1 fixed axis
rank mass killed by pure no-axis classes
axis/sign/failure-pattern signatures for +1-axis classes
D4 canonical class counts
```

- Important caveat: do not claim `∀ w, linearPart w = M → ¬ feasible w`
  for every nonidentity `M`. This is only sound for classes with a pure
  linear obstruction such as no nonzero fixed vector. For `+1`-axis classes,
  family keys must include affine part/order/sign/start/interior failure
  invariants or be handled by prefix/state cone pruning.

Phase 6Z.6I planned result: integer/scaled arithmetic microbenchmark.

- Add a small benchmark comparing current rational generated checks with
  integer/scaled/projective versions of the proof-critical computations:

```text
reflection product identity/nonidentity classification
row normal form equality up to positive scale
denominator sign witnesses
small Farkas/vector-sum checks
```

- Acceptance is empirical:

```text
>= 2x speedup on representative generated semantic leaves -> consider using
integer/scaled arithmetic in production family emitters
< 2x speedup -> defer broad arithmetic rewrite
```

- This optimization must remain behind semantic generated checkers and must
  prove agreement with the existing rational model; it cannot replace the
  rational mathematical definitions.

Phase 6Z.6J planned result: D4 semantic-family transport profiler.

- Canonicalize row-template families, prefix/state cone families, and
  nonidentity axis/failure families under the `X+` stabilizer `D4`.
- Use D4 only after the family predicate is semantic enough that transport
  avoids duplicating proof work.
- Report canonical family count, transported family count, transport theorem
  proof cost, and whether D4 materially reduces projected build time.

Completed Phase 6Z.5:

- Added
  `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/RowRelationTemplates.lean`.
- Formalized the nine accepted row-relation template theorem schemas:
  `eqEqPosVarFirst`, `eqEqPosVarSecond`, `eqEqNegVarFirst`,
  `eqEqNegVarSecond`, `oppOneMinusVarFirst`, `oppOneMinusVarSecond`,
  `oppMinusOneVarFirst`, `oppMinusOneVarSecond`, and `axisAOnly`.
- Each schema exposes a `SupportFamilyCheckedOn` theorem and corresponding
  `SupportFamilyKillsOn` theorem, with no rank/mask member table.
- Verification passed:
  `lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates`.
  `lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.HighVariation`.
  `rg -n "sorry|admit|axiom|native_decide|unsafe" Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies || true`.
  The row-relation module currently has only style/linter warnings about
  `simpa` versus `simp`, not proof failures.

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
- [x] Implement Phase 6L.1 integer/homogeneous arithmetic core for generated
  certificate checking.
- [x] Implement Phase 6L.2A translation continuous/pseudo-Boolean profiler.
- [x] Implement and reject Phase 6L.2B lifted pseudo-Boolean certificate
  search on the `[0,100000)` gate.
- [x] Implement and reject Phase 6L.3A stateful nonidentity cone/Farkas
  profiler on the bounded gate.
- [x] Implement and reject Phase 6M coarse terminal-obstruction algebra
  profiler on the `[0,100000)` gate.
- [x] Implement and reject Phase 6N combined residual/portfolio profiler to measure
  overlap among existing filters before inventing another backend.
- [x] Implement and reject Phase 6O translation survivor/Farkas shape-map compression
  profiler on the `[0,100000)` gate.
- [x] Implement and reject Phase 6P survivor-bitset theorem pilot on the
  `[0,100000)` gate.
- [x] Implement Phase 6Q conditional trusted skeleton target.
- [x] Implement Phase 6R conditional full billiard theorem target.
- [x] Implement Phase 6S obstruction-atlas profiler and first `[0,100000)`
  atlas.
- [x] Run and reject Phase 6S obstruction atlas on four additional disjoint
  100k windows.
- [x] Implement and accept Phase 6T cross-family obstruction synthesis profiler.
- [x] Implement and reject Phase 6U template soundness audit and Lean schema prototypes.
- [x] Implement and reject Phase 6V exact source-Farkas proof-ready grouping
  on the `[0,100000)` gate.
- [x] Implement Phase 6W source-support multiplier variation profiling,
  including the memory-safe parallel runner.
- [x] Implement and accept Phase 6X deterministic two-source Farkas support
  profiling on the `[0,100000)` gate.
- [x] Implement Phase 6Y two-source Prop-level Lean checker core and explicit
  sample proof.
- [x] Emit proof-carrying translation two-source shards for `[0,1000)`.
- [x] Implement the Phase 6Y rank/mask bridge pilot for those generated
  shards.
- [x] Scale the Phase 6Y two-source emitter to `[0,10000)` with dry-run gating,
  memory measurement, and external-cache shard validation.
- [x] Add Phase 6Z support-family semantic coverage API and accept the
  `[0,100000)` support-family gate.
- [x] Emit and build the first theorem-backed Phase 6Z support-family pilot
  module for sampled members of the largest source-support class.
- [x] Replace the finite largest-support pilot predicate with a real
  proof-usable largest-support classifier/generic theorem.
- [x] Implement and reject exact row-shape support-family portfolio profiling
  on the `[0,100000)` gate.
- [x] Implement and accept Phase 6Z.2 source-pair parametric support profiling
  for the 235 two-source translation support families.
- [x] Implement and accept Phase 6Z.3 high-variation source-pair Lean pilot
  without enumerating its 273 exact row shapes.
- [x] Build and accept the Phase 6Z.4 reusable source-pair row-relation
  template profiler on the `[0,100000)` gate.
- [x] Formalize the accepted row-relation template theorem schemas in Lean.
- [x] Add the Phase 6Z.6A bounded row-relation classifier emitter and accept
  its `[0,1000)` dry-run inventory.
- [x] Finish the Phase 6Z.6A generated Lean interval theorem by replacing
  negative branches with small nonidentity and bad-denominator witnesses, and
  build the sharded `[0,10)` root.
- [x] Add an external-cache validator and hierarchical group/root validator for
  the witness-based row-relation classifier, and accept the `[0,64)` bounded
  root.
- [x] Implement Phase 6Z.6C semantic killed bridges so final generated
  coverage consumes `...Killed` predicates directly rather than
  `exists cert, checkCert = true` witnesses.
- [x] Implement Phase 6Z.6D row-template census runner for GoodDirection
  survivors and reject the current template catalog on representative
  calibration.
- [x] Implement Phase 6Z.6D.1 row-template extension from calibration
  uncovered samples/source pairs and accept representative calibration.
- [x] Implement Phase 6Z.6D.2 universal diamond obstruction profiler for
  GoodDirection translation survivors.
- [x] Attempt Phase 6Z.6D.3 fixed-window global row-template/diamond census and
  reject blind fixed-size rank sweeps as too slow for the proof-build target.
- [x] Implement Phase 6Z.6D.4 adaptive row-template/diamond census planner that
  decides whether any remaining global diagnostic sweep is worth running before
  semantic family emission.
- [x] Implement Phase 6Z.6E row-template/diamond semantic family profiler and
  first fast-window profile for GoodDirection survivors.
- [x] Implement Phase 6Z.6E.1 larger representative semantic family profile
  with per-window progress logging or checkpoint-backed family payload reuse.
- [x] Implement Phase 6Z.6F row-template/diamond family Lean smoke with semantic
  `TranslationCaseKilled` leaves and no ordinary translation-certificate
  replay.
- [x] Implement Phase 6Z.6F.1 bounded representative row-family coverage root
  using grouped semantic family theorems.
- [ ] Implement Phase 6Z.6G signed prefix/state cone profiler for nonidentity and
  translation leftovers if semantic row families do not meet the 24 CPU-hour
  budget alone.
- [ ] Implement Phase 6Z.6H nonidentity linear-part/axis census, using pure
  linear classes only where sound and profiling richer axis/failure families
  elsewhere.
- [ ] Implement Phase 6Z.6I integer/scaled arithmetic microbenchmarks for
  representative generated semantic checks.
- [ ] Implement Phase 6Z.6J D4 semantic-family transport profiler after family
  predicates exist.
- [ ] Keep `[0,1000)` one-rank cached validation as an optional regression
  benchmark only; do not treat it as a path to final coverage.
- [ ] Resume the nonidentity compression track with the translation branch
  no longer dominating the survivor residual.
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

Phase 6Z.6F.1 is complete: the representative `template_source` family-union
root builds quickly and proves semantic `TranslationGoodCaseKilled` facts
without ordinary translation-certificate replay. The immediate next step is
Phase 6Z.6G: implement the signed prefix/state cone profiler for remaining
compression pressure, especially nonidentity and translation leftovers that
cannot be globally discharged by row-family predicates alone.

In parallel planning, keep Phase 6Z.6H/6Z.6I/6Z.6J ready: nonidentity
linear-part/axis census with the `M`-alone caveat, integer/scaled arithmetic
microbenchmarks, and D4 semantic-family transport. These are not substitutes
for semantic killed bridges; they are the compression and constant-factor tools
used after the final theorem surface is semantic.

Do not return to the current nonidentity prefix-kill emitter,
translation/Farkas emitter, translation bad-direction box emitter, or symbolic
prefix/mask-cube bad-direction emitter, including the common-impact variant.
The `[0,100000)` nonidentity dry-run still has maximum prefix-kill width 3 and
94,419 planned heavy leaves; the translation/Farkas dry-run exceeded the
100,000-family cap; the translation bad-direction box dry-run produced 205,667
tiny boxes; the first-impact prefix/mask-cube dry-run left 313,602 fallback
cells; and the common-impact prefix/mask-cube dry-run left 308,614 fallback
cells.

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

Phase 6L.3A is now rejected as well. It fixed the unsigned-prefix weakness but
still produced 52,164 projected heavy leaves before completing the 100k
window. The next useful step should be a strategy reset around coarser
mathematical terminal-obstruction theorems or a smaller formally useful target
theorem layer, not another variant of rank/mask/state tiling. Lexicographic
rank intervals should reappear only as final enumeration adapters once
semantic coverage has passed the low-thousands gate.

Phase 6M tested that coarser terminal-obstruction idea. It improved the
nonidentity shape count substantially but still rejected the bounded gate:
`[0,100000)` has 6,282 projected heavy leaves, and
`forced_zero_denominator` alone contributes 4,393 unique witness shapes. The
next useful step was therefore not another terminal-first-hit shape tiler. It
first measured whether the existing rejected filters combine into an
acceptable residual when applied as an ordered semantic portfolio.

Phase 6N is rejected. The `[0,100000)` portfolio profile has 17,760 projected
primary shapes. The largest residual family is `translation.farkas_survivor`,
with 11,478 unique normalized Farkas survivor shapes; nonidentity
`forced_zero_denominator` is second at 4,393 shapes.

Phase 6O is rejected too. The best proof-ready translation survivor layer is
`raw_survivor_shape_map`, with 5,521 obligations on `[0,100000)`, still above
the 2,000 gate. The only low-count layer is diagnostic: `survivor_bitset` has
1,479 classes, but a bitset alone does not prove Farkas infeasibility.

Phase 6P tested whether the survivor-bitset layer could become a theorem. It
also rejects: the top survivor bitset covers 96 identity words and 1,536
survivor cases, but sampled exact Farkas certificates already split into 7
source supports and 11 multiplier patterns. This means survivor bitsets are
not a proof skeleton; they are only a coarse census statistic.

Phase 6Q and Phase 6R are complete. The project now exposes and validates the
conditional trusted skeleton theorems:

```lean
Cuboctahedron.conditional_no_unfolded_omni_starting_xp
Cuboctahedron.conditional_cuboctahedron_no_omnihedral
```

Their axiom output is:

```text
'Cuboctahedron.conditional_no_unfolded_omni_starting_xp' depends on axioms: [propext, Classical.choice, Quot.sound]
'Cuboctahedron.conditional_cuboctahedron_no_omnihedral' depends on axioms: [propext, Classical.choice, Quot.sound]
```

Full generated evidence remains open. Do not resume full generated coverage
work in this architecture without a genuinely new mathematical compression
idea; the current bounded profiles have rejected the existing approaches.

Phase 6T is complete and accepted only as a diagnostic compression gate. Phase
6U then split that diagnostic portfolio into theorem-backed candidates and
rejected it: without trusting raw `cross.pairNormal`, the first 100k-rank
window still has 43,475 proof leaves after 500 templates. The nonidentity
zero-normal theorem prototype remains useful infrastructure, but translation
is the active blocker.

Phase 6V and Phase 6W sharpened the translation blocker. The GoodDirection
semantic theorem eliminates the dense bad-direction complement without
generated evidence. On `[0,100000)`, only 39,710 masks survive GoodDirection,
and every surviving Farkas certificate has exactly two source terms. Those
39,710 survivor certificates collapse to 235 source-row supports, but exact
multipliers vary inside the supports.

Phase 6X resolves that multiplier-variation blocker for the bounded gate by
computing deterministic two-source multipliers from the two support rows.
Phase 6Y then converted that idea into a Prop-level Lean checker target so
generated leaves can prove small exact facts instead of reducing a large
Boolean checker. On `[0,100000)`, all 39,710 GoodDirection survivors are
two-source, all computed checks pass, and only 235 source-support classes
remain. The explicit sample proves the concrete two-row contradiction in Lean.
The bounded `[0,1000)` emitter now proves 1,465 GoodDirection survivor cases
across 59 generated shards, and every emitted case has a generated rank/mask
bridge to `TranslationGoodCaseKilled`.
Phase 6Z is now the active way to prevent the public root from importing all
heavy shard `.olean`s. The first theorem-backed generated support-family pilot
builds, and the finite 16-case predicate has now been replaced by a generic
semantic row-shape theorem:

```text
`LargestObservedSupportShape` proves `SupportFamilyCheckedOn
largestObservedSupport` without enumerating all 10,435 rank/mask cases.
```

The shape profile shows that this theorem kills 11,589 GoodDirection survivors
in `[0,100000)`, more than the 10,435 cases in the originally discovered
largest source-support digest. However, the generalized exact row-shape
portfolio is now rejected: the same window has 8,970 unique row shapes, even
though it has only 235 source pairs.

Phase 6Z.2 now adds the source-pair theorem adapter and accepts the
source-pair parametric profiling gate. The `[0,100000)` window still has all
39,710 GoodDirection survivors covered by 235 source pairs, with no source
Farkas failures, no non-two-source survivors, and no invalid two-source facts.
The hard part is mathematical compression inside each source pair:
32 source pairs have more than 100 exact row shapes, and the highest-variation
pair has 273 row/multiplier variants.

Phase 6Z.3 proves that highest-variation source pair parametrically in Lean.
The theorem covers the pair's 1,016/1,016 target cases in `[0,100000)` without
enumerating the 273 exact row shapes. Phase 6Z.4 then factors that idea into a
small portfolio of row-relation templates. The portfolio covers all 39,710
GoodDirection survivors and all 235 source pairs in the first 100k window, with
zero overlap and zero uncovered cases.

Phase 6Z.6D later showed that the first-window catalog did not initially
generalize: representative calibration left 749 GoodDirection survivors
uncovered. Phase 6Z.6D.1 closes that gap with proof-usable `axis_b_only` and
`exact_two_source_valid` templates; the same calibration now covers
63,725/63,725 GoodDirection survivors with zero overlaps.
Phase 6Z.6D.2 adds the universal diamond obstruction profiler. Diamond is a
high-value supplemental family key, covering 63,276/63,725 calibration
survivors, but it leaves 362 fallback-template cases after sharp row templates,
so it does not replace the expanded row-template catalog.

This still leaves the nonidentity side open. Phase 6X should not be mistaken
for full generated coverage; Phase 6Y makes per-case translation evidence
Lean-checkable at bounded generated scale, and Phase 6Z has now validated the
support-family theorem interface but not the full support-family classifier.

Current strategic assessment:

- The overall proof architecture is much healthier than the old packed-blob,
  generated-Boolean, and per-case shard-root approaches. The trusted skeleton
  is clean: billiard orbit to unfolded itinerary, rank/mask enumeration,
  identity/nonidentity split, and semantic generated coverage.
- The translation branch now has a plausible low-count target. GoodDirection
  removes masks that cannot arise from a feasible orbit, and the `[0,100000)`
  two-source profile collapses the remaining 39,710 survivor masks to 235
  source-row supports.
- The Phase 6Z support-family interface is the right proof shape, and the
  largest-family module now has a real semantic row-shape theorem. The exact
  row-shape portfolio is not the right scaling unit: it handles the first large
  family but fragments to 8,970 shapes on the full first window.
- The Phase 6Z.2 source-pair profile preserves the 235-class compression target.
  It does not finish translation coverage yet; it identifies the next stress
  test, a high-variation source-pair pilot that must prove parametric
  multiplier/coefficient facts without exact row enumeration.
- The Phase 6Z.3 high-variation pilot succeeds: one compact theorem handles
  the most fragmented source pair and validates `SupportPair.Applies` as a
  usable proof interface. The next translation compression unit should be
  reusable row-relation templates, not one-off source-pair files.
- The Phase 6Z.4 row-relation profiler succeeds on the first 100k window: nine
  semantic template families cover every GoodDirection survivor there.
- The Phase 6Z.5 Lean row-relation module now proves all nine theorem schemas
  generically through `SupportPair.Applies`, including the axis-only sign split.
- Phase 6Z.6D adds the generated priority classifier/census runner. Phase
  6Z.6D.1 extends the catalog with `axis_b_only` and
  `exact_two_source_valid`. Phase 6Z.6D.2 adds diamond profiling and classifies
  the diamond obstruction as supplemental. The next translation work is the
  full global row-template/diamond census before family emission.
- The first uncached 16-case pilot build used about 4.5 GiB RSS, which is a
  warning that scaling by listing support-family members would reproduce the
  old memory problem. The next useful work must preserve the 235 source-pair
  compression with parametric proofs, not emit 8,970 exact row-shape leaves.
- The nonidentity branch remains unresolved. Translation is no longer the only
  blocker, but full generated coverage still requires a separate low-count
  nonidentity family path.

## Explicit Non-Goals

- Do not continue scaling raw `[0,8)` interval shards to the full rank range.
- Do not emit 97,297,200 rank leaves.
- Do not emit 157,957,632 translation-mask leaves.
- Do not emit hundreds of thousands of Lean interval proof nodes.
- Do not emit giant canonical-word arrays and prove them by `decide` as the
  production proof unless a separate benchmark first proves parsing,
  elaboration, `.olean` size, import memory, and wall-clock build time satisfy
  the same 5-6 hour target.
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
- Do not emit coarse terminal-obstruction algebra leaves from Phase 6M; the
  bounded gate still produces 6,282 projected leaves, dominated by
  `forced_zero_denominator`.
- Do not emit the Phase 6N combined portfolio as generated proof evidence; it
  still produces 17,760 projected primary leaves, dominated by translation
  Farkas survivor shapes.
- Do not return to nonidentity terminal-filter variants until translation
  Farkas survivor shape compression has been profiled; Phase 6N shows
  translation is the larger current blocker.
- Do not emit raw translation Farkas survivor shapes from the Phase 6N
  portfolio; the 11,478-shape residual must be compressed or replaced by a
  stronger theorem first.
- Do not start another strategy whose main compression claim is that a
  geometric failure covers a large contiguous lexicographic rank interval.
- Do not build new heavy generated checkers over `Rat`/`ℚ` unless an explicit
  focused benchmark shows the generated reductions stay comfortably within
  the memory budget.
- Do not assume translation denominator constraints are linear in the six sign
  bits without re-profiling them in the new integer/homogeneous coordinate
  system.
