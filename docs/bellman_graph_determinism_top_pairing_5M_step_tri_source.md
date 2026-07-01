# Bellman Graph Determinism Audit

Diagnostic-only evidence.  This checks whether a Bellman graph can
support a semantic deterministic evaluator `State -> Label -> Option`
for all graph edges, not just sampled paths.

## Summary

- decision: `full-graph-deterministic`
- input: `scripts/generated/nonid_margin_bellman_top_pairing_000000000_005000000_with_step_tri_source_graph.json`
- states: `789`
- edges: `863`
- labels: `14`
- full transition keys: `863`
- full conflict keys: `0`
- sampled transition keys: `863`
- sampled conflict keys: `0`

