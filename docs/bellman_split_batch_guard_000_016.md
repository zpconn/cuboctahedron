# Bellman Split Batch Dry-Run Guard

This report is crash-recovery accounting only. It does not invoke Lean
and is not proof evidence.

- graph: `scripts/generated/nonid_margin_bellman_top_pairing_000000000_001000000_with_step_face_linear_tri_source_graph.json`
- planned range: `0..16`
- status: `rejected-dry-run`
- current MemAvailable: `46608 MiB`
- required MemAvailable: `36864 MiB`
- entries: `16`
- blocked entries: `3`
- total blockers: `5`

| index | rank | trace KiB | split KiB | trace artifact | split artifact | run summary | blockers |
| ---: | ---: | ---: | ---: | --- | --- | --- | --- |
| `0` | `517` | `32` | `2` | fresh | fresh | `None` | trace checked run summary is missing<br>split checked run summary is missing |
| `1` | `10613` | `32` | `2` | fresh | fresh | `split-checked` | trace checked run summary is missing |
| `2` | `23197` | `32` | `2` | fresh | fresh | `checked` | none |
| `3` | `25555` | `32` | `2` | fresh | fresh | `checked` | none |
| `4` | `40387` | `32` | `2` | fresh | fresh | `checked` | none |
| `5` | `42247` | `32` | `2` | fresh | fresh | `checked` | none |
| `6` | `42943` | `32` | `2` | fresh | fresh | `checked` | none |
| `7` | `43171` | `32` | `2` | fresh | fresh | `checked` | none |
| `8` | `43195` | `32` | `2` | fresh | fresh | `checked` | none |
| `9` | `43203` | `32` | `2` | fresh | fresh | `checked` | none |
| `10` | `43205` | `32` | `2` | fresh | fresh | `checked` | none |
| `11` | `113917` | `32` | `2` | fresh | fresh | `checked` | none |
| `12` | `124013` | `32` | `2` | fresh | fresh | `checked` | none |
| `13` | `136597` | `32` | `2` | fresh | fresh | `checked` | none |
| `14` | `151567` | `32` | `2` | fresh | fresh | `checked` | none |
| `15` | `151569` | `32` | `2` | missing/stale | missing/stale | `None` | trace .olean is missing or stale<br>split .olean is missing or stale |
