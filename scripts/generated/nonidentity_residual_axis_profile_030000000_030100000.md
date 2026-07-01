# Nonidentity Residual Axis Profile

- Range: `[30,000,000, 30,100,000)`
- Scanned pair words: `100,000`
- Jobs: `4`
- Elapsed seconds: `6.269`
- Arithmetic: exact Fraction/integer arithmetic; no floating point

## Counts

| Metric | Count |
| --- | ---: |
| `shadow_identity` | `1,928` |
| `shadow_nonidentity` | `98,072` |
| `exact_identity` | `1,928` |
| `exact_nonidentity` | `98,072` |
| `shadow_linear_mismatches` | `0` |
| `no_fixed_axis` | `0` |
| `final_axis_reject` | `10,571` |
| `forced_zero_denominator` | `62,683` |
| `bad_pair_balance` | `23,857` |
| `residual_survivors` | `961` |

## Terminal Failures

| Failure | Count |
| --- | ---: |
| `axis_misses_start_interior` | `922` |
| `first_hit_mismatch` | `39` |

## Local Certificate Kinds

| Certificate Kind | Count |
| --- | ---: |
| `AxisStartViolationCert` | `922` |
| `OpenSegmentViolationCert` | `39` |

## Terminal Family Keys

- Exact distinct count stored: `True`
- Stored distinct keys: `714`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `axisMissesStartInterior|badFace=tpmm|margin=neg:-194/255` | `5` |
| `axisMissesStartInterior|badFace=yp|margin=neg:-2527/680` | `5` |
| `axisMissesStartInterior|badFace=yp|margin=neg:-335/136` | `5` |
| `axisMissesStartInterior|badFace=tpmm|margin=neg:-2/45` | `5` |
| `axisMissesStartInterior|badFace=yp|margin=neg:-457/204` | `5` |

## Terminal Template Keys

- Exact distinct count stored: `True`
- Stored distinct keys: `13`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `axisMissesStartInterior|badFace=yp` | `872` |
| `axisMissesStartInterior|badFace=tpmm` | `50` |
| `firstHitMismatch|step=0|expected=zp|actual=tmpp|actualBeforeExpected` | `11` |
| `firstHitMismatch|step=0|expected=zp|actual=xm|actualBeforeExpected` | `9` |
| `firstHitMismatch|step=0|expected=zp|actual=yp|actualBeforeExpected` | `6` |

## Certificate Template Keys

- Exact distinct count stored: `True`
- Stored distinct keys: `13`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `AxisStartViolationCert|axisMissesStartInterior|badFace=yp` | `872` |
| `AxisStartViolationCert|axisMissesStartInterior|badFace=tpmm` | `50` |
| `OpenSegmentViolationCert|firstHitMismatch|step=0|expected=zp|actual=tmpp|actualBeforeExpected` | `11` |
| `OpenSegmentViolationCert|firstHitMismatch|step=0|expected=zp|actual=xm|actualBeforeExpected` | `9` |
| `OpenSegmentViolationCert|firstHitMismatch|step=0|expected=zp|actual=yp|actualBeforeExpected` | `6` |

## Residual Signatures

- Exact distinct count stored: `True`
- Stored distinct keys: `646`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `residual|reduced=d111 d1m1 d11m dm11 d111 dm11|axis=12,-5,-1|signs=+--+-+-+-+-+-|failure=axis_misses_start_interior` | `18` |
| `residual|reduced=d111 d1m1 d11m dm11 d111 dm11|axis=12,-5,-1|signs=+--+-++--+-+-|failure=axis_misses_start_interior` | `7` |
| `residual|reduced=d111 dm11 d111 dm11 d1m1 d11m|axis=8,-5,-9|signs=++-++--++----|failure=axis_misses_start_interior` | `6` |
| `residual|reduced=d111 dm11 d111 dm11 d11m d1m1|axis=8,-9,-5|signs=++-++--++----|failure=axis_misses_start_interior` | `6` |
| `residual|reduced=d111 d1m1 d11m dm11 d111 dm11|axis=12,-5,-1|signs=+--+++---+-+-|failure=axis_misses_start_interior` | `6` |

## Terminal By Reduced Shadow

- Exact distinct count stored: `True`
- Stored distinct keys: `174`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `axis_misses_start_interior|reduced=d111 d1m1 d11m dm11 d111 dm11` | `121` |
| `axis_misses_start_interior|reduced=d111 d1m1 d11m dm11 d111 d11m` | `56` |
| `axis_misses_start_interior|reduced=d111 d1m1 d11m d111 d11m dm11` | `40` |
| `axis_misses_start_interior|reduced=d111 d1m1 d11m d111 d11m d111 dm11 d1m1` | `27` |
| `axis_misses_start_interior|reduced=d111 dm11 d11m d1m1 d111 d11m` | `25` |

## Terminal By Axis

- Exact distinct count stored: `True`
- Stored distinct keys: `174`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `axis_misses_start_interior|axis=12,-5,-1` | `121` |
| `axis_misses_start_interior|axis=5,7,-6` | `56` |
| `axis_misses_start_interior|axis=9,-5,2` | `40` |
| `axis_misses_start_interior|axis=8,-39,-5` | `27` |
| `axis_misses_start_interior|axis=7,5,-6` | `25` |

## Sample Buckets

- `terminal_axis_misses_start_interior`: `1` samples
- `terminal_first_hit_mismatch`: `1` samples
