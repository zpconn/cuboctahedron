# Top-Pairing Trace Prefix-Depth Profile

This is exact diagnostic evidence, not proof.  Prefixes are enumerated
from the semantic closed-language front door used by the generated
trace-classifier smoke.

- source: `exact semantic prefix enumerator`
- max depth: `14`
- sampled rank/path data: `False`

| depth | prefixes | shards @ 64 | shards @ 128 | shards @ 256 |
|---:|---:|---:|---:|---:|
| 0 | 1 | 1 | 1 | 1 |
| 1 | 1 | 1 | 1 | 1 |
| 2 | 1 | 1 | 1 | 1 |
| 3 | 3 | 1 | 1 | 1 |
| 4 | 8 | 1 | 1 | 1 |
| 5 | 24 | 1 | 1 | 1 |
| 6 | 68 | 2 | 1 | 1 |
| 7 | 209 | 4 | 2 | 1 |
| 8 | 595 | 10 | 5 | 3 |
| 9 | 1585 | 25 | 13 | 7 |
| 10 | 3186 | 50 | 25 | 13 |
| 11 | 3082 | 49 | 25 | 13 |
| 12 | 1631 | 26 | 13 | 7 |
| 13 | 482 | 8 | 4 | 2 |
| 14 | 442 | 7 | 4 | 2 |

## Decision

The peak prefix count is `3186` at depth
`10`.  This makes single monolithic depth theorems
unattractive past the current smoke layer.  The next generated
classifier should emit bounded shards, with a default shard size
in the 64-256 prefix range before measuring Lean RSS.
