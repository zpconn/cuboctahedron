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

## Current Marching Orders From The Holonomy Prompt

The latest holonomy-normal-form prompt should be read as the active strategy,
but not as a request to restart earlier tracks.  The repo has already passed
the key Track 1 gate:

```text
reducedShadow(pair word) = []  iff  totalLinearOfPairWord(pair word) = I
```

This is supported externally by the full exact profiler and internally by the
Lean theorem
`Cuboctahedron.Search.ShadowNormalFormClassifier.totalLinearOfPairWord_eq_identity_iff_reducedShadow_empty_of_valid`.

The next proof work is therefore downstream of this split:

- Nontranslation: use forced-axis signs as a necessary filter, then attack the
  residual start-interior failures as semantic holonomy/axis families.  Do not
  refine source/solve hashes further as the production coordinate; the
  bounded profiles show that such keys fragment badly.
- Translation: postpone broad mining until the nontranslation residual theorem
  surface is measured.  When translation resumes, generated evidence should
  handle only GoodDirection survivors.
- Rank: use rank only as the final `unrankPairWord` accounting bridge.

The immediate nontranslation theorem target is the dominant start-interior
axis family observed by `scripts/axis_start_focus_profile.py`: canonical bad
face `yp`, D4-projective axis class `1,-3,-1`, and especially the largest
exact-axis/reduced-shadow pair:

```text
axis = 1,3,1
reduced shadow = d11m d111 dm11 d11m d111 dm11
```

`Cuboctahedron.Search.TerminalNonidentityTemplates` now exposes a direct
start-violation hook for this style of proof.  The hook is intentionally
semantic: it asks for the bad-face inequality for any feasible axis datum,
using the `X+` start-interior fact, rather than requiring a generated concrete
affine solve witness.  The strengthened hook builds in
`Cuboctahedron.Search.TerminalNonidentityTemplates` with a measured
`0:07.00` wall time and `3,227,668 KiB` max RSS on the current machine.

The first direct smoke is
`Cuboctahedron.Generated.NonIdentity.Residual.DirectStartSmoke.rank861_no_axis_constraints`.
It targets rank `861` in the dominant exact-axis/reduced-shadow class and
proves `¬ NonIdentityAxisConstraints rank861Seq` without
`AxisStartViolationCert` or `AffineAxisSolveWitness`.  The proof still uses a
concrete `totalAff` computation for that sequence, but the contradiction is
now linear algebra from the endpoint/fixed-direction equations plus
`p0.x = 1`.  It now factors through
`direct_ym_violation_of_rank861_linear_form`, which fixes the linear
coefficient matrix and assumes only the affine-offset margin bound
`4 - 269/176*b.x + 73/176*b.y + 25/88*b.z <= 0`.  Focused build telemetry
after this factoring: `0:03.99` wall time and `3,367,152 KiB` max RSS.

The follow-up exact profiler
`scripts/direct_start_linear_profile.py` shows why this should not become a
concrete-affine backend.  On `[0,100000)` for the same focused class, the
coefficient matrix has only `16` distinct keys, matching the exact-axis /
reduced-shadow spine, but the affine RHS, total affine map, and solved start
point each fragment into `1,337` distinct keys.  The next family theorem should
therefore keep the 16-key linear coefficient spine and prove the RHS/margin
bound through a higher semantic translation/cancellation family, not by
emitting one theorem per concrete affine RHS.

Filtering further to the largest exact-axis/reduced-shadow key gives one
coefficient matrix for `107` residuals, but still `100` affine RHS / solution /
total-affine keys and `69` bad-face margins.  The useful compression is that
the bad-face margin as a linear form in the total affine offset `b` collapses
to only `3` forms in that largest key (`60` forms across the focused D4-axis
class).  This rejects concrete RHS as a production key but promotes
margin-linear-form plus cancellation/offset-family certificates as the next
theorem surface.

The offset-family follow-up
`scripts/direct_start_offset_family_profile.py` decomposes the total affine
offset into transported reflection deltas and pushes each margin functional
through that sum.  On the same focused D4-axis window it is memory-light
(`0:09.48`, `26,520 KiB` max RSS) and internally consistent
(`offset_sum_mismatches = 0`), but it rejects direct contribution-value
aggregation as the production partition:

- full focused D4-axis class: `1,427` matches, `60` margin forms, `235`
  contribution multisets, and `881` contribution-by-face/pair keys;
- largest exact-axis/reduced-shadow key: `107` matches, `3` margin forms,
  `78` contribution multisets, and `94` contribution-by-face/pair keys;
