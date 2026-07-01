# Forced-Axis Sign Profile

- Range: `[0, 100,000)`
- Scanned pair words: `100,000`
- Jobs: `4`
- Elapsed seconds: `5.883`
- Arithmetic: exact Fraction/integer arithmetic; no floating point

## Counts

| Metric | Count |
| --- | ---: |
| `shadow_identity` | `5,565` |
| `shadow_nonidentity` | `94,435` |
| `exact_identity` | `5,565` |
| `exact_nonidentity` | `94,435` |
| `shadow_linear_mismatches` | `0` |
| `no_fixed_axis` | `0` |
| `final_axis_zero` | `6,241` |
| `final_axis_wrong_orientation_only` | `0` |
| `forced_zero_denominator` | `54,794` |
| `bad_pair_balance` | `24,364` |
| `forced_balance_survivors` | `9,036` |

## Orientation Stages

| Stage | Count |
| --- | ---: |
| `bad_pair_balance` | `24,364` |
| `final_dot_nonpositive` | `100,676` |
| `forced_balance_survivor` | `9,036` |
| `forced_zero_denominator` | `54,794` |

## Reduced Shadows

- Exact distinct count stored: `True`
- Stored distinct keys: `3,879`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `<empty>` | `5,565` |
| `d11m d111` | `1,969` |
| `dm11 d1m1` | `1,830` |
| `d1m1 dm11` | `1,827` |
| `d111 d11m` | `1,550` |
| `d11m d111 d11m d111` | `792` |
| `d1m1 dm11 d1m1 dm11` | `710` |
| `dm11 d1m1 dm11 d1m1` | `710` |
| `dm11 d111 dm11 d111` | `671` |
| `d1m1 d111 d1m1 d111` | `669` |
| `d11m d1m1 d11m d1m1` | `637` |
| `d1m1 d11m d1m1 d11m` | `636` |
| `dm11 d11m dm11 d11m` | `630` |
| `d11m dm11 d11m dm11` | `629` |
| `d111 d11m d111 d11m` | `499` |
| `d1m1 d11m d1m1 d111` | `470` |
| `d1m1 d111 dm11 d111` | `470` |
| `dm11 d111 d1m1 d111` | `470` |
| `d111 dm11 d111 dm11` | `470` |
| `dm11 d11m dm11 d111` | `469` |

## Axes

- Exact distinct count stored: `True`
- Stored distinct keys: `1,906`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `1,1,0` | `5,077` |
| `1,-1,0` | `4,810` |
| `0,1,1` | `1,283` |
| `1,0,1` | `1,269` |
| `0,1,-1` | `1,149` |
| `1,-1,4` | `1,124` |
| `1,-1,-4` | `1,122` |
| `1,0,-1` | `1,080` |
| `1,1,-4` | `1,059` |
| `3,-1,2` | `932` |
| `1,-3,-2` | `932` |
| `3,1,-2` | `911` |
| `1,3,-2` | `911` |
| `3,-1,-2` | `875` |
| `0,2,-1` | `843` |
| `2,0,-1` | `843` |
| `1,3,2` | `825` |
| `2,-1,0` | `816` |
| `1,-2,0` | `814` |
| `1,1,4` | `806` |

## Rejection Families

- Exact distinct count stored: `False`
- Stored distinct keys: `20,000`
- Overflow cases: `10,488`

| Key | Count |
| --- | ---: |
| `forcedZero|reduced=d1m1 dm11|axis=1,1,0|zeroAt=3|pair=d11m|normal=1,-1,1` | `870` |
| `forcedZero|reduced=d11m d111|axis=1,-1,0|zeroAt=3|pair=d1m1|normal=1,1,-1` | `870` |
| `forcedZero|reduced=dm11 d1m1|axis=1,1,0|zeroAt=3|pair=d111|normal=1,-1,-1` | `870` |
| `finalAxisZero|axis=0,1,-1|finalNormal=17,-56,-56` | `671` |
| `forcedZero|reduced=d1m1 d111 d1m1 d111|axis=1,0,-1|zeroAt=1|pair=y|normal=0,1,0` | `669` |
| `finalAxisZero|axis=0,1,1|finalNormal=17,56,-56` | `637` |
| `finalAxisZero|axis=0,1,1|finalNormal=17,-56,56` | `636` |
| `forcedZero|reduced=dm11 d11m dm11 d11m|axis=1,0,1|zeroAt=1|pair=y|normal=0,1,0` | `630` |
| `forcedZero|reduced=d11m dm11 d11m dm11|axis=1,0,1|zeroAt=1|pair=y|normal=0,1,0` | `629` |
| `finalAxisZero|axis=0,1,-1|finalNormal=17,56,56` | `470` |
| `forcedZero|reduced=d1m1 dm11|axis=1,1,0|zeroAt=3|pair=z|normal=0,0,1` | `440` |
| `forcedZero|reduced=dm11 d1m1|axis=1,1,0|zeroAt=3|pair=z|normal=0,0,1` | `440` |
| `forcedZero|reduced=d111 d11m|axis=1,-1,0|zeroAt=3|pair=z|normal=0,0,1` | `440` |
| `forcedZero|reduced=d11m d111|axis=1,-1,0|zeroAt=3|pair=z|normal=0,0,1` | `440` |
| `forcedZero|reduced=d1m1 dm11 d1m1 dm11|axis=1,1,0|zeroAt=3|pair=d11m|normal=1,-1,1` | `436` |
| `forcedZero|reduced=d11m d111 d11m d111|axis=1,-1,0|zeroAt=3|pair=d1m1|normal=1,1,-1` | `436` |
| `forcedZero|reduced=dm11 d1m1 dm11 d1m1|axis=1,1,0|zeroAt=3|pair=d111|normal=1,-1,-1` | `436` |
| `forcedZero|reduced=d1m1 d11m dm11 d111|axis=2,0,1|zeroAt=1|pair=y|normal=0,1,0` | `415` |
| `finalAxisZero|axis=0,2,1|finalNormal=79,8,-16` | `415` |
| `forcedZero|reduced=dm11 d111 d1m1 d11m|axis=2,0,-1|zeroAt=1|pair=y|normal=0,1,0` | `407` |

