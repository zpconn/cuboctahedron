# Phase 6Z.6K.8AP.16DU.9H source-index/state selector audit

This report is not proof evidence. It profiles which source/row
coordinates determine the bounded DU.9 classifier family key.

- Status: `source-index-state-coordinate-audited`
- Range: `[0, 5000)`
- GoodDirection cases represented: `4693`
- Source-index/state families: `125`
- Best deterministic coordinate: `template_source_indices_row_property`

## Coordinate Determinism

| Coordinate | Fields | Coordinate count | Ambiguous coordinates | Max keys/coordinate | Deterministic |
| --- | --- | ---: | ---: | ---: | --- |
| `template` | `template` | `9` | `9` | `37` | `False` |
| `source_indices` | `source_indices` | `122` | `1` | `4` | `False` |
| `template_source_indices` | `template, source_indices` | `122` | `1` | `4` | `False` |
| `template_source_skeletons` | `template, first_source_skeleton, second_source_skeleton` | `41` | `30` | `8` | `False` |
| `template_full_sources` | `template, first_source, second_source` | `96` | `5` | `8` | `False` |
| `template_source_indices_full_sources` | `template, source_indices, first_source, second_source` | `122` | `1` | `4` | `False` |
| `template_source_indices_skeletons` | `template, source_indices, first_source_skeleton, second_source_skeleton` | `122` | `1` | `4` | `False` |
| `template_row_property` | `template, row_property` | `12` | `8` | `37` | `False` |
| `template_source_indices_row_property` | `template, source_indices, row_property` | `125` | `0` | `1` | `True` |
| `template_sources_row_property` | `template, first_source, second_source, row_property` | `99` | `4` | `8` | `False` |
| `template_source_indices_sources_row_property` | `template, source_indices, first_source, second_source, row_property` | `125` | `0` | `1` | `True` |

## Decision

The smallest deterministic audited coordinate is `template_source_indices_row_property`. The next proof-producing step should target this coordinate or a strictly cheaper equivalent, while keeping source/row facts theorem-valued.
