# Forced-Axis Sign Profile

- Range: `[10,000,000, 10,100,000)`
- Scanned pair words: `100,000`
- Jobs: `4`
- Elapsed seconds: `6.772`
- Arithmetic: exact Fraction/integer arithmetic; no floating point

## Counts

| Metric | Count |
| --- | ---: |
| `shadow_identity` | `3,278` |
| `shadow_nonidentity` | `96,722` |
| `exact_identity` | `3,278` |
| `exact_nonidentity` | `96,722` |
| `shadow_linear_mismatches` | `0` |
| `no_fixed_axis` | `0` |
| `final_axis_zero` | `8,245` |
| `final_axis_wrong_orientation_only` | `0` |
| `forced_zero_denominator` | `57,652` |
| `bad_pair_balance` | `26,682` |
| `forced_balance_survivors` | `4,143` |

## Orientation Stages

| Stage | Count |
| --- | ---: |
| `bad_pair_balance` | `26,682` |
| `final_dot_nonpositive` | `104,967` |
| `forced_balance_survivor` | `4,143` |
| `forced_zero_denominator` | `57,652` |

## Reduced Shadows

- Exact distinct count stored: `True`
- Stored distinct keys: `6,804`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `<empty>` | `3,278` |
| `d111 d1m1` | `1,551` |
| `d111 dm11` | `1,335` |
| `d111 d11m` | `1,199` |
| `d11m dm11` | `1,171` |
| `d11m d111` | `1,042` |
| `d11m d1m1` | `1,022` |
| `dm11 d11m` | `972` |
| `d1m1 d111` | `968` |
| `dm11 d111` | `601` |
| `d1m1 d11m` | `600` |
| `d111 d1m1 d111 d1m1` | `550` |
| `d111 d11m d111 d11m` | `512` |
| `d111 dm11 d111 dm11` | `512` |
| `dm11 d1m1` | `510` |
| `d11m d111 d11m d111` | `500` |
| `d1m1 dm11` | `485` |
| `d111 dm11 d1m1 d11m` | `448` |
| `d111 dm11 d11m d1m1` | `439` |
| `d111 d1m1 dm11 d11m` | `424` |

## Axes

- Exact distinct count stored: `True`
- Stored distinct keys: `3,972`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `1,0,-1` | `3,363` |
| `1,-1,0` | `3,334` |
| `1,0,1` | `2,729` |
| `0,1,-1` | `2,693` |
| `0,1,1` | `2,236` |
| `1,1,0` | `1,455` |
| `4,1,1` | `974` |
| `1,4,1` | `876` |
| `1,1,4` | `781` |
| `2,1,0` | `772` |
| `2,1,3` | `754` |
| `1,2,3` | `750` |
| `1,4,-1` | `748` |
| `4,1,-1` | `712` |
| `1,2,-3` | `651` |
| `1,2,0` | `636` |
| `1,0,2` | `622` |
| `0,1,2` | `618` |
| `2,1,-3` | `615` |
| `2,0,1` | `607` |

## Rejection Families

- Exact distinct count stored: `False`
- Stored distinct keys: `20,000`
- Overflow cases: `16,971`

| Key | Count |
| --- | ---: |
| `forcedZero|reduced=d111 d1m1|axis=1,0,-1|zeroAt=0|pair=y|normal=0,1,0` | `1,551` |
| `finalAxisZero|axis=0,1,-1|finalNormal=7,4,4` | `1,335` |
| `forcedZero|reduced=d111 d11m|axis=1,-1,0|zeroAt=1|pair=z|normal=0,0,1` | `1,199` |
| `forcedZero|reduced=d11m dm11|axis=1,0,1|zeroAt=0|pair=y|normal=0,1,0` | `1,171` |
| `forcedZero|reduced=d11m d111|axis=1,-1,0|zeroAt=1|pair=z|normal=0,0,1` | `1,042` |
| `finalAxisZero|axis=0,1,1|finalNormal=7,4,-4` | `1,022` |
| `forcedZero|reduced=dm11 d11m|axis=1,0,1|zeroAt=0|pair=y|normal=0,1,0` | `972` |
| `forcedZero|reduced=d1m1 d111|axis=1,0,-1|zeroAt=0|pair=y|normal=0,1,0` | `968` |
| `finalAxisZero|axis=0,1,-1|finalNormal=7,-4,-4` | `601` |
| `finalAxisZero|axis=0,1,1|finalNormal=7,-4,4` | `600` |
| `forcedZero|reduced=d111 d1m1 d111 d1m1|axis=1,0,-1|zeroAt=0|pair=y|normal=0,1,0` | `550` |
| `forcedZero|reduced=d111 d11m d111 d11m|axis=1,-1,0|zeroAt=1|pair=z|normal=0,0,1` | `512` |
| `finalAxisZero|axis=0,1,-1|finalNormal=17,56,56` | `512` |
| `forcedZero|reduced=dm11 d1m1|axis=1,1,0|zeroAt=1|pair=z|normal=0,0,1` | `510` |
| `forcedZero|reduced=d11m d111 d11m d111|axis=1,-1,0|zeroAt=1|pair=z|normal=0,0,1` | `500` |
| `forcedZero|reduced=d1m1 dm11|axis=1,1,0|zeroAt=1|pair=z|normal=0,0,1` | `485` |
| `forcedZero|reduced=d111 dm11 d1m1 d11m|axis=2,1,0|zeroAt=1|pair=z|normal=0,0,1` | `448` |
| `forcedZero|reduced=d111 dm11 d11m d1m1|axis=2,0,1|zeroAt=0|pair=y|normal=0,1,0` | `439` |
| `forcedZero|reduced=d111 d1m1 dm11 d11m|axis=1,2,0|zeroAt=1|pair=z|normal=0,0,1` | `424` |
| `forcedZero|reduced=d111 d11m dm11 d1m1|axis=1,0,2|zeroAt=0|pair=y|normal=0,1,0` | `420` |

