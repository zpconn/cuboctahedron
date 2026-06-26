# Symbolic Row-Family Census

This report is diagnostic only; Lean must check any emitted family theorem.

| Metric | Value |
| --- | ---: |
| Window mode | `calibration` |
| Windows completed | 500/500 |
| Pair words scanned | 500,000 |
| Identity-linear words | 13,220 |
| Translation sign assignments | 846,080 |
| GoodDirection survivors | 63,725 |
| Covered cases | 63,725 |
| Uncovered cases | 0 |
| Non-two-source cases | 0 |
| Primary coordinate | `row_property_parametric` |
| Primary families | 24 |
| Source-keyed symbolic families | 671 |
| Template-source families | 562 |
| Row-property families | 24 |
| Row-property parametric families | 24 |
| Row-predicate parametric families | 11 |
| Exact row-shape families | 15,629 |
| Aggregate command elapsed seconds | 0.11 |
| Observed window elapsed seconds | 5138.71 |
| Max window RSS KiB | 23,968 |
| Projected wall seconds for selected rank window | 41665.20 |
| Linear full-space symbolic-family projection | 4,671 |

Decision: **needs-more-sampling**

- linear global projection exceeds the configured family gate

## Candidate Coordinates

| coordinate | families |
| --- | ---: |
| `exact_row_shape` | 15,629 |
| `row_predicate_parametric` | 11 |
| `row_property_parametric` | 24 |
| `template_integer_scaled` | 15,627 |
| `template_row_property` | 24 |
| `template_source` | 562 |
| `template_source_agreement` | 581 |
| `template_source_integer_scaled` | 17,237 |
| `template_source_row_property` | 671 |

## Top Primary Families

- `eq_eq_pos_var_first|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`: 27,681
- `opp_1m_var_first|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`: 13,330
- `eq_eq_pos_var_second|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`: 7,292
- `opp_m1_var_first|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`: 6,324
- `opp_1m_var_second|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`: 3,445
- `opp_m1_var_second|rowProperty=563cf2d72f3676cad2594c8249b599264a619732f6212068c0fa71a8666039dd`: 2,162
- `eq_eq_neg_var_first|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`: 1,652
- `eq_eq_neg_var_second|rowProperty=02f4b044f40d3c9c9494bbc6e57dd6bfb8069b2ba6d91594099ff0846fcc43e5`: 697
- `exact_two_source_valid|rowProperty=2ece82a8542ee8b547cc4c3729c7bc2e022f538d062acf19c827583faa66536f`: 362
- `exact_two_source_valid|rowProperty=045a2f1229553e98c796f7dbec044fd693afeea9df4b176d178fa83e915bdaec`: 221
- `exact_two_source_valid|rowProperty=aeb5b4e539b04433effdc099c3a62c28f12d5e963fb5870e318adafb13279290`: 131
- `axis_a_only|rowProperty=0ef1248979a51a72226ced64e0cd085ba836f78524dfad98ea5b8d5c95f5fa61`: 96
- `axis_a_only|rowProperty=f4b1c7cd7e6e1ebda46e9b2c6906006966949d1a40e2e8d9f378220f6b6981ee`: 65
- `exact_two_source_valid|rowProperty=3055834cb5630c2a3ef6301753455035e8d83c428cd77ddd93d097b9319751bd`: 35
- `axis_a_only|rowProperty=67d04282e1a33e89975ad13a686bad42feaddc86b524d2cd9631411d556dce4c`: 34
- `axis_a_only|rowProperty=dc9974be37adc02c3dc9e92b5c8e23662e3b7f809556c1b65d6e57a6b808076a`: 34

## High-Variation Template-Source Families

| source agreement | row property | integer scaled | exact row shape | family |
| ---: | ---: | ---: | ---: | --- |
| 1 | 4 | 50 | 50 | `axis_a_only|source=e6e0694e677d3171b47c2ff2be279f819203a1b44aea71e4668d09ea0c0b7cf0` |
| 1 | 4 | 12 | 12 | `exact_two_source_valid|source=a4fc8ee0c066dbf9bda4eae526e05ff37ee1888f8e74dcaee9eea00dacf91299` |
| 1 | 4 | 10 | 10 | `exact_two_source_valid|source=65ef75550cb4367f9541b48ede1de9766d694af0dc615868dc764d5bb5f14174` |
| 1 | 4 | 7 | 7 | `axis_b_only|source=715edb66991d7f11550fa8274fd16e0a158fa5d0079d4c1fa8e8ac9f32a8e273` |
| 1 | 4 | 7 | 7 | `exact_two_source_valid|source=eb643e9bc599ccd7a5b5ee78a082cc29abf94cb3ba10d0b254df456c4ff6f31e` |
| 1 | 4 | 6 | 6 | `axis_b_only|source=5bc7fabfed92a1850a78b14a00e517fb30c127fff61fcde520bb7af66e115531` |
| 1 | 4 | 6 | 6 | `axis_b_only|source=e96cf797500b3fdd3875633cc42a301ed2f4414cbe4004fefffdfbd4107870f1` |
| 1 | 3 | 15 | 15 | `exact_two_source_valid|source=685fdebf749777dd5a556d544662b34b64f5265faaa7ec2de033952fdd547ad2` |
| 1 | 3 | 5 | 5 | `exact_two_source_valid|source=731a791305a5203557bf8747bb4024f8f1273fed5103843dc90485dd863bc88c` |
| 1 | 3 | 5 | 5 | `exact_two_source_valid|source=75fac07f28b1abeeddacd6179511bcbb0a9a80b845c4c0b55efec9b90727a5a5` |
| 1 | 3 | 3 | 3 | `exact_two_source_valid|source=74f73e601bce1f69646a1a753001e8aef41501a8c584366c33b55e1d30469340` |
| 1 | 3 | 3 | 3 | `exact_two_source_valid|source=bbbef95deace17595becd08171f4b041870fd8dfa7d88454654d20cabe12b3b4` |
| 2 | 2 | 23 | 23 | `exact_two_source_valid|source=9d2875eabb6379f151afeabdebef61fba29c8778738d6ea552862c2c2cceee5c` |
| 2 | 2 | 22 | 22 | `exact_two_source_valid|source=f830c45e61c5a02213400821e7f9bc129ec7645341ed060746a7d6a1345af88a` |
| 2 | 2 | 7 | 7 | `exact_two_source_valid|source=6061a88ddf62524f8351fa4629f4d0f888ff7924e86eb9300bfc9812a7e2ffd1` |
| 1 | 2 | 49 | 49 | `exact_two_source_valid|source=6d2013c3c584299c5f1313cf1079b855ca0d6058579ea71172f3ec23a35c225f` |
