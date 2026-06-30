# Phase 6Z.6K.8AP.16DU.9FV Hcover Obligation Profile

This diagnostic splits the remaining positive-survivor `hcover` premise
into the two proof obligations used by the current classifier surface.
It is not proof evidence.

## Counts

| Metric | Value |
| --- | ---: |
| `positive_survivor_signatures` | `757` |
| `positive_candidate_groups` | `195` |
| `unique_good_mask_sets` | `362` |
| `unique_candidate_sets` | `717` |
| `unique_mask_to_candidate_maps` | `757` |

## Hmask Obligation

`hmask` proves that `GoodDirectionAtRank` implies membership in the
positive mask set for the chosen signature.

| Metric | Value |
| --- | ---: |
| `raw_rank_mask_cases` | `7112` |
| `one_theorem_per_signature` | `757` |
| `best_case_one_theorem_per_good_mask_set` | `362` |

### `signature_rank_count`

| Metric | Value |
| --- | ---: |
| `total` | `796` |
| `min` | `1` |
| `median` | `1` |
| `p90` | `1` |
| `p99` | `2` |
| `max` | `4` |

### `signature_good_mask_count`

| Metric | Value |
| --- | ---: |
| `total` | `6845` |
| `min` | `1` |
| `median` | `8` |
| `p90` | `13` |
| `p99` | `16` |
| `max` | `16` |

### `signature_case_count`

| Metric | Value |
| --- | ---: |
| `total` | `7112` |
| `min` | `1` |
| `median` | `8` |
| `p90` | `13` |
| `p99` | `22` |
| `max` | `24` |

## Hfacts Obligation

`hfacts` maps positive-mask membership to the reusable source-position
and row-producer candidate facts.

| Metric | Value |
| --- | ---: |
| `reusable_candidate_group_facts` | `195` |
| `one_map_per_signature` | `757` |
| `one_map_per_mask_to_candidate_map` | `757` |
| `one_union_per_candidate_set` | `717` |

### `candidate_union_size_per_signature`

| Metric | Value |
| --- | ---: |
| `total` | `4232` |
| `min` | `1` |
| `median` | `6` |
| `p90` | `8` |
| `p99` | `9` |
| `max` | `11` |

### `candidate_map_entries_per_signature`

| Metric | Value |
| --- | ---: |
| `total` | `6845` |
| `min` | `1` |
| `median` | `8` |
| `p90` | `13` |
| `p99` | `16` |
| `max` | `16` |

## Top Good-Mask-Set Groups

| Masks | Signatures | Cases | Candidate Union | Candidate Maps |
| --- | ---: | ---: | ---: | ---: |
| `8,9,13,16,18,22,24,28,29,30,31,45,47,54,55,63` | `30` | `480` | `40` | `30` |
| `10,11,15,16,18,20,26,28,29,30,31,45,47,52,53,61` | `12` | `192` | `34` | `12` |
| `7,9,13,15,18,22,23,24,28,31,39,47,55` | `11` | `143` | `24` | `11` |
| `8,9,13,16,18,22,28,30,31,45,54,55,63` | `8` | `104` | `27` | `8` |
| `8,9,13,18,24,28,29,30,31,45,47,54,63` | `8` | `104` | `27` | `8` |
| `9,13,16,18,22,24,28,30,31,45,47,54,55` | `8` | `104` | `25` | `8` |
| `8,9,13,16,18,24,28,29,30,47,54,55,63` | `8` | `104` | `20` | `8` |
| `8,9,13,18,22,24,28,29,31,45,47,54,55` | `8` | `104` | `25` | `8` |
| `9,16,18,22,24,28,29,30,31,45,54,55,63` | `8` | `104` | `26` | `8` |
| `8,9,16,18,22,24,28,29,30,45,47,55,63` | `8` | `104` | `24` | `8` |

## Interpretation

- Exact mask-to-candidate map status: `rejected-signature-local`.
- Exact candidate-set status: `candidate-for-sharing`.

Do not emit exact mask-to-candidate or candidate-set coverage as the production hcover proof.  The bounded catalog shows those coordinates remain essentially signature-local.  Keep the 195 candidate facts and source-position obligations reusable, and seek a compressed state/signature theorem proving GoodDirection -> membership in a reusable candidate-union domain.
