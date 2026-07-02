# Top-Pairing Bellman Graph-Family Alignment

This audit is diagnostic-only.  It records which finite Bellman graph
family each current top-pairing socket imports, so incompatible graph
proofs are not accidentally composed.

- decision: `graph-families-not-aligned-for-direct-eval-adapter`

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
| `graph_accepted_eval_gate` | `split_10m` | `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraphAcceptedEvalGate.lean` |
| `closed_eval_gate` | `split_10m` | `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingClosedEvalGate.lean` |

## Consequence

The current branch-suffix sockets are over the 1M face-linear-tri-source
graph, while the accepted eval/margin gates are over the split-10M graph.
Do not directly compose those theorem surfaces.  The next Bellman
membership slice must choose one graph family and regenerate the
other socket against it.

Preferred next options:

1. regenerate the strengthened branch table / graph-accepted full
   suffix socket for the split-10M graph; or
2. regenerate the accepted eval/margin gate for the 1M graph.

The split-10M graph is the more production-relevant candidate because
it is the one currently used by the accepted margin/eval gates.
