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
- Label-step status: `Cuboctahedron.Search.BellmanPotential` now also has
  `BellmanLabelStepRun`, `BellmanLabelStepRunLanguageBound`, and
  `scaledMargin_nonpos_of_bellmanLabelStepRunLanguageBound`.  The generated
  graph smoke instantiates this through a semantic
  `SmokeStep : State -> SmokeLabel -> State -> Int -> Prop`, so the preferred
  production target no longer needs edge objects in the word-language bridge.
  Focused builds passed for the Bellman core in `0:04.07` wall time with
  `3,318,464 kB` max RSS and for the generated smoke in `0:06.29` wall time
  with `3,678,196 kB` max RSS.  The next Bellman gap is proving real
  holonomy/cancellation words satisfy such semantic step relations.
- Label-step composition status: `BellmanLabelStepRun.append` now composes
  semantic subruns.  The focused Bellman core build passed in `0:02.28` wall
  time with `3,328,908 kB` max RSS, and the generated graph smoke still passed
  in `0:06.18` wall time with `3,673,548 kB` max RSS.  This is a support
  theorem for cancellation-tree summaries and other holonomy-language proofs
  that should assemble full runs from smaller pieces.
- Shared-prefix composition status: the current generated smoke detects the
  common two-label prefix shared by all 37 observed top-family classes, proves
  that prefix once, proves suffix runs per class, and composes them with
  `BellmanLabelStepRun.append`.  The focused graph smoke passed in `0:11.75`
  wall time with `3,750,340 kB` max RSS.  This is still bounded smoke, but it
  validates the intended cancellation-summary style: reusable subruns first,
  full runs by composition.
- Prefix-trie status: the same generated smoke now builds a semantic
  label-prefix trie for the 37 observed top-family classes.  It compresses
  `518` raw observed step occurrences to `269` non-root trie nodes (`270`
  nodes including the root), proves each node by appending its parent
  `BellmanLabelStepRun` to a one-step run, and routes every observed class
  through `smokeObservedTrieLabelStepRunLanguageBound` to
  `graphSmoke_observed_trie_label_step_run_scaled_margin_nonpos`.  The focused
  graph smoke passed in `0:08.69` wall time with `3,918,384 kB` max RSS.  This
  is still bounded observed evidence, but it is the strongest current
  state-language proof shape: shared semantic prefix/state runs should be
  generated and reused, rather than one constructor chain per word/path class.
- Prefix-trie scale status: `scripts/bellman_trie_profile.py` now profiles trie
  reuse from graph JSON without emitting Lean.  Regenerating the `[0,5000000)`
  top-family graph with path classes took `3:36.76` wall time and `32,128 kB`
  max RSS using eight worker processes.  The resulting profile has `194` path
  classes, `2,716` raw step occurrences, `1,373` trie nodes, `1,344` reused
  steps, depth `14`, and max branching `3`.  Regenerating the `[0,10000000)`
  graph took `6:28.01` wall time and `34,064 kB` max RSS; it has `273` path
  classes, `3,822` raw step occurrences, `1,990` trie nodes, `1,833` reused
  steps, depth `14`, and max branching `3`.  This supports the trie/automaton
  route as a scalable state-language coordinate.  The next production-facing
  step is a semantic word-language/trie membership bridge, not a still-larger
  observed trie.
- Non-enumerative label-step trace status: the graph emitter now exports
  `graphSmoke_label_step_trace_language_scaled_margin_nonpos`, whose object is
  an arbitrary `SmokeLabelStepTrace` rather than a finite observed constructor.
  The accepted trace carries a `BellmanLabelStepRun SmokeStep ...`, final
  nonnegative potential, and a scaled margin bound.  The focused graph smoke
  passed in `0:11.84` wall time with `3,914,984 kB` max RSS.  This is the right
  bridge shape for the next step: prove real holonomy/cancellation top-family
  words produce such traces.
- Concrete face-sequence bridge status: the graph emitter now parses
  `face=...|pair=...` labels and emits `smokeLabelOfFace` plus
  `smokeLabelsOfSeq`.  The generated graph smoke proves that the sampled
  `cls0000FaceSeq : Step14 -> Face` maps to the `trieNode0014` labels and then
  exposes the reusable bridge
  `graphSmoke_cls0000_seq_of_trie_labels_scaled_margin_nonpos` for any sequence
  with those generated labels.  It also emits the toy pointwise sequence
  language `cls0000FaceSeqLanguage` and proves
  `graphSmoke_cls0000_seq_language_scaled_margin_nonpos`, so the smoke now has
  the shape `language predicate -> label equality -> Bellman bound`.  It now
  also imports `Cuboctahedron.Search.Enumeration` and proves one sampled
  rank/unrank bridge for rank `517`, namely `cls0000FaceSeq_rank`,
  `cls0000FaceSeq_unrank_pairword`, and `cls0000FaceSeq_matches_unrank`.  The
  reusable core `Cuboctahedron.Search.FaceLabelLanguage` now provides
  `contributionOrderSteps`, `faceLabelsInContributionOrder`, `SameFaceSeq`,
  `sameFaceSeq_of_pair_and_sign`,
  `sameFaceSeq_of_pairWordMatchesSeq_and_sign`, and
  `faceLabelsInContributionOrder_eq_of_same`; the graph smoke imports it for
  the sequence-language-to-label-equality step.  The emitter now also produces
  `cls0000PairSignLanguage`, which assumes only
  `PairWordMatchesSeq (unrankPairWord cls0000Rank) seq`, equality of the
  actual face signs with the generated representative, and the started face.
  The theorem `cls0000PairSignLanguage_same` turns those facts into
  `SameFaceSeq`, and
  `graphSmoke_cls0000_pair_sign_language_scaled_margin_nonpos` then obtains
  the Bellman margin bound.  Focused builds passed for the core in `0:02.43`
  wall / `3,274,564 kB` max RSS; direct typechecking of the generated graph
  smoke passed via
  `/usr/bin/time -v lake env lean Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraphSmoke.lean`
  in `0:06.28` wall / `3,779,592 kB` max RSS, and the cached Lake target
  replayed in `0:00.88` wall / `852,860 kB` max RSS.  The next production gap
  is now precise: replace the sampled `cls0000PairSignLanguage` with the real
  holonomy/cancellation top-family predicate, proving the pair-word matching
  and forced-sign hypotheses from that semantic state rather than enumerating
  exact face sequences.
- Rank/sign language core status: the sampled pair/sign bridge has been lifted
  into `Cuboctahedron.Search.RankFaceLabelLanguage`.  The reusable predicate is
  `PairSignLanguageAtRank rank template seq`, with the generic theorems
  `sameFaceSeq_of_pairSignLanguageAtRank` and
  `faceLabelsInContributionOrder_eq_of_pairSignLanguageAtRank`.  The graph
  emitter now imports this module and defines `cls0000PairSignLanguage` as an
  instance of the reusable predicate.  Focused builds passed:
  `/usr/bin/time -v lake build Cuboctahedron.Search.RankFaceLabelLanguage` in
  `0:03.48` wall / `3,244,824 kB` max RSS,
  `/usr/bin/time -v lake env lean Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraphSmoke.lean`
  in `0:06.28` wall / `3,760,780 kB` max RSS, and
  `/usr/bin/time -v lake build Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphSmoke`
  in `0:08.78` wall / `3,934,080 kB` max RSS.  This makes the future
  production theorem target cleaner: generated holonomy-family modules should
  prove `PairSignLanguageAtRank` facts and then reuse the generic bridge.
- Axis-forced rank/sign bridge status: added
  `Cuboctahedron.Search.AxisForcedRankLanguage`.  It packages the existing
  geometric theorem `forcedSeq_eq_of_axisForces_data` into
  `pairSignLanguageAtRank_of_axisForces`, proving that a feasible
  nonidentity sequence whose axis forces a generated `forcedSeq` satisfies
  `PairSignLanguageAtRank rank forcedSeq seq`.  It also exposes
  `faceLabelsInContributionOrder_eq_of_axisForces`.  The focused build passed:
  `/usr/bin/time -v lake build Cuboctahedron.Search.AxisForcedRankLanguage`
  in `0:02.18` wall / `3,259,396 kB` max RSS.  This is the first direct
  nonidentity hook from semantic axis-family evidence into the Bellman
  face-label language surface.
- Generated axis-forces-to-Bellman smoke status: the Bellman graph emitter now
  imports `Cuboctahedron.Search.AxisForcedRankLanguage` for rank-facing smokes
  and emits `graphSmoke_cls0000_axis_forces_scaled_margin_nonpos`.  The theorem
  assumes `SeqRealizesPairWord (unrankPairWord cls0000Rank) seq`,
  `NonIdentityAxisConstraints seq`, a checked kernel-line witness, and
  `AxisForcesForcedSeq (unrankPairWord cls0000Rank) axis cls0000FaceSeq`; it
  then applies `pairSignLanguageAtRank_of_axisForces` and the Bellman trie
  margin theorem.  Focused checks passed:
  `/usr/bin/time -v lake env lean Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraphSmoke.lean`
  in `0:06.23` wall / `3,797,744 kB` max RSS and
  `/usr/bin/time -v lake build Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphSmoke`
  in `0:11.73` wall / `3,955,352 kB` max RSS.  This is still one sampled
  rank/template, but it is no longer a toy language assumption: it validates
  the proof path from semantic nonidentity axis evidence to Bellman margin
  nonpositivity.

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

Bellman/potential residual pivot:

- The current nonidentity residual route is no longer to emit one direct
  affine-axis certificate per exact start-margin class.  Following the
  holonomy-normal-form/Bellman advice, the preferred certificate is a
  finite-horizon potential over a semantic state graph:
  local gains plus future potential are bounded at each transition, and the
  final potential/constant bound proves the whole language margin is
  nonpositive.
- `Cuboctahedron.Search.BellmanPotential` contains the reusable theorem
  surface for these generated graph/language proofs.
- `Cuboctahedron.Search.RankFaceLabelLanguage` and
  `Cuboctahedron.Search.AxisForcedRankLanguage` bridge rank-local feasible
  nonidentity witnesses to pair-sign/face-label languages from generated
  axis-forcing facts.
- `scripts/emit_bellman_graph_smoke.py` now emits a concrete sampled
  axis-forces membership bridge for
  `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphSmoke`.
  The generated theorem
  `graphSmoke_cls0000_generated_axis_forces_scaled_margin_nonpos` proves the
  Bellman margin bound from only `SeqRealizesPairWord` and
  `NonIdentityAxisConstraints`; the sampled axis, kernel witness, forced
  sequence, and prefix-linear facts are generated privately in the leaf.
- Focused build:

  ```text
  /usr/bin/time -v lake build \
    Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphSmoke
  ```

  passed in `0:12.49` wall time with `4,294,092 kB` max RSS.  The corresponding
  forbidden-keyword scan over the emitter and generated smoke module found no
  `sorry`, `admit`, `axiom`, `native_decide`, or `unsafe`.
- `scripts/audit_bellman_axis_bridge_samples.py` now checks whether sampled
  Bellman path classes can be bridged by the same exact forced-axis sequence
  used in the generated Lean smoke.  On
  `nonid_margin_bellman_top_pairing_000000000_001000000_with_step_tri_source_graph.json`,
  all `37 / 37` path classes were bridgeable.  Every sampled class used axis
  `-1/3,-1/3,-1` and final axis dot `1/3`.  This is not proof evidence, but it
  is the preflight gate for emitting bounded multi-class axis-forces bridge
  modules next.

Bounded multi-class Bellman bridge:

- `scripts/emit_bellman_graph_smoke.py` now accepts
  `--rank-bridge-limit N`.  The default is `1` and preserves the existing
  `BellmanTopPairingGraphSmoke` output.
- `--rank-bridge-limit 2` generated
  `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphBridge2Smoke`.
  The module exports sampled generated-axis theorems for both `cls0000` and
  `cls0001`.
- Focused build:

  ```text
  /usr/bin/time -v lake build \
    Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphBridge2Smoke
  ```

  passed in `0:22.20` wall time with `4,519,740 kB` max RSS.
- This is still a smoke bridge over sampled path classes.  The final
  production bridge must be a semantic holonomy/cancellation-language theorem,
  but the measured RSS supports the next bounded ramp to `4`, `8`, and
  eventually all `37` sampled classes if focused builds remain stable.
- The `--rank-bridge-limit 4` module
  `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphBridge4Smoke`
  also built successfully:

  ```text
  /usr/bin/time -v lake build \
    Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphBridge4Smoke
  ```

  Result: `0:21.11` wall time, `4,989,520 kB` max RSS, exit `0`.  The
  measured memory is still safely below the practical ceiling, so the next
  bounded smoke is `--rank-bridge-limit 8`.
- The `--rank-bridge-limit 8` module
  `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphBridge8Smoke`
  also built successfully:

  ```text
  /usr/bin/time -v lake build \
    Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphBridge8Smoke
  ```

  Result: `0:34.53` wall time, `5,510,392 kB` max RSS, exit `0`.  This keeps
  the sampled bridge ramp within the memory budget, but these modules remain
  focused smokes rather than final coverage roots.
- The all-`37` sampled bridge module
  `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphBridge37Smoke`
  was generated and built under `scripts/run_memory_guarded.py`.
  Guard telemetry:

  ```text
  elapsed: 150.90s
  peak tree RSS: 10,446.67 MiB
  minimum available memory: 37,240.78 MiB
  exit: 0
  ```

  This validates the sampled proof shape for every observed path class in the
  current graph.  It should not become the production coverage strategy.  The
  next implementation step is a semantic holonomy/cancellation-language bridge
  that proves arbitrary family members construct the same Bellman label-step
  run and axis-forcing premises.

Reusable Bellman/axis adapter:

- Added `Cuboctahedron.Search.BellmanAxisBridge`.
- Main theorem surfaces:
  `bellmanLabelStepRun_of_sameFaceSeq`,
  `bellmanLabelStepRun_of_pairSignLanguageAtRank`,
  `bellmanLabelStepRun_of_axisForces`, and
  `scaledMargin_nonpos_of_axisForces_labelStepRun`.
- Focused build:

  ```text
  /usr/bin/time -v lake build Cuboctahedron.Search.BellmanAxisBridge
  ```

  Result: `0:02.10` wall time, `3,298,336 kB` max RSS, exit `0`.
- This is the reusable hook that future generated nonidentity Bellman leaves
  should call after proving their semantic label-step run and generated
  axis-forcing facts.
- `scripts/emit_bellman_graph_smoke.py` now exercises that reusable hook in a
  generated module:
  `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphBridgeAdapterSmoke`.
  It exports
  `graphSmoke_cls0000_generated_axis_forces_bridge_scaled_margin_nonpos`, which
  calls `scaledMargin_nonpos_of_axisForces_labelStepRun` directly.
- Focused build:

  ```text
  /usr/bin/time -v lake build \
    Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphBridgeAdapterSmoke
  ```

  Result: `0:15.15` wall time, `4,279,512 kB` max RSS, exit `0`.

Bellman rank-family surface:

- `Cuboctahedron.Search.BellmanAxisBridge` now also defines
  `BellmanAxisRankFamily` and
  `BellmanAxisRankFamily.scaledMargin_nonpos`.
- This is the production-shaped interface for the GPT5.5-style
  Bellman/potential pivot: a generated family keeps its potential table,
  forced/template sequence, exact axis/kernel data, and margin arithmetic
  private, then exports a semantic theorem over a `ContainsRank` predicate.
- `scripts/emit_bellman_graph_smoke.py` can instantiate this surface for the
  current top-pairing Bellman graph.  The one-class smoke is:

  ```text
  Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphFamilySmoke
  ```

  with theorem:

  ```lean
  graphSmoke_cls0000_axis_rank_family_scaled_margin_nonpos
  ```

- Focused build:

  ```text
  /usr/bin/time -v lake build \
    Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphFamilySmoke
  ```

  Result: `0:16.69` wall time, `4,299,384 kB` max RSS, exit `0`.
- The smoke's `ContainsRank` predicate is intentionally singleton-shaped, so
  it proves the theorem surface but not coverage.  The next real bridge is a
  holonomy/cancellation-language membership theorem that supplies the same
  kernel check, axis-forcing fact, Bellman run, and margin bound for all ranks
  in a semantic family.

Exact path-class family audit:

- Added `scripts/audit_bellman_family_class_sizes.py`.
- On
  `scripts/generated/nonid_margin_bellman_top_pairing_000000000_001000000_with_step_tri_source_graph.json`,
  the audit reported `37` parsed path classes, `37` total represented members,
  `37` singleton classes, `0` multi-member classes, and max class size `1`.
- Decision: exact Bellman paths are not a production family coordinate for
  this artifact.  They are useful for smoke tests, but the next implementation
  must quotient by a coarser holonomy/cancellation state language rather than
  scaling exact edge/label path membership.

Bellman coarsening/closure notes:

- The exact-path class-size audit was extended to the existing `5M` and `10M`
  top-pairing graphs.  Both remained fully singleton:
  `194 / 194` singleton classes at `5M`, and `273 / 273` singleton classes at
  `10M`.
- Added `scripts/profile_bellman_path_coarsening.py`.  On the `10M` graph,
  `label-multiset` collapses all `273` observed paths into one group, while
  `label-multiset-margin` gives `46` groups with max group size `31`.  This is
  diagnostic only: exact margin value is not an acceptable production key, and
  bare label multiset is too broad without a transition-closure theorem.
- Rebuilt the 1M Bellman graph with `--state-key-mode with-step-face-tri-source`.
  This adds signed-face remaining counts while keeping the observed Bellman
  certificate size unchanged (`223` states, `229` edges, max margin bound `0`).
  The profiler ran in `1:19.62` wall time with `27,124 kB` max RSS.
- Added `scripts/audit_bellman_transition_closure.py`.  The naive signed-face
  language is not closed for the signed-face graph: `867` naive legal
  transitions vs `229` observed label transitions, with `638` missing
  transitions and no illegal observed transitions.
- Decision: the next candidate family language is not "all remaining signed
  face permutations."  It must include the top-pairing cancellation/tri-source
  constraints that explain why the missing transitions are not actually in the
  family.
- Added `scripts/audit_bellman_target_pairing_closure.py` to test that
  stronger target-pairing language.  On the 1M signed-face graph, it reported
  `420` target-pairing-legal transitions, `229` observed transitions, `191`
  missing transitions, and `0` illegal observed transitions.  Runtime was
  `0:08.04`, max RSS `573,572 kB`.
- Decision: target cancellation pairing is necessary but not sufficient.  The
  next language coordinate needs a coarser source-position/square-schedule
  restriction between bare cancellation pairing and exact square-parity path.
- Schedule-mode diagnostics were added to
  `scripts/audit_bellman_target_pairing_closure.py`.  On the 1M signed-face
  graph, target pairing plus observed position schedule reduced extra
  transitions from `191` to `16`; adding observed square-gap constraints
  reduced them to `15`.  No observed transition was rejected.  This is a
  strong diagnostic that source-position constraints matter, but it is not a
  closed production language.
- Decision: the next proof surface should treat the generated Bellman graph
  itself as the finite language automaton and prove semantic family membership
  steps through that graph, instead of searching for another exact schedule key.

Bellman rank-language family surface:

- Added `BellmanAxisRankLanguageFamily` and
  `BellmanAxisRankLanguageFamily.scaledMargin_nonpos` in
  `Cuboctahedron.Search.BellmanAxisBridge`.
- This is the direct response to the GPT5.5 Pro Bellman/potential pivot: the
  generated family no longer has to share one exact forced sequence or one
  exact Bellman run.  For every accepted rank, it may provide a rank-indexed
  kernel witness, forced sequence, final Bellman state, gain, label-step run,
  final-potential proof, scaled-margin bound, kernel check, and axis-forcing
  proof.
- The one-rank generated smoke
  `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphFamilySmoke`
  now instantiates this surface and exports
  `graphSmoke_cls0000_axis_rank_language_family_scaled_margin_nonpos`.
- Focused builds:

  ```text
  /usr/bin/time -v lake build Cuboctahedron.Search.BellmanAxisBridge
  /usr/bin/time -v lake build \
    Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphFamilySmoke
  ```

  Results: bridge `0:13.82` wall / `3,280,096 kB` max RSS / exit `0`;
  generated smoke `0:13.50` wall / `4,329,656 kB` max RSS / exit `0`.
- Keyword scan over the changed bridge, emitter, and generated smoke found no
  `sorry`, `admit`, `axiom`, `native_decide`, or `unsafe`.
- Decision: accepted.  The next implementation step is a generated
  graph-membership theorem for a semantic top-pairing family predicate.  That
  theorem should construct the rank-indexed runs required by
  `BellmanAxisRankLanguageFamily` while avoiding exact affine RHS, solved
  start point, total affine offset, and exact Bellman path as public family
  coordinates.

Indexed Bellman rank-language surface:

- The attempted multi-rank `ContainsRank : Prop` family exposed a Lean
  limitation that is relevant to the production design: disjunctive/existential
  Prop membership cannot be eliminated into computational data such as a
  kernel witness or a Bellman run.
