# Phase 6Z.6K.8AP.16B Producer Membership Candidate

Status: `accepted-producer-membership-candidate`

This is diagnostic only. It emits no Lean and is not trusted as proof.

## Command

```text
/usr/bin/time -v python3 scripts/profile_pair_sign_descriptor_membership_state.py --jobs 4 --sample-limit 6 --obligation-gate 2000
```

## Result

- Jobs: `4`
- Wall time: `194.14s`
- Peak RSS: `50,176 KiB`
- Sampled rank windows:
  - `[0,5000)`
  - `[100000,102500)`
  - `[1000000,1002500)`
  - `[10000000,10002500)`
  - `[30000000,30002500)`
  - `[60000000,60002500)`
  - `[90000000,90002500)`
- Sampled GoodDirection cases: `7,112`
- Source-language validation failures: `0`

## Candidate Surfaces

| Choice | Candidate | Projected Obligations |
| --- | --- | ---: |
| best descriptor | `descriptor_source_language_row_exact` | 195 |
| best producer source+row | `source_language_full + row_exact` | 212 |
| best independent source+row | `source_language_full + row_scaled_lines` | 2,735 |

The accepted next proof-producing target is the producer-membership route:

```lean
SourceRowProducerGoodLanguageOnRange lo hi
```

with source producers keyed by `source_language_full` and row producers keyed
by `row_exact`. AP.16A then erases that producer language to direct descriptor
coverage:

```lean
SourceRowProducerGoodLanguageOnRange.to_descriptorCoverage
```

## Decision

Accept this as the AP.16B diagnostic target. The next implementation step is a
bounded Lean emitter over the same representative windows that proves a
nonempty `SourceRowProducerGoodLanguageOnRange` root, then erases it through
AP.16A. That emitter must avoid the rejected `interval_cases r` plus
`fin_cases mask` replay path.
