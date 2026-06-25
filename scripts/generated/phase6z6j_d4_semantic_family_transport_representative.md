# Phase 6Z.6J.1 Representative D4 Semantic-Family Transport Aggregate

Decision: **reject-near-term**

| metric | value |
| --- | ---: |
| Representative windows | 9 |
| Pair words scanned | 140,000 |
| Identity words | 2,410 |
| GoodDirection survivors | 4,779 |
| Raw semantic families | 124 |
| D4-canonical semantic families | 98 |
| Raw/canonical ratio | 1.265x |
| Observed canonical orbits | 2,151 |
| Average observed orbit size | 2.222 |
| Max observed orbit size | 4 |
| Fixed/singleton orbits | 1,275 |
| Smaller-than-8 orbits | 2,151 |
| Transport consistency failures | 0 |

## Decision Notes

- representative aggregate stays below the 1.5x transport threshold
- return to semantic row-extraction/source-agreement compression

## Per-Window Results

| window | GoodDirection survivors | raw families | canonical families | ratio | elapsed s |
| --- | ---: | ---: | ---: | ---: | ---: |
| `[160,000,165,000)` | 0 | 0 | 0 | 0.000x | 0.1 |
| `[355,000,360,000)` | 0 | 0 | 0 | 0.000x | 0.1 |
| `[590,000,595,000)` | 0 | 0 | 0 | 0.000x | 0.1 |
| `[1,025,000,1,030,000)` | 0 | 0 | 0 | 0.000x | 0.1 |
| `[1,270,000,1,275,000)` | 4,779 | 124 | 98 | 1.265x | 43.1 |
| `[1,385,000,1,390,000)` | 0 | 0 | 0 | 0.000x | 0.1 |
| `[1,820,000,1,825,000)` | 0 | 0 | 0 | 0.000x | 0.1 |
| `[2,095,000,2,100,000)` | 0 | 0 | 0 | 0.000x | 0.1 |
| `[30,000,000,30,100,000)` | 0 | 0 | 0 | 0.000x | 14.8 |

## Top Raw Families

| cases | family |
| ---: | --- |
| 1,260 | `diamond:diamond_first|source=5adcd045a97319ca2c507f2a2729e7e4b44586b0af09727c0f6dd12e5bb3580b` |
| 555 | `diamond:diamond_first|source=5803f35d677ae04166a321d8243e2278ba6a40142643333ae17cbcb910b4f201` |
| 271 | `diamond:diamond_first|source=7689ca8f4559480b5882866950c23005b8844177f2c8efd7fdc4ab7fef075198` |
| 178 | `diamond:diamond_first|source=d4bee78b63fa6bcebd58ce23dce690fc537b368d0b8afd26b4c969ef509d6bb4` |
| 126 | `diamond:diamond_first|source=6a1169c86301f17f88c4ba207f016625742fcfc52d759287e0387c29177eb972` |
| 105 | `diamond:diamond_first|source=e077434d25cd2b8256b2c045b2f2c39e2e407562a418eb83b7432401c75cb23e` |
| 103 | `diamond:diamond_second|source=ca2b14f915ca83a1a12d8dffbbe80a668272f570172001789f97a34e7649e451` |
| 93 | `diamond:diamond_second|source=513f51128e8b6d356d5f0059d792b6ee98b4d6a8f8e6deb429fb6b769a3bafea` |
| 85 | `diamond:diamond_second|source=d611693e904457a75b4b118a7390fd88fd0ef30213e479ab00229c7656f94ead` |
| 85 | `diamond:diamond_second|source=5c64d4cb48f5c7b902456fd0d508ac726746f2d6514ca46677c69b3c6a9546a5` |
| 79 | `diamond:diamond_first|source=be545f38cd79ff84fc12e32e2aad4d6ab524ec73af55f6643c76c1b22af7bb92` |
| 76 | `diamond:diamond_second|source=351b04128f3f1901e5ffdc54430fe02cdaf1bcc1903ee1fbc5c5707bb7bc9b00` |

## Top D4-Canonical Families

| cases | family |
| ---: | --- |
| 1,427 | `diamond:diamond_first|source=5adcd045a97319ca2c507f2a2729e7e4b44586b0af09727c0f6dd12e5bb3580b` |
| 616 | `diamond:diamond_first|source=d4bee78b63fa6bcebd58ce23dce690fc537b368d0b8afd26b4c969ef509d6bb4` |
| 455 | `diamond:diamond_first|source=5803f35d677ae04166a321d8243e2278ba6a40142643333ae17cbcb910b4f201` |
| 368 | `diamond:diamond_first|source=7689ca8f4559480b5882866950c23005b8844177f2c8efd7fdc4ab7fef075198` |
| 140 | `diamond:diamond_second|source=513f51128e8b6d356d5f0059d792b6ee98b4d6a8f8e6deb429fb6b769a3bafea` |
| 88 | `diamond:diamond_second|source=351b04128f3f1901e5ffdc54430fe02cdaf1bcc1903ee1fbc5c5707bb7bc9b00` |
| 80 | `diamond:diamond_first|source=34d9a809c0dda8943833f88b4ee7dcef750d7b9a06732dec40addb0872e94209` |
| 77 | `diamond:diamond_first|source=7360ea999a5754c1cfe664453f5df1487c1114a2ff9ac3e5f4cbe3acd8fe8a28` |
| 67 | `diamond:diamond_first|source=9b67d5de1b10f76dd82d4d212296c5cc298220220954c1c00f40b7103f1a491f` |
| 66 | `diamond:diamond_second|source=d611693e904457a75b4b118a7390fd88fd0ef30213e479ab00229c7656f94ead` |
| 59 | `diamond:diamond_second|source=2ff03e5a6064fae3d4f1d07e54e292a1575efe23955fe0d08665c7e6f281ae33` |
| 57 | `diamond:diamond_first|source=55f26045ff81f56765c35562394306053ec02060435e216f54f928a6f6cda39b` |
