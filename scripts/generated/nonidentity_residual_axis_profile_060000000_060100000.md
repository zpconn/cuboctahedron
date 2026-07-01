# Nonidentity Residual Axis Profile

- Range: `[60,000,000, 60,100,000)`
- Scanned pair words: `100,000`
- Jobs: `4`
- Elapsed seconds: `5.958`
- Arithmetic: exact Fraction/integer arithmetic; no floating point

## Counts

| Metric | Count |
| --- | ---: |
| `shadow_identity` | `1,420` |
| `shadow_nonidentity` | `98,580` |
| `exact_identity` | `1,420` |
| `exact_nonidentity` | `98,580` |
| `shadow_linear_mismatches` | `0` |
| `no_fixed_axis` | `0` |
| `final_axis_reject` | `3,963` |
| `forced_zero_denominator` | `73,573` |
| `bad_pair_balance` | `19,573` |
| `residual_survivors` | `1,471` |

## Terminal Failures

| Failure | Count |
| --- | ---: |
| `axis_misses_start_interior` | `1,444` |
| `first_hit_mismatch` | `27` |

## Local Certificate Kinds

| Certificate Kind | Count |
| --- | ---: |
| `AxisStartViolationCert` | `1,444` |
| `OpenSegmentViolationCert` | `27` |

## Terminal Family Keys

- Exact distinct count stored: `True`
- Stored distinct keys: `629`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `axisMissesStartInterior|badFace=yp|margin=neg:-3/2` | `16` |
| `axisMissesStartInterior|badFace=yp|margin=neg:-5/22` | `15` |
| `axisMissesStartInterior|badFace=yp|margin=neg:-39/20` | `14` |
| `axisMissesStartInterior|badFace=yp|margin=neg:-7/6` | `13` |
| `axisMissesStartInterior|badFace=yp|margin=neg:-17/10` | `12` |

## Terminal Template Keys

- Exact distinct count stored: `True`
- Stored distinct keys: `10`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `axisMissesStartInterior|badFace=yp` | `1,403` |
| `axisMissesStartInterior|badFace=tpmm` | `41` |
| `firstHitMismatch|step=0|expected=tmmp|actual=tmmm|actualBeforeExpected` | `9` |
| `firstHitMismatch|step=0|expected=tmmp|actual=zm|actualBeforeExpected` | `8` |
| `firstHitMismatch|step=0|expected=tmmp|actual=ym|actualBeforeExpected` | `3` |

## Certificate Template Keys

- Exact distinct count stored: `True`
- Stored distinct keys: `10`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `AxisStartViolationCert|axisMissesStartInterior|badFace=yp` | `1,403` |
| `AxisStartViolationCert|axisMissesStartInterior|badFace=tpmm` | `41` |
| `OpenSegmentViolationCert|firstHitMismatch|step=0|expected=tmmp|actual=tmmm|actualBeforeExpected` | `9` |
| `OpenSegmentViolationCert|firstHitMismatch|step=0|expected=tmmp|actual=zm|actualBeforeExpected` | `8` |
| `OpenSegmentViolationCert|firstHitMismatch|step=0|expected=tmmp|actual=ym|actualBeforeExpected` | `3` |

## Residual Signatures

- Exact distinct count stored: `True`
- Stored distinct keys: `680`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `residual|reduced=d11m d111 d1m1 dm11|axis=1,0,-2|signs=-++-+-+-+-+--|failure=axis_misses_start_interior` | `15` |
| `residual|reduced=d11m d111 d11m d1m1 dm11 d11m|axis=2,5,4|signs=--++-+-+-+-+-|failure=axis_misses_start_interior` | `13` |
| `residual|reduced=d11m d111 d1m1 dm11|axis=1,0,-2|signs=-++-+-+-+--+-|failure=axis_misses_start_interior` | `12` |
| `residual|reduced=d11m d111 d11m d1m1 dm11 d11m|axis=2,5,4|signs=--+-+-+-+-++-|failure=axis_misses_start_interior` | `11` |
| `residual|reduced=d11m d111 d1m1 dm11|axis=1,0,-2|signs=-++-+--+-+-+-|failure=axis_misses_start_interior` | `11` |

## Terminal By Reduced Shadow

- Exact distinct count stored: `True`
- Stored distinct keys: `126`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `axis_misses_start_interior|reduced=d11m d111 d11m d1m1 dm11 d11m` | `227` |
| `axis_misses_start_interior|reduced=d11m d111 d1m1 dm11` | `138` |
| `axis_misses_start_interior|reduced=d11m d111 d11m d111 d1m1 dm11` | `106` |
| `axis_misses_start_interior|reduced=d11m d111 d11m d1m1 dm11 d111` | `67` |
| `axis_misses_start_interior|reduced=d11m d111 d11m d111 dm11 d1m1` | `52` |

## Terminal By Axis

- Exact distinct count stored: `True`
- Stored distinct keys: `126`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `axis_misses_start_interior|axis=2,5,4` | `227` |
| `axis_misses_start_interior|axis=1,0,-2` | `138` |
| `axis_misses_start_interior|axis=5,9,8` | `106` |
| `axis_misses_start_interior|axis=5,1,-12` | `67` |
| `axis_misses_start_interior|axis=9,5,8` | `52` |

## Sample Buckets

- `terminal_axis_misses_start_interior`: `1` samples
- `terminal_first_hit_mismatch`: `1` samples
