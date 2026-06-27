# Phase 6Z.6K.8AP.2 Classifier-Free GoodDirection Bridge

Status: `accepted-classifier-free-good-bridge`.

This phase strengthens the pair-sign producer membership bridge by adding a
classifier-free GoodDirection route.  The previous AP.0/AP.1 bridge targets
still work, but they condition generated evidence on the old
`translationEarlyFamilyClassOfChoice = needsFarkas` branch.  That classifier is
noncomputable and is a poor final generated target.

The new target instead asks generated chunks to prove source/row membership
from exactly the semantic survivor assumptions:

- `totalLinearOfPairWord (unrankPairWord r) = matId`
- `GoodDirectionAtRank r mask`

From those facts, the bridge obtains `TranslationGoodCaseKilled`; the existing
generic theorem `TranslationGoodCaseKilled.killed` then recovers the ordinary
`TranslationCaseKilled` contradiction for any feasible translation orbit.

## Exported Lean Surface

- `AllTranslationGoodRankKilled`
- `AllTranslationGoodCoverageOnRange`
- `SourceRowFactsGoodBridge`
- `SourceRowFactsGoodBridgeOnRange`
- `SourceRowPredicateGoodBridge`
- `SourceRowPredicateGoodBridgeOnRange`
- `SourceRowFactsGoodBridge.to_allGoodCoverage`
- `SourceRowFactsGoodBridgeOnRange.to_allGoodCoverage`
- `AllTranslationGoodCoverageOnRange.to_caseKilled_of_fullRange`
- `SourceRowFactsGoodBridge.to_caseKilled`
- `SourceRowFactsGoodBridgeOnRange.to_caseKilled_of_fullRange`
- `SourceRowPredicateGoodBridge.to_factsGoodBridge`
- `SourceRowPredicateGoodBridgeOnRange.to_factsGoodBridgeOnRange`
- `SourceRowPredicateGoodBridge.to_allGoodCoverage`
- `SourceRowPredicateGoodBridgeOnRange.to_allGoodCoverage`
- `SourceRowPredicateGoodBridge.to_caseKilled`
- `SourceRowPredicateGoodBridgeOnRange.to_caseKilled_of_fullRange`

## Focused Build

Command:

```bash
/usr/bin/time -v lake build \
  Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
```

Result:

```text
exit status: 0
wall time:   0:04.12
peak RSS:    3,277,560 KiB
```

The higher RSS compared with the cached AP.1 run came from rebuilding the edited
module and dependencies after the bridge change.  It remains far below the
45 GiB safe working ceiling.

## Remaining Gap

This phase does not prove global membership coverage.  The next production
step is to emit generated source/row membership chunks that target either
`SourceRowPredicateGoodBridgeOnRange lo hi` or
`SourceRowFactsGoodBridgeOnRange lo hi`, then compose them into
`AllTranslationGoodCoverageOnRange 0 numPairWords`.
