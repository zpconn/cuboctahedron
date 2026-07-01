# Forced-Axis Sign Profile

- Range: `[90,000,000, 90,100,000)`
- Scanned pair words: `100,000`
- Jobs: `4`
- Elapsed seconds: `7.027`
- Arithmetic: exact Fraction/integer arithmetic; no floating point

## Counts

| Metric | Count |
| --- | ---: |
| `shadow_identity` | `1,029` |
| `shadow_nonidentity` | `98,971` |
| `exact_identity` | `1,029` |
| `exact_nonidentity` | `98,971` |
| `shadow_linear_mismatches` | `0` |
| `no_fixed_axis` | `0` |
| `final_axis_zero` | `8,243` |
| `final_axis_wrong_orientation_only` | `0` |
| `forced_zero_denominator` | `52,135` |
| `bad_pair_balance` | `36,342` |
| `forced_balance_survivors` | `2,251` |

## Orientation Stages

| Stage | Count |
| --- | ---: |
| `bad_pair_balance` | `36,342` |
| `final_dot_nonpositive` | `107,214` |
| `forced_balance_survivor` | `2,251` |
| `forced_zero_denominator` | `52,135` |

## Reduced Shadows

- Exact distinct count stored: `True`
- Stored distinct keys: `364`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `dm11 d111` | `4,331` |
| `dm11 d111 d11m d111` | `4,224` |
| `dm11 d111 d11m d1m1` | `3,321` |
| `dm11 d111 d11m dm11` | `3,271` |
| `dm11 d111 d11m d111 dm11 d1m1` | `1,458` |
| `dm11 d111 d11m d111 d1m1 dm11` | `1,443` |
| `dm11 d111 d11m d1m1 dm11 d111` | `1,411` |
| `dm11 d111 d11m dm11 d1m1 d111` | `1,370` |
| `dm11 d111 d11m d1m1 dm11 d11m` | `1,354` |
| `dm11 d111 dm11 d1m1` | `1,351` |
| `dm11 d111 d1m1 dm11` | `1,349` |
| `dm11 d111 d11m dm11 d1m1 d11m` | `1,308` |
| `dm11 d111 d11m d1m1 d111 dm11` | `1,270` |
| `dm11 d111 d11m dm11 d111 d1m1` | `1,230` |
| `dm11 d111 d11m d111 d11m d111` | `1,215` |
| `dm11 d11m` | `1,215` |
| `dm11 d111 d11m d1m1 d11m dm11` | `1,195` |
| `dm11 d111 d11m d111 dm11 d11m` | `1,171` |
| `dm11 d111 d11m dm11 d11m d1m1` | `1,157` |
| `dm11 d111 d11m d111 d1m1 d11m` | `1,150` |

## Axes

- Exact distinct count stored: `True`
- Stored distinct keys: `337`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `0,1,-1` | `5,584` |
| `1,-1,-4` | `4,592` |
| `3,2,1` | `4,341` |
| `2,-1,0` | `3,427` |
| `1,-4,-1` | `1,594` |
| `8,7,7` | `1,544` |
| `1,0,1` | `1,526` |
| `4,1,-3` | `1,458` |
| `10,5,-1` | `1,443` |
| `0,11,7` | `1,411` |
| `6,-7,-5` | `1,370` |
| `7,6,-5` | `1,354` |
| `1,-2,-3` | `1,351` |
| `7,0,1` | `1,308` |
| `1,1,0` | `1,267` |
| `4,-5,3` | `1,230` |
| `6,-5,11` | `1,215` |
| `11,4,-5` | `1,209` |
| `1,-10,5` | `1,195` |
| `2,3,5` | `1,171` |

## Rejection Families

