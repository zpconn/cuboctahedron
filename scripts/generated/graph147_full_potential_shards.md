# Graph147 Full Potential Shards

Diagnostic/proof-shape evidence only.  This is not production coverage.

- profile: `/home/zpconn/code/cuboctahedron/scripts/generated/nonid_margin_bellman_top_pairing_000000000_010000000_with_step_tri_source_graph.json`
- states: `970`
- edges: `1054`
- shard count: `9`
- shard size: `128`
- const scaled: `176`
- root potential: `-176`
- final count: `116`
- final potential range: `0 .. 0`
- total Lean source bytes: `114055`

The emitted shards check `gain + V(dst) <= V(src)` for every
observed graph147 edge in the 10M profile, plus the root and
final-potential facts.  The generated edge data is private and the
public surface is a tiny `True` smoke theorem.