- Added `BellmanAxisRankIndexedFamily` and
  `BellmanAxisRankIndexedFamily.scaledMargin_nonpos` to
  `Cuboctahedron.Search.BellmanAxisBridge`.
- This interface takes an internal `Index : Type` plus
  `rankOf : Index -> Fin numPairWords`.  Generated automata should use this
  index/path witness to build rank-specific data.  A public Prop theorem can
  then erase the index after the semantic result is in `Prop`.
- Generated smoke:
  `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2Smoke`
  with:

  ```lean
  graphSmoke_sampled_axis_indexed_rank_family_scaled_margin_nonpos
  graphSmoke_sampled_axis_rank_language_family_scaled_margin_nonpos
  ```

- Focused build:

  ```text
  /usr/bin/time -v lake build \
    Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2Smoke
  ```

  Result: `0:15.37` wall / `4,519,660 kB` max RSS / exit `0`.
- Decision: accepted.  The production Bellman graph-membership theorem should
  be Type-indexed internally and Prop-valued at the public API boundary.

Indexed Bellman cover adapter:

- Added `BellmanAxisRankIndexedCover` and
  `BellmanAxisRankIndexedCover.scaledMargin_nonpos`.
- This is the reusable public/private boundary for generated nonidentity
  Bellman leaves.  Internally, the leaf keeps a Type-level finite index/path
  witness used to produce computational data.  Externally, it exposes only a
  semantic `ContainsRank : Fin numPairWords -> Prop` plus a coverage proof
  that such a rank has an index.
- The generated two-rank smoke now uses `sampledAxisRankIndexedCover` and the
  common cover theorem instead of spelling out the Prop adapter locally.
- Focused build:

  ```text
  /usr/bin/time -v lake build \
    Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2Smoke
  ```

  Result: `0:15.53` wall / `4,532,064 kB` max RSS / exit `0`.
- Decision: accepted.  The next production step is generating the actual
  finite automaton membership proof that produces the Type-level path/index
  for broad semantic top-pairing families.

Bellman margin to public killed coverage:

- Added:

  ```text
  Cuboctahedron/Generated/NonIdentity/BellmanKilledBridge.lean
  ```

- Exported theorem names:

  ```lean
  nonIdentityRankKilled_of_no_axis_constraints
  nonIdentityRankKilled_of_indexed_cover_margin_positive
  ```

- This bridge is the current public semantic boundary for the Bellman
  nonidentity residual route.  A generated leaf keeps its Type-indexed
  Bellman automaton/path evidence private, proves `scaledMargin <= 0` through
  `BellmanAxisRankIndexedCover`, and supplies the family-specific positive
  margin lemma for actual nonidentity axis configurations.  The bridge then
  proves:

  ```lean
  Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank
  ```

- The generated two-rank smoke now exports:

  ```lean
  graphSmoke_sampled_axis_rank_killed_of_margin_positive
  ```

- Focused builds:

  | target | wall | max RSS | status |
  | --- | ---: | ---: | --- |
  | `Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge` | `0:00.86` | `842,388 kB` | passed |
  | `BellmanTopPairingGraphLanguage2Smoke` | `0:15.38` | `4,458,448 kB` | passed |

- Decision: accepted.  The Bellman route now reaches the public generated
  coverage predicate without exporting raw nonidentity certificates.  The next
  production step is generating the positive-margin theorem for real dominant
  top-pairing families.

Start-interior positive margin bridge:

- Added:

  ```lean
  positive_margin_of_axis_forces_start_interior
  ```

  in:

  ```text
  Cuboctahedron/Generated/NonIdentity/BellmanKilledBridge.lean
  ```

- This theorem is the generic start-interior side of the Bellman margin
  contradiction.  Given a private candidate `NonIdCert`, kernel check, affine
  solve check, axis-forcing proof, and a small generated theorem
  `XpStartInteriorQ cert.p0 -> 0 < margin`, it derives `0 < margin` from any
  hypothetical `NonIdentityAxisConstraints seq`.

- The proof uses existing trusted geometry:
  `nonIdCert_forces_candidate_data` and `XpStartInteriorQ_of_real`.  It does
  not call `checkNonIdCert` and does not expose a checked certificate as the
  public theorem surface.

- Focused builds:

  | target | wall | max RSS | status |
  | --- | ---: | ---: | --- |
  | `Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge` | `0:04.61` | `3,269,260 kB` | passed |
  | `BellmanTopPairingGraphLanguage2Smoke` | `0:15.78` | `4,496,136 kB` | passed |

- Decision: accepted.  The next emitter step is to generate private
  `p0`/`lambda`/solve witnesses and the small start-interior linear arithmetic
  lemma for the sampled Bellman family, then use it to close the killed theorem
  without an external `hpositive` premise.

Closed sampled positive-margin smoke:

- The Bellman graph smoke emitter now generates private positive-margin
  candidate data for the sampled ranks.  For the current two-rank diagnostic it
  emits `cls0000PositiveCert` and `cls0001PositiveCert`, along with kernel,
  affine-solve, and axis-forcing facts.
- It also emits the local start-interior arithmetic lemmas:

  ```lean
  cls0000PositiveCert_xpStartInterior_margin_positive
  cls0001PositiveCert_xpStartInterior_margin_positive
  ```

- The generated smoke now proves:

  ```lean
  graphSmoke_sampled_axis_rank_positive_margin
  graphSmoke_sampled_axis_rank_killed
  ```

  so the public semantic result
  `Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank` follows for
  the sampled Bellman cover with no external positive-margin premise.
- Build result:

  ```text
  /usr/bin/time -v lake build \
    Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2Smoke
  ```

  passed in `1:04.75` wall time with `8,731,216 kB` max RSS.
- The emitter now gives generated path-prefix proofs smaller local simp sets,
  using only the needed face-index theorem at each step.  The smoke still needs
  a local `maxHeartbeats 2000000` for a few late rational normalizations, so it
  remains a bounded diagnostic checkpoint rather than the production
  certificate shape.
- Strategic consequence: continue the GPT5.5/Gemini pivot.  The next
  production proof should be a family-level Bellman/potential certificate over
  a holonomy/cancellation automaton, with integer-scaled gains/potentials and a
  semantic membership theorem that constructs the internal Type-level Bellman
  index/path.  Do not scale the sampled rank-local start/solve replay as final
  coverage.

Bellman production gate audit:

- Added `scripts/audit_bellman_production_gates.py`.
- The script reads a Bellman graph JSON artifact and checks the current
  production gates: observed nonpositive Bellman bound, bounded fixed point,
  state/edge budget, integer bit-length budget, and an exact-path-class warning
  gate.
- Ran it on:

  ```text
  scripts/generated/nonid_margin_bellman_top_pairing_000000000_001000000_with_step_tri_source_graph.json
  ```

  Outputs:

  ```text
  scripts/generated/bellman_production_gate_top_pairing_1M.json
  scripts/generated/bellman_production_gate_top_pairing_1M.md
  ```

- Result: `candidate-needs-coarser-membership`.
- The numerical Bellman gates pass: `223` states, `229` edges, scaled bit
  length `10`, fraction bit length `9`, and max margin bound `0`.
- The exact path-class warning fails: `37` path classes for `37` paths, ratio
  `1.0`.
- Consequence: the current graph is an excellent potential certificate but not
  yet a production family language.  Next work should prove membership through
  a coarser holonomy/cancellation automaton or add cocycle-gauge/summary
  coordinates.  Do not emit exact Bellman path classes as final coverage.

Combined linear/tri-source state-key audit:

- Added `--state-key-mode with-step-face-linear-tri-source` to
  `scripts/nonidentity_margin_bellman_profile.py`.
- This tests whether adding prefix linear holonomy to the signed-face +
  tri-source Bellman state explains the remaining membership gap.
- The 1M profile passed in `1:21.03` wall time with only `27,124 kB` max RSS,
  using 4 jobs.
- Resulting graph metrics were unchanged for the current top-pairing family:
  `37` matched paths, `223` states, `229` edges, max margin bound `0`.
- The target-pairing closure audit with `observed+square-gap` still has `15`
  missing transitions and `0` illegal transitions.
- The production gate still says `candidate-needs-coarser-membership` with
  exact path class ratio `1.0`.
- Consequence: do not keep adding prefix-linear variants.  The next useful
  experiments are cocycle-gauge preconditioning, cancellation-summary
  languages, or a focused invariant explaining the remaining 15 apparent
  legal transitions.

Corrected Bellman closure-gap audit:

- Added `scripts/audit_bellman_missing_transition_completions.py`.
- The audit enumerates completions of each target-pairing/schedule missing
  transition and reruns the exact top-family classifier.
- The first version showed why this diagnostic needs to be careful: a
  completion can have a pair word whose forced-axis sequence is in the family
  even when the signed contribution sequence that took the missing transition
  is not that forced sequence.  The script now rejects these as
  `forced_sequence_mismatch`.
- Corrected run:

  ```text
  /usr/bin/time -v python3 scripts/audit_bellman_missing_transition_completions.py \
    --graph scripts/generated/nonid_margin_bellman_top_pairing_000000000_001000000_with_step_face_linear_tri_source_graph.json \
    --closure scripts/generated/bellman_target_pairing_observed_step_square_gap_closure_1M_step_face_linear_tri_source.json \
    --json scripts/generated/bellman_missing_transition_completions_top_pairing_1M_step_face_linear_tri_source.json \
    --markdown scripts/generated/bellman_missing_transition_completions_top_pairing_1M_step_face_linear_tri_source.md \
    --max-completions-per-gap 100000
  ```

- Result: `0:00.09` wall time, `27,140 kB` max RSS, decision
  `missing_transitions_are_overapproximation`.
- The 15 gaps produced `42` completions, `0` exact top-family matches,
  `41` `forced_sequence_mismatch` cases, and `1`
  `canonical_bad_face_mismatch`.
- Consequence: the Bellman graph remains a viable finite-horizon potential
  certificate for this family.  The next Lean bridge should not add more
  exact affine state; it should prove forced-axis membership:

  ```text
  rank satisfies the semantic top-family predicate
    -> forced signed contribution labels match the private Bellman language
    -> Bellman indexed cover gives scaledMargin <= 0
  ```

Current strategic priority after GPT5.5 Pro's Bellman recommendation:

1. Keep nonidentity residual coverage centered on finite-horizon
   Bellman/potential certificates over holonomy/cancellation automata.
2. Do not scale ordinary `NonIdCert` or exact start-margin certificate
   packing.
3. Keep potential tables, gains, and start-interior arithmetic private inside
   generated leaves; export only semantic killed theorems.
4. Use affine-cocycle gauge normalization or cancellation-summary DAGs only as
   shrinkers if forced-sequence membership still fragments.
5. Assemble final generated coverage through semantic state/family roots;
   rank remains an address for `unrankPairWord`, not the compression
   coordinate.
6. When translation resumes, test GoodDirection survivors with integer
   two/three-row Helly/Farkas circuits before any larger Walsh-Farkas fallback.

Object-language Bellman cover:

- Added `BellmanAxisRankObjectCover` in
  `Cuboctahedron/Search/BellmanAxisBridge.lean`.
- It packages the next production-shaped route:
  semantic objects accepted by a private Bellman label language cover public
  ranks, while the Bellman proof itself works over
  `faceLabelsInContributionOrder labelOfFace (forcedSeq obj)`.
- New theorem names:

  ```lean
  BellmanAxisRankObjectCover.scaledMargin_nonpos_at_object
  BellmanAxisRankObjectCover.scaledMargin_nonpos
  ```

- Focused builds passed:

  | target | wall | max RSS |
  | --- | ---: | ---: |
  | `Cuboctahedron.Search.BellmanAxisBridge` | `0:12.75` | `3,283,864 kB` |
  | `Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge` | `0:02.06` | `3,293,920 kB` |

- Consequence: the next emitter smoke should instantiate this object cover for
  the sampled top-pairing family.  That will test the GPT5.5 Bellman route
  more faithfully than exact path-class indexing: semantic object membership
  first, Bellman accepted forced labels second, public killed theorem last.

Object-cover smoke:

- Added
  `nonIdentityRankKilled_of_object_cover_margin_positive` to
  `Cuboctahedron/Generated/NonIdentity/BellmanKilledBridge.lean`.
- Updated `scripts/emit_bellman_graph_smoke.py` so the sampled top-pairing
  smoke emits:

  ```lean
  private def sampledAxisRankObjectCover
  theorem graphSmoke_sampled_axis_object_cover_scaled_margin_nonpos
  theorem graphSmoke_sampled_axis_object_cover_rank_killed_of_margin_positive
  ```

- Regenerated
  `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraphLanguage2Smoke.lean`.
- The public sampled theorem
  `graphSmoke_sampled_axis_rank_killed` now routes through the object-cover
  killed bridge.
- Focused builds passed:

  | target | wall | max RSS |
  | --- | ---: | ---: |
  | `Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge` | `0:05.80` | `3,274,272 kB` |
  | `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2Smoke` | `1:06.09` | `8,634,400 kB` |

- Consequence: this is now the preferred Bellman production surface.  The next
  generated step should make `sampledObjectAccepts` nontrivial: semantic
  top-pairing objects accepted by forced-sequence compatibility, not a
  hand-enumerated two-object smoke.

Forced-sequence object membership smoke:

- Updated `scripts/emit_bellman_graph_smoke.py` so
  `sampledObjectAccepts` is no longer `True`.  It now requires:

  ```lean
  AxisForcesForcedSeq (unrankPairWord (sampledRankOf idx))
    cls0000Axis (sampledObjectForcedSeq idx)
  ```

- The generated `sampledAxisRankObjectCover` uses
  `forcedSeq := sampledObjectForcedSeq`, and its `covers` proof discharges the
  acceptance obligation with the generated `clsXXXXAxisForces` theorem for
  each sampled object.
- This is the first smoke where the object-language route encodes the
  closure-gap lesson directly: Bellman objects must include forced-sequence
  compatibility, not just the observed graph labels.

Commands:

```bash
python3 -m py_compile scripts/emit_bellman_graph_smoke.py

python3 scripts/emit_bellman_graph_smoke.py \
  --input scripts/generated/nonid_margin_bellman_top_pairing_000000000_001000000_with_step_face_linear_tri_source_graph.json \
  --output Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraphLanguage2Smoke.lean \
  --namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2Smoke \
  --rank-bridge-limit 2

/usr/bin/time -v lake build \
  Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2Smoke
```

Focused build:

| target | wall | max RSS | status |
| --- | ---: | ---: | --- |
| `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2Smoke` | `1:07.64` | `8,516,300 kB` | passed |

Next gate: generate a real top-pairing object-family membership predicate whose
accepted objects come with `AxisForcesForcedSeq` witnesses.  The Bellman graph
can then remain a private finite-horizon potential certificate, while the
public theorem exports only semantic nonidentity killed coverage.

Local forced-axis transition closure:

- Extended `scripts/audit_bellman_target_pairing_closure.py` with
  `--require-local-axis-forced`.  The diagnostic parses the state's exact
  `lin=` matrix and filters legal next faces by the strict sign of
  `dot (lin * normal(face)) axis`.
- On the 1M face-linear-tri-source graph, using the sample axis orientation
  `1,1,3` rejects the observed transitions, showing the local contribution
  order needs the opposite axis orientation for this test.
- Rerunning with `--axis=-1,-1,-3` gives:

  | metric | value |
  | --- | ---: |
  | `total_observed_face_transitions` | `229` |
  | `total_local_axis_rejected_transitions` | `14` |
  | `total_missing_transitions` | `1` |
  | `total_illegal_transitions` | `0` |

- The single remaining gap is state `19`, face `tmmp`, consistent with the
  earlier completion audit's `canonical_bad_face_mismatch` reason.

Implication: the coarser Bellman membership theorem should combine target
cancellation pairing, observed schedule/square-gap constraints, oriented local
forced-axis compatibility, and canonical bad-face compatibility.  This is a
more promising production language than exact path classes, but it is not yet
closed.

Refined frontier audit:

- Reran `scripts/audit_bellman_missing_transition_completions.py` against the
  neg-axis local-forced closure artifact.
- Result:

  | metric | value |
  | --- | ---: |
  | `gap_count` | `1` |
  | `total_completions` | `1` |
  | `total_matched_top_family` | `0` |

- The sole completion has contribution faces
  `xm ym tmpm zm zp tppm tpmm tppp tmmm tpmp tmmp tmpp yp xp`.
- It fails only by `canonical_bad_face_mismatch`:
  `canonical_bad_face = tpmm`, target `yp`.

Next gate: add or audit a canonical-bad-face compatibility predicate for this
Bellman object language.  A zero-gap closure after that would justify a larger
semantic object-family Lean smoke.

Canonical bad-face frontier gate:

- `scripts/audit_bellman_missing_transition_completions.py` now promotes this
  exact situation to a named decision:

  ```text
  canonical_bad_face_filter_would_close
  ```

- Rerunning the refined closure audit gives:

  | metric | value |
  | --- | ---: |
  | `decision` | `canonical_bad_face_filter_would_close` |
  | `canonical_bad_face_filter_would_close` | `True` |
  | `gap_count` | `1` |
  | `total_completions` | `1` |
  | `total_matched_top_family` | `0` |
  | `truncated_gaps` | `0` |

Implication: the next Lean-facing design target is a generated semantic
terminal theorem for canonical bad-face compatibility, not exact path-class
membership.  It should become part of object `Accepts` for the Bellman
object-cover route.

Object start-violation Bellman bridge:

- `Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge` now imports
  `Cuboctahedron.Search.TerminalNonidentityTemplates` and exposes a
  terminal-object adapter for start-interior failures:

  ```lean
  structure ObjectStartViolationMarginCert
  theorem ObjectStartViolationMarginCert.positive
  theorem nonIdentityRankKilled_of_object_cover_start_violation_margin_certs
  ```

- The certificate is object-level, not rank-global.  It carries a private
  `NonIdCert`-shaped candidate, kernel and affine-axis solve checks,
  `AxisForcesForcedSeq`, a concrete `badFace ≠ Face.xp`, and the halfspace
  inequality showing that the candidate start point violates the relative
  interior of `X+`.
- The bridge composes this terminal contradiction with
  `BellmanAxisRankObjectCover.scaledMargin_nonpos_at_object`, so generated
  Bellman leaves can produce `NonIdentityRankKilled` without exposing the
  Bellman potential table or replaying full rank-local certificate checks in
  the public theorem.
- Focused build:

  ```bash
  /usr/bin/time -v lake build Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge
  ```

  passed in `0:03.47` wall time with `3,283,248 kB` max RSS.

Next gate: teach the Bellman smoke emitter to instantiate
`ObjectStartViolationMarginCert` for sampled accepted objects, then replace
the current positive-margin premise/object route with
`nonIdentityRankKilled_of_object_cover_start_violation_margin_certs`.

Object start-violation smoke:

- `scripts/emit_bellman_graph_smoke.py` now computes a concrete violated
  non-`X+` face for each sampled axis-start candidate and emits the matching
  bad-face inequality theorem.
- The generated sampled smoke now defines:

  ```lean
  sampledObjectStartViolationCert
  graphSmoke_sampled_axis_object_cover_rank_killed_of_start_violation
  graphSmoke_sampled_axis_rank_killed
  ```

- `graphSmoke_sampled_axis_rank_killed` now uses
  `nonIdentityRankKilled_of_object_cover_start_violation_margin_certs`, so the
  final sampled public killed theorem no longer depends on a separately
  supplied positive-margin callback.
- Focused build:

  ```bash
  /usr/bin/time -v lake build \
    Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2Smoke
  ```

  passed in `1:09.07` wall time with `8,583,932 kB` max RSS.

Next gate: replace the two sampled objects with a generated semantic
top-pairing object family.  The candidate acceptance stack should include
forced-sequence compatibility, oriented local forced-axis compatibility, and
canonical bad-face/start-violation data.

Object-family route profile:

- Added `scripts/profile_bellman_object_family_route.py`.
- Generated:

  ```text
  scripts/generated/bellman_object_family_route_profile_1M.json
  scripts/generated/bellman_object_family_route_profile_1M.md
  ```

- The profile merges the Bellman graph, local-axis closure audit, and
  missing-transition completion audit into one route summary.  It reports
  `223` states, `229` observed transitions, `230` legal transitions after the
  target pairing/schedule/local-axis filters, and exactly one missing
  transition before the canonical bad-face filter.  The missing-transition
  completion audit shows `0` top-family matches and no truncation; applying
  canonical bad-face compatibility leaves `229` legal transitions, `0`
  missing transitions, and `0` illegal transitions.
- Decision: `candidate-next-lean-family-smoke`.
- The remaining Lean obligation is precise: replace sampled object
  enumeration with a semantic object-family membership theorem for this
  closed transition language.

Deterministic label-step evaluator:

- Added to `Cuboctahedron.Search.BellmanPotential`:

  ```lean
  evalLabelStepFn
  bellmanLabelStepRun_of_evalLabelStepFn
  ```