## Survivor Signatures

- Exact distinct count stored: `True`
- Stored distinct keys: `6,224`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `survivor|reduced=d11m d1m1 d111 d11m d1m1 d111|axis=1,-1,3|signs=-+--+-+-+-+-+` | `31` |
| `survivor|reduced=d1m1 d11m d111 d1m1 d11m d111|axis=1,3,-1|signs=--+-+-+-+-+-+` | `23` |
| `survivor|reduced=d1m1 d111 d11m d1m1 d111 d11m|axis=3,1,1|signs=--++-+-+-+-+-` | `23` |
| `survivor|reduced=d11m d111 d1m1 d11m d111 d1m1|axis=3,1,1|signs=--++-+-+-+-+-` | `23` |
| `survivor|reduced=d111 d1m1 d11m d111 d1m1 d11m|axis=1,-1,3|signs=-+--+-+-+-+-+` | `14` |
| `survivor|reduced=d111 d11m d1m1 d111 d11m d1m1|axis=1,3,-1|signs=--+-+-+-+-+-+` | `12` |
| `survivor|reduced=d1m1 dm11 d111 d1m1 dm11 d111|axis=1,-3,-1|signs=-+-+++--+--+-` | `9` |
| `survivor|reduced=d1m1 dm11 d11m d1m1 dm11 d11m|axis=3,-1,-1|signs=-+-+++--+--+-` | `9` |
| `survivor|reduced=d1m1 dm11 d111 d1m1 dm11 d111|axis=1,-3,-1|signs=-+-++-++---+-` | `9` |
| `survivor|reduced=d1m1 dm11 d11m d1m1 dm11 d11m|axis=3,-1,-1|signs=-+-++-++---+-` | `9` |
| `survivor|reduced=d11m dm11 d1m1 d11m dm11 d1m1|axis=3,-1,-1|signs=-+-+-+++--+--` | `9` |
| `survivor|reduced=d11m dm11 d1m1 d11m dm11 d1m1|axis=3,-1,-1|signs=-+-+-++-++---` | `9` |
| `survivor|reduced=d111 dm11 d1m1 d111 dm11 d1m1|axis=1,-3,-1|signs=-+-+-+++--+--` | `9` |
| `survivor|reduced=d111 dm11 d1m1 d111 dm11 d1m1|axis=1,-3,-1|signs=-+-+-++-++---` | `9` |
| `survivor|reduced=d111 dm11 d11m d111 dm11 d11m|axis=1,-1,-3|signs=-+-+-+-+-+-+-` | `9` |
| `survivor|reduced=d11m dm11 d111 d11m dm11 d111|axis=1,-1,-3|signs=-+-+-+-+-+-+-` | `9` |
| `survivor|reduced=dm11 d11m d111 dm11 d11m d111|axis=3,1,-1|signs=--++-++--+--+` | `8` |
| `survivor|reduced=dm11 d111 d11m dm11 d111 d11m|axis=1,3,1|signs=--+-+--++-++-` | `8` |
| `survivor|reduced=d11m dm11 d111 d11m dm11 d111|axis=1,-1,-3|signs=-+-++-++--+--` | `8` |
| `survivor|reduced=d11m d111 dm11 d11m d111 dm11|axis=1,3,1|signs=--++--+--++-+` | `8` |

## Sample Buckets

- `forced_zero_denominator`: `10` samples
- `forced_balance_survivor`: `10` samples
- `bad_pair_balance`: `10` samples
- `final_axis_zero`: `10` samples
