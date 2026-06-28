# Phase 6Z.6K.8AP.16AC AP.16AA Hotspot Profile

This diagnostic is not trusted as proof and emits no Lean.

- Status: `accepted-positive-survivor-membership-profile`
- Rank range: `[0, 250)`
- Jobs: `1`
- Elapsed: `82.1258` seconds
- Peak RSS: `28032` KiB
- GoodDirection cases: `499`
- Positive candidate groups: `41`
- Positive survivor signatures: `43`
- Total calls: `496575003`
- Primitive calls: `496572989`

## Top Cumulative Time

| Seconds | Calls | Function |
| ---: | ---: | --- |
| 82.1255 | 1 | `profile_ap16i_positive_survivor_membership.py:166:profile` |
| 82.1066 | 1 | `generate_pair_sign_producer_coverage_smoke.py:100:collect_representative_families` |
| 82.1065 | 1 | `profile_source_index_state_fact_production.py:148:collect_families_maybe_parallel` |
| 82.1065 | 1 | `generate_source_index_state_nonenum_smoke.py:167:collect_families` |
| 82.0800 | 3066 | `profile_symbolic_row_extraction_families.py:225:classify_choice` |
| 48.7750 | 6676236 | `~:0:<built-in method builtins.sum>` |
| 47.8536 | 54276302 | `fractions.py:613:forward` |
| 43.1496 | 1006 | `generate_exact_certificates.py:883:translation_constraints_py` |
| 35.2298 | 2860 | `generate_exact_certificates.py:6686:translation_needs_farkas` |
| 33.8924 | 477215 | `generate_exact_certificates.py:354:mat_mul` |
| 33.6026 | 1908860 | `generate_exact_certificates.py:355:<genexpr>` |
| 32.7488 | 5726580 | `generate_exact_certificates.py:356:<genexpr>` |
| 31.4363 | 14084 | `generate_exact_certificates.py:439:path_prefix_affs` |
| 31.3133 | 2860 | `generate_exact_certificates.py:1312:first_bad_translation_impact` |
| 31.2806 | 16463 | `generate_exact_certificates.py:1020:impact_denom` |
| 30.6465 | 16463 | `generate_exact_certificates.py:432:path_prefix_matrices` |
| 29.8915 | 15090 | `generate_exact_certificates.py:858:translation_impact_time_lin` |
| 28.2539 | 397111 | `generate_exact_certificates.py:398:face_reflection` |
| 21.9513 | 503 | `generate_exact_certificates.py:6697:source_terms_for_translation_farkas` |
| 21.4101 | 397111 | `generate_exact_certificates.py:377:reflection_matrix` |

## Top Own Time

| Seconds | Calls | Function |
| ---: | ---: | --- |
| 11.6520 | 54276302 | `fractions.py:613:forward` |
| 9.7802 | 30649954 | `fractions.py:742:_mul` |
| 9.6136 | 60937745 | `fractions.py:317:_from_coprime_ints` |
| 6.5499 | 21985936 | `fractions.py:710:_add` |
| 5.3605 | 101032067 | `~:0:<built-in method math.gcd>` |
| 5.2116 | 6676236 | `~:0:<built-in method builtins.sum>` |
| 4.2975 | 77918988 | `~:0:<built-in method __new__ of type object at 0xa43b40>` |
| 3.9229 | 62903113 | `~:0:<built-in method builtins.isinstance>` |
| 3.5091 | 16981243 | `fractions.py:186:__new__` |
| 2.9651 | 4765332 | `generate_exact_certificates.py:380:<genexpr>` |
| 2.7851 | 6622163 | `fractions.py:627:reverse` |
| 1.4162 | 4018815 | `fractions.py:758:_div` |
| 1.2408 | 5726580 | `generate_exact_certificates.py:356:<genexpr>` |
| 1.1963 | 4243760 | `fractions.py:726:_sub` |
| 1.1256 | 8605988 | `<frozen abc>:117:__instancecheck__` |
| 0.8538 | 1908860 | `generate_exact_certificates.py:355:<genexpr>` |
| 0.8406 | 8605988 | `~:0:<built-in method _abc._abc_instancecheck>` |
| 0.6830 | 1588444 | `generate_exact_certificates.py:379:<genexpr>` |
| 0.6100 | 4079732 | `generate_exact_certificates.py:351:<genexpr>` |
| 0.5309 | 1888644 | `generate_exact_certificates.py:333:q` |

## Interpretation

Use this profile to decide whether AP.16AA needs a faster exact
GoodDirection enumerator, a streaming source of identity/GoodDirection
cases, or a cheaper post-processing layer.  The profile is intentionally
small so it can be repeated without OOM risk.