- Exact distinct count stored: `True`
- Stored distinct keys: `14,311`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `finalAxisZero|axis=0,1,-1|finalNormal=7,-4,-4` | `4,331` |
| `forcedZero|reduced=dm11 d111 d11m d111|axis=3,2,1|zeroAt=0|pair=dm11|normal=1,-1,-1` | `4,224` |
| `forcedZero|reduced=dm11 d111 d11m dm11|axis=1,-1,-4|zeroAt=1|pair=d111|normal=5,1,1` | `3,271` |
| `forcedZero|reduced=dm11 d111 d11m d111 dm11 d1m1|axis=4,1,-3|zeroAt=2|pair=d11m|normal=7,-13,5` | `1,458` |
| `forcedZero|reduced=dm11 d111 d11m d111 d1m1 dm11|axis=10,5,-1|zeroAt=2|pair=d11m|normal=7,-13,5` | `1,443` |
| `finalAxisZero|axis=0,11,7|finalNormal=631,-196,308` | `1,411` |
| `forcedZero|reduced=dm11 d111 dm11 d1m1|axis=1,-2,-3|zeroAt=1|pair=d111|normal=5,1,1` | `1,351` |
| `forcedZero|reduced=dm11 d111 d1m1 dm11|axis=1,-4,-1|zeroAt=1|pair=d111|normal=5,1,1` | `1,349` |
| `forcedZero|reduced=dm11 d111 d11m d1m1 d111 dm11|axis=8,7,7|zeroAt=2|pair=d11m|normal=7,-13,5` | `1,270` |
| `forcedZero|reduced=dm11 d111 d11m d111 d11m d111|axis=6,-5,11|zeroAt=0|pair=dm11|normal=1,-1,-1` | `1,215` |
| `forcedZero|reduced=dm11 d11m|axis=1,0,1|zeroAt=0|pair=dm11|normal=1,-1,-1` | `1,215` |
| `forcedZero|reduced=dm11 d111 d11m d1m1 d11m dm11|axis=1,-10,5|zeroAt=1|pair=d111|normal=5,1,1` | `1,195` |
| `forcedZero|reduced=dm11 d111 d11m d111 dm11 d11m|axis=2,3,5|zeroAt=2|pair=d11m|normal=7,-13,5` | `1,171` |
| `forcedZero|reduced=dm11 d111 d11m d111 d11m dm11|axis=1,-1,-4|zeroAt=1|pair=d111|normal=5,1,1` | `1,086` |
| `forcedZero|reduced=dm11 d111 d11m dm11 d111 dm11|axis=11,4,-5|zeroAt=2|pair=d11m|normal=7,-13,5` | `1,078` |
| `forcedZero|reduced=dm11 d111 d11m dm11 d11m dm11|axis=2,-11,1|zeroAt=1|pair=d111|normal=5,1,1` | `1,075` |
| `forcedZero|reduced=dm11 d111 dm11 d11m|axis=1,-3,-2|zeroAt=1|pair=d111|normal=5,1,1` | `1,020` |
| `forcedZero|reduced=dm11 d1m1|axis=1,1,0|zeroAt=0|pair=dm11|normal=1,-1,-1` | `1,005` |
| `forcedZero|reduced=dm11 d111 d11m d1m1 d11m d111|axis=3,-1,4|zeroAt=0|pair=dm11|normal=1,-1,-1` | `992` |
| `finalAxisZero|axis=0,1,-1|finalNormal=17,-56,-56` | `989` |

## Survivor Signatures

- Exact distinct count stored: `True`
- Stored distinct keys: `948`
- Overflow cases: `0`

| Key | Count |
| --- | ---: |
| `survivor|reduced=dm11 d111 d11m d1m1 d11m d1m1|axis=8,5,-9|signs=+---+-+-+-+-+` | `21` |
| `survivor|reduced=dm11 d111 d11m dm11 d111 d1m1|axis=4,-5,3|signs=+-++---++-+--` | `20` |
| `survivor|reduced=dm11 d111 d11m dm11 d111 d1m1|axis=4,-5,3|signs=+-++--+-+-+--` | `16` |
| `survivor|reduced=dm11 d111 d11m dm11 d111 d1m1|axis=4,-5,3|signs=+-++---+-++--` | `16` |
| `survivor|reduced=dm11 d111 d11m d1m1|axis=2,-1,0|signs=+-++--+-+--+-` | `14` |
| `survivor|reduced=dm11 d111 d11m d1m1|axis=2,-1,0|signs=+-++--+-+-+--` | `14` |
| `survivor|reduced=dm11 d111 d11m d1m1|axis=2,-1,0|signs=+-+-+-+--++--` | `14` |
| `survivor|reduced=dm11 d111 d11m dm11 d11m d1m1|axis=5,2,9|signs=--+++++---+--` | `12` |
| `survivor|reduced=dm11 d111 d11m dm11 d111 d1m1|axis=4,-5,3|signs=+-++---+++---` | `12` |
| `survivor|reduced=dm11 d111 d11m d1m1|axis=2,-1,0|signs=+-+-+--+-++--` | `12` |
| `survivor|reduced=dm11 d111 d11m dm11 d111 d1m1|axis=4,-5,3|signs=+-++--+--++--` | `11` |
| `survivor|reduced=dm11 d111 d11m d1m1 d11m d1m1|axis=8,5,-9|signs=+---+-++-+--+` | `11` |
| `survivor|reduced=dm11 d111 d11m d1m1|axis=2,-1,0|signs=+-+-+--++-+--` | `11` |
| `survivor|reduced=dm11 d111 d1m1 d111 d1m1 d11m|axis=1,0,13|signs=--+++---+-+-+` | `10` |
| `survivor|reduced=dm11 d111 d11m dm11 d111 d1m1|axis=4,-5,3|signs=+-++--++--+--` | `10` |
| `survivor|reduced=dm11 d111 d11m d1m1|axis=2,-1,0|signs=+-++-+--+-+--` | `10` |
| `survivor|reduced=dm11 d111 d11m d1m1 d11m d1m1|axis=8,5,-9|signs=+---+-+-++--+` | `10` |
| `survivor|reduced=dm11 d111 d11m d1m1|axis=2,-1,0|signs=+-+-+--+-+-+-` | `10` |
| `survivor|reduced=dm11 d111 d11m d1m1 dm11 d1m1|axis=5,-1,12|signs=--+++-+-+--+-` | `9` |
| `survivor|reduced=dm11 d111 d11m d1m1 d11m d1m1|axis=8,5,-9|signs=+---+-+-+--++` | `9` |

## Sample Buckets

- `bad_pair_balance`: `5` samples
- `forced_zero_denominator`: `5` samples
- `forced_balance_survivor`: `5` samples
- `final_axis_zero`: `5` samples
