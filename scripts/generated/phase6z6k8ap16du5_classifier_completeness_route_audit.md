# Phase 6Z.6K.8AP.16DU.5 Classifier Completeness Route Audit

This audit is not trusted as proof and emits no Lean. It records the
remaining AP16DU.5 proof route after the AP16DU.4 bridge surface.

- Status: `accepted-next-proof-target`
- Selected route: `source_index_state_classifier_completeness`
- Target theorem premise: `SourceIndexStateClassifierDU3Smoke.classifierCompletenessOnIdentityRange`
- Erasure theorem: `SourceIndexStateClassifierDU3Smoke.classifierAllGoodCoverage`
- Range: `[0, 5000]`
- GoodDirection survivors: `4693`
- Not-GoodDirection masks avoided: `26475`
- Source-index/state families: `125`
- Largest family: `1237`

## Route Decision

| Route | Status | Obligations | Survivor branches | Bad-direction branches | Nonidentity branches | Notes |
| --- | --- | ---: | ---: | ---: | ---: | --- |
| `old_bounded_replay` | `rejected` | 35681 | 4693 | 26475 | 4513 | Revives the rejected bounded replay surface. Includes not-GoodDirection masks and nonidentity ranks. This is the proof shape that caused large RSS spikes. |
| `positive_survivor_singletons` | `rejected` | 4693 | 4693 | 0 | 0 | Avoids bad-direction masks but still emits concrete survivor branches. It is a bounded diagnostic route, not a production proof route. |
| `positive_signature_route` | `rejected` | 464 | 4329 | 0 | 0 | 444 of 464 signatures are singleton/rank-local. This recreates the rank-local anchor problem under a different key. |
| `source_index_state_classifier_completeness` | `accepted-next-proof-target` | 125 | 0 | 0 | 0 | This is the AP16DU.5 target. Prove classifierCompletenessOnIdentityRange for the AP16DU.3 classifierFamily. The theorem must derive ClassifierApplies from identity-linear GoodDirection assumptions. |

## Required Next Theorem

```lean
SourceIndexStateClassifierDU3Smoke.classifierCompletenessOnIdentityRange
```

This is the bounded `[0,5000)` theorem that arbitrary identity-linear
`GoodDirectionAtRank` translation survivors satisfy one of the 125
source-index/state descriptor families. Once this is proved,
`classifierAllGoodCoverage` erases it to
`AllTranslationGoodCoverageOnRange 0 5000`.