- largest key plus dominant margin form: `72` matches, but still `52`
  contribution multisets and `63` contribution-by-face/pair keys.

So the accepted theorem hook remains:

```text
fixed linear coefficient matrix
+ bad-face margin linear form in total affine offset b
+ semantic proof that the margin form is <= 0
-> start-interior contradiction
```

but the semantic proof should be based on a coarser cancellation-tree or
holonomy-state relation, not on exact transported contribution signatures.

Adding cancellation-state counters to the same profiler gives the current
best offset-side coordinate.  In the focused `[0,100000)` D4-axis class,
ordered cancellation pairings are much smaller than contribution signatures:

| sample | matched | margin forms | cancellation pairings | margin+cancellation pairings | cancellation shapes |
| --- | ---: | ---: | ---: | ---: | ---: |
| full focused D4-axis class | `1,427` | `60` | `190` | `353` | `1` |
| largest exact-axis/reduced-shadow key | `107` | `3` | `12` | `21` | `1` |
| dominant margin form inside largest key | `72` | `1` | `11` | `11` | `1` |

This rejects coarse cancellation shape (`pairs=1;survivors=6`) but keeps
ordered cancellation pairing as the next scale-test coordinate for direct
start residual families.

The `[0,1000000)` scale test for the same focused D4-axis class stayed
memory-light (`1:21.69`, `31,684 KiB` max RSS) and produced:

| coordinate | distinct/count |
| --- | ---: |
| matched residuals | `4,934` |
| exact-axis/reduced-shadow keys | `16` |
| margin linear forms | `60` |
| contribution multisets | `545` |
| triangular shadows / cancellation pairings | `284` |
| margin+cancellation pairings | `599` |
| margin+cancellation shapes | `60` |

This keeps margin+cancellation-pairing families as the next nonidentity
residual interface to test in Lean.

Top margin+cancellation-pairing checkpoint:

- The leading focused `[0,1000000)` family is:

  ```text
  ym|const=2|b=-103/176,73/176,5/88|
  pairs=3-4:d11m;
  survivors=0:dm11|1:d111|2:d1m1|5:dm11|6:d111|7:d1m1
  ```

- `scripts/direct_start_offset_family_profile.py` now has
  `--target-margin-cancellation-pairing` to extract exactly this style of
  family.  The extraction matched `37` cases, ran in `1:23.01`, and peaked at
  `25,816 KiB` RSS.
- Added
  `Cuboctahedron.Generated.NonIdentity.Residual.DirectStartTopPairingSmoke`.
  It proves `¬ NonIdentityAxisConstraints topSeq` for a representative from
  fixed linear part plus the offset-margin bound
  `2 - 103/176*b.x + 73/176*b.y + 5/88*b.z <= 0`.
- Focused build passed in `0:11.09` wall time with `3,367,100 KiB` max RSS.
- This is accepted as a theorem-surface smoke only.  The production gap is a
  Lean-checkable cancellation/margin-bound certificate for the whole family;
  do not scale by unfolding concrete `totalAff` values for each rank.
- Added `offsetMarginQ` and `offsetMarginQ_real_bound_of_value` in
  `Cuboctahedron.Search.TerminalNonidentityTemplates`.  The top-pairing smoke
  now routes its bound through the exact rational margin-value equation
  `offsetMarginQ ... = -105/22` plus a nonpositivity proof.  The focused
  rebuild passed in `0:09.07` wall time with `3,355,340 KiB` max RSS.  This
  narrows, but does not close, the family proof gap.
- The smoke now also has a local `TopPairingMarginValue` predicate for the 14
  observed margin values.  A focused rebuild passed in `0:05.84` wall time
  with `3,251,032 KiB` max RSS.  The remaining gap is to prove value-set
  membership from the cancellation/holonomy state, not to prove the values are
  nonpositive.
- New pivot after GPT5.5 Pro review: do not scale the fixed top-family
  extraction into another certificate-packing layer.  The next nonidentity
  residual experiment is a Bellman/potential certificate over a finite
  holonomy/cancellation automaton.  The script to add is
  `scripts/nonidentity_margin_bellman_profile.py`; it should compute
  integer-scaled local gains, potential inequalities
  `gain + V(next) <= V(state)`, final inequalities, and state/transition
  counts before any new Lean family emission.
- A `[0,10000000)` extraction for the fixed top family was intentionally
  stopped after this pivot.  It belonged to the old stability-of-values lane.
