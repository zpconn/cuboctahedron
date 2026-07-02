# Top-Pairing Semantic State-DAG Provider Gap

This is diagnostic-only evidence.  It does not prove coverage and it
does not enumerate ranks.  It inventories the current split-10M
graph-accepted traces against the minimized semantic state DAG so the
next emitter can target semantic suffix providers rather than sampled
prefix/path covers.

- decision: `provider-gap-audited-needs-graph-state-indexed-suffix-emitters`
- accepted traces audited: `37`
- semantic graph states: `5347`
- semantic graph edges: `6089`
- minimized classes: `1026`

## Boundary Inventory

| depth | semantic classes | graph states | class+graph pairs | class+graph+suffix obligations |
| ---: | ---: | ---: | ---: | ---: |
| `2` | `1` | `1` | `1` | `37` |
| `4` | `6` | `6` | `6` | `35` |
| `8` | `8` | `16` | `16` | `34` |
| `11` | `6` | `30` | `30` | `32` |
| `14` | `1` | `29` | `29` | `29` |

## Depth-11 Semantic Classes

| class | traces |
| ---: | ---: |
| `34` | `3` |
| `35` | `4` |
| `36` | `3` |
| `37` | `18` |
| `38` | `6` |
| `39` | `3` |

## Known Class-034 Smoke

- semantic class: `34`
- current graph state: `197`
- suffix: `zm, zp, xp`
- matching traces by semantic class+suffix: `3`
- covered by current graph-state-specific theorem: `1`

| trace | depth | graph state | covered by current theorem |
| ---: | ---: | ---: | ---: |
| `000` | `11` | `197` | `True` |
| `003` | `11` | `198` | `False` |
| `018` | `11` | `201` | `False` |

## Interpretation

- The target-shadow cursor and deterministic transducer bridge are the
  right direction; the graph side is small.
- A production suffix provider must be indexed at least by semantic
  class and Bellman graph state at the suffix boundary.
- The current class-034 provider smoke validates the local theorem
  shape, but it is not a production cover: class 034 appears with
  multiple graph states among the accepted traces.
- `Split10MFinalMarginProducer` remains a separate open producer
  obligation for every production family.

## Next Gate

Emit graph-state-indexed late suffix providers for the six depth-11
semantic classes, then prove a semantic closed-language theorem that
moves every accepted rank to one of those depth-11 suffix states
using the target cursor, square-gap schedule, pair counts, and
tri-source progress.  Do not use selected-prefix or sampled-rank
membership.

