# Bellman Trie Profile

This report profiles label-prefix trie reuse in existing Bellman graph
JSON exports.  It is diagnostic only; Lean still checks any proof data
emitted by the separate graph-smoke emitter.

| input | range | states | edges | path items | raw steps | trie nodes | reused steps | max depth | max branching |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| nonid_margin_bellman_top_pairing_000000000_001000000_with_step_tri_source_graph.json | 0-1000000 | 223 | 229 | 37 path_classes | 518 | 270 | 249 | 14 | 3 |
| nonid_margin_bellman_top_pairing_000000000_005000000_with_step_tri_source_graph.json | 0-5000000 | 789 | 863 | 194 path_classes | 2716 | 1373 | 1344 | 14 | 3 |
| nonid_margin_bellman_top_pairing_000000000_010000000_with_step_tri_source_graph.json | 0-10000000 | 970 | 1054 | 273 path_classes | 3822 | 1990 | 1833 | 14 | 3 |
