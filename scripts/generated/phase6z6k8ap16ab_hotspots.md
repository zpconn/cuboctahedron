# Phase 6Z.6K.8AP.16AB AP.16AA Hotspot Profile

This diagnostic is not trusted as proof and emits no Lean.

- Status: `accepted-positive-survivor-membership-profile`
- Rank range: `[0, 250)`
- Jobs: `1`
- Elapsed: `137.9889` seconds
- Peak RSS: `27644` KiB
- GoodDirection cases: `499`
- Positive candidate groups: `41`
- Positive survivor signatures: `43`
- Total calls: `864651515`
- Primitive calls: `864647505`

## Top Cumulative Time

| Seconds | Calls | Function |
| ---: | ---: | --- |
| 137.9885 | 1 | `profile_ap16i_positive_survivor_membership.py:166:profile` |
| 137.9694 | 1 | `generate_pair_sign_producer_coverage_smoke.py:100:collect_representative_families` |
| 137.9693 | 1 | `profile_source_index_state_fact_production.py:148:collect_families_maybe_parallel` |
| 137.9693 | 1 | `generate_source_index_state_nonenum_smoke.py:138:collect_families` |
| 85.4065 | 2004 | `generate_exact_certificates.py:883:translation_constraints_py` |
| 81.5148 | 3066 | `profile_symbolic_row_extraction_families.py:225:classify_choice` |
| 80.6617 | 91988874 | `fractions.py:613:forward` |
| 80.6184 | 11114978 | `~:0:<built-in method builtins.sum>` |
| 62.1663 | 28056 | `generate_exact_certificates.py:439:path_prefix_affs` |
| 59.1186 | 30060 | `generate_exact_certificates.py:858:translation_impact_time_lin` |
| 56.4265 | 499 | `generate_symbolic_row_family_smoke.py:207:classify_choice` |
| 53.2242 | 756655 | `generate_exact_certificates.py:354:mat_mul` |
| 52.7594 | 3026620 | `generate_exact_certificates.py:355:<genexpr>` |
| 47.8698 | 3359 | `generate_exact_certificates.py:6686:translation_needs_farkas` |
| 46.9788 | 663078 | `generate_exact_certificates.py:398:face_reflection` |
| 43.4460 | 1002 | `generate_exact_certificates.py:6697:source_terms_for_translation_farkas` |
| 43.3101 | 3359 | `generate_exact_certificates.py:1312:first_bad_translation_impact` |
| 43.2639 | 22950 | `generate_exact_certificates.py:1020:impact_denom` |
| 42.3841 | 22950 | `generate_exact_certificates.py:432:path_prefix_matrices` |
| 35.7111 | 364728 | `generate_exact_certificates.py:403:aff_compose` |

## Top Own Time

| Seconds | Calls | Function |
| ---: | ---: | --- |
| 19.9825 | 91988874 | `fractions.py:613:forward` |
| 16.3923 | 51732146 | `fractions.py:742:_mul` |
| 16.0077 | 103119455 | `fractions.py:317:_from_coprime_ints` |
| 10.9193 | 37280835 | `fractions.py:710:_add` |
| 9.0441 | 170788313 | `~:0:<built-in method math.gcd>` |
| 8.5084 | 11114978 | `~:0:<built-in method builtins.sum>` |
| 7.2301 | 131762514 | `~:0:<built-in method __new__ of type object at 0xa43b40>` |
| 6.5877 | 106556577 | `~:0:<built-in method builtins.isinstance>` |
| 5.8718 | 28643059 | `fractions.py:186:__new__` |
| 4.9723 | 7956936 | `generate_exact_certificates.py:380:<genexpr>` |
| 4.6583 | 11052285 | `fractions.py:627:reverse` |
| 3.4098 | 27239580 | `generate_exact_certificates.py:356:<genexpr>` |
| 2.3433 | 6725854 | `fractions.py:758:_div` |
| 2.0319 | 7302324 | `fractions.py:726:_sub` |
| 1.9034 | 14543387 | `<frozen abc>:117:__instancecheck__` |
| 1.4167 | 14543387 | `~:0:<built-in method _abc._abc_instancecheck>` |
| 1.3779 | 3026620 | `generate_exact_certificates.py:355:<genexpr>` |
| 1.2632 | 9905808 | `generate_exact_certificates.py:362:<genexpr>` |
| 1.1584 | 2652312 | `generate_exact_certificates.py:379:<genexpr>` |
| 1.0520 | 7063752 | `generate_exact_certificates.py:351:<genexpr>` |

## Interpretation

Use this profile to decide whether AP.16AA needs a faster exact
GoodDirection enumerator, a streaming source of identity/GoodDirection
cases, or a cheaper post-processing layer.  The profile is intentionally
small so it can be repeated without OOM risk.
