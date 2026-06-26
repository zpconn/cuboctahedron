# Phase 6Z.6K.7 Row-Property Membership Profile

This diagnostic is not trusted as proof. It measures whether the
row-property theorem surface has collapsed enough to replace the
representative-per-case root.

- Rank window: `[0, 1000)`
- Pair words scanned: `1000`
- Identity words: `138`
- GoodDirection survivors: `1465`
- Covered two-source cases: `1465`
- Uncovered/non-two-source cases: `0`

## Compression

- Public theorem constructors: `9`
- Row-predicate parametric families: `9`
- Row-property parametric families: `11`
- Source-agreement families: `72`
- Source + row-property families: `74`
- Exact row-shape families: `574`
- Cases per theorem constructor: `162.78`
- Cases per row-property family: `133.18`

## Decision

- Status: `reject-more-family-theorem-emission`
- the public row-property theorem layer is already collapsed to template constructors
- the remaining expensive obligation is membership: proving SourceAgrees and row predicates for concrete rank/mask cases
- do not emit more RowPropertyQuotient-style family theorems until a state/signature membership bridge exists
- Next required bridge: state/signature theorem proving GoodDirection survivor membership in RowPropertyParametricCovered without per-rank row reconstruction

## Constructors

| Template | Cases | Row-property digests | Source-agreement digests | Exact row shapes |
| --- | ---: | ---: | ---: | ---: |
| `eq_eq_pos_var_first` | 711 | 1 | 19 | 188 |
| `eq_eq_pos_var_second` | 240 | 1 | 8 | 105 |
| `opp_1m_var_first` | 227 | 1 | 18 | 108 |
| `opp_m1_var_first` | 126 | 1 | 7 | 70 |
| `opp_1m_var_second` | 73 | 1 | 8 | 52 |
| `opp_m1_var_second` | 44 | 1 | 7 | 29 |
| `eq_eq_neg_var_first` | 32 | 1 | 2 | 14 |
| `axis_a_only` | 9 | 3 | 1 | 6 |
| `eq_eq_neg_var_second` | 3 | 1 | 2 | 2 |
