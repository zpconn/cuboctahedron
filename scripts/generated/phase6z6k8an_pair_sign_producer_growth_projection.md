# Phase 6Z.6K.8AN Pair-Sign Producer Growth Projection

This diagnostic is not trusted as proof. It estimates whether the
pair-sign source/row producer surface remains small enough to justify
larger generated Lean roots.

- Status: `accepted-growth-projection`
- Checkpoint dir: `/tmp/cuboctahedron_pair_sign_producer_census_8an_2p5m`
- Windows: `39`
- Sampled ranks: `97500`
- GoodDirection cases: `10402`
- Validation failures: `0`
- Observed descriptor families: `401`
- Estimated descriptor families: `862`
- Observed source groups: `374`
- Estimated source groups: `722`
- Observed row groups: `22`
- Estimated row groups: `26`
- Observed source+row producers: `396`
- Estimated source+row producers: `748`
- Observed chunks at size 64: `7`
- Estimated chunks at size 64: `14`
- Producer gate: `2000`
- Descriptor gate: `5000`

## Incidence Diagnostics

| Surface | Observed | Singleton | Doubleton | Singleton fraction | Estimated | Method |
| --- | ---: | ---: | ---: | ---: | ---: | --- |
| `descriptor` | 401 | 241 | 63 | 0.601 | 862 | `chao2` |
| `source` | 374 | 211 | 64 | 0.564 | 722 | `chao2` |
| `row` | 22 | 5 | 4 | 0.227 | 26 | `chao2` |
| `source_row_edges` | 401 | 241 | 63 | 0.601 | 862 | `chao2` |

## Cumulative Windows

| Range | GoodDirection | Cum descriptor | Cum source | Cum row | Cum edge | Cum producers |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| `[0, 2500]` | 3415 | 102 | 99 | 12 | 102 | 111 |
| `[2500000, 2502500]` | 2182 | 144 | 141 | 15 | 144 | 156 |
| `[5000000, 5002500]` | 434 | 171 | 168 | 15 | 171 | 183 |
| `[7500000, 7502500]` | 1269 | 205 | 201 | 17 | 205 | 218 |
| `[10000000, 10002500]` | 2069 | 258 | 252 | 21 | 258 | 273 |
| `[12500000, 12502500]` | 0 | 258 | 252 | 21 | 258 | 273 |
| `[15000000, 15002500]` | 0 | 258 | 252 | 21 | 258 | 273 |
| `[17500000, 17502500]` | 0 | 258 | 252 | 21 | 258 | 273 |
| `[20000000, 20002500]` | 0 | 258 | 252 | 21 | 258 | 273 |
| `[22500000, 22502500]` | 0 | 258 | 252 | 21 | 258 | 273 |
| `[25000000, 25002500]` | 33 | 268 | 262 | 21 | 268 | 283 |
| `[27500000, 27502500]` | 0 | 268 | 262 | 21 | 268 | 283 |
| `[30000000, 30002500]` | 0 | 268 | 262 | 21 | 268 | 283 |
| `[32500000, 32502500]` | 0 | 268 | 262 | 21 | 268 | 283 |
| `[35000000, 35002500]` | 0 | 268 | 262 | 21 | 268 | 283 |
| `[37500000, 37502500]` | 0 | 268 | 262 | 21 | 268 | 283 |
| `[40000000, 40002500]` | 3 | 269 | 263 | 21 | 269 | 284 |
| `[42500000, 42502500]` | 108 | 286 | 278 | 21 | 286 | 299 |
| `[45000000, 45002500]` | 38 | 297 | 285 | 22 | 297 | 307 |
| `[47500000, 47502500]` | 4 | 300 | 287 | 22 | 300 | 309 |
| `[50000000, 50002500]` | 171 | 317 | 303 | 22 | 317 | 325 |
| `[52500000, 52502500]` | 0 | 317 | 303 | 22 | 317 | 325 |
| `[55000000, 55002500]` | 99 | 341 | 322 | 22 | 341 | 344 |
| `[57500000, 57502500]` | 30 | 350 | 326 | 22 | 350 | 348 |
| `[60000000, 60002500]` | 0 | 350 | 326 | 22 | 350 | 348 |
| `[62500000, 62502500]` | 0 | 350 | 326 | 22 | 350 | 348 |
| `[65000000, 65002500]` | 40 | 353 | 329 | 22 | 353 | 351 |
| `[67500000, 67502500]` | 0 | 353 | 329 | 22 | 353 | 351 |
| `[70000000, 70002500]` | 223 | 368 | 344 | 22 | 368 | 366 |
| `[72500000, 72502500]` | 32 | 374 | 349 | 22 | 374 | 371 |
| `[75000000, 75002500]` | 0 | 374 | 349 | 22 | 374 | 371 |
| `[77500000, 77502500]` | 43 | 376 | 351 | 22 | 376 | 373 |
| `[80000000, 80002500]` | 163 | 389 | 362 | 22 | 389 | 384 |
| `[82500000, 82502500]` | 0 | 389 | 362 | 22 | 389 | 384 |
| `[85000000, 85002500]` | 0 | 389 | 362 | 22 | 389 | 384 |
| `[87500000, 87502500]` | 0 | 389 | 362 | 22 | 389 | 384 |
| `[90000000, 90002500]` | 4 | 389 | 362 | 22 | 389 | 384 |
| `[92500000, 92502500]` | 0 | 389 | 362 | 22 | 389 | 384 |
| `[95000000, 95002500]` | 42 | 401 | 374 | 22 | 401 | 396 |

## Decision Notes

- incidence projection stays below producer and descriptor gates
- next step can run a larger checkpointed census or design the full split hierarchy
