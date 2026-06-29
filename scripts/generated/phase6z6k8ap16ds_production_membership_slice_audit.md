# Phase 6Z.6K.8AP.16DS production membership slice audit

This report is not proof evidence.  It checks whether the current repo
already contains the nonempty production-style membership slice required
after AP16DR.

- Status: `blocked-missing-production-classifier`
- AP16I profile status: `accepted-positive-survivor-membership-profile`
- AP16DR route status: `accepted-production-route-audit`
- Producer hierarchy within budget: `True`
- AP16DR target: `SourcePositionRowProducerGoodCoverageOnRange lo hi`

## Positive-Survivor Profile

- GoodDirection cases profiled: `7112`
- Positive candidate groups: `195`
- Positive survivor signatures: `757`
- Duplicate rank/mask memberships: `0`
- Ambiguous GoodDirection memberships: `0`
- Bad-direction evidence emitted: `0`

## Split Hierarchy Scan

- Chunk files: `5`
- Conditional source-apply theorems: `315`
- Conditional row-apply theorems: `315`
- Conditional good-killed theorems: `315`
- Split files exporting coverage targets: `0`
- Split files exporting `complete :=` fields: `0`

Interpretation: the split source/row hierarchy is reusable and cheap,
but it currently exports conditional facts.  It does not yet export a
nonempty theorem that classifies arbitrary identity-linear
`GoodDirectionAtRank` survivors in a range/state.

## Existing Smoke Surfaces

- Rank-local all-Good files found: `44`
- Sparse rank root files: `1`
- Generated membership-surface files: `2`

These are useful smoke tests, but they do not satisfy AP16DS because the
accepted production coordinate is shared source/row producer membership,
not rank-local singleton expansion.

## Accepted Components

- split producer hierarchy has reusable conditional source/row -> killed facts
- positive-survivor profiler groups only GoodDirection survivors and emits zero bad-direction evidence

## Rejected Substitutes

- rank-local singleton/sparse all-Good smoke exists but is not the production coordinate

## Required Next Emitter

- Name: `ap16dt_positive_survivor_classifier_slice`
- Preferred theorem: `PositiveSurvivorBoolSignatureClassifierOnRange lo hi`
- Erases to:
  - `SourcePositionRowProducerGoodCoverageOnRange lo hi`
  - `AllTranslationGoodCoverageOnRange lo hi`
- Must prove: `forall rank mask, hM -> goodDirectionAtRankBool = true -> exists compact survivor signature/candidate carrying source-position and row facts`
- Must not use:
  - rank-local singleton candidate-facts shards as the production coordinate
  - finite replay over all 64 masks at a rank
  - generated bad-direction evidence
  - large Bool checker reduction

## Decision Notes

- split producer hierarchy exports conditional facts only, not range/state coverage
- AP16DS still needs the GoodDirection -> source-position/row-producer classifier
