# Phase 6Z.6K.3 Symbolic Row-Family Census

This report is diagnostic only; Lean must check any emitted family theorem.

| Metric | Value |
| --- | ---: |
| Window mode | `representative-calibration` |
| Windows completed | 560/560 |
| Pair words scanned | 140,000 |
| Identity-linear words | 2,410 |
| Translation sign assignments | 154,240 |
| GoodDirection survivors | 4,779 |
| Covered cases | 4,779 |
| Uncovered cases | 0 |
| Non-two-source cases | 0 |
| Symbolic families | 126 |
| Template-source families | 123 |
| Row-property families | 12 |
| Exact row-shape families | 1,641 |
| Aggregate command elapsed seconds | 0.01 |
| Observed window elapsed seconds | 616.55 |
| Max window RSS KiB | 22,240 |
| Projected wall seconds for selected rank window | 17853.65 |
| Linear full-space symbolic-family projection | 87,568 |

Decision: **needs-more-sampling**

- linear global projection exceeds the configured family gate

## Candidate Coordinates

| coordinate | families |
| --- | ---: |
| `exact_row_shape` | 1,641 |
| `template_integer_scaled` | 1,641 |
| `template_row_property` | 12 |
| `template_source` | 123 |
| `template_source_agreement` | 123 |
| `template_source_integer_scaled` | 1,748 |
| `template_source_row_property` | 126 |

## Top Symbolic Families

- `eq_eq_pos_var_first|sourceAgreement=21ffcd80c9fcec7b370b9d7493b3fc7bbb57e16b2f56c1c1c25df3c96b2c5035|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`: 1,260
- `opp_1m_var_first|sourceAgreement=c4527c399456479d9488b5e79e0cb7c833dfae13d1d708ba5cbe0a32fdb3c01e|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`: 555
- `opp_m1_var_first|sourceAgreement=c1eec5875872871677d8055ba30ad07389208b3d88d87436c2bdd5b2f20b8c05|rowProperty=0006663011bcc6a4229a7d4792afea7ae4224d313e9c9e3da8721c1d955b3403`: 271
- `eq_eq_pos_var_first|sourceAgreement=080f985228fb39611e69ca909fed39244302bac30ef86c5e0513b09f3157e036|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`: 178
- `opp_1m_var_first|sourceAgreement=76c4c7faafe073f05a2dcb0aac6222858af03fa961da8c88c098ee54abcec764|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`: 126
- `eq_eq_pos_var_first|sourceAgreement=8067dfe24ec825c804a2eef25879e2f69ea639df897d76aa3a8924855c96c694|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`: 105
- `eq_eq_pos_var_second|sourceAgreement=e12ae6fae8155031e3f957f0123b55691705afb3bd8b5c2846a11cec3228d23b|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`: 103
- `eq_eq_pos_var_second|sourceAgreement=79a74e94513ea46ff677f4ae3401cce5d9a878cebbbfdb93bb8bf0639b853cb4|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`: 93
- `eq_eq_pos_var_second|sourceAgreement=571517ffc08a678004afb9b687c9c445a1232b58e7509efb824a3a172d9a8f07|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`: 85
- `eq_eq_pos_var_second|sourceAgreement=9c8fcf6fc59f5aa9120b8efd6e64467957eedd433bb60c4cfc4744ca6e535c19|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`: 85
- `eq_eq_pos_var_first|sourceAgreement=fe97e4c859976c2587364e5051218f63d5d1937ed8e426ff482484ac5e51eb0e|rowProperty=89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df`: 79
- `eq_eq_pos_var_second|sourceAgreement=95f60110964e0847fdf307ac9e4ada59586741e33122c2058dd62d9b333d0da5|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`: 76
- `eq_eq_neg_var_first|sourceAgreement=92f811d137b1280ddd32a8cd84f17fa236cde63076b5758fb6d7b8c91a2e6116|rowProperty=516bde31c1f986b92695e6f59963e7258037afab996940a9a47e2016c3a06e5b`: 70
- `eq_eq_pos_var_second|sourceAgreement=c228b16fe4f25400f76e6347eda7fc1c054fcb48e9e10b80e675a2819a361366|rowProperty=8ffcafda0054b4729c0b52066396e52e2ca37d764323ce1b7c10184fa45e0976`: 67
- `opp_1m_var_second|sourceAgreement=ae7099bec7c836024e7cbe6df8315e8a4a3f8b090f4400dc263d2db9e319e5e0|rowProperty=9e28132282c11c37f33bd4d8e7b679036632d2d844673fc204a5cb501bb03382`: 67
- `opp_1m_var_first|sourceAgreement=7e6b321dfc563ab8c8e3d9e19fce60d326f5d811fc412f2fc79e2e15d500b939|rowProperty=83e0bba9a62a5cae753319e32a3086ee23506cf0de85735ba98311f13d1ca082`: 63