- Bellman prototype status: the script now exists and compiles.  A 1M
  four-worker diagnostic showed that coarse `with-step` and `with-step-face`
  states are too loose (`max_margin_bound = 6/11`), while exact-prefix state
  succeeds (`270` states, `269` edges, `max_margin_bound = 0`).  This validates
  Bellman as a proof shape but rejects the current coarse state key for Lean
  emission.  Next refine the automaton with cancellation-progress or
  source-position progress, not exact affine RHS or solved start points.
- Argmax diagnostic status: the Bellman-maximizing coarse path is not realized
  by any observed rank.  It stitches individually observed edges from
  incompatible words, and adding signed-face inventory does not prevent the
  splice.  This points specifically to missing cancellation-pairing/bracket
  progress or source-position progress.
- First accepted refinement: `with-step-tri-source` records triangular
  source-position/parity progress and succeeds on the 1M top-family window
  with `223` states, `229` edges, maximum margin bound `0`, and a real
  Bellman-max path.  Prefix linear holonomy alone did not help.  The next
  gate is a larger-window `with-step-tri-source` scale test.
- Larger-window status: the same key succeeded on `[0,5000000)` with `194`
  matched paths, `789` states, `863` edges, maximum margin bound `0`, and
  `27,988 kB` max RSS.  This keeps the Bellman route active; next test a
  broader window or start designing the generic Lean Bellman theorem only
  after one more scale check.
- Broader status: `[0,10000000)` with eight workers also succeeded, with
  `273` matched paths, `970` states, `1,054` edges, maximum margin bound `0`,
  and `28,780 kB` max RSS.  The 5M-to-10M state growth is mild enough to keep
  the tri-source Bellman coordinate as the active nonidentity margin route.
- Disjoint status: `[10000000,20000000)` succeeded with `100` matched paths,
  `417` states, `457` edges, and maximum margin bound `-16/11`.  This supports
  tri-source Bellman as a real semantic coordinate rather than an initial
  rank-window accident.
- Lean core status: `Cuboctahedron.Search.BellmanPotential` now provides the
  generic integer-potential path telescoping theorem and builds in focused
  mode.  Generated Bellman families should target this surface rather than
  replaying concrete affine offsets.
- Generated-style smoke status:
  `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSmoke`
  instantiates the Bellman core with private scaled edge/potential data and
  builds in `0:08.50` wall time at `3,242,260 kB` max RSS.  It is path-level
  only, but validates the generated-data-to-Bellman theorem connection.  A
  cached rerun built in `0:00.98` wall time at `811,536 kB` max RSS.
- Graph-smoke status: `scripts/nonidentity_margin_bellman_profile.py` now has
  `--include-graph`, and `scripts/emit_bellman_graph_smoke.py` emits a bounded
  constructor-state Lean graph certificate.  For `[0,1000000)` with
  `with-step-tri-source`, the exported graph has `223` states, `229` edges,
  and `29` final states.  The Lean graph smoke
  `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphSmoke`
  now builds in `0:03.18` wall time at `3,361,800 kB` max RSS after emitting
  explicit closed integer edge inequalities and closing them with `decide`.
  A previous Fin/Nat-table encoding was rejected after recursion-depth and
  heartbeat failures, and a constructor-state `norm_num` version was accepted
  but much heavier.  Generated Bellman graph certificates should therefore use
  constructor states or similarly shallow proof-facing lookup surfaces plus
  tiny explicit integer inequality proofs.
- Medium graph status: the same graph emitter also builds the `[0,5000000)`
  smoke `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph5MSmoke`.
  The graph export has `789` states and `863` edges; the focused build passed
  in `0:13.21` wall time with `4,178,640 kB` max RSS.  This keeps the Bellman
  route inside the representative-leaf memory budget, provided production
  leaves remain sharded by semantic family.
- 10M graph status: the `[0,10000000)` graph export has `970` states and
  `1,054` edges, and the focused smoke
  `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraph10MSmoke`
  builds in `0:17.78` wall time with `4,494,748 kB` max RSS.  This remains
  safe enough for representative medium Bellman leaves, but larger production
  graphs should still be sharded before normal imports.
- Semantic bridge status: `Cuboctahedron.Search.BellmanPotential` now includes
  `BellmanTraceBound` and
  `scaledMargin_nonpos_of_bellmanTraceBound`.  The graph emitter exposes
  `graphSmoke_family_scaled_margin_nonpos`, which turns a generated
  membership-to-path/margin-bound proof into semantic nonpositivity.  The
  warning-free 10M graph smoke with this bridge builds in `0:17.80` wall time
  with `4,514,536 kB` max RSS.  Next Bellman work should generate the
  family-language bridge; more graph edge smokes are lower priority.