- This is a generic table-evaluation bridge.  A generated object-family
  emitter can define a small deterministic transition table
  `State -> Label -> Option (State × Int)`, prove each table entry sound for
  the Prop-level `Step`, and then obtain `BellmanLabelStepRun` from the
  evaluator result.
- Focused builds passed:

  | target | wall | max RSS |
  | --- | ---: | ---: |
  | `Cuboctahedron.Search.BellmanPotential` | `0:02.30` | `3,324,300 kB` |
  | `BellmanAxisBridge + BellmanTopPairingGraphLanguage2Smoke` | `1:08.06` | `8,675,760 kB` |

This keeps the next semantic-family smoke away from exact hand-built
`BellmanLabelStepRun.cons` trees per path class.

Eval-backed object-cover smoke:

- Added `evalLabelStepFn_append` to `Cuboctahedron.Search.BellmanPotential`.
- `scripts/emit_bellman_graph_smoke.py` now emits a deterministic
  `smokeNext` table, a table-defined `SmokeStepEval`, literal one-step eval
  facts, append-composed trie-node eval facts, and an eval-backed sampled
  object cover.
- The generated sampled public theorem
  `graphSmoke_sampled_axis_rank_killed` now routes through
  `graphSmoke_sampled_axis_object_cover_eval_rank_killed_of_start_violation`.

Focused commands:

```bash
python3 -m py_compile scripts/emit_bellman_graph_smoke.py

python3 scripts/emit_bellman_graph_smoke.py \
  --input scripts/generated/nonid_margin_bellman_top_pairing_000000000_001000000_with_step_face_linear_tri_source_graph.json \
  --output Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraphLanguage2Smoke.lean \
  --namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2Smoke \
  --rank-bridge-limit 2

/usr/bin/time -v lake build \
  Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2Smoke
```

Result:

| target | wall | max RSS | status |
| --- | ---: | ---: | --- |
| `BellmanTopPairingGraphLanguage2Smoke` eval object-cover route | `2:23.27` | `10,084,892 kB` | passed |

This validates the deterministic finite-horizon evaluator as a Lean-checked
route into the semantic object-cover/start-violation theorem.  It also shows
that the all-trie-node smoke is too heavy to scale without more sharding or
pruning: production should emit eval facts only for terminal object-family
nodes, or split each Bellman family into small modules that export semantic
killed theorems.

Sampled-only eval-node follow-up:

- `scripts/emit_bellman_graph_smoke.py` now emits eval lemmas only for trie
  nodes on the sampled object-cover paths.
- Current bounded smoke: `25` sampled eval trie nodes including the root.
- Focused build:

  ```bash
  /usr/bin/time -v lake build \
    Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2Smoke
  ```

  passed in `2:24.17` wall time with `9,997,752 kB` max RSS.

This did not materially improve the build profile relative to the all-node eval
smoke.  The next optimization should target the full transition table and
`SmokeStepEval.valid` proof shape, likely by emitting family-local or
terminal-local tables rather than one broad table/validity proof.

Sampled-local eval-table follow-up:

- `scripts/emit_bellman_graph_smoke.py` now emits the deterministic evaluator
  only after identifying the sampled object-cover paths.
- The generated smoke uses a local table:

  ```lean
  -- sampled-local eval transitions: 24
  private def sampledSmokeNext
  private def SampledSmokeStepEval
  ```

- The old full-table names `smokeNext` and `SmokeStepEval` are no longer
  emitted in the sampled smoke module.
- Focused build:

  ```bash
  /usr/bin/time -v lake build \
    Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2Smoke
  ```

  passed in `1:11.40` wall time with `8,894,272 kB` max RSS.

This accepts local/sharded deterministic tables as the right eval-backed
Bellman shape.  It also rejects broad graph-level eval tables for production:
they add a large checking tax without improving the semantic theorem surface.
The next nonidentity Bellman step should split terminal family modules and
export small killed theorems, rather than optimizing eval-node facts further.

Bellman graph/terminal boundary update:

- The sampled Bellman emitter now supports a corrected split where graph
  shards contain only Bellman graph/potential object-cover evidence and
  terminal shards own local start-violation `NonIdCert` payloads.
- Generated graph shard:
  `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2GraphSmoke`.
  It exports the sampled rank/object interface plus
  `graphSmoke_sampled_axis_object_eval_scaled_margin_nonpos_at_object` and
  `graphSmoke_sampled_axis_object_cover_eval_covers`.
- Generated terminal shard:
  `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2TerminalSmoke`.
  It imports the graph shard, checks the local start-violation payloads,
  builds `sampledObjectStartViolationCert`, and exports
  `graphSmoke_sampled_axis_rank_killed`.
- Focused one-at-a-time builds passed:

  | target | wall | max RSS |
  | --- | ---: | ---: |
  | graph split | `0:21.30` | `4,721,740 kB` |
  | terminal split | `0:52.35` | `7,719,508 kB` |

This is now the preferred production boundary for the GPT5.5
Bellman/potential pivot.  Broad group/root modules should import terminal
semantic killed shards, not graph/potential shards, and public theorem
statements should not expose potential tables or local terminal cert data.

Bellman split-boundary audit:

- Added `scripts/audit_bellman_split_boundary.py`.
- Current sampled graph/terminal smoke passes:

  ```json
  {"graph_lines": 24369, "graph_positive_mentions": 0, "status": "passed", "terminal_lines": 740, "terminal_positive_payloads": 2}
  ```

- Treat this as an engineering pre-build guard for generated Bellman family
  shards.  It is not Lean proof evidence, but it catches the exact regression
  that would make production graph shards import or expose terminal payloads.

Bellman terminal-only root smoke:

- Added
  `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2AllSmoke`.
- It directly imports only
  `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2TerminalSmoke`.
- It re-exports `graphLanguage2AllSmoke_rank_killed`.
- Focused build passed in `0:02.07` wall time with `3,277,908 kB` max RSS.

This validates the group/root import rule for generated Bellman coverage:
above the leaf layer, import terminal semantic killed shards rather than
graph/potential shards.

Bellman generated terminal-root output:

- `scripts/emit_bellman_graph_smoke.py` now accepts `--all-output` and
  `--all-namespace` in split-output mode.
- The same regeneration command can now emit the graph/potential shard, the
  terminal contradiction shard, and the terminal-only root/group smoke.
- The generated
  `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2AllSmoke`
  directly imports only
  `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2TerminalSmoke`
  and exports `graphLanguage2AllSmoke_rank_killed`.
- Focused build after regeneration passed in `0:02.28` wall time with
  `849,616 kB` max RSS.
- The split-boundary audit still passes:

  ```json
  {"graph_lines": 24369, "graph_positive_mentions": 0, "status": "passed", "terminal_lines": 740, "terminal_positive_payloads": 2}
  ```

This makes the GPT5.5 Bellman/potential production shape reproducible from the
emitter itself: heavy graph/potential leaves stay below terminal modules,
terminal modules own local terminal evidence, and roots/groups import only
semantic killed theorem surfaces.

Terminal-boundary cleanup:

- The split emitter now adds a terminal-local predicate alias:

  ```lean
  def terminalContainsRank (rank : Fin numPairWords) : Prop
  ```

- The generated all/root smoke theorem now mentions
  `BellmanTopPairingGraphLanguage2TerminalSmoke.terminalContainsRank` instead
  of the graph shard's `sampledContainsRank`.
- Focused build of
  `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2AllSmoke`
  passed in `1:03.12` wall time with `7,669,176 kB` max RSS.
- The split-boundary audit still passes with graph positive payload count `0`
  and terminal positive payload count `2`.

This keeps group/root theorem types at the terminal semantic layer while still
allowing the terminal shard to depend transitively on the private graph/potential
leaf.

Bellman aggregate next-action planner:

- Added `scripts/plan_bellman_pivot_next.py`.
- The planner reads cached untrusted diagnostics and outputs the next safe
  Bellman action.  It is not proof evidence.
- Current command:

  ```bash
  python3 scripts/plan_bellman_pivot_next.py \
    --production-gate scripts/generated/bellman_production_gate_top_pairing_1M_step_face_linear_tri_source.json \
    --route-profile scripts/generated/bellman_object_family_route_profile_1M.json \
    --split-audit scripts/generated/bellman_split_boundary_graph_language2.json \
    --path-coarsening scripts/generated/bellman_path_coarsening_10M.json \
    --json scripts/generated/bellman_pivot_next_action_graph_language2.json \
    --markdown scripts/generated/bellman_pivot_next_action_graph_language2.md
  ```

- Current decision: `implement-semantic-membership-then-scale`.
- Checks: hard Bellman gates pass, semantic route is ready, split boundary
  passes, but exact path classes are still singleton-like.

This means the next Lean implementation should prove the semantic
object-family membership theorem for the closed Bellman language before
scaling the split emitter.  Cocycle-gauge and cancellation-summary work should
be treated as shrinkers for larger-window growth, not as replacements for the
current Bellman theorem surface.

Bellman rank-object membership adapter:

- Added to `Cuboctahedron.Search.BellmanAxisBridge`:

  ```lean
  structure BellmanRankObjectMembership
  theorem BellmanRankObjectMembership.covers
  ```

- This separates the semantic membership theorem from the object-cover theorem.
  Production generated families should prove a
  `BellmanRankObjectMembership Obj rankOf Accepts ContainsRank`; object covers
  and terminal killed theorems can then reuse `covers`.
- The sampled graph smoke now defines a private
  `sampledObjectMembership` and uses it for both object-cover instances.
- A direct `rcases` implementation failed because `sampledContainsRank` is
  `Prop` and cannot be eliminated into the Type-level object.  The accepted
  private sampled membership uses `Classical.choose`.
- Focused builds passed:

  | target | wall | max RSS |
  | --- | ---: | ---: |
  | `Cuboctahedron.Search.BellmanAxisBridge` | `0:03.22` | `3,289,636 kB` |
  | `BellmanTopPairingGraphLanguage2AllSmoke` | `1:13.98` | `7,648,172 kB` |

- Split-boundary audit remains passed with graph positive payloads `0` and
  terminal positive payloads `2`.

This is the current Lean theorem surface for the next real membership step:
replace the sampled membership proof with a generated semantic membership proof
for the closed Bellman language.

Object-cover constructor:

- Added `BellmanAxisRankObjectCover.ofMembership`.
- It packages a trace bound, local Bellman inequalities, and a
  `BellmanRankObjectMembership` proof into a full object cover.
- Focused build of `Cuboctahedron.Search.BellmanAxisBridge` passed in
  `0:02.72` wall time with `3,292,116 kB` max RSS.
- This is intended for future generated family shards: prove semantic
  membership once, then instantiate the object cover through this constructor.

Split terminal bridge:

- Added to `Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge`:

  ```lean
  theorem nonIdentityRankKilled_of_object_nonpos_start_violation_margin_certs
  ```

- This theorem consumes a rank/object cover, an object-level
  `scaledMargin <= 0` theorem, and object-local
  `ObjectStartViolationMarginCert` witnesses.  It does not mention Bellman
  states, labels, transition tables, or cover structures in the terminal
  theorem input.
- The bounded smoke now emits
  `graphSmoke_sampled_axis_object_nonpos_eval_rank_killed_of_start_violation`
  and routes `graphSmoke_sampled_axis_rank_killed` through it.
- Focused builds passed:

  | target | wall | max RSS |
  | --- | ---: | ---: |
  | `BellmanKilledBridge` split theorem | `0:02.51` | `3,287,464 kB` |
  | `BellmanTopPairingGraphLanguage2Smoke` split-terminal route | `1:10.34` | `8,835,660 kB` |

This is the abstraction boundary production shards need: graph/potential
modules can export object-level nonpositive theorems, while terminal
start-violation modules import only those theorem surfaces plus small terminal
certificates.

Named object-nonpos export:

- The generated smoke now exports:

  ```lean
  theorem graphSmoke_sampled_axis_object_eval_scaled_margin_nonpos_at_object
  ```

- The split terminal theorem
  `graphSmoke_sampled_axis_object_nonpos_eval_rank_killed_of_start_violation`
  consumes that named theorem.  This mirrors the intended production module
  boundary.
- Focused build passed in `1:08.97` wall time with `8,840,984 kB` max RSS.

This checkpoint does not split the file yet, but it validates the theorem
surface that will be moved into a graph-cover shard.

Split graph/terminal smoke:

- `scripts/emit_bellman_graph_smoke.py` now accepts split-output flags:
  `--graph-output`, `--terminal-output`, `--graph-import`,
  `--graph-namespace`, and `--terminal-namespace`.
- Generated split modules:

  ```text
  BellmanTopPairingGraphLanguage2GraphSmoke.lean
  BellmanTopPairingGraphLanguage2TerminalSmoke.lean
  ```

- The graph shard exports the sampled object interface and object-level
  nonpositive theorem.  The terminal shard imports it, defines the
  start-violation cert map, and exports `graphSmoke_sampled_axis_rank_killed`.
- Build telemetry:

  | target | wall | max RSS |
  | --- | ---: | ---: |
  | `BellmanTopPairingGraphLanguage2GraphSmoke` | `1:08.77` | `8,960,900 kB` |
  | `BellmanTopPairingGraphLanguage2TerminalSmoke` | `0:01.97` | `3,305,948 kB` |
  | monolithic `BellmanTopPairingGraphLanguage2Smoke` | `1:09.57` | `8,857,984 kB` |

The terminal shard being tiny and fast is the key architecture result.  The
heavy Bellman table can stay in leaf graph shards, while group/root imports
should point at terminal semantic killed shards.

Object-cover membership constructor smoke:

- `scripts/emit_bellman_graph_smoke.py` now emits sampled object covers through
  `BellmanAxisRankObjectCover.ofMembership`.
- The generated cover definitions are `private noncomputable def` because the
  sampled membership proof uses private `Classical.choose` to select an object
  from Prop-level rank membership.
- Focused build passed:

  | target | wall | max RSS |
  | --- | ---: | ---: |
  | `BellmanTopPairingGraphLanguage2AllSmoke` | `1:14.28` | `7,650,856 kB` |

- Split-boundary audit remains passed with graph positive payloads `0` and
  terminal positive payloads `2`.
- The next-action planner still returns
  `implement-semantic-membership-then-scale`.

Strategic note after the GPT5.5 Bellman/potential review:

- Continue nonidentity residual work through Bellman/potential certificates over
  semantic holonomy/cancellation languages.
- The next proof target is not another certificate packing format.  It is a
  real semantic membership theorem for the closed Bellman object language,
  feeding `BellmanRankObjectMembership` and then `ofMembership`.
- Cocycle-gauge and cancellation-summary profiling are conditional shrinkers if
  larger windows make the Bellman graph too large.
- Translation should stay on the GoodDirection plus small integer
  Helly/Farkas-circuit route; bad-direction masks are not proof data.

Accepted-object Bellman membership surface:

- Added `BellmanRankObjectMembership.ofExists` and
  `BellmanAxisRankObjectCover.ofExistsMembership` to
  `Cuboctahedron.Search.BellmanAxisBridge`.
- The generated graph smoke now defines the semantic production-shaped rank
  predicate:

  ```lean
  private def sampledAcceptedContainsRank (rank : Fin numPairWords) : Prop :=
    exists idx : SampledRankIndex,
      sampledObjectAccepts idx /\ sampledRankOf idx = rank
  ```

- It then proves nonpositive margin and semantic killed coverage for
  `sampledAcceptedContainsRank` through the object cover.
- Focused builds:

  | target | wall | max RSS |
  | --- | ---: | ---: |
  | `Cuboctahedron.Search.BellmanAxisBridge` | `0:02.29` | `3,284,988 kB` |
  | `BellmanTopPairingGraphLanguage2AllSmoke` | `1:16.27` | `7,693,352 kB` |

- Split-boundary audit remains passed: graph positive payloads `0`, terminal
  positive payloads `2`.

This is still a bounded smoke over two sampled objects.  The next real proof
step is to make the object type and `Accepts` predicate describe the closed
top-pairing/canonical-bad-face Bellman language, while reusing the same
`exists accepted object with this rank` membership surface.

Terminal/root accepted-object threading:

- `sampledAcceptedContainsRank` is now exported from the graph shard.
- The terminal shard now sets `terminalContainsRank` equal to
  `sampledAcceptedContainsRank`.
- The terminal killed theorem consumes
  `graphSmoke_sampled_accepted_axis_object_cover_eval_covers`.
- Focused all-smoke build passed in `1:13.58` wall time with
  `7,646,996 kB` max RSS.

This means the split smoke now exposes the production-shaped theorem surface
all the way through the root: accepted Bellman object membership implies
semantic `NonIdentityRankKilled`.

Evaluator-derived accepted-object trace bound:

- Added `bellmanLabelStepRunLanguageBound_of_evalLabelStepFn` to
  `Cuboctahedron.Search.BellmanPotential`.
- The accepted-object graph smoke now builds
  `sampledAcceptedAxisRankObjectCoverEval` using that theorem plus
  `BellmanAxisRankObjectCover.ofExistsMembership`.
- This is the production-facing shape for a closed Bellman language:
  `Accepts obj` should provide deterministic evaluator success, final
  nonnegative potential, and the object margin bound.
- Focused builds:

  | target | wall | max RSS |
  | --- | ---: | ---: |
  | `Cuboctahedron.Search.BellmanPotential` | `0:04.91` | `3,354,612 kB` |
  | `BellmanTopPairingGraphLanguage2AllSmoke` | `1:13.69` | `7,652,480 kB` |

- Split-boundary audit remains passed: graph positive payloads `0`, terminal
  positive payloads `2`.

Next Bellman slice: generate a real closed-language object whose `Accepts`
predicate is built from target-pairing/local-axis/canonical-bad-face invariants
and feeds the evaluator theorem directly.

Bellman eval evidence carried by `Accepts`:

- Added `BellmanEvalAccepts` and
  `bellmanLabelStepRunLanguageBound_of_evalAccepts` to
  `Cuboctahedron.Search.BellmanPotential`.
- `BellmanEvalAccepts` is an existential `Prop` carrying deterministic
  evaluator success, final nonnegative potential, and the integer scaled-margin
  bound for one accepted semantic object.
- Rejected mini-attempt: making this a `Prop`-valued structure with a
  computational `result : State × Int` field failed, because Lean cannot
  project computational data from proof-irrelevant `Prop` fields.
- The generated graph smoke now makes `sampledObjectAccepts` a conjunction of
  `AxisForcesForcedSeq` and `BellmanEvalAccepts`, then builds
  `sampledAcceptedAxisRankObjectCoverEval` through
  `bellmanLabelStepRunLanguageBound_of_evalAccepts`.
- Focused checks:

  | target | wall | max RSS |
  | --- | ---: | ---: |
  | `Cuboctahedron.Search.BellmanPotential` | `0:00.90` | `830,588 kB` |
  | `BellmanTopPairingGraphLanguage2AllSmoke` | `1:16.40` | `7,576,044 kB` |

- Split-boundary audit remains passed with `graph_positive_mentions = 0` and
  `terminal_positive_payloads = 2`.
- The aggregate planner still chooses
  `implement-semantic-membership-then-scale`.

Next theorem target:

```text
rank satisfies closed Bellman language
  -> exists accepted Bellman object for rank
  -> object carries axis-forces + evaluator/margin evidence
  -> Bellman cover gives scaledMargin <= 0
  -> terminal start-violation theorem gives NonIdentityRankKilled
```

Do not scale `SampledRankIndex`.  Replace it with a semantic object type whose
membership proof comes from target-pairing, local-axis, canonical-bad-face, and
closed transition-language invariants.

Eval object-cover constructor:

- Added `BellmanAxisRankObjectCover.ofEvalExistsMembership` in
  `Cuboctahedron.Search.BellmanAxisBridge`.
- This constructor packages:
  - the forced sequence function;
  - deterministic Bellman next-function soundness;
  - object-level `BellmanEvalAccepts` evidence for every accepted object;
  - Bellman step/root inequalities;
  - the existential accepted-object rank predicate.
- The generated graph smoke now uses this constructor instead of building
  `bellmanLabelStepRunLanguageBound_of_evalAccepts` in generated code.
- Focused checks:

  | target | wall | max RSS |
  | --- | ---: | ---: |
  | `Cuboctahedron.Search.BellmanAxisBridge` | `0:04.50` | `3,292,364 kB` |
  | `BellmanTopPairingGraphLanguage2AllSmoke` | `1:18.79` | `7,635,832 kB` |

- Split-boundary audit remains passed with `graph_positive_mentions = 0` and
  `terminal_positive_payloads = 2`.

Next code-generation target: future Bellman family shards should call
`ofEvalExistsMembership`, prove semantic closed-language membership, and keep
the Bellman trace-bound plumbing out of generated theorem bodies.

Eval/start-violation object surface:

- Added `BellmanEvalAxisObject` in `Cuboctahedron.Search.BellmanAxisBridge`.
  It packages rank, forced sequence, axis-forcing evidence, deterministic
  Bellman evaluator success, final nonnegative potential, and the scaled-margin
  bound.
- Added `BellmanAxisRankObjectCover.ofEvalAxisObjects`, a cover constructor
  for the existential accepted-object predicate
  `exists obj, True /\ obj.rank = rank`.