## Survivor Signatures

- Exact distinct count stored: `True`
- Stored distinct keys: `3,229`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `survivor|reduced=d11m d111 dm11 d11m d111 dm11|axis=1,3,1|signs=---+++--+--++` | `10` |
| `survivor|reduced=d111 dm11 d11m d111 dm11 d11m|axis=1,-1,-3|signs=++---++-++---` | `10` |
| `survivor|reduced=d111 d1m1 d11m d111 d1m1 d11m|axis=1,-1,3|signs=+--+--+-+-+-+` | `9` |
| `survivor|reduced=d111 d1m1 dm11 d111 d1m1 dm11|axis=3,-1,1|signs=+--++-+-+-+--` | `9` |
| `survivor|reduced=d11m d1m1 d111 d11m d1m1 d111|axis=1,-1,3|signs=+--+--+-+-+-+` | `8` |
| `survivor|reduced=dm11 d111 d1m1 dm11 d111 d1m1|axis=1,1,3|signs=---+-+-+-+-++` | `8` |
| `survivor|reduced=d1m1 d111 dm11 d1m1 d111 dm11|axis=1,1,3|signs=---+-+-+-+-++` | `8` |
| `survivor|reduced=d11m d111 d1m1 d11m d111 d1m1|axis=3,1,1|signs=---+++--+--++` | `8` |
| `survivor|reduced=d1m1 d11m d111 d1m1 d11m d111|axis=1,3,-1|signs=-+--+-+-+-+-+` | `8` |
| `survivor|reduced=d111 d11m d1m1 d111 d11m d1m1|axis=1,3,-1|signs=-+--+-+-+-+-+` | `8` |
| `survivor|reduced=d111 dm11 d11m d111 dm11 d11m|axis=1,-1,-3|signs=++---+++--+--` | `8` |
| `survivor|reduced=d111 dm11 d1m1 d111 dm11 d1m1|axis=1,-3,-1|signs=++---+-+-+-+-` | `8` |
| `survivor|reduced=d1m1 dm11 d111 d1m1 dm11 d111|axis=1,-3,-1|signs=++---+-+-+-+-` | `8` |
| `survivor|reduced=d1m1 d111 d11m d1m1 d111 d11m|axis=3,1,1|signs=---+-+++-+-+-` | `7` |
| `survivor|reduced=d111 dm11 d1m1 d111 dm11 d1m1|axis=1,-3,-1|signs=++--+--+++---` | `7` |
| `survivor|reduced=d11m d111 dm11 d11m d111 dm11|axis=1,3,1|signs=---+++---++-+` | `7` |
| `survivor|reduced=d11m d111 dm11 d11m d111 dm11|axis=1,3,1|signs=---++++----++` | `7` |
| `survivor|reduced=d1m1 d111 d11m d1m1 d111 d11m|axis=3,1,1|signs=---+++-+-+-+-` | `7` |
| `survivor|reduced=d11m d111 d1m1 d11m d111 d1m1|axis=3,1,1|signs=---+++-+-+-+-` | `7` |
| `survivor|reduced=d111 dm11 d11m d111 dm11 d11m|axis=1,-1,-3|signs=++---++++----` | `7` |

## Sample Buckets

- `forced_zero_denominator`: `5` samples
- `bad_pair_balance`: `5` samples
- `final_axis_zero`: `5` samples
- `forced_balance_survivor`: `5` samples
