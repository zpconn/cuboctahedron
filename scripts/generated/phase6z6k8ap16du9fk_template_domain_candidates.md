# Phase 6Z.6K.8AP.16DU.9FK Template Domain Candidate Profile

This is a diagnostic over the existing bounded AP.16I positive-survivor
membership profile.  It is not proof evidence.

## Counts

| Metric | Value |
| --- | ---: |
| `positive_survivor_signatures` | `757` |
| `positive_candidate_groups` | `195` |
| `unique_good_mask_sets` | `362` |
| `unique_candidate_sets` | `717` |
| `unique_mask_to_candidate_maps` | `757` |
| `unique_template_sets` | `11` |
| `unique_source_position_shapes` | `191` |

## Signature Case Counts

| Metric | Value |
| --- | ---: |
| `total` | `7112` |
| `min` | `1` |
| `median` | `8` |
| `p90` | `13` |
| `max` | `24` |

## Candidate Group Case Counts

| Metric | Value |
| --- | ---: |
| `total` | `7112` |
| `min` | `1` |
| `median` | `7` |
| `p90` | `78` |
| `max` | `1316` |

## Top Good-Mask Sets

| Masks | Signature Count |
| --- | ---: |
| `8,9,13,16,18,22,24,28,29,30,31,45,47,54,55,63` | `30` |
| `10,11,15,16,18,20,26,28,29,30,31,45,47,52,53,61` | `12` |
| `7,9,13,15,18,22,23,24,28,31,39,47,55` | `11` |
| `8,9,13,16,18,22,28,30,31,45,54,55,63` | `8` |
| `8,9,13,18,24,28,29,30,31,45,47,54,63` | `8` |
| `9,13,16,18,22,24,28,30,31,45,47,54,55` | `8` |
| `8,9,13,16,18,24,28,29,30,47,54,55,63` | `8` |
| `8,9,13,18,22,24,28,29,31,45,47,54,55` | `8` |
| `9,16,18,22,24,28,29,30,31,45,54,55,63` | `8` |
| `8,9,16,18,22,24,28,29,30,45,47,55,63` | `8` |

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

- One domain per signature: `757`.
- One domain per mask-to-candidate map: `757`.
- One domain per good-mask set: `362`.
- One member-bridge obligation per candidate group: `195`.

Next gate: Do not group by mask-to-candidate map in this bounded sample: it has no compression.  Instead, emit a bounded domain smoke whose TemplateLanguageMemberBridgeOnDomain is factored through reusable positive candidate groups/source-position shapes, then keep the signature-specific coverage premise separate.
