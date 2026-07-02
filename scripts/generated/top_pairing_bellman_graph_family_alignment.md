# Top-Pairing Bellman Graph-Family Alignment

This audit is diagnostic-only.  It records which finite Bellman graph
family each current top-pairing socket imports, so incompatible graph
proofs are not accidentally composed.

- decision: `split10m-graph-accepted-suffix-aligned-with-eval-gate`

## Graph Families

| family | state count | base |
| --- | ---: | --- |
| `1m_face_linear_tri_source` | `223` | `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraphEval1MFaceLinearTriSourceSmoke/Base.lean` |
| `split_10m` | `970` | `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraphEvalSplit10MSmoke/Base.lean` |

## Consumers

| consumer | graph families imported | file |
| --- | --- | --- |
| `branch_suffix` | `1m_face_linear_tri_source` | `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingBranchTableSuffix1MSmoke.lean` |
| `graph_accepted_branch_suffix` | `1m_face_linear_tri_source` | `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraphAcceptedBranchSuffix1MSmoke.lean` |
| `graph_accepted_branch_suffix_split10m` | `split_10m` | `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraphAcceptedBranchSuffixSplit10MSmoke.lean` |
| `graph_accepted_eval_gate` | `split_10m` | `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraphAcceptedEvalGate.lean` |
| `closed_eval_gate` | `split_10m` | `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingClosedEvalGate.lean` |

## Consequence

The original 1M branch-suffix sockets are still not compatible with
the accepted split-10M eval/margin gates.  A new split-10M
graph-accepted branch-suffix socket is now aligned with those gates.

The aligned split-10M socket remains bounded smoke: it consumes the
current generated graph-accepted terminal traces.  The production
frontier is still the semantic closed-language-to-evaluator theorem,
not a trace-class cover.
