# Phase 6Z.6K.8AP.16BC Denominator-Signature Factoring Profile

This is diagnostic only. It emits no Lean and is not trusted as proof.

- Status: `denominator-signatures-still-mostly-rank-local`
- Ranks scanned: `796`
- Unique GoodDirection survivor bitsets: `362`
- Unique denominator sign signatures: `796`
- Unique denominator sign+zero signatures: `796`
- Unique exact denominator signatures: `796`
- First-bad impact histogram: `{'1': 11682, '10': 1234, '11': 919, '12': 806, '13': 2, '2': 9414, '3': 1951, '4': 5160, '5': 2885, '6': 3734, '7': 2478, '8': 1914, '9': 1653}`

## Decision

Denominator signatures remain mostly rank-local in this sample. The next attempt should use a stronger semantic state, mask-tree Farkas cubes, or symbolic sign-variable proof rather than grouping completed ranks.

## Sample Rank Summaries

- rank `0`: good masks `16`, survivor bitset `0x80c0a000f1452300`, first-bad histogram `{'1': 20, '10': 1, '12': 1, '2': 12, '4': 8, '6': 4, '8': 2}`
- rank `2`: good masks `13`, survivor bitset `0x80c0800071052300`, first-bad histogram `{'1': 8, '10': 4, '11': 5, '2': 8, '4': 12, '6': 9, '8': 5}`
- rank `3`: good masks `13`, survivor bitset `0x80c02000d0452300`, first-bad histogram `{'1': 8, '10': 4, '11': 5, '2': 8, '4': 12, '6': 9, '8': 5}`
- rank `5`: good masks `16`, survivor bitset `0x80c0a000f1452300`, first-bad histogram `{'1': 20, '10': 1, '12': 1, '2': 12, '4': 8, '6': 4, '8': 2}`
- rank `9`: good masks `13`, survivor bitset `0x80c02000f1450200`, first-bad histogram `{'1': 16, '12': 3, '2': 6, '4': 6, '6': 9, '8': 4, '9': 7}`
- rank `11`: good masks `11`, survivor bitset `0xa040000051450300`, first-bad histogram `{'1': 16, '11': 4, '2': 10, '4': 6, '6': 8, '8': 2, '9': 7}`
- rank `17`: good masks `7`, survivor bitset `0xa040000001450000`, first-bad histogram `{'1': 16, '10': 4, '2': 14, '4': 6, '6': 9, '8': 4, '9': 4}`
- rank `24`: good masks `7`, survivor bitset `0xa000000051400100`, first-bad histogram `{'1': 16, '10': 4, '2': 14, '4': 6, '6': 9, '8': 4, '9': 4}`
