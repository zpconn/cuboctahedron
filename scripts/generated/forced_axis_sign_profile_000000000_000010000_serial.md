# Forced-Axis Sign Profile

- Range: `[0, 10,000)`
- Scanned pair words: `10,000`
- Jobs: `1`
- Elapsed seconds: `2.310`
- Arithmetic: exact Fraction/integer arithmetic; no floating point

## Counts

| Metric | Count |
| --- | ---: |
| `shadow_identity` | `712` |
| `shadow_nonidentity` | `9,288` |
| `exact_identity` | `712` |
| `exact_nonidentity` | `9,288` |
| `shadow_linear_mismatches` | `0` |
| `no_fixed_axis` | `0` |
| `final_axis_zero` | `595` |
| `final_axis_wrong_orientation_only` | `0` |
| `forced_zero_denominator` | `5,601` |
| `bad_pair_balance` | `2,078` |
| `forced_balance_survivors` | `1,014` |

## Orientation Stages

| Stage | Count |
| --- | ---: |
| `bad_pair_balance` | `2,078` |
| `final_dot_nonpositive` | `9,883` |
| `forced_balance_survivor` | `1,014` |
| `forced_zero_denominator` | `5,601` |

## Reduced Shadows

- Exact distinct count stored: `True`
- Stored distinct keys: `2,174`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `<empty>` | `712` |
| `d1m1 dm11` | `289` |
| `dm11 d1m1` | `240` |
| `d1m1 dm11 d1m1 dm11` | `124` |
| `d1m1 d11m d1m1 d11m` | `112` |
| `d1m1 d111 d1m1 d111` | `111` |
| `d111 d11m` | `106` |
| `d11m d111` | `102` |
| `dm11 d1m1 dm11 d1m1` | `100` |
| `d111 d11m d111 d11m` | `84` |
| `d11m d111 d11m d111` | `79` |
| `d1m1 d111 dm11 d111` | `78` |

## Axes

- Exact distinct count stored: `True`
- Stored distinct keys: `1,373`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `1,1,0` | `753` |
| `1,-1,0` | `371` |
| `0,1,1` | `166` |
| `1,0,-1` | `165` |
| `0,1,-1` | `121` |
| `1,-1,4` | `120` |
| `1,0,1` | `118` |
| `1,3,2` | `100` |
| `3,1,-2` | `99` |
| `2,-1,0` | `91` |
| `1,-2,0` | `90` |
| `2,0,1` | `81` |

## Rejection Families

- Exact distinct count stored: `True`
- Stored distinct keys: `3,356`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `forcedZero|reduced=d1m1 dm11|axis=1,1,0|zeroAt=3|pair=z|normal=0,0,1` | `289` |
| `forcedZero|reduced=dm11 d1m1|axis=1,1,0|zeroAt=3|pair=z|normal=0,0,1` | `240` |
| `forcedZero|reduced=d1m1 dm11 d1m1 dm11|axis=1,1,0|zeroAt=3|pair=z|normal=0,0,1` | `124` |
| `finalAxisZero|axis=0,1,1|finalNormal=17,-56,56` | `112` |
| `forcedZero|reduced=d1m1 d111 d1m1 d111|axis=1,0,-1|zeroAt=1|pair=y|normal=0,1,0` | `111` |
| `forcedZero|reduced=d111 d11m|axis=1,-1,0|zeroAt=3|pair=z|normal=0,0,1` | `106` |
| `forcedZero|reduced=d11m d111|axis=1,-1,0|zeroAt=3|pair=z|normal=0,0,1` | `102` |
| `forcedZero|reduced=dm11 d1m1 dm11 d1m1|axis=1,1,0|zeroAt=3|pair=z|normal=0,0,1` | `100` |
| `forcedZero|reduced=d111 d11m d111 d11m|axis=1,-1,0|zeroAt=3|pair=z|normal=0,0,1` | `84` |
| `forcedZero|reduced=d11m d111 d11m d111|axis=1,-1,0|zeroAt=3|pair=z|normal=0,0,1` | `79` |
| `forcedZero|reduced=d1m1 d11m d111 dm11|axis=2,-1,0|zeroAt=3|pair=z|normal=0,0,1` | `68` |
| `finalAxisZero|axis=0,1,-1|finalNormal=17,-56,-56` | `67` |

## Survivor Signatures

- Exact distinct count stored: `True`
- Stored distinct keys: `858`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `survivor|reduced=d11m d1m1 d111 d11m d1m1 d111|axis=1,-1,3|signs=-+--+-+-+-+-+` | `8` |
| `survivor|reduced=d111 d1m1 d11m d111 d1m1 d11m|axis=1,-1,3|signs=-+--+-+-+-+-+` | `8` |
| `survivor|reduced=d1m1 d11m d111 d1m1 d11m d111|axis=1,3,-1|signs=--++--+-+-+-+` | `7` |
| `survivor|reduced=d1m1 d111 d11m d1m1 d111 d11m|axis=3,1,1|signs=--+-++-+-+-+-` | `7` |
| `survivor|reduced=d11m d111 d1m1 d11m d111 d1m1|axis=3,1,1|signs=--+-++-+-+-+-` | `7` |
| `survivor|reduced=d111 d11m d1m1 d111 d11m d1m1|axis=1,3,-1|signs=--++--+-+-+-+` | `7` |
| `survivor|reduced=dm11 d1m1 d11m dm11 d1m1 d11m|axis=1,-3,1|signs=-+--+++--+--+` | `6` |
| `survivor|reduced=dm11 d1m1 d111 dm11 d1m1 d111|axis=3,-1,1|signs=-+--+++--+--+` | `6` |
| `survivor|reduced=d1m1 d11m dm11 d1m1 d11m dm11|axis=1,1,-3|signs=--++--+++--+-` | `4` |
| `survivor|reduced=d1m1 d11m dm11 d1m1 d11m dm11|axis=1,1,-3|signs=--++--++-++--` | `4` |
| `survivor|reduced=d1m1 d111 dm11 d1m1 d111 dm11|axis=1,1,3|signs=--+-++---++-+` | `4` |
| `survivor|reduced=d1m1 d111 dm11 d1m1 d111 dm11|axis=1,1,3|signs=--+-++--+--++` | `4` |

## Sample Buckets

- `forced_zero_denominator`: `5` samples
- `final_axis_zero`: `5` samples
- `forced_balance_survivor`: `5` samples
- `bad_pair_balance`: `5` samples