- Added `BellmanEvalStartViolationObject` and
  `nonIdentityRankKilled_of_eval_start_violation_objects` in
  `Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge`.
- This theorem is the current target surface for future nonidentity
  start-interior Bellman shards:

  ```text
  exists accepted eval/start-violation object for rank
    + next-function soundness
    + Bellman step/root inequalities
    -> NonIdentityRankKilled rank
  ```

- Focused checks:

  | target | wall | max RSS |
  | --- | ---: | ---: |
  | `Cuboctahedron.Search.BellmanAxisBridge` | `0:02.40` | `3,308,556 kB` |
  | `Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge` | `0:03.40` | `3,289,960 kB` |
  | `BellmanTopPairingGraphLanguage2AllSmoke` | `1:15.29` | `7,621,824 kB` |

Next proof-bearing generator step: emit a small smoke where rank membership
constructs `BellmanEvalStartViolationObject`s from semantic target-pairing,
local-axis, canonical-bad-face, and closed transition-language invariants
rather than from a bare sampled-index enumeration.

Split-boundary caveat:

- `BellmanEvalStartViolationObject` is for a generated shard that owns both
  Bellman automaton data and terminal start-violation payloads.
- The current graph/terminal split intentionally keeps `State`, `SmokeLabel`,
  `graphPotential`, and `sampledSmokeNext` private in the graph shard.  A
  terminal shard should not export or depend on those private internals just to
  construct the combined object.
- For split production, use the existing state-erased theorem
  `nonIdentityRankKilled_of_object_nonpos_start_violation_margin_certs`: graph
  shards export object-level nonpositivity; terminal shards own local
  start-violation payloads.

State-erased split object surface:

- Added `BellmanNonposStartViolationObject` and
  `nonIdentityRankKilled_of_nonpos_start_violation_objects` in
  `Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge`.
- This is the preferred split-shard target:

  ```text
  rank
  graph-exported scaledMargin rank <= 0
  terminal-owned ObjectStartViolationMarginCert
  ```

- It proves `NonIdentityRankKilled rank` from the existential accepted-object
  predicate `exists obj, True /\ obj.rank = rank`, without mentioning private
  Bellman states or evaluators.
- Focused checks:

  | target | wall | max RSS |
  | --- | ---: | ---: |
  | `Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge` | `0:02.59` | `3,291,044 kB` |
  | `BellmanTopPairingGraphLanguage2AllSmoke` | `1:18.01` | `7,711,664 kB` |

Next split-route generator target: terminal shards should construct
`BellmanNonposStartViolationObject` membership from graph-exported
nonpositivity theorems and terminal-local start-violation certificates.

Split terminal object route accepted:

- Updated `scripts/emit_bellman_graph_smoke.py` and the generated split
  terminal smoke so the terminal shard now constructs
  `BellmanNonposStartViolationObject`s directly.
- The generated theorem is:

  ```lean
  terminalNonposStartViolationObjectExists
  ```

  and the sampled killed theorem now uses:

  ```lean
  nonIdentityRankKilled_of_nonpos_start_violation_objects
  ```

- This realizes the GPT5.5 Bellman/potential pivot in the split architecture:
  the graph shard keeps the Bellman automaton, evaluator, states, labels, and
  potential private, while the terminal shard receives only exported
  nonpositivity and combines it with local start-interior violation evidence.
- Focused checks:

  | target | wall | max RSS |
  | --- | ---: | ---: |
  | `lake env lean Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraphLanguage2TerminalSmoke.lean` | `0:55.43` | `7,629,792 kB` |
  | `lake build Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2AllSmoke` | `0:00.93` | `844,172 kB` |

- Split-boundary audit after the change:

  ```json
  {"graph_lines": 24423, "graph_positive_mentions": 0, "status": "passed", "terminal_lines": 759, "terminal_positive_payloads": 2}
  ```

Current GPT5.5 pivot priority:

1. Treat nonidentity residual margin bounds as finite-horizon
   Bellman/potential certificates over holonomy/cancellation languages.
2. Make production shards prove semantic rank-to-object membership for
   `BellmanNonposStartViolationObject`.
3. Use affine-cocycle gauge normalization and cancellation-summary DAGs only
   when Bellman state/edge growth requires shrinkers.
4. Do not return to ordinary checked `NonIdCert` packing or exact affine-RHS
   keys for the final nonidentity residual route.

Object-shaped terminal predicate:

- The split terminal/root smoke now exports object membership directly:

  ```lean
  abbrev TerminalNonposStartViolationObject : Type :=
    BellmanNonposStartViolationObject sampledScaledMarginAtRank

  def terminalContainsRank (rank : Fin numPairWords) : Prop :=
    exists obj : TerminalNonposStartViolationObject, True /\ obj.rank = rank
  ```

- The sampled accepted-rank predicate remains only in the private theorem
  `terminalContainsRank_of_sampledAccepted`, which constructs those objects
  for the two-rank smoke.
- The public root smoke consumes `terminalContainsRank`, so production shards
  can replace the sampled constructor with a real holonomy/cancellation
  membership proof without changing the downstream killed theorem.
- Focused checks:

  | target | wall | max RSS |
  | --- | ---: | ---: |
  | `lake env lean Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraphLanguage2TerminalSmoke.lean` | `0:54.25` | `7,669,008 kB` |
  | `lake build Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2AllSmoke` | `0:54.56` | `7,677,592 kB` |

- Split-boundary audit:

  ```json
  {"graph_lines": 24423, "graph_positive_mentions": 0, "status": "passed", "terminal_lines": 765, "terminal_positive_payloads": 2}
  ```

Next concrete nonidentity work: prove a first bounded semantic membership
theorem of the shape

```text
target-pairing/local-axis/canonical-bad-face/reduced-shadow language
  -> terminalContainsRank rank
```

for the current top-pairing Bellman smoke.  This is the point where the
GPT5.5 Bellman/potential recommendation stops being bridge plumbing and starts
replacing sampled rank enumeration with holonomy language membership.

Reusable terminal membership record:

- Added `BellmanNonposStartViolationObjectMembership` in
  `Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge`.
- It packages the exact theorem surface production shards should prove:

  ```lean
  BellmanNonposStartViolationObjectMembership
    scaledMargin semanticContainsRank
  ```

  where `semanticContainsRank` is a holonomy/cancellation language predicate.
- The namespace provides:

  ```lean
  BellmanNonposStartViolationObjectMembership.covers
  BellmanNonposStartViolationObjectMembership.rankKilled
  BellmanNonposStartViolationObjectMembership.ofExists
  ```

- The split terminal smoke now defines `terminalObjectMembership` and proves
  `graphSmoke_sampled_axis_rank_killed` through
  `BellmanNonposStartViolationObjectMembership.rankKilled`.
- Focused checks:

  | target | wall | max RSS |
  | --- | ---: | ---: |
  | `lake build Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge` | `0:05.81` | `3,305,892 kB` |
  | `lake build Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphLanguage2AllSmoke` | `1:14.48` | `7,707,960 kB` |

- Split-boundary audit:

  ```json
  {"graph_lines": 24423, "graph_positive_mentions": 0, "status": "passed", "terminal_lines": 769, "terminal_positive_payloads": 2}
  ```

Next implementation frontier: replace `ofExists`/sampled construction with a
bounded generated semantic membership record for the top-pairing language.
That record should construct
`BellmanNonposStartViolationObject`s from target cancellation pairing,
observed schedule/square-gap, local forced-axis compatibility, and canonical
bad-face compatibility.

Cancellation-pairing language core:

- Added `Cuboctahedron/Search/CancellationPairingLanguage.lean`.
- This is the first Lean-side semantic component of the top-pairing Bellman
  membership language.
- Key definitions:

  ```lean
  TriCancellationPair
  TriSurvivor
  TriCancellationSummary
  triangularCancellationSummaryOfShadow
  triangularCancellationSummaryOfPairWord
  topPairingTargetSummary
  TopPairingLanguageAtRank
  ```

- The target now exists in Lean as the exact summary:

  ```text
  pairs=3-4:d11m
  survivors=0:dm11|1:d111|2:d1m1|5:dm11|6:d111|7:d1m1
  ```

- Focused check:

  | target | wall | max RSS |
  | --- | ---: | ---: |
  | `lake build Cuboctahedron.Search.CancellationPairingLanguage` | `0:02.30` | `3,280,896 kB` |

This does not prove Bellman terminal membership yet.  It replaces one JSON
coordinate in the accepted predicate stack with a Lean predicate that future
generated membership shards can use.

Top-pairing step-schedule language:

- Added `Cuboctahedron/Search/BellmanTopPairingLanguage.lean`.
- This imports the cancellation-pairing core and adds the observed
  contribution-order schedule predicate from the closure audit.
- Key definitions:

  ```lean
  topPairingAllowedFacesAtStep
  TopPairingStepScheduleFrom
  TopPairingStepScheduleLabels
  TopPairingStepScheduleSeq
  TopPairingScheduleLanguageAtRank
  ```

- The current combined rank predicate includes cancellation-pairing membership
  and the observed step schedule for the canonical face sequence of the
  unranked pair word.
- Focused check:

  | target | wall | max RSS |
  | --- | ---: | ---: |
  | `lake build Cuboctahedron.Search.BellmanTopPairingLanguage` | `0:02.41` | `3,279,288 kB` |

This replaces another JSON coordinate with a Lean predicate.  The remaining
top-pairing membership components are square-gap compatibility, local
forced-axis next-face compatibility, canonical-bad-face compatibility, and the
actual construction of terminal Bellman objects.

Top-pairing square-gap language:

- Extended `Cuboctahedron/Search/BellmanTopPairingLanguage.lean` with the
  observed square-face-by-triangular-gap table from the closure audit.
- New definitions:

  ```lean
  topPairingAllowedSquareFacesAtGap
  isSquarePair
  TopPairingSquareGapFrom
  TopPairingSquareGapLabels
  TopPairingSquareGapSeq
  ```

- `TopPairingScheduleLanguageAtRank` now contains cancellation summary,
  observed contribution-order step schedule, and observed square-gap schedule.
- Focused check:

  | target | wall | max RSS |
  | --- | ---: | ---: |
  | `lake build Cuboctahedron.Search.BellmanTopPairingLanguage` | `0:02.21` | `3,277,028 kB` |

Remaining language components before object membership: local forced-axis
next-face compatibility and canonical bad-face compatibility.

Top-pairing local forced-axis language:

- Extended `Cuboctahedron/Search/BellmanTopPairingLanguage.lean` with the
  exact local forced-axis predicate from the closure audit.
- New definitions:

  ```lean
  topPairingLocalAxis
  TopPairingLocalAxisAllows
  TopPairingLocalAxisFrom
  TopPairingLocalAxisLabels
  TopPairingLocalAxisSeq
  ```

- The axis for this route is `(-1,-1,-3)`.  The predicate scans
  contribution-order faces, checks positivity of the transformed normal
  against that axis, and advances the prefix linear part by the corresponding
  reflection.
- `TopPairingScheduleLanguageAtRank` now includes cancellation summary,
  observed step schedule, observed square-gap schedule, and local forced-axis
  compatibility.
- Focused check:

  | target | wall | max RSS |
  | --- | ---: | ---: |
  | `lake build Cuboctahedron.Search.BellmanTopPairingLanguage` | `0:04.35` | `3,272,680 kB` |

Remaining before terminal object membership: canonical bad-face compatibility
and construction of `BellmanNonposStartViolationObject`s from the combined
language.

Top-pairing canonical bad-face language:

- Extended `Cuboctahedron/Search/BellmanTopPairingLanguage.lean` with the
  singleton bad-face canonicalization used by the corrected Bellman
  closure-gap audit.
- New definitions:

  ```lean
  startedCanonicalSingleFace
  topPairingCanonicalBadFace
  TopPairingCanonicalBadFaceCompatible
  TopPairingClosedLanguageAtRank
  ```

- For this family, `topPairingCanonicalBadFace = Face.yp`.  This predicate is
  intentionally a D4 singleton-class predicate: actual bad face `Face.ym` is
  compatible, while the known missing-transition class `Face.tpmm` is not.
- Small checks in the module:

  ```lean
  topPairingCanonicalBadFaceCompatible_ym
  not_topPairingCanonicalBadFaceCompatible_tpmm
  ```

- Focused check:

  | target | wall | max RSS |
  | --- | ---: | ---: |
  | `lake build Cuboctahedron.Search.BellmanTopPairingLanguage` | `0:02.20` | `3,296,056 kB` |

The closed top-pairing language now contains cancellation pairing, observed
step schedule, square-gap schedule, local forced-axis compatibility, and
canonical bad-face compatibility.  The next proof-bearing Bellman step is to
construct `BellmanNonposStartViolationObject`s from this combined language
instead of from sampled rank/object existentials.

Closed-language `decide` warning:

- A bounded experiment tried to prove the two sampled
  `TopPairingClosedLanguageAtRank` facts by adding broad decidability
  instances for the recursive semantic language predicates and then using
  fieldwise `decide`.
- The support module still built, but the generated smoke target
  `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageSmoke`
  ran past the guard window and crashed the machine, likely by OOM.
- That path is rejected.  Do not add global `Decidable` instances or broad
  `decide` proofs for the closed language.  Future Bellman membership shards
  should emit explicit field proofs or direct `BellmanNonposStartViolationObject`
  constructors, then package them through
  `BellmanNonposStartViolationObjectMembership`.
- Use `scripts/run_memory_guarded.py` for any future generated-language
  membership smoke or Bellman object bridge.  The post-cleanup support module
  was rebuilt safely with:

  ```bash
  python3 scripts/run_memory_guarded.py \
    --max-tree-rss-mib 12000 \
    --min-available-mib 4096 \
    --poll-seconds 0.5 \
    --json /tmp/bellman_top_pairing_language_guard.json \
    -- lake build Cuboctahedron.Search.BellmanTopPairingLanguage
  ```

  The guarded cached run passed with `814 MiB` peak process-tree RSS.

Guard timeout hardening:

- After the closed-language `decide` smoke crashed the machine, the guard was
  extended with `--timeout-seconds`.
- Timeout kills now return `124`; memory guard kills return `137`; interrupts
  return `130`.
- Tiny validation:

  ```bash
  python3 -m py_compile scripts/run_memory_guarded.py

  python3 scripts/run_memory_guarded.py \
    --timeout-seconds 1 \
    --max-tree-rss-mib 12000 \
    --min-available-mib 4096 \
    --json /tmp/guard_timeout_test_after_code_fix.json \
    -- sleep 5
  ```

  The timeout test returned `124` and reported only `1 MiB` peak tree RSS.
- The safe support module was also rebuilt through the timeout-enabled guard:

  ```bash
  python3 scripts/run_memory_guarded.py \
    --timeout-seconds 60 \
    --max-tree-rss-mib 12000 \
    --min-available-mib 4096 \
    --poll-seconds 0.5 \
    --json /tmp/bellman_top_pairing_language_guard_timeout.json \
    -- lake build Cuboctahedron.Search.BellmanTopPairingLanguage
  ```

  Result: passed with `803 MiB` peak process-tree RSS and `46506 MiB` minimum
  available memory.

Future generated Bellman membership smokes must include all three caps:
wall-clock timeout, process-tree RSS, and system `MemAvailable`.  Do not run
another closed-language membership experiment as an uncapped `lake build`.

Closed-language constructor surface:

- Added component constructors in
  `Cuboctahedron/Search/BellmanTopPairingLanguage.lean`:

  ```lean
  TopPairingScheduleLanguageAtRank.ofComponents
  TopPairingClosedLanguageAtRank.ofComponents
  ```

- Added
  `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingClosedLanguageFieldSmoke.lean`
  as a generated-style constructor-surface smoke.  It does not prove concrete
  sampled membership by reduction.  Instead it verifies the intended generated
  theorem shape: explicit component proofs assemble into
  `TopPairingClosedLanguageAtRank`.
- Two concrete-reduction attempts were rejected under the guard:
  - importing the heavy Bellman graph shard just to reuse sampled rank names
    hit `12663 MiB` process-tree RSS and was killed;
  - self-contained local rank/word literals plus fieldwise `decide` hit
    `13195 MiB` process-tree RSS and was killed.
- Accepted guarded checks:

  ```bash
  python3 scripts/run_memory_guarded.py \
    --timeout-seconds 120 \
    --max-tree-rss-mib 12000 \
    --min-available-mib 4096 \
    --poll-seconds 0.5 \
    --json /tmp/bellman_top_pairing_language_constructor_guard.json \
    -- lake build Cuboctahedron.Search.BellmanTopPairingLanguage

  python3 scripts/run_memory_guarded.py \
    --timeout-seconds 120 \
    --max-tree-rss-mib 12000 \
    --min-available-mib 4096 \
    --poll-seconds 0.5 \
    --json /tmp/bellman_closed_language_constructor_smoke_lake_guard.json \
    -- lake build Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageFieldSmoke
  ```

  Results: support module passed at `4031.57 MiB` peak process-tree RSS; the
  generated-style constructor smoke passed at `3760.61 MiB` peak process-tree
  RSS.
- Next generator task: emit explicit component facts for sampled top-pairing
  objects and call `TopPairingClosedLanguageAtRank.ofComponents`; do not use
  local fieldwise `decide` as a substitute for those component facts.

Concrete non-axis field reduction postmortem:

- A follow-up attempted to prove only the sampled `cancellation`, `schedule`,
  and `squareGap` fields concretely from local rank/word literals, leaving
  `localAxis` as an abstract generated premise.
- This was still too expensive.  The timeout/RSS guard killed
  `lake build Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageFieldSmoke`
  after `11.52s` at `12853.04 MiB` process-tree RSS, with
  `37286.30 MiB` minimum available memory.
- Reverting the file to the constructor-only theorem shape revalidated the
  safe surface: the same guarded target passed in `2.50s` at `4042.77 MiB`
  process-tree RSS and `46130.52 MiB` minimum available memory.
- Decision: reject concrete fieldwise `decide` for Bellman closed-language
  membership, including for the non-local fields.  Future generated shards
  should emit explicit component trace proofs or direct
  `BellmanNonposStartViolationObject` constructors, then assemble with
  `TopPairingClosedLanguageAtRank.ofComponents`.

Component trace constructor status:

- Added small explicit constructors in
  `Cuboctahedron/Search/BellmanTopPairingLanguage.lean` for the three
  recursive component predicates:
  `TopPairingStepScheduleFrom`, `TopPairingSquareGapFrom`, and
  `TopPairingLocalAxisFrom`.
- Added `closedLanguageOfGeneratedTraces` to
  `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingClosedLanguageFieldSmoke.lean`.
  This validates the intended generated shape:

  ```text
  explicit schedule/square-gap/local-axis traces
    -> label predicates
    -> TopPairingClosedLanguageAtRank.ofComponents
  ```

- Guarded focused builds passed:
  - `Cuboctahedron.Search.BellmanTopPairingLanguage`: `6.01s`,
    `4054 MiB` peak process-tree RSS, `46078 MiB` minimum available memory.
  - `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageFieldSmoke`:
    `2.51s`, `3750 MiB` peak process-tree RSS, `46208 MiB` minimum available
    memory.
- Decision: accepted as the next safe proof surface.  The generator should
  emit these traces directly.  Do not use local rank/word `decide` to discover
  them.

Literal component trace smoke:

- Extended
  `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingClosedLanguageFieldSmoke.lean`
  with one literal contribution-label trace over
  `[xm, ym, yp, zm, zp, tmmm, tpmm, tppm, tpmp, tmpm, tppp, tmpp, tmmp, xp]`.
- The smoke proves `sampleScheduleTrace` and `sampleSquareGapTrace` by
  explicit constructor chains over the literal list, then exposes
  `closedLanguageOfLiteralTrace`.
- `closedLanguageOfLiteralTrace` separates the next membership problem into:
  label equality for the rank, cancellation proof, local-axis trace proof, and
  canonical-bad-face proof.  It does not reduce `unrankPairWord`.
- Guarded build passed:

  ```bash
  python3 scripts/run_memory_guarded.py \
    --timeout-seconds 120 \
    --max-tree-rss-mib 12000 \
    --min-available-mib 4096 \
    --poll-seconds 0.5 \
    --json /tmp/bellman_closed_language_literal_trace_smoke_guard.json \
    -- lake build Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageFieldSmoke
  ```

  Result: `4.51s`, `3991 MiB` peak process-tree RSS, `46168 MiB` minimum
  available memory.
- Decision: accepted as a bounded trace-shape smoke.  The remaining proof work
  is label-equality without rank reduction and a proof-carrying local-axis
  trace over exact prefix states.

Local-axis generated-state trace surface:

- Added `topPairingLocalAxisAllows_of_dot_eq` and
  `topPairingLocalAxisFrom_cons_next` to
  `Cuboctahedron/Search/BellmanTopPairingLanguage.lean`.
- These lemmas let generated shards prove `TopPairingLocalAxisFrom` from
  per-step dot equalities, positivity facts, and explicit next linear-state
  equalities.  They avoid whole-list local-axis reduction.