## High-Variation Template-Source Families

| source agreement | row property | integer scaled | exact row shape | family |
| ---: | ---: | ---: | ---: | --- |
| 1 | 4 | 12 | 12 | `axis_b_only|source=4e7bbe2b2a3fe8a7bebe4a810f32b04fb4c1965cd675cc919449c05dc64bd067` |
| 1 | 1 | 171 | 171 | `eq_eq_pos_var_first|source=5adcd045a97319ca2c507f2a2729e7e4b44586b0af09727c0f6dd12e5bb3580b` |
| 1 | 1 | 154 | 154 | `opp_1m_var_first|source=5803f35d677ae04166a321d8243e2278ba6a40142643333ae17cbcb910b4f201` |
| 1 | 1 | 94 | 94 | `opp_m1_var_first|source=7689ca8f4559480b5882866950c23005b8844177f2c8efd7fdc4ab7fef075198` |
| 1 | 1 | 54 | 54 | `eq_eq_pos_var_second|source=5c64d4cb48f5c7b902456fd0d508ac726746f2d6514ca46677c69b3c6a9546a5` |
| 1 | 1 | 47 | 47 | `eq_eq_pos_var_second|source=ca2b14f915ca83a1a12d8dffbbe80a668272f570172001789f97a34e7649e451` |
| 1 | 1 | 47 | 47 | `eq_eq_pos_var_second|source=d611693e904457a75b4b118a7390fd88fd0ef30213e479ab00229c7656f94ead` |
| 1 | 1 | 44 | 44 | `opp_1m_var_second|source=9b167f29cbdda7204b0b18f50069946c17d6178ac44bc418b261ef92694693b1` |
| 1 | 1 | 43 | 43 | `opp_1m_var_first|source=6a1169c86301f17f88c4ba207f016625742fcfc52d759287e0387c29177eb972` |
| 1 | 1 | 42 | 42 | `eq_eq_pos_var_second|source=513f51128e8b6d356d5f0059d792b6ee98b4d6a8f8e6deb429fb6b769a3bafea` |
| 1 | 1 | 40 | 40 | `eq_eq_pos_var_second|source=b7efa03a1d5cfa8e557fd9bad2c2784fe7e03cb5e7e3edda6993009238812716` |
| 1 | 1 | 35 | 35 | `opp_1m_var_second|source=2ff03e5a6064fae3d4f1d07e54e292a1575efe23955fe0d08665c7e6f281ae33` |
| 1 | 1 | 35 | 35 | `opp_1m_var_second|source=d54a2c889fcef309a0ac57baed60019f5ac403474816c214742668137ff16d26` |
| 1 | 1 | 32 | 32 | `opp_m1_var_second|source=8af698b6859a00ba828b63e36430c4f64a3caf0ad66415a34e3af5b4242c4a98` |
| 1 | 1 | 31 | 31 | `eq_eq_pos_var_first|source=d4bee78b63fa6bcebd58ce23dce690fc537b368d0b8afd26b4c969ef509d6bb4` |
| 1 | 1 | 31 | 31 | `opp_1m_var_second|source=8ddcdceac923c274dfa75aa9a04e638162605f4d7f26962e09785dd81fc51391` |
