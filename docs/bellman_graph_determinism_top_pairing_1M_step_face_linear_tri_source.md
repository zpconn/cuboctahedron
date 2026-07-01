# Bellman Graph Determinism Audit

Diagnostic-only evidence.  This checks whether a Bellman graph can
support a semantic deterministic evaluator `State -> Label -> Option`
for all graph edges, not just sampled paths.

## Summary

- decision: `full-graph-deterministic`
- input: `scripts/generated/nonid_margin_bellman_top_pairing_000000000_001000000_with_step_face_linear_tri_source_graph.json`
- states: `223`
- edges: `229`
- labels: `14`
- full transition keys: `229`
- full conflict keys: `0`
- sampled transition keys: `229`
- sampled conflict keys: `0`

