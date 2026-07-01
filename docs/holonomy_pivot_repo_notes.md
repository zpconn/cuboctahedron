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

## Next Interfaces To Add After Profiling

If the shadow profiler validates the identity split:

1. Add a hand-written Lean module for square parity, triangular projective
   letters, triangular shadow, and stack reduction.
2. Prove or generate small theorem surfaces for:
   - `linPart_eq_identity_iff_shadow_empty`;
   - forced-axis sign rejection for nonempty shadows;
   - cancellation-tree translation signatures for empty shadows.
3. Keep all new generated evidence theorem-valued and semantic, targeting
   `NonIdentityRankKilled` and `TranslationCaseKilled`.