- Membership-to-path smoke status: the graph emitter now builds a one-object
  semantic family from the realized argmax path and proves
  `graphSmoke_argmax_object_scaled_margin_nonpos` via `BellmanTraceBound`.
  The 10M smoke with this extra object/path/margin bridge builds in `0:19.73`
  wall time with `4,494,640 kB` max RSS.  This validates the theorem shape for
  replacing the one-object smoke with a generated family-language bridge.
- Observed-family bridge status: the profiler graph export now includes
  `path_objects`.  The `[0,1000000)` graph smoke has been regenerated with all
  `37` observed paths as `SmokeObj` constructors, and proves
  `graphSmoke_observed_objects_scaled_margin_nonpos` by producing a
  `BellmanTraceBound` for each object.  The focused build passed in `0:05.08`
  wall time with `3,437,864 kB` max RSS.  This is the current best bridge
  smoke toward production: it validates member-to-path/margin-bound assembly
  for a finite observed family, while the remaining gap is replacing observed
  path enumeration with a semantic family-language theorem.
- Path-class bridge status: the graph export now also includes
  `path_classes`, grouping observed objects by exact Bellman edge trace,
  final state, and scaled margin; the emitter uses classes when present.  On
  the same `[0,1000000)` graph there are `37` observed objects and `37`
  path classes, so exact trace grouping gives no compression.  The
  class-aware focused build passed in `0:07.36` wall time with `3,441,212 kB`
  max RSS.  Treat path classes as a diagnostic/regression layer only; the
  production Bellman bridge must prove membership for a coarser
  holonomy/cancellation language or introduce a gauge/summary coordinate that
  merges traces before Lean emission.
- Language-level Bellman status: `Cuboctahedron.Search.BellmanPotential` now
  also provides `BellmanLanguageTraceBound` and
  `scaledMargin_nonpos_of_bellmanLanguageTraceBound`.  This is the theorem
  surface for the next generated bridge: define a semantic `Accepts`
  predicate for a holonomy/cancellation language, prove accepted objects have
  graph paths and margin bounds, then obtain nonpositivity without finite
  observed-object enumeration.  Focused builds passed for the Bellman core
  (`0:02.94`, `3,252,660 kB` RSS) and the current graph smoke against the
  updated core (`0:03.89`, `3,439,292 kB` RSS).
- Language-theorem smoke status: the graph emitter now emits
  `smokeLanguageTraceBound` and
  `graphSmoke_observed_language_scaled_margin_nonpos`, instantiating
  `scaledMargin_nonpos_of_bellmanLanguageTraceBound` in generated code.  The
  current `smokeAccepts` predicate is still finite/trivial, so this validates
  the bridge shape rather than production coverage.  Focused build passed in
  `0:04.72` wall time with `3,439,532 kB` max RSS.
- Non-enumerative trace-language status: the graph emitter now also emits
  `SmokeTrace`, `smokeTraceAccepts`, and
  `graphSmoke_trace_language_scaled_margin_nonpos`.  This theorem quantifies
  over arbitrary accepted `(finish, edges, margin)` traces through the private
  Bellman graph, rather than over finite observed rank/class constructors.
  Focused build passed in `0:06.55` wall time with `3,429,332 kB` max RSS.
  Remaining Bellman gap: connect the real holonomy/cancellation word language
  to accepted traces, or first coarsen the trace coordinate by a gauge/summary
  state that makes that membership proof compact.
- Graph-path language status: `Cuboctahedron.Search.BellmanPotential` now has
  `BellmanGraphPath`, `BellmanGraphLanguageTraceBound`, and
  `scaledMargin_nonpos_of_bellmanGraphLanguageTraceBound`.  Generated graph
  smokes can now use one automaton path proof that includes edge membership,
  through `graphSmoke_graph_trace_language_scaled_margin_nonpos`.  Focused
  builds passed for the core (`0:02.46`, `3,269,720 kB` RSS) and graph smoke
  (`0:04.57`, `3,453,116 kB` RSS).  This is the intended theorem surface for
  a future word-language-to-Bellman-automaton bridge.
- Labeled automaton status: the Bellman core now also has
  `BellmanLabeledGraphPath`,
  `BellmanLabeledGraphLanguageTraceBound`, and
  `scaledMargin_nonpos_of_bellmanLabeledGraphLanguageTraceBound`.  The
  generated smoke instantiates these with synthetic edge labels and proves
  `graphSmoke_labeled_trace_language_scaled_margin_nonpos`.  Focused build
  passed in `0:06.01` wall time with `3,555,352 kB` max RSS.  This is the
  bridge shape the real holonomy/cancellation word-language proof should
  target: semantic labels -> graph edges -> labeled run -> margin bound.
