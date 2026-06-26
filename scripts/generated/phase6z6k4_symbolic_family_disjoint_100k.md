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
| Symbolic families | 671 |
| Template-source families | 562 |
| Row-property families | 24 |
| Exact row-shape families | 15,629 |
| Aggregate command elapsed seconds | 0.10 |
| Observed window elapsed seconds | 4971.16 |
| Max window RSS KiB | 24,128 |
| Projected wall seconds for selected rank window | 40306.70 |
| Linear full-space symbolic-family projection | 130,573 |

Decision: **needs-more-sampling**

- linear global projection exceeds the configured family gate

## Candidate Coordinates

| coordinate | families |
| --- | ---: |
| `exact_row_shape` | 15,629 |
| `template_integer_scaled` | 15,627 |
| `template_row_property` | 24 |
| `template_source` | 562 |
| `template_source_agreement` | 581 |
| `template_source_integer_scaled` | 17,237 |
| `template_source_row_property` | 671 |

## Top Symbolic Families

- `eq_eq_pos_var_first|sourceAgreement=21ffcd80c9fcec7b370b9d7493b3fc7bbb57e16b2f56c1c1c25df3c96b2c5035|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`: 10,435
- `opp_1m_var_first|sourceAgreement=c4527c399456479d9488b5e79e0cb7c833dfae13d1d708ba5cbe0a32fdb3c01e|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`: 4,433
- `eq_eq_pos_var_first|sourceAgreement=5f7f778a6d0d3ebe9fa33b86c249e13ac83962de432c798afbe93a97769fbe25|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`: 4,368
- `opp_m1_var_first|sourceAgreement=c1eec5875872871677d8055ba30ad07389208b3d88d87436c2bdd5b2f20b8c05|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`: 2,342
- `opp_1m_var_first|sourceAgreement=bc3ce943401d10d57666030d5fd528611692ad33f59a7e775a9f82a862fabaf3|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`: 2,118
- `eq_eq_pos_var_second|sourceAgreement=4d4ec40aaabf2b7389849c0f732c88fa79590a72ff4d8b73548ed467516b05b5|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`: 1,227
- `opp_m1_var_first|sourceAgreement=fe51763687cdd96fef838369f09d98789cb145ba1d881755a1691f8522ddbe71|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`: 1,125
- `eq_eq_pos_var_first|sourceAgreement=cb043a106f3b0469c1e5a42b32ff6462eedc8982f4ffa4870c30344c6b2915c8|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`: 1,040
- `eq_eq_pos_var_first|sourceAgreement=48b6f049287001fad4818c5dbbfff403fa9ecd02105ade28104e6b88e6be5552|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`: 1,026
- `eq_eq_pos_var_second|sourceAgreement=e12ae6fae8155031e3f957f0123b55691705afb3bd8b5c2846a11cec3228d23b|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`: 972
- `eq_eq_pos_var_first|sourceAgreement=080f985228fb39611e69ca909fed39244302bac30ef86c5e0513b09f3157e036|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`: 904
- `eq_eq_pos_var_second|sourceAgreement=571517ffc08a678004afb9b687c9c445a1232b58e7509efb824a3a172d9a8f07|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`: 788
- `eq_eq_pos_var_second|sourceAgreement=79a74e94513ea46ff677f4ae3401cce5d9a878cebbbfdb93bb8bf0639b853cb4|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`: 761
- `eq_eq_pos_var_second|sourceAgreement=c228b16fe4f25400f76e6347eda7fc1c054fcb48e9e10b80e675a2819a361366|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`: 728
- `eq_eq_pos_var_second|sourceAgreement=9c8fcf6fc59f5aa9120b8efd6e64467957eedd433bb60c4cfc4744ca6e535c19|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`: 721
- `eq_eq_pos_var_first|sourceAgreement=53e420a03fd85b31409c1b2896f99be23adfdfd37f2f8afcf7ded77d8c0fc322|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`: 713

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