- Added `sampleLocalAxisTraceOfGeneratedStates` to
  `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingClosedLanguageFieldSmoke.lean`.
- Guarded builds passed:
  - `Cuboctahedron.Search.BellmanTopPairingLanguage`: `5.53s`,
    `4017 MiB` peak process-tree RSS, `46156 MiB` minimum available memory.
  - `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageFieldSmoke`:
    `2.50s`, `4073 MiB` peak process-tree RSS, `46131 MiB` minimum available
    memory.
- Decision: accepted.  Remaining work is to make the generator emit the
  per-step matrix/dot facts and to prove rank-label equality without reducing
  `unrankPairWord` in Lean.

Positive-template label bridge:

- Added `positiveSignOfFace_faceOfPairSign` in
  `Cuboctahedron/Search/PairWords.lean`.
- Added `canonicalSeqOfPairWord_matches` in
  `Cuboctahedron/Search/NonIdentityCase.lean`.
- Added `faceLabelsInContributionOrder_eq_of_positive_template` in
  `Cuboctahedron/Search/BellmanTopPairingLanguage.lean`.
- Added `closedLanguageOfPositiveTemplateTrace` to the generated-style smoke.
- This bridge proves canonical contribution labels from a generated positive
  template, `PairWordMatchesSeq (unrankPairWord rank) template`, start/sign
  facts, and a literal template-label equality.  It avoids reducing
  `unrankPairWord` in Lean.
- Guarded builds passed:
  - `Cuboctahedron.Search.PairWords`: `2.50s`, `3869 MiB` peak process-tree
    RSS.
  - `Cuboctahedron.Search.NonIdentityCase`: `10.52s`, `4196 MiB` peak
    process-tree RSS.
  - `Cuboctahedron.Search.BellmanTopPairingLanguage`: `23.58s`, `11072 MiB`
    peak process-tree RSS after dependency rebuilds.
  - `Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageFieldSmoke`:
    `2.50s`, `4053 MiB` peak process-tree RSS.
- Decision: accepted.  The next move is a small generator mode that emits one
  sampled shard using the positive-template label bridge, literal
  schedule/square-gap traces, and proof-carrying local-axis trace facts.

Standalone generated trace shard:

- Added `scripts/emit_bellman_closed_language_trace_smoke.py`.
- The script emits:

  ```text
  Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingClosedLanguageGeneratedTraceSmoke.lean
  scripts/generated/bellman_closed_language_generated_trace_smoke.json
  ```

- The generated Lean shard is `273` lines and imports only
  `Cuboctahedron.Search.BellmanTopPairingLanguage`.
- It mechanically emits the literal contribution-label list, schedule and
  square-gap constructor chains, a local-axis generated-state trace theorem,
  and `generatedClosedLanguageOfPositiveTemplateTrace`.
- Commands run:

  ```bash
  python3 -m py_compile scripts/emit_bellman_closed_language_trace_smoke.py

  python3 scripts/emit_bellman_closed_language_trace_smoke.py \
    --output Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingClosedLanguageGeneratedTraceSmoke.lean \
    --namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke \
    --name generated \
    --report scripts/generated/bellman_closed_language_generated_trace_smoke.json

  python3 scripts/run_memory_guarded.py \
    --timeout-seconds 120 \
    --max-tree-rss-mib 12000 \
    --min-available-mib 4096 \
    --poll-seconds 0.5 \
    --json /tmp/bellman_generated_trace_smoke_guard.json \
    -- lake build Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke
  ```

- Result: generated trace shard passed in `4.00s`, with `3989 MiB` peak
  process-tree RSS and `46199 MiB` minimum available memory.
- Decision: accepted as the first generator-owned closed-language trace shard.
  It is not concrete rank membership yet; the next generator step is to read a
  sampled Bellman object and emit template-matching and local-axis matrix/dot
  facts instead of leaving them as parameters.

Post-crash safety correction:

- After this work, the user reported that the machine crashed, likely from
  memory pressure.  The visible guard logs for the latest recorded shard do not
  show an oversized process, but the plan now treats the crash report as a real
  safety incident.
- The latest recorded guard logs were:

  ```text
  Generated trace shard: 4.00s, 3989 MiB peak RSS, 46199 MiB min available.
  BellmanTopPairingLanguage dependency rebuild: 23.58s, 11072 MiB peak RSS,
  44801 MiB min available.
  ```

- New operating rule: no unguarded generated/Bellman `lake build`,
  `lake env lean`, or broad profiler runs.  The next smokes should use
  `scripts/run_memory_guarded.py` with a cap no higher than `6000 MiB`,
  timeout at most `60s`, and minimum available memory at least `24576 MiB`.
- If an already-accepted target fails under the stricter cap, shrink the theorem
  surface before continuing.  Do not raise the cap as the default response.

Strict Bellman smoke wrapper:

- Added `scripts/run_bellman_safe_smoke.py`.
- It is an allowlisted wrapper around `scripts/run_memory_guarded.py`, with
  hard defaults and rejections for the current post-crash policy:

  ```text
  max process-tree RSS cap: 6000 MiB
  minimum MemAvailable floor: 24576 MiB
  max timeout: 60s
  ```

- Current allowlisted target:

  ```text
  generated-trace ->
    Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedLanguageGeneratedTraceSmoke
  ```

- Commands run:

  ```bash
  python3 -m py_compile scripts/run_bellman_safe_smoke.py

  python3 scripts/run_bellman_safe_smoke.py \
    --dry-run \
    --json /tmp/bellman_safe_smoke_generated_trace_6g.json

  python3 scripts/run_bellman_safe_smoke.py \
    --json /tmp/bellman_safe_smoke_generated_trace_6g.json

  python3 scripts/run_bellman_safe_smoke.py \
    --dry-run \
    --max-tree-rss-mib 7000
  ```

- Results:
  - compile passed;
  - dry-run expanded to one guarded `lake build` of the allowlisted generated
    trace target;
  - strict generated-trace smoke passed in `2.00s`, with `846 MiB` peak
    process-tree RSS and `46443 MiB` minimum available memory;
  - high-cap refusal test stopped before launch with
    `--max-tree-rss-mib 7000 exceeds 6000`.
- Decision: accepted as the mandatory route for the next Bellman generated
  smokes unless an equally strict allowlisted runner is introduced.

Graph-input trace emitter:

- Extended `scripts/emit_bellman_closed_language_trace_smoke.py` so it can read
  a cached Bellman graph JSON and select a path object's `label_indices`.
- The script maps those indices through graph labels of the form
  `face=...|pair=...`, validates the resulting 14-face contribution list
  against the top-pairing schedule and square-gap tables, and emits the same
  constructor-chain trace shard.
- Cached graph input:

  ```text
  scripts/generated/nonid_margin_bellman_top_pairing_000000000_001000000_with_step_face_linear_tri_source_graph.json
  ```

- Selected path object metadata now recorded in
  `scripts/generated/bellman_closed_language_generated_trace_smoke.json`:

  ```text
  path_object_index = 0
  rank = 517
  label_indices = [8, 10, 11, 12, 13, 0, 4, 6, 5, 2, 7, 3, 1, 9]
  edge_indices = [0, 124, 125, 128, 135, 145, 158, 173, 190, 210, 6, 45, 80, 123]
  final = 141
  margin_scaled = -376
  ```

- The generated Lean shard was byte-identical to the previous generated trace
  file; only the generator and report changed.
- Strict wrapper smoke:

  ```bash
  python3 scripts/run_bellman_safe_smoke.py \
    --json /tmp/bellman_safe_smoke_generated_trace_graph_input_6g.json
  ```

- Result: passed in `1.50s`, with `821 MiB` peak process-tree RSS and
  `46543 MiB` minimum available memory.
- Decision: accepted.  This is now a graph-object-driven generated trace smoke,
  but the local-axis matrix/dot facts are still theorem parameters.  The next
  generator step is to emit or import those facts for the selected object.

Concrete local-axis facts for selected graph path:

- Extended `scripts/emit_bellman_closed_language_trace_smoke.py` with
  `--concrete-local-axis`.
- The emitter now computes exact rational prefix matrices and local-axis dot
  values for the selected graph path, emits them as private literals, and emits
  Lean-checked facts `generatedHdot00` through `generatedHdot13`,
  `generatedHpos00` through `generatedHpos13`, and `generatedHnext00` through
  `generatedHnext13`.
- New theorem exported by the generated shard:

  ```lean
  generatedClosedLanguageOfPositiveTemplateConcreteLocalAxis
  ```

- This theorem no longer takes the local-axis trace as a parameter.  It still
  requires template-match, positive-template, cancellation-language, and
  canonical-bad-face facts.
- Initial strict wrapper run failed safely, not from memory:

  ```text
  12.02s, 4122 MiB peak process-tree RSS, 46045 MiB minimum available memory.
  ```

  Cause: generated next-state proofs did not unfold `matId` inside `reflM`.
- After adding `matId` to the generated next-state simplification list, the
  strict wrapper run passed:

  ```bash
  python3 scripts/run_bellman_safe_smoke.py \
    --json /tmp/bellman_safe_smoke_generated_trace_concrete_axis_6g_retry.json
  ```

  Result:

  ```text
  4.01s, 4190 MiB peak process-tree RSS, 46006 MiB minimum available memory.
  ```

- Decision: accepted for one selected graph path object.  The next generated
  membership facts are template match/positivity/labels, cancellation language,
  and canonical bad-face compatibility.

Label-equality trace surface:

- The selected graph path contains negative signed faces, so the older
  all-positive template bridge is not the right active route for this trace.
- Extended the generated shard with:

  ```lean
  generatedClosedLanguageOfLabelTrace
  generatedClosedLanguageOfLabelTraceConcreteLocalAxis
  ```

- These theorems require the direct label equality:

  ```lean
  faceLabelsInContributionOrder (fun f => f)
    (canonicalSeqOfPairWord (unrankPairWord rank)) =
    generatedContributionLabels
  ```

  and then combine it with the generated schedule/square-gap/local-axis facts.
- Strict wrapper smoke:

  ```bash
  python3 scripts/run_bellman_safe_smoke.py \
    --json /tmp/bellman_safe_smoke_generated_trace_label_eq_6g.json
  ```

- Result: passed in `6.01s`, with `4164 MiB` peak process-tree RSS and
  `45987 MiB` minimum available memory.
- Current generated shard size: `655` lines.  Current emitter size: `647`
  lines.
- Decision: accepted.  The next membership step should produce this direct
  label equality, preferably through the existing `PairSignLanguageAtRank` or
  axis-forces label bridge, not through all-positive assumptions.

Latest crash safety note:

- A subsequent run crashed the machine again.  The restarted workspace was
  clean and memory was normal, but Bellman generated work must now assume that
  even seemingly focused proof checks can cross the practical memory boundary.
- The accepted graph path has negative signed faces.  Therefore the
  canonical-sequence label theorem is only a diagnostic compatibility surface
  for this path; it is not the next production bridge.
- The next API should be sequence-parametric:

  ```lean
  TopPairingClosedLanguageForSeq rank seq badFace
  ```

  where `seq : Step14 -> Face` is the signed sequence whose contribution
  labels match the private Bellman trace.
- The generated theorem should consume

  ```lean
  faceLabelsInContributionOrder (fun f => f) seq =
    generatedContributionLabels
  ```

  plus generated schedule, square-gap, and local-axis facts.  It should not
  ask Lean to prove the same equality for
  `canonicalSeqOfPairWord (unrankPairWord rank)` for this negative trace.
- The next proof check must go through `scripts/run_bellman_safe_smoke.py`,
  preserving the `6000 MiB` process-tree RSS cap, `24576 MiB` availability
  floor, and `60s` timeout.  If the signed-sequence smoke exceeds that cap,
  stop and shrink the theorem surface rather than raising the cap.

Signed-sequence surface checkpoint:

- Added the sequence-parametric language structures in
  `Cuboctahedron.Search.BellmanTopPairingLanguage`:

  ```lean
  TopPairingScheduleLanguageForSeq
  TopPairingClosedLanguageForSeq
  ```

- The generated trace emitter now exports:

  ```lean
  generatedClosedLanguageForSeqOfLabelTrace
  generatedClosedLanguageForSeqOfLabelTraceConcreteLocalAxis
  ```

  These theorems target an arbitrary signed `seq : Step14 -> Face` and require
  only:

  ```lean
  faceLabelsInContributionOrder (fun f => f) seq =
    generatedContributionLabels
  ```

  plus cancellation-language and canonical-bad-face facts.
- The regenerated shard was checked only through the strict wrapper:

  ```bash
  python3 scripts/run_bellman_safe_smoke.py \
    --json /tmp/bellman_safe_smoke_generated_trace_seq_surface_6g.json
  ```

  Result: passed in `11.01s`, with `4122.64 MiB` peak process-tree RSS and
  `46121.54 MiB` minimum available memory.
- Static checks passed:
  `python3 -m py_compile` for the emitter and guard scripts, `git diff
  --check`, and the forbidden-token scan over the touched Lean/script files.
- Decision: accepted.  This is now the correct route for the selected
  negative-face Bellman graph path.  The canonical-label surface remains only
  diagnostic.

Next bridge:

```text
axis-forced signed sequence
  -> signed-sequence label equality
  -> TopPairingClosedLanguageForSeq
  -> Bellman nonpositive start-violation object membership
```

Signed label-transport checkpoint:

- Added `TopPairingClosedLanguageForSeq.transportLabels` in
  `Cuboctahedron.Search.BellmanTopPairingLanguage`.
- The generated trace emitter now also exports:

  ```lean
  generatedClosedLanguageForSeqOfTransportedLabelTrace
  generatedClosedLanguageForSeqOfTransportedLabelTraceConcreteLocalAxis
  ```

- This is the exact theorem shape wanted for axis-forced feasibility data:
  generated facts prove the forced sequence has the private Bellman labels,
  while `faceLabelsInContributionOrder_eq_of_axisForces` will provide the
  equality from any actual feasible signed sequence to that forced sequence.
- Strict wrapper check:

  ```bash
  python3 scripts/run_bellman_safe_smoke.py \
    --json /tmp/bellman_safe_smoke_generated_trace_label_transport_6g.json
  ```

  Result: passed in `8.01s`, with `4149.81 MiB` peak process-tree RSS and
  `46037.78 MiB` minimum available memory.
- Decision: accepted.  Next generated proof work should instantiate the
  transport equality from `AxisForcesForcedSeq`, not from canonical positive
  labels.

PairSign bridge checkpoint:

- A direct separate adapter importing `Cuboctahedron.Search.AxisForcedRankLanguage`
  was tried and rejected under the strict memory guard:

  ```text
  /tmp/bellman_top_pairing_axis_bridge_guard.json
  elapsed 7.01s, peak RSS 6205.52 MiB, killed by the 6000 MiB cap
  ```

  The theorem was small, but the import stack was too heavy for this
  post-crash Bellman layer.
- Replaced that route with the lighter
  `TopPairingClosedLanguageForSeq.transportPairSignLanguage` theorem in
  `Cuboctahedron.Search.BellmanTopPairingLanguage`.
- This theorem targets `PairSignLanguageAtRank`, whose dependency surface is
  `RankFaceLabelLanguage`, not the full certificate/axis-forces stack.
- The generated trace emitter now exports:

  ```lean
  generatedClosedLanguageForSeqOfPairSignTrace
  generatedClosedLanguageForSeqOfPairSignTraceConcreteLocalAxis
  ```

- Strict wrapper check:

  ```bash
  python3 scripts/run_bellman_safe_smoke.py \
    --json /tmp/bellman_safe_smoke_generated_trace_pairsign_6g.json
  ```

  Result: passed in `7.51s`, with `4142.32 MiB` peak process-tree RSS and
  `46125.38 MiB` minimum available memory.
- Decision: accepted.  Future generated membership can consume
  `PairSignLanguageAtRank rank forcedSeq seq`; producing that fact from
  `AxisForcesForcedSeq` remains valid, but should be staged outside the
  lightweight Bellman trace shard unless its import path passes the strict
  guard.

Generated forced-sequence checkpoint:

- The trace emitter now reconstructs the selected signed forced sequence from
  its contribution-order labels:

  ```lean
  generatedForcedSeq : Step14 -> Face
  generatedForcedSeq_labels_eq :
    faceLabelsInContributionOrder (fun f => f) generatedForcedSeq =
      generatedContributionLabels
  ```

- The generated shard exports:

  ```lean
  generatedClosedLanguageForSeqOfGeneratedForcedSeq
  ```

  whose remaining assumptions are only:

  ```text
  PairWordMatchesSeq (unrankPairWord rank) generatedForcedSeq
  PairSignLanguageAtRank rank generatedForcedSeq seq
  TopPairingLanguageAtRank rank
  TopPairingCanonicalBadFaceCompatible badFace
  ```

- Strict wrapper check:

  ```bash
  python3 scripts/run_bellman_safe_smoke.py \
    --json /tmp/bellman_safe_smoke_generated_trace_forced_seq_6g.json
  ```

  Result: passed in `6.51s`, with `4156.55 MiB` peak process-tree RSS and
  `46065.13 MiB` minimum available memory.
- Decision: accepted.  The generated trace shard now owns the concrete
  signed forced sequence and its label equality, further reducing future
  membership assumptions.

Generated rank/word match checkpoint:

- The emitter now also writes:

  ```lean
  generatedRank : Fin numPairWords
  generatedForcedSeq_rank :
    rankPairWord? (pairWordOfSeq generatedForcedSeq) = some generatedRank
  generatedForcedSeq_matches_unrank :
    PairWordMatchesSeq (unrankPairWord generatedRank) generatedForcedSeq
  ```

- It exports:

  ```lean
  generatedClosedLanguageForSeqOfGeneratedRankPairSign
  ```

  which no longer needs a separate `PairWordMatchesSeq` assumption for the
  selected rank.
- Strict wrapper check:

  ```bash
  python3 scripts/run_bellman_safe_smoke.py \
    --json /tmp/bellman_safe_smoke_generated_trace_rank_match_6g.json
  ```

  Result: passed in `5.01s`, with `4182.92 MiB` peak process-tree RSS and
  `46031.80 MiB` minimum available memory.
- Decision: accepted.  The selected trace shard now proves its own
  rank/forced-sequence matching fact.  Remaining local facts are
  `PairSignLanguageAtRank`, `TopPairingLanguageAtRank`, and canonical bad-face
  compatibility.

Generated canonical bad-face checkpoint:

- The emitter now reads the selected Bellman family bad face from the graph
  metadata and emits the local compatibility theorem:

  ```lean
  generatedCanonicalBadFaceCompatible :
    TopPairingCanonicalBadFaceCompatible Face.ym
  ```

- The generated shard exports:

  ```lean
  generatedClosedLanguageForSeqOfGeneratedRankPairSignBadFace
  ```

  whose remaining assumptions are now only:

  ```text
  PairSignLanguageAtRank generatedRank generatedForcedSeq seq
  TopPairingLanguageAtRank generatedRank
  ```

- Strict wrapper check before the machine-crash report:

  ```bash
  python3 scripts/run_bellman_safe_smoke.py \
    --json /tmp/bellman_safe_smoke_generated_trace_bad_face_6g.json
  ```

  Result: passed in `6.51s`, with `4131.42 MiB` peak process-tree RSS and
  `46107.76 MiB` minimum available memory.

- After the crash report, the guard tooling was strengthened: future
  generated/Bellman Lean checks must inherit a hard `RLIMIT_AS` address-space
  cap through `scripts/run_memory_guarded.py --hard-address-space-mib`, and
  `scripts/run_bellman_safe_smoke.py` now defaults to
  `--hard-address-space-mib 8192.0` while continuing to enforce the `6000 MiB`
  RSS polling cap, `24576 MiB` available-memory floor, and `60s` timeout.
  The hard-cap wrapper was validated only with `py_compile`, a dry-run, and a
  tiny `python3 -c` child; no post-crash Lean run has been launched yet.

Generated cancellation/top-pairing membership checkpoint:

- The generated shard now proves the selected rank belongs to the top-pairing
  cancellation language:

  ```lean
  generatedTopPairingLanguageAtRank :
    TopPairingLanguageAtRank generatedRank
  ```

  The proof is a small definitional equality after rewriting
  `unrankPairWord generatedRank` to `pairWordOfSeq generatedForcedSeq`; it
  does not import the heavy axis-forces stack.

- The shard exports the sharper theorem:

  ```lean
  generatedClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation
  ```

  whose only remaining assumption is now:

  ```text
  PairSignLanguageAtRank generatedRank generatedForcedSeq seq
  ```

- The first attempt to validate this through the hard-capped `lake build`
  runner failed safely with Lean's `failed to create thread` exception under
  `RLIMIT_AS = 8192 MiB`:

  ```bash
  python3 scripts/run_bellman_safe_smoke.py \
    --json /tmp/bellman_safe_smoke_generated_trace_cancellation_8g_as.json
  ```

  Guard summary: exit `-6`, elapsed `23.02s`, `770.11 MiB` peak RSS,
  hard-AS `8192 MiB`, and `46505.08 MiB` minimum available memory.  This is
  treated as a rejected runner configuration, not as a mathematical failure.

