# Bellman Split Batch Dry-Run Guard

This report is crash-recovery accounting only. It does not invoke Lean
and is not proof evidence.

- graph: `scripts/generated/nonid_margin_bellman_top_pairing_000000000_001000000_with_step_face_linear_tri_source_graph.json`
- planned range: `0..4`
- status: `rejected-dry-run`
- current MemAvailable: `46750 MiB`
- required MemAvailable: `36864 MiB`
- entries: `4`
- blocked entries: `2`
- total blockers: `3`

| index | rank | trace KiB | split KiB | trace artifact | split artifact | run summary | blockers |
| ---: | ---: | ---: | ---: | --- | --- | --- | --- |
| `0` | `517` | `32` | `2` | fresh | fresh | `None` | trace checked run summary is missing<br>split checked run summary is missing |
| `1` | `10613` | `32` | `2` | fresh | fresh | `split-checked` | trace checked run summary is missing |
| `2` | `23197` | `32` | `2` | fresh | fresh | `checked` | none |
| `3` | `25555` | `32` | `2` | fresh | fresh | `checked` | none |
