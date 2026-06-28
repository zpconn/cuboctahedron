# Phase 6Z.6K.8AP.16BD Survivor-Bitset Cube-Cover Profile

This is diagnostic only. It emits no Lean and is not trusted as proof.

- Status: `promising-mask-cube-cover`
- Unique survivor bitsets: `362`
- Positive-survivor signatures represented: `757`
- Ranks represented: `796`
- Max greedy cube count: `11`
- Average cubes per signature: `8.64`
- Average cubes per rank: `8.64`
- Cube-count histogram: `{'5': 21, '6': 32, '7': 49, '8': 107, '9': 97, '10': 44, '11': 12}`
- Cube fixed-count histogram: `{'1': 256, '2': 1809, '3': 866, '4': 10}`

## Decision

The bad-mask complement has small Boolean cube covers.  This supports formalizing a denominator-cube or mask-tree Farkas proof layer.

## Top Survivor Bitsets

- `0x80c0a000f1452300`: ranks `30`, signatures `30`, good masks `16`, cubes `10`, sample cubes `[{'pattern': '1**0**', 'fixed_count': 2, 'covers': 16}, {'pattern': '*00***', 'fixed_count': 2, 'covers': 16}, {'pattern': '11**0*', 'fixed_count': 3, 'covers': 8}]`
- `0x2030a000f4158c00`: ranks `12`, signatures `12`, good masks `16`, cubes `10`, sample cubes `[{'pattern': '1**0**', 'fixed_count': 2, 'covers': 16}, {'pattern': '*00***', 'fixed_count': 2, 'covers': 16}, {'pattern': '11**1*', 'fixed_count': 3, 'covers': 8}]`
- `0x0080808091c4a280`: ranks `11`, signatures `11`, good masks `13`, cubes `9`, sample cubes `[{'pattern': '1**0**', 'fixed_count': 2, 'covers': 16}, {'pattern': '*0***0', 'fixed_count': 2, 'covers': 16}, {'pattern': '**0*0*', 'fixed_count': 2, 'covers': 16}]`
- `0x00c0a000b1442300`: ranks `8`, signatures `8`, good masks `13`, cubes `9`, sample cubes `[{'pattern': '1**0**', 'fixed_count': 2, 'covers': 16}, {'pattern': '*00***', 'fixed_count': 2, 'covers': 16}, {'pattern': '**0*0*', 'fixed_count': 2, 'covers': 16}]`
- `0x00c0a000d1452200`: ranks `8`, signatures `8`, good masks `13`, cubes `9`, sample cubes `[{'pattern': '1**0**', 'fixed_count': 2, 'covers': 16}, {'pattern': '*00***', 'fixed_count': 2, 'covers': 16}, {'pattern': '*0***0', 'fixed_count': 2, 'covers': 16}]`
- `0x8040a000b0452300`: ranks `8`, signatures `8`, good masks `13`, cubes `9`, sample cubes `[{'pattern': '1**0**', 'fixed_count': 2, 'covers': 16}, {'pattern': '*00***', 'fixed_count': 2, 'covers': 16}, {'pattern': '**0**1', 'fixed_count': 2, 'covers': 16}]`
- `0x8080a00071450300`: ranks `8`, signatures `8`, good masks `13`, cubes `9`, sample cubes `[{'pattern': '1**0**', 'fixed_count': 2, 'covers': 16}, {'pattern': '*00***', 'fixed_count': 2, 'covers': 16}, {'pattern': '1****0', 'fixed_count': 2, 'covers': 16}]`
- `0x80c02000d0452300`: ranks `8`, signatures `8`, good masks `13`, cubes `9`, sample cubes `[{'pattern': '1**0**', 'fixed_count': 2, 'covers': 16}, {'pattern': '*00***', 'fixed_count': 2, 'covers': 16}, {'pattern': '*0**1*', 'fixed_count': 2, 'covers': 16}]`