- `scripts/run_bellman_safe_smoke.py` now defaults to direct Lean checking:

  ```bash
  lake env lean -M 6000 -j1 -s 2048 \
    Cuboctahedron/Generated/NonIdentity/Residual/\
BellmanTopPairingClosedLanguageGeneratedTraceSmoke.lean
  ```

  under the same external RSS, hard-AS, availability, and timeout guard.

- Accepted validation command:

  ```bash
  python3 scripts/run_bellman_safe_smoke.py \
    --json /tmp/bellman_safe_smoke_generated_trace_cancellation_direct_8g_as.json
  ```

  Result: passed in `5.01s`, with `4002.89 MiB` peak process-tree RSS,
  `8192 MiB` hard address-space cap, and `46143.72 MiB` minimum available
  memory.

Axis-forces bridge checkpoint:

- The generated shard now imports
  `Cuboctahedron.Search.AxisForcedRankLanguage` and exposes:

  ```lean
  generatedClosedLanguageForSeqOfAxisForces
  ```

  It has the shape:

  ```text
  SeqRealizesPairWord (unrankPairWord generatedRank) seq ->
  NonIdentityAxisConstraints seq ->
  checkKernelLineWitness ... axis kernel = true ->
  AxisForcesForcedSeq (unrankPairWord generatedRank) axis generatedForcedSeq ->
  TopPairingClosedLanguageForSeq generatedRank seq Face.ym
  ```

  This removes the direct `PairSignLanguageAtRank` assumption from the public
  selected-shard theorem and replaces it with the existing semantic
  nonidentity axis-forcing bridge.

- Direct dependency notes:
  - `AxisForcedRankLanguage.lean` initially failed under direct Lean because
    local `.olean` artifacts for `PairWordSymmetry` and then
    `TranslationCase` were missing.
  - `lake build Cuboctahedron.Search.PairWordSymmetry` failed safely under
    `RLIMIT_AS = 8192 MiB` with Lean's `failed to create thread` exception.
  - Direct Lean source checks and direct `.olean` emission for
    `PairWordSymmetry`, `TranslationCase`, and `AxisForcedRankLanguage` all
    passed under `-M 6000 -j1 -s 2048`, the `6000 MiB` RSS cap, the
    `8192 MiB` hard-AS cap, and the `24576 MiB` available-memory floor.

- Accepted final shard check:

  ```bash
  python3 scripts/run_bellman_safe_smoke.py \
    --json /tmp/bellman_safe_smoke_generated_trace_axis_forces_direct_8g_as.json
  ```

  Result: passed in `4.51s`, with `4012.77 MiB` peak process-tree RSS,
  `8192 MiB` hard address-space cap, and `46056.39 MiB` minimum available
  memory.

Latest crash-safety note:

- The user reported another machine crash after the most recent Bellman /
  axis-forces work.  Lightweight inspection after restart showed no lingering
  Lean/Python job and about `45 GiB` available memory, but the exact pre-crash
  process is not recoverable here.  Treat the most recent heavy path as unsafe
  until revalidated by smaller direct-Lean targets.
- `scripts/run_bellman_safe_smoke.py` now allows only the `direct-lean` runner.
  It must not be used to launch `lake build`; Lake builds and dependency
  compilations require separate, explicit, strictly capped commands and fresh
  telemetry.
- Future generated/Bellman checks should use the tightened post-crash envelope:
  direct `lake env lean -M 6000 -j1 -s 2048` only through
  `scripts/run_bellman_safe_smoke.py`, process-tree RSS cap `4500 MiB`, hard
  address-space cap `6144 MiB`, available-memory floor `36864 MiB`, and timeout
  `45s`.  No `lake build` target is allowed through this Bellman wrapper.

Import-preflight checkpoint:

- `scripts/run_bellman_safe_smoke.py` now parses the allowlisted target's
  direct imports and recursively follows local `Cuboctahedron.*` source
  imports before launching Lean.
- If any corresponding local `.olean` file is absent under
  `.lake/build/lib/lean`, the wrapper refuses to run.  This prevents a
  generated-shard check from being confused with dependency compilation after a
  clean checkout or failed artifact cleanup.
- Dry-run validation of the current target found direct imports
  `Cuboctahedron.Search.AxisForcedRankLanguage` and
  `Cuboctahedron.Search.BellmanTopPairingLanguage`, with `24` transitive local
  imports whose `.olean` artifacts were present.  No Lean proof check was run
  for this checkpoint.
- The preflight now also checks artifact freshness: each local `.olean` must be
  at least as new as its corresponding source file.  The stale-import dry run
  found `24` fresh local artifacts and records source/olean paths and mtimes in
  the wrapper JSON.  This is still operational safety evidence only; it does
  not replace Lean proof checking.

Post-quarantine source audit:

- The current generated trace shard already contains local proofs of
  `generatedTopPairingLanguageAtRank` and
  `generatedCanonicalBadFaceCompatible`, plus the theorem
  `generatedClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation`.
  The old plan text saying those are the next facts to generate is stale.
- The remaining selected-shard bridge is now at the pair-sign / axis-forces
  boundary.  Future proof-bearing checks should split that bridge into a tiny
  target first; do not merge a heavier axis-forces import stack back into
  ordinary Bellman trace smokes unless it passes the strict direct-Lean guard.

Split axis-forces bridge checkpoint:

- Added
  `Cuboctahedron/Generated/NonIdentity/Residual/BellmanAxisForcesPairSignSmoke.lean`.
  It imports only `Cuboctahedron.Search.AxisForcedRankLanguage` and proves
  `pairSign_of_axisForces_smoke` plus
  `contributionLabels_eq_of_axisForces_smoke`.
- Added the allowlisted wrapper target `--target axis-forces-pairsign`.
- Strict guarded validation passed:

  ```bash
  python3 scripts/run_bellman_safe_smoke.py \
    --target axis-forces-pairsign \
    --json /tmp/bellman_axis_forces_pairsign_guard.json
  ```

  Telemetry: `11.51s`, `3900 MiB` peak process-tree RSS, `8192 MiB` hard-AS
  cap, and `46210 MiB` minimum available memory.  The import preflight found
  `21` fresh local `.olean` artifacts.

Trace/axis split checkpoint:

- `scripts/emit_bellman_closed_language_trace_smoke.py` now emits the
  axis-forces bridge only with explicit `--include-axis-forces-bridge`.
- The normal generated trace shard has been regenerated without that flag.  It
  imports only `Cuboctahedron.Search.BellmanTopPairingLanguage`, stops at
  `PairSignLanguageAtRank`, and no longer exports
  `generatedClosedLanguageForSeqOfAxisForces`.
- Strict guarded validation of the normal trace target passed:

  ```bash
  python3 scripts/run_bellman_safe_smoke.py \
    --target generated-trace \
    --json /tmp/bellman_generated_trace_pairsign_boundary_guard.json
  ```

  Telemetry: `8.01s`, `3957.87 MiB` peak process-tree RSS, `8192 MiB`
  hard-AS cap, and `46164.75 MiB` minimum available memory.  The import
  preflight dropped to `18` fresh local `.olean` artifacts.
- After rebasing over remote commit `8fb69642f` (`Update README.md`), both
  allowlisted targets were rechecked under the strict wrapper.  The
  `generated-trace` target passed in `8.01s` at `3976 MiB` peak RSS with `18`
  fresh imports; the `axis-forces-pairsign` target passed in `2.00s` at
  `3562 MiB` peak RSS with `21` fresh imports.

Split-composition checkpoint:

- Added
  `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingSplitCompositionSmoke.lean`.
  It imports the two split leaves and proves
  `generatedClosedLanguageForSeqOfAxisForcesSplit`, composing
  `pairSign_of_axisForces_smoke` with
  `generatedClosedLanguageForSeqOfGeneratedRankPairSignBadFaceAndCancellation`.
- The first composition preflight refused correctly because one imported
  generated smoke `.olean` was missing and the other was stale.  The two leaf
  artifacts were then emitted explicitly under the wrapper:
  `generated-trace --emit-olean` passed in `8.51s` at `3989.25 MiB`; and
  `axis-forces-pairsign --emit-olean` passed in `2.00s` at `3941.01 MiB`.
- With fresh artifacts, `--target split-composition` passed in `2.50s` at
  `3576.13 MiB` peak RSS with `26` fresh local imports.
- The composition root also emitted its own `.olean` under the wrapper:
  `split-composition --emit-olean` passed in `4.01s` at `3810.38 MiB` peak
  RSS with `26` fresh imports.  The artifact path is
  `.lake/build/lib/lean/Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingSplitCompositionSmoke.olean`.

Latest crash report and tightened quarantine:

- The user reported another machine crash after the follow-up Bellman work,
  likely from memory pressure.  Post-restart lightweight inspection found about
  `45 GiB` available memory and no lingering high-RSS Lean/Python job.  The
  in-flight second-shard generated files were tiny (`32 KiB`, `4 KiB`, and
  `4 KiB` report JSON), so the issue is proof-check/import memory, not source
  size.
- No additional Lean proof check was run for this incident checkpoint.
- Because those second-shard files were not validated under the post-crash
  envelope, they were not promoted into the repository; the unverified files
  and temporary wrapper target entries were discarded.
- `scripts/run_bellman_safe_smoke.py` was tightened from the old
  `6000 MiB`/`8192 MiB`/`24576 MiB`/`60s` envelope to:
  `4500 MiB` process-tree RSS cap, `6144 MiB` hard address-space cap,
  `36864 MiB` available-memory floor, and `45s` timeout.
- Static verification passed: `python3 -m py_compile` for the Bellman smoke,
  memory guard, and trace-emitter scripts; `git diff --check`; and a narrow
  forbidden-token scan over `scripts/run_bellman_safe_smoke.py`.  A dry run of
  `python3 scripts/run_bellman_safe_smoke.py --target generated-trace --dry-run`
  preflighted `18` fresh local imports and expanded to direct Lean with the
  tightened caps, without launching Lean.
- If a generated/Bellman target cannot pass under this stricter envelope, it is
  considered too large for the current production-safe proof path and must be
  split further before promotion.

Per-target budget preflight:

- `scripts/run_bellman_safe_smoke.py` now also enforces target-specific local
  import and target-source-size budgets before launching Lean.
- Current budgets:
  - `generated-trace`: at most `18` local imports and `40 KiB` target source;
  - `axis-forces-pairsign`: at most `21` local imports and `8 KiB` target source;
  - `split-composition`: at most `26` local imports and `8 KiB` target source.
- Dry-run validation launched no Lean proof checks and passed for all three
  targets:
  - `generated-trace`: `18 / 18` local imports, `32 / 40 KiB` source;
  - `axis-forces-pairsign`: `21 / 21` local imports, `2 / 8 KiB` source;
  - `split-composition`: `26 / 26` local imports, `2 / 8 KiB` source.
- The wrapper JSON records these under `target_budget`.  This is an operational
  guardrail only; proof-bearing promotion still requires a strict guarded Lean
  check under the current memory envelope.
- `scripts/run_bellman_safe_smoke.py --status-only` now checks all allowlisted
  targets with the same freshness and budget preflight, then exits before
  constructing or launching Lean.  Status-only validation was run as:

  ```bash
  python3 scripts/run_bellman_safe_smoke.py \
    --status-only \
    --json /tmp/bellman_safe_status_only.json
  ```

  It reported:
  - `axis-forces-pairsign`: ready, `21 / 21` imports, `2 / 8 KiB` source;
  - `generated-trace`: ready, `18 / 18` imports, `32 / 40 KiB` source;
  - `split-composition`: ready, `26 / 26` imports, `2 / 8 KiB` source.

  This is the preferred first check after crashes, rebases, generated-shard
  edits, or artifact cleanup; it is still not proof evidence.

First proof-bearing check under the tightened post-crash envelope:

- Command:

  ```bash
  python3 scripts/run_bellman_safe_smoke.py \
    --target split-composition \
    --json /tmp/bellman_split_composition_tight_guard.json
  ```

- Result: passed.
- Telemetry: `12.02s` elapsed, `3891 MiB` peak process-tree RSS,
  `6144 MiB` hard address-space cap, and `46331 MiB` minimum available memory.
- Target preflight/budget: `26 / 26` fresh local imports, `2 / 8 KiB` target
  source.
- Decision: the existing one-path split-composition smoke is revalidated under
  the tightened envelope.  Do not infer that larger Bellman generated targets
  are safe; test each new target singly under the same guard.

Leaf revalidation under the same tightened envelope:

- `axis-forces-pairsign`:

  ```bash
  python3 scripts/run_bellman_safe_smoke.py \
    --target axis-forces-pairsign \
    --json /tmp/bellman_axis_forces_pairsign_tight_guard.json
  ```

  Result: passed in `4.01s`, with `3827 MiB` peak process-tree RSS,
  `6144 MiB` hard address-space cap, and `46387 MiB` minimum available memory.

- `generated-trace`:

  ```bash
  python3 scripts/run_bellman_safe_smoke.py \
    --target generated-trace \
    --json /tmp/bellman_generated_trace_tight_guard.json
  ```

  Result: passed in `4.50s`, with `4000 MiB` peak process-tree RSS,
  `6144 MiB` hard address-space cap, and `46252 MiB` minimum available memory.

The current one-path split Bellman smoke stack is therefore revalidated under
the post-crash envelope when checked one target at a time: both leaves and the
tiny composition root pass.  This remains a bounded smoke, not a license to run
parallel Lean or broader generated targets.

Second sampled split path:

- Generated path object index `1` from
  `scripts/generated/nonid_margin_bellman_top_pairing_000000000_001000000_with_step_face_linear_tri_source_graph.json`.
- New files:
  - `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingClosedLanguageGeneratedTraceSmoke01.lean`;
  - `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingSplitCompositionSmoke01.lean`;
  - `scripts/generated/bellman_closed_language_generated_trace_smoke_01.json`.
- The trace shard imports only
  `Cuboctahedron.Search.BellmanTopPairingLanguage` and stops at
  `PairSignLanguageAtRank`.  The composition root imports that shard plus the
  separately checked `BellmanAxisForcesPairSignSmoke`.
- Added allowlisted wrapper targets:
  - `generated-trace-01`: budget `18` local imports and `40 KiB` target source;
  - `split-composition-01`: budget `26` local imports and `8 KiB` target source.
- Status-only initially refused `split-composition-01` because the second trace
  `.olean` was absent.  This was the intended safety behavior.
- The second trace shard was emitted under the strict guard:

  ```bash
  python3 scripts/run_bellman_safe_smoke.py \
    --target generated-trace-01 \
    --emit-olean \
    --json /tmp/bellman_generated_trace01_tight_emit_olean.json
  ```

  Result: passed in `11.01s`, with `3967 MiB` peak tree RSS, `6144 MiB` hard
  address-space cap, and `46244 MiB` minimum available memory.

- After that, `split-composition-01` passed status-only and then the strict
  guarded check:

  ```bash
  python3 scripts/run_bellman_safe_smoke.py \
    --target split-composition-01 \
    --json /tmp/bellman_split_composition01_tight_guard.json
  ```

  Result: passed in `2.00s`, with `3546 MiB` peak tree RSS, `6144 MiB` hard
  address-space cap, and `46442 MiB` minimum available memory.

Decision: accepted as a second bounded split-path smoke under the post-crash
envelope.  This strengthens evidence for the split architecture while keeping
the proof checks singly guarded and small.

Split-smoke batch planner:

- Added `scripts/plan_bellman_split_smokes.py`.
- The planner reads the cached Bellman graph JSON and renders planned trace
  source text in memory, using the same emitter helper as the generated trace
  smoke.  It reports target/module names, source sizes, budget status, and
  current source/`.olean` freshness.  It does not launch Lean and is not proof
  evidence.
- Commands run:

  ```bash
  python3 scripts/plan_bellman_split_smokes.py \
    --count 8 \
    --json scripts/generated/bellman_split_smoke_batch_plan_000_008.json \
    --markdown docs/bellman_split_smoke_batch_plan_000_008.md

  python3 scripts/plan_bellman_split_smokes.py \
    --count 37 \
    --json scripts/generated/bellman_split_smoke_batch_plan_000_037.json \
    --markdown docs/bellman_split_smoke_batch_plan_000_037.md
  ```

- Results:
  - `[0,8)`: `8` planned entries, `0` over budget, `256 KiB` trace source,
    `16 KiB` split source;
  - `[0,37)`: `37` planned entries, `0` over budget, `1184 KiB` trace source,
    `74 KiB` split source.
- Reports:
  - `docs/bellman_split_smoke_batch_plan_000_008.md`;
  - `docs/bellman_split_smoke_batch_plan_000_037.md`.

Decision: accepted as the next operational planning gate.  The full cached
37-path graph can be split into small planned trace/root shards, but proof
promotion still requires single-target guarded Lean checks or a serial batch
runner that enforces the same guard per target.

Serial split-smoke path runner:

- Added `scripts/run_bellman_split_smoke_path.py`.
- The runner accepts a cached Bellman `path_object_index`, emits the matching
  trace shard and tiny split-composition root, enforces the same source/import
  budgets as the planner, and optionally runs direct Lean checks serially under
  `scripts/run_memory_guarded.py`.
- The runner emits both trace and split `.olean` artifacts when `--check` is
  used, so future aggregate roots can depend on checked artifacts.
- Dry-run for path object index `2`:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 2 \
    --check \
    --dry-run \
    --json scripts/generated/bellman_split_path_02_dry_run.json
  ```

  This printed the two guarded commands without launching Lean.

- Proof-bearing serial check for path object index `2`:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 2 \
    --check \
    --json scripts/generated/bellman_split_path_02_run.json
  ```

  Results:
  - trace shard with `.olean` emission: passed in `6.03s`, peak RSS
    `4016 MiB`, hard-AS cap `6144 MiB`, minimum available `46254 MiB`;
  - split root with `.olean` emission: passed in `2.00s`, peak RSS
    `3637 MiB`, hard-AS cap `6144 MiB`, minimum available `46423 MiB`.

- Generated path-2 files:
  - `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingClosedLanguageGeneratedTraceSmoke02.lean`;
  - `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingSplitCompositionSmoke02.lean`;
  - `scripts/generated/bellman_closed_language_generated_trace_smoke_02.json`;
  - `scripts/generated/bellman_split_path_02_run.json`.
- Refreshed batch plans now report `3` fresh trace artifacts and `2` fresh split
  artifacts over the `[0,37)` cached path set, still with `0` entries over
  budget.

Decision: accepted, but with a later crash quarantine.  The split Bellman smoke
route has a reusable serial runner and a third checked sampled path, but the
next small-batch scaling step is now rejected until the execution wrapper is
made stricter.

Post-run crash quarantine:

- After preparing to move from single-path split checks to small consecutive
  batch execution, the user reported another machine crash, likely from memory
  pressure.  A lightweight post-restart inspection showed commit
  `743bfb9cf Add serial Bellman split smoke runner`, a clean worktree, and about
  `45 GiB` available memory.
- Treat the crash as an operational safety failure, not as a mathematical
  rejection of the split Bellman proof surface.
- Do not run Bellman/generated proof checks in batches.
- Do not use parallel tool orchestration for Bellman/generated diagnostics.
- Do not run broad searches over `SYMMETRY_PLAN.md` or generated trees while in
  crash recovery; use narrow reads only.
- Keep all future proof-bearing Bellman checks as single-target direct Lean
  checks under the strict guard: `-M 6000 -j1 -s 2048`, `6144 MiB` hard address
  cap, `4500 MiB` process-tree RSS cap, and high available-memory floor.
- Before any further proof-bearing scaling, move transient guard JSON output out
  of the repository and add a dry-run-only accounting wrapper that refuses to
  invoke Lean.

Dry-run batch guard after crash quarantine:

- `scripts/run_bellman_split_smoke_path.py` now accepts `--guard-dir` and
  defaults transient guard JSON logs to `/tmp/cuboctahedron_bellman_guards`.
  The stable run summary still records the guard directory and command
  summaries, but timestamped guard logs are no longer generated under
  `scripts/generated/`.
- Added `scripts/plan_bellman_split_batch_guard.py`.
- The new guard is dry-run-only: it does not invoke Lean, Lake, or
  `scripts/run_memory_guarded.py`.  It reads the planner, renders planned source
  sizes in memory, checks current `MemAvailable`, validates generated
  module/source allowlists, and optionally requires fresh `.olean` artifacts and
  existing checked single-path summaries.
- Commands run:

  ```bash
  python3 -m py_compile \
    scripts/run_bellman_split_smoke_path.py \
    scripts/plan_bellman_split_batch_guard.py

  python3 scripts/plan_bellman_split_batch_guard.py \
    --start-index 0 \
    --count 4 \
    --require-fresh-artifacts \
    --require-checked-summaries \
    --json scripts/generated/bellman_split_batch_guard_000_004.json \
    --markdown docs/bellman_split_batch_guard_000_004.md

  python3 scripts/plan_bellman_split_batch_guard.py \
    --start-index 0 \
    --count 4 \
    --json scripts/generated/bellman_split_batch_guard_000_004_accounting.json \
    --markdown docs/bellman_split_batch_guard_000_004_accounting.md
  ```

