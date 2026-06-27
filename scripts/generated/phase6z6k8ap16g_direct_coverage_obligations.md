# Phase 6Z.6K.8AP.16G Direct Coverage Obligation Profile

This is diagnostic only. It emits no Lean and is not trusted as proof.

- Status: `accepted-direct-coverage-obligation-inventory`
- Jobs: `4`
- Ranges: `[[0, 5000], [100000, 102500], [1000000, 1002500], [10000000, 10002500], [30000000, 30002500], [60000000, 60002500], [90000000, 90002500]]`
- GoodDirection cases: `7112`
- Descriptor families: `195`
- Source-language groups: `191`
- Source-position spec groups: `191`
- Row groups: `21`
- Direct source+row candidate groups: `195`
- Reusable source+row obligations: `212`
- Dynamic source obligations: `90`

## Source Kinds

- `interior`: `5431`
- `ordering`: `1776`
- `xpStart`: `7017`

## Excluded-Face Set Sizes

- `4`: `18`
- `5`: `10`
- `6`: `1380`
- `7`: `760`
- `8`: `532`
- `9`: `596`
- `10`: `102`
- `11`: `63`
- `12`: `648`
- `13`: `1322`

## Windows

| Range | Families | GoodDirection cases | Identity words | Translation masks |
| --- | ---: | ---: | ---: | ---: |
| `[0, 5000]` | 125 | 4693 | 487 | 31168 |
| `[100000, 102500]` | 37 | 296 | 66 | 4224 |
| `[1000000, 1002500]` | 12 | 50 | 11 | 704 |
| `[10000000, 10002500]` | 136 | 2069 | 235 | 15040 |
| `[30000000, 30002500]` | 0 | 0 | 127 | 8128 |
| `[60000000, 60002500]` | 0 | 0 | 27 | 1728 |
| `[90000000, 90002500]` | 1 | 4 | 5 | 320 |

## Decision Notes

- source_language_full records map unambiguously to source-position specs
- row_exact remains the row producer coordinate
- the next Lean emitter should generate source-position predicates directly from these records

## Next Lean Step

Generate a bounded AP.16D smoke whose shared source modules prove
`SourcePairPositionSpec.Predicate` directly from the `source_language_full`
records summarized here, whose row modules reuse `row_exact`, and whose
descriptor chunks call
`SourcePositionRowProducerGoodCoverageOnRange.of_singleCandidate`.