- Semantic-label status: the Bellman profiler exports contribution-order
  signed-face/pair labels, such as `face=xm|pair=x`.  The 1M graph has `14`
  semantic labels and `229` edge-label relations, and the emitter now uses
  those labels instead of synthetic edge labels.  The focused graph smoke
  passed in `0:07.53` wall time with `3,468,636 kB` max RSS.  The next
  generated bridge should prove accepted top-family words produce these
  signed-face labeled runs.
- Labeled-run status: the Bellman core now also has `BellmanLabeledRun`,
  `BellmanLabeledRunLanguageBound`, and
  `scaledMargin_nonpos_of_bellmanLabeledRunLanguageBound`.  The generated
  smoke instantiates this as `graphSmoke_labeled_run_language_scaled_margin_nonpos`,
  carrying only labels, final state, accumulated gain, and margin.  Focused
  build passed in `0:05.59` wall time with `3,479,988 kB` max RSS.  This is
  the cleanest current target for the real top-family word-language bridge.
- Observed labeled-run status: the graph smoke now also constructs concrete
  `BellmanLabeledRun` proofs for every bounded observed path class using the
  semantic signed-face/pair labels exported by the profiler.  The generated
  accumulated gain expression is right-associated so Lean can apply
  `BellmanLabeledRun.cons` without arithmetic normalization.  The focused
  smoke passed in `0:04.78` wall time with `3,542,636 kB` max RSS.  The next
  Bellman step is not more observed-class enumeration; it is proving that the
  actual holonomy/cancellation word language constructs these labeled runs.

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

Residual source-quotient checkpoint:

- `scripts/nonidentity_residual_axis_profile.py` now also records
  source-oriented diagnostic keys for the terminal residual obstruction:
  `terminal_source_keys`, `terminal_source_axis_keys`, and
  `terminal_source_reduced_axis_keys`.
- On `[0,100000)`, these finer keys fragment the residual branch:
  `terminal_source_keys = 8,540`,
  `terminal_source_axis_keys = 8,709`, and
  `terminal_source_reduced_axis_keys = 8,733`, compared with only `32`
  coarse terminal-template keys.
- Conclusion: retaining solve/source shape is the wrong compression direction
  for broad generated evidence.  It is useful for diagnostics, but the proof
  path needs a new algebraic theorem surface for the dominant start-interior
  bucket rather than more precise local-certificate keys.

Axis-class quotient checkpoint:

- The residual profiler now records D4-projective and absolute axis-pattern
  keys for `axis_misses_start_interior` failures.
- On `[0,100000)`, those coarse axis classes are far better than solve/source
  keys but still not production-ready as one theorem per class:
  `axis_start_d4_axis_keys = 182` and
  `axis_start_abs_axis_keys = 182`, projecting to about `177,081` full classes
  under the simple linear model.
- The largest observed class is
  `axisStart|badFace=yp|axisD4=1,-3,-1`, with `1,427` sample cases.
- Next residual proof work should try to prove one largest axis class using a
  cheaper integer/projective theorem surface.  If that theorem is still near
  the 45-second `LocalCertSmoke` cost, this route is not viable; if it is
  sub-second, the axis-class quotient may become useful in combination with
  higher holonomy grouping.

Focused largest-axis-class checkpoint:

- `scripts/axis_start_focus_profile.py` focuses the exact residual profile on
  one canonical bad-face/D4-axis class.
- For `canonical_bad_face = yp` and `axisD4 = 1,-3,-1` on `[0,100000)`, it
  finds `1,427` matching residuals.  They have one absolute axis pattern
  (`x=1|yz=1,3`), one reduced-shadow length (`6`), `8` exact axes, `16`
  reduced shadows, and exactly `16` exact-axis/reduced-shadow pairs.  The
  solve-shape surface still fragments into `1,337` hashes.
- First concrete theorem-smoke target:
  `axis=1,3,1` with reduced shadow
  `d11m d111 dm11 d11m d111 dm11`, which covers `107` sample residuals.

Direct theorem-surface checkpoint:

- `Cuboctahedron/Search/TerminalNonidentityTemplates.lean` now exposes
  `no_nonidentity_axis_constraints_of_direct_start_violation`.
- This theorem is the intended hook for projective axis-start families: prove
  the bad-face inequality directly from the feasible axis datum, without
  emitting a concrete solved `p0` or checking an `AffineAxisSolveWitness`.
- Focused build of `Cuboctahedron.Search.TerminalNonidentityTemplates`
  succeeded in `0:10.09` wall time with `3,249,292 KiB` max RSS.
