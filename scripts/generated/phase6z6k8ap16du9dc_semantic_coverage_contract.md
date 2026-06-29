# Phase 6Z.6K.8AP.16DU.9DC Semantic Coverage Contract Audit

This diagnostic records the current Lean theorem surface for the
GoodDirection-only positive-survivor route.  It is not proof evidence;
it is a contract for the next proof-producing generator.

## Checks

| Check | Present | File |
| --- | ---: | --- |
| `source_position_coverage_exists` | `true` | `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourcePositionProducerLanguage.lean` |
| `source_position_to_all_good_exists` | `true` | `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourcePositionProducerLanguage.lean` |
| `positive_single_candidate_classifier_exists` | `true` | `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PositiveSurvivorMembershipSmoke.lean` |
| `generated_smoke_hclass_is_hypothesis` | `true` | `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PositiveSurvivorMembershipGeneratedSmoke.lean` |
| `du3_prop_first_source_row_adapter_exists` | `true` | `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourceIndexStateClassifierDU3Smoke.lean` |
| `descriptor_to_all_good_exists` | `true` | `Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/SourceIndexStateDescriptorLanguage.lean` |

## Conclusion

Status: `contract-present-generator-obligation-open`.

Accepted production target:

> SourcePositionRowProducerGoodCoverageOnRange lo hi, or the equivalent SourceIndexStateDescriptorGoodCoverageOnRange lo hi

Missing generated obligation:

> For each nonempty range/family, prove hclass: every identity-linear GoodDirection survivor belongs to the semantic candidate/source-position row-producer predicate, without classifierAppliesBool, compact-Walsh membership imports, or rank-local Boolean reduction.

Rejected surfaces:

- classifierAppliesBool membership proved by decide
- goodDirectionAtRankBool -> classifierAppliesBool singleton reduction
- rank-family-map membership tables
- compact-Walsh membership roots as the production bridge
