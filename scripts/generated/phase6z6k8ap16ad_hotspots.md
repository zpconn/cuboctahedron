# Phase 6Z.6K.8AP.16AD AP.16AA Hotspot Profile

This diagnostic is not trusted as proof and emits no Lean.

- Status: `accepted-positive-survivor-membership-profile`
- Rank range: `[0, 250)`
- Jobs: `1`
- Elapsed: `27.1667` seconds
- Peak RSS: `27848` KiB
- GoodDirection cases: `499`
- Positive candidate groups: `41`
- Positive survivor signatures: `43`
- Total calls: `165145751`
- Primitive calls: `165143737`

## Top Cumulative Time

| Seconds | Calls | Function |
| ---: | ---: | --- |
| 27.1664 | 1 | `profile_ap16i_positive_survivor_membership.py:166:profile` |
| 27.1476 | 1 | `generate_pair_sign_producer_coverage_smoke.py:100:collect_representative_families` |
| 27.1475 | 1 | `profile_source_index_state_fact_production.py:148:collect_families_maybe_parallel` |
| 27.1475 | 1 | `generate_source_index_state_nonenum_smoke.py:167:collect_families` |
| 27.1244 | 3066 | `profile_symbolic_row_extraction_families.py:225:classify_choice` |
| 16.6886 | 2350811 | `~:0:<built-in method builtins.sum>` |
| 15.6243 | 17918162 | `fractions.py:613:forward` |
| 13.7317 | 1006 | `generate_exact_certificates.py:891:translation_constraints_py` |
| 9.7495 | 2860 | `generate_exact_certificates.py:6707:translation_needs_farkas` |
| 9.0862 | 130362 | `generate_exact_certificates.py:354:mat_mul` |
| 9.0086 | 521448 | `generate_exact_certificates.py:355:<genexpr>` |
| 8.7831 | 1564344 | `generate_exact_certificates.py:356:<genexpr>` |
| 7.2167 | 503 | `generate_exact_certificates.py:6718:source_terms_for_translation_farkas` |
| 7.1209 | 196170 | `generate_exact_certificates.py:1066:copied_normal_offset` |
| 6.3456 | 10042913 | `fractions.py:742:_mul` |
| 6.1846 | 265751 | `generate_exact_certificates.py:361:mat_vec` |
| 6.0223 | 1063004 | `generate_exact_certificates.py:362:<genexpr>` |
| 5.8825 | 2860 | `generate_exact_certificates.py:1332:first_bad_translation_impact` |
| 5.2794 | 2860 | `generate_exact_certificates.py:432:path_prefix_matrices` |
| 4.8667 | 8499619 | `fractions.py:710:_add` |

## Top Own Time

| Seconds | Calls | Function |
| ---: | ---: | --- |
| 3.8102 | 17918162 | `fractions.py:613:forward` |
| 3.1771 | 10042913 | `fractions.py:742:_mul` |
| 3.1344 | 20254180 | `fractions.py:317:_from_coprime_ints` |
| 2.4885 | 8499619 | `fractions.py:710:_add` |
| 1.7845 | 33052608 | `~:0:<built-in method math.gcd>` |
| 1.7592 | 2350811 | `~:0:<built-in method builtins.sum>` |
| 1.3720 | 24999869 | `~:0:<built-in method __new__ of type object at 0xa43b40>` |
| 1.3456 | 21139755 | `~:0:<built-in method builtins.isinstance>` |
| 0.9759 | 2296738 | `fractions.py:627:reverse` |
| 0.9755 | 4745689 | `fractions.py:186:__new__` |
| 0.4279 | 3200770 | `<frozen abc>:117:__instancecheck__` |
| 0.3751 | 603096 | `generate_exact_certificates.py:380:<genexpr>` |
| 0.3331 | 1122083 | `fractions.py:726:_sub` |
| 0.3330 | 1564344 | `generate_exact_certificates.py:356:<genexpr>` |
| 0.3070 | 3200770 | `~:0:<built-in method _abc._abc_instancecheck>` |
| 0.2333 | 1063004 | `generate_exact_certificates.py:362:<genexpr>` |
| 0.2255 | 521448 | `generate_exact_certificates.py:355:<genexpr>` |
| 0.2248 | 808851 | `generate_exact_certificates.py:333:q` |
| 0.1950 | 591528 | `generate_exact_certificates.py:843:lin2_scale` |
| 0.1941 | 1006 | `generate_exact_certificates.py:891:translation_constraints_py` |

## Interpretation

Use this profile to decide whether AP.16AA needs a faster exact
GoodDirection enumerator, a streaming source of identity/GoodDirection
cases, or a cheaper post-processing layer.  The profile is intentionally
small so it can be repeated without OOM risk.
