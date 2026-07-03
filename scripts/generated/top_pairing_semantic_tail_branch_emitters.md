# Top-Pairing Semantic Tail Branch Emitter Readiness

- Socket: `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingBranchTableSemanticGateSocket.lean`
- Emitter smoke: `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingSemanticTailBranchEmitterSmoke.lean`
- Guard: `scripts/generated/branch_table_semantic_gate_socket_guard.json`
- Emitter guard: `scripts/generated/semantic_tail_branch_emitter_smoke_guard.json`
- Decision: `semantic-tail-branch-emitter-shape-accepted`

## Tail Branch Classifiers

- `branchTable_of_closedPrefix2_tail`: semantic-tail, no-rank-prefix
- `branchTable_of_closedPrefix3_tmpm_tail`: semantic-tail, no-rank-prefix
- `branchTable_of_closedPrefix3_yp_tail`: semantic-tail, no-rank-prefix
- `branchTable_of_closedPrefix3_zm_tail`: semantic-tail, no-rank-prefix

## Tail Suffix Adapters

- `branchTableSuffixOk_closedPrefix2_branch_of_tail`
- `branchTableSuffixOk_closedPrefix3_tmpm_branch_of_tail`
- `branchTableSuffixOk_closedPrefix3_yp_branch_of_tail`
- `branchTableSuffixOk_closedPrefix3_zm_branch_of_tail`

## Emitted Theorems

- `emitted_branchTable_of_closedPrefix2_tail`
- `emitted_branchTableSuffixOk_closedPrefix2_branch_of_tail`
- `emitted_branchTable_of_closedPrefix3_tmpm_tail`
- `emitted_branchTable_of_closedPrefix3_yp_tail`
- `emitted_branchTable_of_closedPrefix3_zm_tail`
- `emitted_branchTableSuffixOk_closedPrefix3_tmpm_branch_of_tail`
- `emitted_branchTableSuffixOk_closedPrefix3_yp_branch_of_tail`
- `emitted_branchTableSuffixOk_closedPrefix3_zm_branch_of_tail`

## Constructors Used

- Count: `10`
- `graph_0539_s0610_yp`
- `graph_0540_s0610_zm`
- `graph_0541_s0610_tmpm`
- `graph_0552_s0615_zm`
- `graph_0553_s0615_tmmm`
- `graph_0554_s0616_yp`
- `graph_0555_s0616_zp`
- `graph_0556_s0616_tmpp`
- `graph_0560_s0618_zm`
- `graph_0561_s0618_tppm`

## Guard

- Exit code: `0`
- Elapsed seconds: `9.00624660999165`
- Peak tree RSS MiB: `4008.8046875`
- Hard address-space MiB: `8192.0`

## Emitter Guard

- Exit code: `0`
- Elapsed seconds: `8.00495894998312`
- Peak tree RSS MiB: `3960.28515625`
- Hard address-space MiB: `8192.0`

## Forbidden Hits

- none

## Next Target

Generate these tail-facing local branch classifiers for all reachable semantic states needed by Split10MBranchTableClosedEvalFamily.suffix; do not emit sampled-rank, selected-prefix, accepted-trace, or exact-affine membership data.