- Results:
  - Python syntax check passed.
  - Strict `[0,4)` dry-run guard rejected the batch: `3` blocked entries,
    `6` blockers, `46755 MiB` available.
  - Accounting-only `[0,4)` dry-run guard accepted: `0` blockers,
    `46757 MiB` available.
- The strict rejection is the intended behavior: only path index `2` currently
  has fresh trace/split artifacts and a checked per-path run summary.

Decision: accepted as crash-recovery tooling.  It does not advance Lean proof
coverage by itself, but it prevents accidental batch execution from being
mistaken for the next proof step.

Single-path candidate selector:

- Added `scripts/select_bellman_split_single_path_candidate.py`.
- The selector is also dry-run-only: it scans planned Bellman path objects,
  applies the same memory/source/allowlist checks, and recommends at most one
  candidate for a future guarded single-path check.  It never invokes Lean,
  Lake, or `scripts/run_memory_guarded.py`.
- Command run:

  ```bash
  python3 scripts/select_bellman_split_single_path_candidate.py \
    --start-index 0 \
    --count 37 \
    --skip-fresh-artifacts \
    --json scripts/generated/bellman_split_single_path_candidate_000_037.json \
    --markdown docs/bellman_split_single_path_candidate_000_037.md
  ```

- Result: selected path object index `1`, rank `10613`, because its trace
  artifact is fresh while its split artifact is missing/stale.  Current
  `MemAvailable` was `46748 MiB`.

Decision: accepted as planning/accounting only.  The next proof-bearing action,
if resumed, should be this one selected single-path target under the strict
guard, not a batch.

Fresh-aware split-only path checking:

- `scripts/run_bellman_split_smoke_path.py` now preserves source mtimes when
  generated text is unchanged and supports `--check-stage both|trace|split|missing`.
- `--check-stage split` requires a fresh trace `.olean`, so the runner can
  check only the tiny split root when the trace shard is already current.
- The dry-run batch guard now records trace and split checked evidence
  separately.
- Dry-run command for selected path index `1`:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 1 \
    --check \
    --check-stage split \
    --dry-run \
    --json scripts/generated/bellman_split_path_01_split_only_dry_run.json
  ```

  Result: only the split command was scheduled; trace source was unchanged and
  its `.olean` remained fresh.

- Proof-bearing split-only command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 1 \
    --check \
    --check-stage split \
    --json scripts/generated/bellman_split_path_01_split_only_run.json
  ```

  Result: passed in `11.51s`, peak process-tree RSS `3873 MiB`, hard address
  cap `6144 MiB`, minimum available memory `46356 MiB`.

- Refreshed strict `[0,4)` dry-run guard:
  - status: `rejected-dry-run`;
  - blocked entries: `3`;
  - blockers: `5`;
  - path `1` now has split checked evidence but still lacks a stable trace
    checked summary.
- Refreshed single-path selector:
  - selected path index `3`, rank `25555`;
  - reason: trace and split artifacts are missing/stale.

Decision: accepted.  The proof-bearing work remains single-target and under the
strict crash-recovery cap.  The next candidate is known, but no batch execution
is allowed.

Fourth split path:

- The selected next target, path object index `3` / rank `25555`, was run as a
  single guarded path with `--check-stage missing`.  This scheduled trace and
  split because both artifacts were missing/stale.  No batch execution or
  parallel Lean was used.
- Dry-run command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 3 \
    --check \
    --check-stage missing \
    --dry-run \
    --json scripts/generated/bellman_split_path_03_missing_dry_run.json
  ```

- Proof-bearing command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 3 \
    --check \
    --check-stage missing \
    --json scripts/generated/bellman_split_path_03_missing_run.json
  ```

- Result:
  - trace shard with `.olean` emission: passed in `8.51s`, peak RSS
    `4005 MiB`, hard-AS cap `6144 MiB`, minimum available `46243 MiB`;
  - split root with `.olean` emission: passed in `1.50s`, peak RSS
    `3627 MiB`, hard-AS cap `6144 MiB`, minimum available `46430 MiB`.
- Refreshed strict `[0,4)` dry-run guard is still rejected, now with
  `2` blocked entries and `3` total blockers.
- Refreshed `[0,37)` planner summary: `0` over budget, `4` fresh trace
  artifacts, `4` fresh split artifacts, `1184 KiB` planned trace source, and
  `74 KiB` planned split source.
- Refreshed selector chose path index `4`, rank `40387`, as the next possible
  single-path target.

Decision: accepted as another proof-bearing sampled path under the strict
post-crash guard.  Continue only one selected path at a time unless a future
explicit strategy changes the quarantine.

Fifth split path:

- The selected next target, path object index `4` / rank `40387`, was run as a
  single guarded path with `--check-stage missing`.  Both trace and split were
  missing/stale before the run.  No batch execution or parallel Lean was used.
- Dry-run command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 4 \
    --check \
    --check-stage missing \
    --dry-run \
    --json scripts/generated/bellman_split_path_04_missing_dry_run.json
  ```

- Proof-bearing command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 4 \
    --check \
    --check-stage missing \
    --json scripts/generated/bellman_split_path_04_missing_run.json
  ```

- Result:
  - trace shard with `.olean` emission: passed in `8.51s`, peak RSS
    `3999 MiB`, hard-AS cap `6144 MiB`, minimum available `46250 MiB`;
  - split root with `.olean` emission: passed in `1.50s`, peak RSS
    `3633 MiB`, hard-AS cap `6144 MiB`, minimum available `46429 MiB`.
- Refreshed `[0,37)` planner summary: `0` over budget, `5` fresh trace
  artifacts, `5` fresh split artifacts, `1184 KiB` planned trace source, and
  `74 KiB` planned split source.
- Refreshed selector chose path index `5`, rank `42247`, as the next possible
  single-path target.

Decision: accepted as another proof-bearing sampled path under the strict
post-crash guard.

Twenty-eighth split path:

- The selected next target, path object index `27` / rank `947439`, was run as
  a single guarded path with `--check-stage missing`.  Both trace and split were
  missing/stale before the run.  No batch execution or parallel Lean was used.
- Dry-run command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 27 \
    --check \
    --check-stage missing \
    --dry-run \
    --json scripts/generated/bellman_split_path_27_missing_dry_run.json
  ```

- Proof-bearing command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 27 \
    --check \
    --check-stage missing \
    --json scripts/generated/bellman_split_path_27_missing_run.json
  ```

- Result:
  - trace shard with `.olean` emission: passed in `7.01s`, peak RSS
    `4037 MiB`, hard-AS cap `6144 MiB`, minimum available `46141 MiB`;
  - split root with `.olean` emission: passed in `1.50s`, peak RSS
    `3660 MiB`, hard-AS cap `6144 MiB`, minimum available `46317 MiB`.
- Refreshed strict `[0,16)` dry-run guard remains `accepted-dry-run` with `0`
  blocked entries and `0` total blockers.
- Refreshed `[0,37)` planner summary: `0` over budget, `28` fresh trace
  artifacts, `28` fresh split artifacts, `1184 KiB` planned trace source, and
  `74 KiB` planned split source.
- Refreshed selector chose path index `28`, rank `947581`, as the next possible
  single-path target.

Decision: accepted as another proof-bearing sampled path under the strict
post-crash guard.

Twenty-ninth split path preflight only:

- After committing and pushing the path-object-index `27` checkpoint, ran only
  the selector and path-object-index `28` dry run.  This was deliberately not a
  proof-bearing Lean run.
- Selector command:

  ```bash
  python3 scripts/select_bellman_split_single_path_candidate.py \
    --start-index 0 \
    --count 37 \
    --skip-fresh-artifacts \
    --json scripts/generated/bellman_split_single_path_candidate_000_037.json \
    --markdown docs/bellman_split_single_path_candidate_000_037.md
  ```

- Dry-run command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 28 \
    --check \
    --check-stage missing \
    --dry-run \
    --json scripts/generated/bellman_split_path_28_missing_dry_run.json
  ```

- Result:
  - selected path object index `28`, rank `947581`;
  - available memory before dry-run planning was `46689 MiB`;
  - dry-run source stubs were emitted for trace (`32 KiB`) and split (`2 KiB`);
  - no `.olean` was emitted, and no Lean proof check was run.

Decision: keep this as a planning artifact only.  It is not checked Bellman
evidence until the guarded trace and split commands pass.

Twenty-ninth split path:

- The preflighted target, path object index `28` / rank `947581`, was run as a
  single guarded path with `--check-stage missing`.  No batch execution or
  parallel Lean was used.
- Proof-bearing command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 28 \
    --check \
    --check-stage missing \
    --json scripts/generated/bellman_split_path_28_missing_run.json
  ```

- Result:
  - trace shard with `.olean` emission: passed in `11.01s`, peak RSS
    `3998 MiB`, hard-AS cap `6144 MiB`, minimum available `46201 MiB`;
  - split root with `.olean` emission: passed in `2.00s`, peak RSS
    `3964 MiB`, hard-AS cap `6144 MiB`, minimum available `46274 MiB`.
- Refreshed strict `[0,16)` dry-run guard remains `accepted-dry-run` with `0`
  blocked entries and `0` total blockers.
- Refreshed `[0,37)` planner summary: `0` over budget, `29` fresh trace
  artifacts, `29` fresh split artifacts, `1184 KiB` planned trace source, and
  `74 KiB` planned split source.
- Refreshed selector chose path index `29`, rank `947589`, as the next possible
  single-path target.

Decision: accepted as another proof-bearing sampled path under the strict
post-crash guard.

Rebase recheck plus twenty-fifth split path:

- The path-23 checkpoint push was rejected because `origin/main` had a
  concurrent README-only update.  After `git fetch origin`, the local path-23
  commit was cleanly rebased on top of `origin/main` and pushed.  The rebase
  replay changed source mtimes, so path `23` needed an `.olean` freshness
  recheck before the selector would advance.
- Path object index `23` recheck:
  - trace: passed in `7.01s`, peak RSS `4011 MiB`, hard-AS cap `6144 MiB`,
    minimum available `46070 MiB`;
  - split: passed in `2.00s`, peak RSS `3616 MiB`, hard-AS cap `6144 MiB`,
    minimum available `46244 MiB`.
- Path object index `24` / rank `946777` was then run as a single guarded path
  with `--check-stage missing`.
  - trace: passed in `5.01s`, peak RSS `4041 MiB`, hard-AS cap `6144 MiB`,
    minimum available `46060 MiB`;
  - split: passed in `2.00s`, peak RSS `3969 MiB`, hard-AS cap `6144 MiB`,
    minimum available `46138 MiB`.
- Refreshed strict `[0,16)` dry-run guard remains `accepted-dry-run` with `0`
  blocked entries and `0` total blockers.
- Refreshed `[0,37)` planner summary: `0` over budget, `25` fresh trace
  artifacts, `25` fresh split artifacts, `1184 KiB` planned trace source, and
  `74 KiB` planned split source.
- Refreshed selector chose path index `25`, rank `946779`, as the next possible
  single-path target.

Decision: accepted.  The rebase only forced a freshness recheck; all
proof-bearing checks stayed inside the strict post-crash guard.

Rebase recheck plus twenty-sixth split path:

- Another concurrent README-only update required a clean rebase of the path-24
  checkpoint.  As before, the replay changed local source mtimes, so path `24`
  needed a local `.olean` freshness recheck before the selector advanced.
- Path object index `24` recheck:
  - trace: passed in `7.51s`, peak RSS `4013 MiB`, hard-AS cap `6144 MiB`,
    minimum available `46084 MiB`;
  - split: passed in `2.00s`, peak RSS `3971 MiB`, hard-AS cap `6144 MiB`,
    minimum available `46155 MiB`.
- Path object index `25` / rank `946779` was then run as a single guarded path
  with `--check-stage missing`.
  - trace: passed in `5.01s`, peak RSS `4044 MiB`, hard-AS cap `6144 MiB`,
    minimum available `46075 MiB`;
  - split: passed in `2.00s`, peak RSS `3641 MiB`, hard-AS cap `6144 MiB`,
    minimum available `46262 MiB`.
- Refreshed strict `[0,16)` dry-run guard remains `accepted-dry-run` with `0`
  blocked entries and `0` total blockers.
- Refreshed `[0,37)` planner summary: `0` over budget, `26` fresh trace
  artifacts, `26` fresh split artifacts, `1184 KiB` planned trace source, and
  `74 KiB` planned split source.
- Refreshed selector chose path index `26`, rank `947437`, as the next possible
  single-path target.

Decision: accepted.  The proof-bearing checks continue to stay within the
strict post-crash guard.

Twenty-seventh split path:

- The selected next target, path object index `26` / rank `947437`, was run as
  a single guarded path with `--check-stage missing`.  Both trace and split were
  missing/stale before the run.  No batch execution or parallel Lean was used.
- Dry-run command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 26 \
    --check \
    --check-stage missing \
    --dry-run \
    --json scripts/generated/bellman_split_path_26_missing_dry_run.json
  ```

- Proof-bearing command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 26 \
    --check \
    --check-stage missing \
    --json scripts/generated/bellman_split_path_26_missing_run.json
  ```

- Result:
  - trace shard with `.olean` emission: passed in `7.01s`, peak RSS
    `4036 MiB`, hard-AS cap `6144 MiB`, minimum available `46096 MiB`;
  - split root with `.olean` emission: passed in `2.00s`, peak RSS
    `3975 MiB`, hard-AS cap `6144 MiB`, minimum available `46181 MiB`.
- Refreshed strict `[0,16)` dry-run guard remains `accepted-dry-run` with `0`
  blocked entries and `0` total blockers.
- Refreshed `[0,37)` planner summary: `0` over budget, `27` fresh trace
  artifacts, `27` fresh split artifacts, `1184 KiB` planned trace source, and
  `74 KiB` planned split source.
- Refreshed selector chose path index `27`, rank `947439`, as the next possible
  single-path target.

Decision: accepted as another proof-bearing sampled path under the strict
post-crash guard.

Twenty-fourth split path:

- The selected next target, path object index `23` / rank `944199`, was run as
  a single guarded path with `--check-stage missing`.  Both trace and split were
  missing/stale before the run.  No batch execution or parallel Lean was used.
- Dry-run command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 23 \
    --check \
    --check-stage missing \
    --dry-run \
    --json scripts/generated/bellman_split_path_23_missing_dry_run.json
  ```

- Proof-bearing command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 23 \
    --check \
    --check-stage missing \
    --json scripts/generated/bellman_split_path_23_missing_run.json
  ```

- Result:
  - trace shard with `.olean` emission: passed in `5.51s`, peak RSS
    `4037 MiB`, hard-AS cap `6144 MiB`, minimum available `46061 MiB`;
  - split root with `.olean` emission: passed in `2.00s`, peak RSS
    `3597 MiB`, hard-AS cap `6144 MiB`, minimum available `46240 MiB`.
- Refreshed strict `[0,16)` dry-run guard remains `accepted-dry-run` with `0`
  blocked entries and `0` total blockers.
- Refreshed `[0,37)` planner summary: `0` over budget, `24` fresh trace
  artifacts, `24` fresh split artifacts, `1184 KiB` planned trace source, and
  `74 KiB` planned split source.
- Refreshed selector chose path index `24`, rank `946777`, as the next possible
  single-path target.

Decision: accepted as another proof-bearing sampled path under the strict
post-crash guard.

Twenty-third split path:

- The selected next target, path object index `22` / rank `944197`, was run as
  a single guarded path with `--check-stage missing`.  Both trace and split were
  missing/stale before the run.  No batch execution or parallel Lean was used.
- Dry-run command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 22 \
    --check \
    --check-stage missing \
    --dry-run \
    --json scripts/generated/bellman_split_path_22_missing_dry_run.json
  ```

- Proof-bearing command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 22 \
    --check \
    --check-stage missing \
    --json scripts/generated/bellman_split_path_22_missing_run.json
  ```

- Result:
  - trace shard with `.olean` emission: passed in `5.01s`, peak RSS
    `4021 MiB`, hard-AS cap `6144 MiB`, minimum available `46139 MiB`;
  - split root with `.olean` emission: passed in `2.00s`, peak RSS
    `3595 MiB`, hard-AS cap `6144 MiB`, minimum available `46297 MiB`.
- Refreshed strict `[0,16)` dry-run guard remains `accepted-dry-run` with `0`
  blocked entries and `0` total blockers.
- Refreshed `[0,37)` planner summary: `0` over budget, `23` fresh trace
  artifacts, `23` fresh split artifacts, `1184 KiB` planned trace source, and
  `74 KiB` planned split source.
- Refreshed selector chose path index `23`, rank `944199`, as the next possible
  single-path target.

Decision: accepted as another proof-bearing sampled path under the strict
post-crash guard.

Twenty-second split path:

- The selected next target, path object index `21` / rank `914499`, was run as
  a single guarded path with `--check-stage missing`.  Both trace and split were
  missing/stale before the run.  No batch execution or parallel Lean was used.
- Dry-run command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 21 \
    --check \
    --check-stage missing \
    --dry-run \
    --json scripts/generated/bellman_split_path_21_missing_dry_run.json
  ```

- Proof-bearing command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 21 \
    --check \
    --check-stage missing \
    --json scripts/generated/bellman_split_path_21_missing_run.json
  ```

- Result:
  - trace shard with `.olean` emission: passed in `7.51s`, peak RSS
    `4033 MiB`, hard-AS cap `6144 MiB`, minimum available `46213 MiB`;
  - split root with `.olean` emission: passed in `2.00s`, peak RSS
    `3966 MiB`, hard-AS cap `6144 MiB`, minimum available `46304 MiB`.
- Refreshed strict `[0,16)` dry-run guard remains `accepted-dry-run` with `0`
  blocked entries and `0` total blockers.
- Refreshed `[0,37)` planner summary: `0` over budget, `22` fresh trace
  artifacts, `22` fresh split artifacts, `1184 KiB` planned trace source, and
  `74 KiB` planned split source.
- Refreshed selector chose path index `22`, rank `944197`, as the next possible
  single-path target.

Decision: accepted as another proof-bearing sampled path under the strict
post-crash guard.

Twenty-first split path:

- The selected next target, path object index `20` / rank `914497`, was run as
  a single guarded path with `--check-stage missing`.  Both trace and split were
  missing/stale before the run.  No batch execution or parallel Lean was used.
- Dry-run command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 20 \
    --check \
    --check-stage missing \
    --dry-run \
    --json scripts/generated/bellman_split_path_20_missing_dry_run.json
  ```

- Proof-bearing command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 20 \
    --check \
    --check-stage missing \
    --json scripts/generated/bellman_split_path_20_missing_run.json
  ```

- Result:
  - trace shard with `.olean` emission: passed in `7.01s`, peak RSS
    `4029 MiB`, hard-AS cap `6144 MiB`, minimum available `46181 MiB`;
  - split root with `.olean` emission: passed in `2.00s`, peak RSS
    `3969 MiB`, hard-AS cap `6144 MiB`, minimum available `46258 MiB`.
- Refreshed strict `[0,16)` dry-run guard remains `accepted-dry-run` with `0`
  blocked entries and `0` total blockers.
- Refreshed `[0,37)` planner summary: `0` over budget, `21` fresh trace
  artifacts, `21` fresh split artifacts, `1184 KiB` planned trace source, and
  `74 KiB` planned split source.
- Refreshed selector chose path index `21`, rank `914499`, as the next possible
  single-path target.

Decision: accepted as another proof-bearing sampled path under the strict
post-crash guard.

Twentieth split path:

- The selected next target, path object index `19` / rank `824407`, was run as
  a single guarded path with `--check-stage missing`.  Both trace and split were
  missing/stale before the run.  No batch execution or parallel Lean was used.
- Dry-run command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 19 \
    --check \
    --check-stage missing \
    --dry-run \
    --json scripts/generated/bellman_split_path_19_missing_dry_run.json
  ```

- Proof-bearing command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 19 \
    --check \
    --check-stage missing \
    --json scripts/generated/bellman_split_path_19_missing_run.json
  ```

- Result:
  - trace shard with `.olean` emission: passed in `6.51s`, peak RSS
    `4025 MiB`, hard-AS cap `6144 MiB`, minimum available `46188 MiB`;
  - split root with `.olean` emission: passed in `2.00s`, peak RSS
    `3967 MiB`, hard-AS cap `6144 MiB`, minimum available `46268 MiB`.
- Refreshed strict `[0,16)` dry-run guard remains `accepted-dry-run` with `0`
  blocked entries and `0` total blockers.
- Refreshed `[0,37)` planner summary: `0` over budget, `20` fresh trace
  artifacts, `20` fresh split artifacts, `1184 KiB` planned trace source, and
  `74 KiB` planned split source.
- Refreshed selector chose path index `20`, rank `914497`, as the next possible
  single-path target.

Decision: accepted as another proof-bearing sampled path under the strict
post-crash guard.

Nineteenth split path:

