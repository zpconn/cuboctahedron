# Phase 6Z.6K.8AP.16DU.9IQ Hmask Bad-Cover Profile

This diagnostic is not trusted as proof and emits no Lean.  It measures
whether the DU9IQ `GoodDirection -> good-mask` premise is small enough
for singleton bad-mask witnesses, or whether the next step must use a
compressed denominator-cube/impact-subcube cover.

- Status: `reject-singleton-hmask-lean`
- Next step: `profile-denominator-cube-or-impact-subcube-cover`
- Rank window: `[896, 960)`
- Identity ranks: `7`
- Nonidentity ranks skipped: `57`
- GoodDirection cases: `75`
- Bad-mask cases needing contradictions: `373`
- Singleton gate: `128`
- Estimated singleton Lean lines: `27975`

## Bad Masks By Rank

| Rank | Good masks | Bad masks | Bad impact histogram |
| ---: | --- | ---: | --- |
| 896 | `9,13,16,18,22,24,28,30,31,45,47,54,55` | 51 | `{1: 8, 2: 14, 4: 6, 6: 9, 8: 5, 10: 4, 11: 5}` |
| 897 | `8,13,16,18,24,29,30,31,45,47,54,55,63` | 51 | `{1: 8, 2: 14, 4: 6, 6: 9, 8: 5, 10: 4, 11: 5}` |
| 899 | `8,9,13,16,18,22,24,28,29,30,31,45,47,54,55,63` | 48 | `{1: 20, 2: 12, 4: 8, 6: 4, 8: 2, 10: 1, 12: 1}` |
| 903 | `18,22,24,25,54,55,63` | 57 | `{1: 16, 2: 10, 4: 10, 6: 6, 7: 5, 8: 5, 12: 5}` |
| 905 | `18,22,24,41,54,55,57,63` | 56 | `{1: 20, 2: 12, 4: 8, 6: 6, 7: 4, 8: 4, 11: 2}` |
| 911 | `9,16,18,22,24,45,50,54,55,57,63` | 53 | `{1: 16, 2: 12, 4: 9, 6: 7, 7: 4, 8: 3, 10: 2}` |
| 955 | `16,18,22,54,56,57,63` | 57 | `{1: 16, 2: 10, 4: 10, 6: 9, 7: 4, 8: 3, 9: 5}` |

## Top First-Bad Impacts

| Impact | Count |
| ---: | ---: |
| 1 | 104 |
| 2 | 84 |
| 4 | 57 |
| 6 | 50 |
| 8 | 27 |
| 7 | 17 |
| 11 | 12 |
| 10 | 11 |
| 12 | 6 |
| 9 | 5 |

## Top Rank/Impact Groups

| Rank:Impact | Count |
| --- | ---: |
| `899:1` | 20 |
| `905:1` | 20 |
| `903:1` | 16 |
| `911:1` | 16 |
| `955:1` | 16 |
| `896:2` | 14 |
| `897:2` | 14 |
| `899:2` | 12 |
| `905:2` | 12 |
| `911:2` | 12 |
| `903:2` | 10 |
| `903:4` | 10 |
| `955:4` | 10 |
| `955:2` | 10 |
| `896:6` | 9 |
| `897:6` | 9 |
| `911:4` | 9 |
| `955:6` | 9 |
| `896:1` | 8 |
| `897:1` | 8 |

## Decision Notes

- this profile emits no Lean
- singleton bad-mask witnesses are bounded-smoke only, not the production path
- a rejected singleton gate means keep hmask as a premise until a compressed cover is available