- The selected next target, path object index `18` / rank `312773`, was run as
  a single guarded path with `--check-stage missing`.  Both trace and split were
  missing/stale before the run.  No batch execution or parallel Lean was used.
- Dry-run command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 18 \
    --check \
    --check-stage missing \
    --dry-run \
    --json scripts/generated/bellman_split_path_18_missing_dry_run.json
  ```

- Proof-bearing command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 18 \
    --check \
    --check-stage missing \
    --json scripts/generated/bellman_split_path_18_missing_run.json
  ```

- Result:
  - trace shard with `.olean` emission: passed in `6.51s`, peak RSS
    `4022 MiB`, hard-AS cap `6144 MiB`, minimum available `46178 MiB`;
  - split root with `.olean` emission: passed in `2.00s`, peak RSS
    `3634 MiB`, hard-AS cap `6144 MiB`, minimum available `46373 MiB`.
- Refreshed strict `[0,16)` dry-run guard remains `accepted-dry-run` with `0`
  blocked entries and `0` total blockers.
- Refreshed `[0,37)` planner summary: `0` over budget, `19` fresh trace
  artifacts, `19` fresh split artifacts, `1184 KiB` planned trace source, and
  `74 KiB` planned split source.
- Refreshed selector chose path index `19`, rank `824407`, as the next possible
  single-path target.

Decision: accepted as another proof-bearing sampled path under the strict
post-crash guard.

Eighteenth split path:

- The selected next target, path object index `17` / rank `312772`, was run as
  a single guarded path with `--check-stage missing`.  Both trace and split were
  missing/stale before the run.  No batch execution or parallel Lean was used.
- Dry-run command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 17 \
    --check \
    --check-stage missing \
    --dry-run \
    --json scripts/generated/bellman_split_path_17_missing_dry_run.json
  ```

- Proof-bearing command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 17 \
    --check \
    --check-stage missing \
    --json scripts/generated/bellman_split_path_17_missing_run.json
  ```

- Result:
  - trace shard with `.olean` emission: passed in `6.51s`, peak RSS
    `4022 MiB`, hard-AS cap `6144 MiB`, minimum available `46174 MiB`;
  - split root with `.olean` emission: passed in `2.00s`, peak RSS
    `3579 MiB`, hard-AS cap `6144 MiB`, minimum available `46363 MiB`.
- Refreshed strict `[0,16)` dry-run guard remains `accepted-dry-run` with `0`
  blocked entries and `0` total blockers.
- Refreshed `[0,37)` planner summary: `0` over budget, `18` fresh trace
  artifacts, `18` fresh split artifacts, `1184 KiB` planned trace source, and
  `74 KiB` planned split source.
- Refreshed selector chose path index `18`, rank `312773`, as the next possible
  single-path target.

Decision: accepted as another proof-bearing sampled path under the strict
post-crash guard.

`[0,16)` guard reconciliation:

- Reconciled the two legacy checked-summary gaps that remained after all
  `[0,16)` artifacts were fresh.  This used single-component guarded checks,
  not broad or parallel Lean.
- Path object index `0` was rerun with `--check-stage both` and canonical
  summary `scripts/generated/bellman_split_path_00_run.json`.
  - trace: passed in `7.51s`, peak RSS `4003 MiB`, hard-AS cap `6144 MiB`,
    minimum available `46176 MiB`;
  - split: passed in `2.00s`, peak RSS `3626 MiB`, hard-AS cap `6144 MiB`,
    minimum available `46351 MiB`.
- Path object index `1` was rerun with `--check-stage trace` and canonical
  trace-only summary `scripts/generated/bellman_split_path_01_trace_only_run.json`.
  - trace: passed in `5.01s`, peak RSS `4038 MiB`, hard-AS cap `6144 MiB`,
    minimum available `46162 MiB`.
- Refreshed strict `[0,16)` dry-run guard is now `accepted-dry-run` with `0`
  blocked entries and `0` total blockers.
- Refreshed selector chose path index `16`, rank `312761`, as the next possible
  single-path target outside the accepted window.

Decision: accepted as the first fully reconciled guarded window for the split
Bellman route.  The acceptance remains a dry-run guard/accounting result, with
the proof-bearing pieces checked individually under memory guard.

Seventeenth split path:

- The selected next target, path object index `16` / rank `312761`, was run as
  a single guarded path with `--check-stage missing`.  Both trace and split were
  missing/stale before the run.  No batch execution or parallel Lean was used.
- Dry-run command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 16 \
    --check \
    --check-stage missing \
    --dry-run \
    --json scripts/generated/bellman_split_path_16_missing_dry_run.json
  ```

- Proof-bearing command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 16 \
    --check \
    --check-stage missing \
    --json scripts/generated/bellman_split_path_16_missing_run.json
  ```

- Result:
  - trace shard with `.olean` emission: passed in `7.51s`, peak RSS
    `4024 MiB`, hard-AS cap `6144 MiB`, minimum available `46174 MiB`;
  - split root with `.olean` emission: passed in `2.00s`, peak RSS
    `3638 MiB`, hard-AS cap `6144 MiB`, minimum available `46366 MiB`.
- Refreshed strict `[0,16)` dry-run guard remains `accepted-dry-run` with `0`
  blocked entries and `0` total blockers.
- Refreshed `[0,37)` planner summary: `0` over budget, `17` fresh trace
  artifacts, `17` fresh split artifacts, `1184 KiB` planned trace source, and
  `74 KiB` planned split source.
- Refreshed selector chose path index `17`, rank `312772`, as the next possible
  single-path target.

Decision: accepted as another proof-bearing sampled path under the strict
post-crash guard.

Sixteenth split path:

- The selected next target, path object index `15` / rank `151569`, was run as
  a single guarded path with `--check-stage missing`.  Both trace and split were
  missing/stale before the run.  No batch execution or parallel Lean was used.
- Dry-run command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 15 \
    --check \
    --check-stage missing \
    --dry-run \
    --json scripts/generated/bellman_split_path_15_missing_dry_run.json
  ```

- Proof-bearing command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 15 \
    --check \
    --check-stage missing \
    --json scripts/generated/bellman_split_path_15_missing_run.json
  ```

- Result:
  - trace shard with `.olean` emission: passed in `7.01s`, peak RSS
    `4001 MiB`, hard-AS cap `6144 MiB`, minimum available `46153 MiB`;
  - split root with `.olean` emission: passed in `2.00s`, peak RSS
    `3963 MiB`, hard-AS cap `6144 MiB`, minimum available `46213 MiB`.
- Refreshed strict `[0,16)` dry-run guard is still rejected, now with `2`
  blocked entries and `3` total blockers.  All `[0,16)` trace/split artifacts
  are fresh; the remaining blockers are checked-summary gaps for legacy paths
  `0` and `1`.
- Refreshed `[0,37)` planner summary: `0` over budget, `16` fresh trace
  artifacts, `16` fresh split artifacts, `1184 KiB` planned trace source, and
  `74 KiB` planned split source.
- Refreshed selector chose path index `16`, rank `312761`, as the next possible
  single-path target.

Decision: accepted as another proof-bearing sampled path under the strict
post-crash guard.

Fifteenth split path:

- The selected next target, path object index `14` / rank `151567`, was run as
  a single guarded path with `--check-stage missing`.  Both trace and split were
  missing/stale before the run.  No batch execution or parallel Lean was used.
- Dry-run command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 14 \
    --check \
    --check-stage missing \
    --dry-run \
    --json scripts/generated/bellman_split_path_14_missing_dry_run.json
  ```

- Proof-bearing command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 14 \
    --check \
    --check-stage missing \
    --json scripts/generated/bellman_split_path_14_missing_run.json
  ```

- Result:
  - trace shard with `.olean` emission: passed in `6.51s`, peak RSS
    `4036 MiB`, hard-AS cap `6144 MiB`, minimum available `46124 MiB`;
  - split root with `.olean` emission: passed in `2.00s`, peak RSS
    `3961 MiB`, hard-AS cap `6144 MiB`, minimum available `46205 MiB`.
- Refreshed strict `[0,16)` dry-run guard is still rejected, now with `3`
  blocked entries and `5` total blockers.
- Refreshed `[0,37)` planner summary: `0` over budget, `15` fresh trace
  artifacts, `15` fresh split artifacts, `1184 KiB` planned trace source, and
  `74 KiB` planned split source.
- Refreshed selector chose path index `15`, rank `151569`, as the next possible
  single-path target.

Decision: accepted as another proof-bearing sampled path under the strict
post-crash guard.

Fourteenth split path:

- The selected next target, path object index `13` / rank `136597`, was run as
  a single guarded path with `--check-stage missing`.  Both trace and split were
  missing/stale before the run.  No batch execution or parallel Lean was used.
- Dry-run command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 13 \
    --check \
    --check-stage missing \
    --dry-run \
    --json scripts/generated/bellman_split_path_13_missing_dry_run.json
  ```

- Proof-bearing command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 13 \
    --check \
    --check-stage missing \
    --json scripts/generated/bellman_split_path_13_missing_run.json
  ```

- Result:
  - trace shard with `.olean` emission: passed in `7.01s`, peak RSS
    `4024 MiB`, hard-AS cap `6144 MiB`, minimum available `46115 MiB`;
  - split root with `.olean` emission: passed in `2.00s`, peak RSS
    `3616 MiB`, hard-AS cap `6144 MiB`, minimum available `46312 MiB`.
- Refreshed strict `[0,16)` dry-run guard is still rejected, now with `4`
  blocked entries and `7` total blockers.
- Refreshed `[0,37)` planner summary: `0` over budget, `14` fresh trace
  artifacts, `14` fresh split artifacts, `1184 KiB` planned trace source, and
  `74 KiB` planned split source.
- Refreshed selector chose path index `14`, rank `151567`, as the next possible
  single-path target.

Decision: accepted as another proof-bearing sampled path under the strict
post-crash guard.

Eleventh split path:

- The selected next target, path object index `10` / rank `43205`, was run as a
  single guarded path with `--check-stage missing`.  Both trace and split were
  missing/stale before the run.  No batch execution or parallel Lean was used.
- Dry-run command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 10 \
    --check \
    --check-stage missing \
    --dry-run \
    --json scripts/generated/bellman_split_path_10_missing_dry_run.json
  ```

- Proof-bearing command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 10 \
    --check \
    --check-stage missing \
    --json scripts/generated/bellman_split_path_10_missing_run.json
  ```

- Result:
  - trace shard with `.olean` emission: passed in `8.51s`, peak RSS
    `4014 MiB`, hard-AS cap `6144 MiB`, minimum available `46148 MiB`;
  - split root with `.olean` emission: passed in `2.00s`, peak RSS
    `3948 MiB`, hard-AS cap `6144 MiB`, minimum available `46240 MiB`.
- Refreshed strict `[0,16)` dry-run guard is still rejected, now with `7`
  blocked entries and `13` total blockers.
- Refreshed `[0,37)` planner summary: `0` over budget, `11` fresh trace
  artifacts, `11` fresh split artifacts, `1184 KiB` planned trace source, and
  `74 KiB` planned split source.
- Refreshed selector chose path index `11`, rank `113917`, as the next possible
  single-path target.

Decision: accepted as another proof-bearing sampled path under the strict
post-crash guard.  The working rule remains one selected path at a time until
the `[0,16)` window is fully fresh and checked-summary complete.

Twelfth split path:

- The selected next target, path object index `11` / rank `113917`, was run as
  a single guarded path with `--check-stage missing`.  Both trace and split were
  missing/stale before the run.  No batch execution or parallel Lean was used.
- Dry-run command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 11 \
    --check \
    --check-stage missing \
    --dry-run \
    --json scripts/generated/bellman_split_path_11_missing_dry_run.json
  ```

- Proof-bearing command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 11 \
    --check \
    --check-stage missing \
    --json scripts/generated/bellman_split_path_11_missing_run.json
  ```

- Result:
  - trace shard with `.olean` emission: passed in `10.51s`, peak RSS
    `4007 MiB`, hard-AS cap `6144 MiB`, minimum available `46113 MiB`;
  - split root with `.olean` emission: passed in `2.00s`, peak RSS
    `3961 MiB`, hard-AS cap `6144 MiB`, minimum available `46192 MiB`.
- Refreshed strict `[0,16)` dry-run guard is still rejected, now with `6`
  blocked entries and `11` total blockers.
- Refreshed `[0,37)` planner summary: `0` over budget, `12` fresh trace
  artifacts, `12` fresh split artifacts, `1184 KiB` planned trace source, and
  `74 KiB` planned split source.
- Refreshed selector chose path index `12`, rank `124013`, as the next possible
  single-path target.

Decision: accepted as another proof-bearing sampled path under the strict
post-crash guard.  The working rule remains one selected path at a time; the
next path can be checked only through the same guarded missing-only workflow.

Thirteenth split path:

- The selected next target, path object index `12` / rank `124013`, was run as
  a single guarded path with `--check-stage missing`.  Both trace and split were
  missing/stale before the run.  No batch execution or parallel Lean was used.
- Dry-run command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 12 \
    --check \
    --check-stage missing \
    --dry-run \
    --json scripts/generated/bellman_split_path_12_missing_dry_run.json
  ```

- Proof-bearing command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 12 \
    --check \
    --check-stage missing \
    --json scripts/generated/bellman_split_path_12_missing_run.json
  ```

- Result:
  - trace shard with `.olean` emission: passed in `6.01s`, peak RSS
    `4028 MiB`, hard-AS cap `6144 MiB`, minimum available `46117 MiB`;
  - split root with `.olean` emission: passed in `2.00s`, peak RSS
    `3639 MiB`, hard-AS cap `6144 MiB`, minimum available `46311 MiB`.
- Refreshed strict `[0,16)` dry-run guard is still rejected, now with `5`
  blocked entries and `9` total blockers.
- Refreshed `[0,37)` planner summary: `0` over budget, `13` fresh trace
  artifacts, `13` fresh split artifacts, `1184 KiB` planned trace source, and
  `74 KiB` planned split source.
- Refreshed selector chose path index `13`, rank `136597`, as the next possible
  single-path target.

Decision: accepted as another proof-bearing sampled path under the strict
post-crash guard.

Tenth split path:

- The selected next target, path object index `9` / rank `43203`, was run as a
  single guarded path with `--check-stage missing`.  Both trace and split were
  missing/stale before the run.  No batch execution or parallel Lean was used.
- Dry-run command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 9 \
    --check \
    --check-stage missing \
    --dry-run \
    --json scripts/generated/bellman_split_path_09_missing_dry_run.json
  ```

- Proof-bearing command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 9 \
    --check \
    --check-stage missing \
    --json scripts/generated/bellman_split_path_09_missing_run.json
  ```

- Result:
  - trace shard with `.olean` emission: passed in `8.51s`, peak RSS
    `4016 MiB`, hard-AS cap `6144 MiB`, minimum available `46113 MiB`;
  - split root with `.olean` emission: passed in `2.00s`, peak RSS
    `3601 MiB`, hard-AS cap `6144 MiB`, minimum available `46313 MiB`.
- Refreshed strict `[0,16)` dry-run guard is rejected, with `8` blocked entries
  and `15` total blockers.
- Refreshed `[0,37)` planner summary: `0` over budget, `10` fresh trace
  artifacts, `10` fresh split artifacts, `1184 KiB` planned trace source, and
  `74 KiB` planned split source.
- Refreshed selector chose path index `10`, rank `43205`, as the next possible
  single-path target.

Decision: accepted as another proof-bearing sampled path under the strict
post-crash guard.

Ninth split path:

- The selected next target, path object index `8` / rank `43195`, was run as a
  single guarded path with `--check-stage missing`.  Both trace and split were
  missing/stale before the run.  No batch execution or parallel Lean was used.
- Dry-run command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 8 \
    --check \
    --check-stage missing \
    --dry-run \
    --json scripts/generated/bellman_split_path_08_missing_dry_run.json
  ```

- Proof-bearing command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 8 \
    --check \
    --check-stage missing \
    --json scripts/generated/bellman_split_path_08_missing_run.json
  ```

- Result:
  - trace shard with `.olean` emission: passed in `9.51s`, peak RSS
    `4013 MiB`, hard-AS cap `6144 MiB`, minimum available `46070 MiB`;
  - split root with `.olean` emission: passed in `2.00s`, peak RSS
    `3616 MiB`, hard-AS cap `6144 MiB`, minimum available `46266 MiB`.
- Refreshed strict `[0,16)` dry-run guard is rejected, with `9` blocked entries
  and `17` total blockers.
- Refreshed `[0,37)` planner summary: `0` over budget, `9` fresh trace
  artifacts, `9` fresh split artifacts, `1184 KiB` planned trace source, and
  `74 KiB` planned split source.
- Refreshed selector chose path index `9`, rank `43203`, as the next possible
  single-path target.

Decision: accepted as another proof-bearing sampled path under the strict
post-crash guard.

Sixth split path:

- The selected next target, path object index `5` / rank `42247`, was run as a
  single guarded path with `--check-stage missing`.  Both trace and split were
  missing/stale before the run.  No batch execution or parallel Lean was used.
- Dry-run command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 5 \
    --check \
    --check-stage missing \
    --dry-run \
    --json scripts/generated/bellman_split_path_05_missing_dry_run.json
  ```

- Proof-bearing command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 5 \
    --check \
    --check-stage missing \
    --json scripts/generated/bellman_split_path_05_missing_run.json
  ```

- Result:
  - trace shard with `.olean` emission: passed in `8.53s`, peak RSS
    `3974 MiB`, hard-AS cap `6144 MiB`, minimum available `46268 MiB`;
  - split root with `.olean` emission: passed in `2.00s`, peak RSS
    `3907 MiB`, hard-AS cap `6144 MiB`, minimum available `46377 MiB`.
- Refreshed strict `[0,8)` dry-run guard is still rejected, with `4` blocked
  entries and `7` total blockers.
- Refreshed `[0,37)` planner summary: `0` over budget, `6` fresh trace
  artifacts, `6` fresh split artifacts, `1184 KiB` planned trace source, and
  `74 KiB` planned split source.
- Refreshed selector chose path index `6`, rank `42943`, as the next possible
  single-path target.

Decision: accepted as another proof-bearing sampled path under the strict
post-crash guard.

Seventh split path:

- The selected next target, path object index `6` / rank `42943`, was run as a
  single guarded path with `--check-stage missing`.  Both trace and split were
  missing/stale before the run.  No batch execution or parallel Lean was used.
- Dry-run command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 6 \
    --check \
    --check-stage missing \
    --dry-run \
    --json scripts/generated/bellman_split_path_06_missing_dry_run.json
  ```

- Proof-bearing command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 6 \
    --check \
    --check-stage missing \
    --json scripts/generated/bellman_split_path_06_missing_run.json
  ```

- Result:
  - trace shard with `.olean` emission: passed in `9.51s`, peak RSS
    `4001 MiB`, hard-AS cap `6144 MiB`, minimum available `46276 MiB`;
  - split root with `.olean` emission: passed in `2.04s`, peak RSS
    `3592 MiB`, hard-AS cap `6144 MiB`, minimum available `46446 MiB`.
- Refreshed strict `[0,8)` dry-run guard is still rejected, now with `3`
  blocked entries and `5` total blockers.
- Refreshed `[0,37)` planner summary: `0` over budget, `7` fresh trace
  artifacts, `7` fresh split artifacts, `1184 KiB` planned trace source, and
  `74 KiB` planned split source.
- Refreshed selector chose path index `7`, rank `43171`, as the next possible
  single-path target.

Decision: accepted as another proof-bearing sampled path under the strict
post-crash guard.

Eighth split path:

- The selected next target, path object index `7` / rank `43171`, was run as a
  single guarded path with `--check-stage missing`.  Both trace and split were
  missing/stale before the run.  No batch execution or parallel Lean was used.
- Dry-run command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 7 \
    --check \
    --check-stage missing \
    --dry-run \
    --json scripts/generated/bellman_split_path_07_missing_dry_run.json
  ```

- Proof-bearing command:

  ```bash
  python3 scripts/run_bellman_split_smoke_path.py 7 \
    --check \
    --check-stage missing \
    --json scripts/generated/bellman_split_path_07_missing_run.json
  ```

- Result:
  - trace shard with `.olean` emission: passed in `7.51s`, peak RSS
    `4013 MiB`, hard-AS cap `6144 MiB`, minimum available `46125 MiB`;
  - split root with `.olean` emission: passed in `2.00s`, peak RSS
    `3631 MiB`, hard-AS cap `6144 MiB`, minimum available `46204 MiB`.
- Refreshed strict `[0,8)` dry-run guard is still rejected, but all entries now
  have fresh artifacts; remaining blockers are checked-summary gaps for paths
  `0` and `1`.
- Refreshed `[0,37)` planner summary: `0` over budget, `8` fresh trace
  artifacts, `8` fresh split artifacts, `1184 KiB` planned trace source, and
  `74 KiB` planned split source.
- Refreshed selector chose path index `8`, rank `43195`, as the next possible
  single-path target.

Decision: accepted as another proof-bearing sampled path under the strict
post-crash guard.
