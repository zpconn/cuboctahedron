# Top-Pairing Trace State-DAG Minimization

This is exact diagnostic evidence, not Lean proof.  It quotients the
Lean-aligned semantic trace state DAG by terminal behavior and outgoing
face-labelled transitions.

- source: `scripts/generated/top_pairing_trace_state_dag_lean_aligned_graph.json`

## Counts

| metric | raw | minimized |
| --- | ---: | ---: |
| states | `5347` | `1026` |
| edges | `6089` | `2486` |
| terminal states/classes | `98` | `3` |

## Compression

- state compression factor: `5.212`
- edge compression factor: `2.449`
- root class: `1025`

## Terminal Classes

| kind | classes |
| --- | ---: |
| `cancellation_reject` | `1` |
| `closed` | `1` |
| `dead_reject` | `1` |

## Classes By Minimum Depth

| depth | classes |
| ---: | ---: |
| `0` | `1` |
| `1` | `1` |
| `2` | `1` |
| `3` | `3` |
| `4` | `7` |
| `5` | `19` |
| `6` | `47` |
| `7` | `123` |
| `8` | `281` |
| `9` | `380` |
| `10` | `129` |
| `11` | `24` |
| `12` | `6` |
| `13` | `2` |
| `14` | `2` |

## Largest Quotient Classes

| class | size | min step | max step | terminal | out degree | examples |
| ---: | ---: | ---: | ---: | --- | ---: | --- |
| `2` | `1666` | `8` | `13` | `dead_reject` | `0` | `17, 229, 521, 536, 930, 1321, 1798, 2154, 2187, 2439` |
| `14` | `207` | `9` | `11` | `None` | `1` | `11, 26, 52, 94, 153, 198, 239, 248, 457, 499` |
| `23` | `173` | `9` | `11` | `None` | `1` | `130, 155, 164, 191, 205, 209, 235, 243, 254, 292` |
| `13` | `156` | `10` | `12` | `None` | `1` | `2156, 2186, 2441, 3503, 3550, 4029, 4863, 621, 682, 727` |
| `18` | `113` | `9` | `11` | `None` | `1` | `31, 89, 98, 111, 293, 395, 397, 426, 432, 442` |
| `3` | `97` | `13` | `13` | `None` | `1` | `38, 66, 75, 125, 141, 170, 215, 273, 390, 452` |
| `0` | `97` | `14` | `14` | `cancellation_reject` | `0` | `39, 67, 76, 126, 142, 171, 216, 274, 391, 453` |
| `108` | `83` | `10` | `10` | `None` | `1` | `715, 846, 890, 908, 1006, 1080, 1152, 1467, 1587, 2179` |
| `5` | `81` | `9` | `12` | `None` | `1` | `16, 228, 2153, 2438, 2988, 3500, 4686, 80, 160, 202` |
| `6` | `80` | `10` | `12` | `None` | `1` | `19, 520, 535, 929, 1320, 1797, 4688, 5328, 5346, 47` |
| `8` | `54` | `12` | `12` | `None` | `1` | `41, 69, 78, 124, 144, 173, 214, 276, 389, 455` |
| `75` | `53` | `9` | `10` | `None` | `1` | `330, 811, 1889, 2142, 2215, 2242, 2266, 2301, 2329, 2375` |
| `9` | `52` | `12` | `12` | `None` | `1` | `497, 687, 772, 830, 955, 1051, 1099, 1179, 1212, 1289` |
| `7` | `44` | `12` | `12` | `None` | `1` | `37, 65, 74, 140, 169, 258, 272, 451, 478, 561` |
| `64` | `42` | `10` | `10` | `None` | `2` | `185, 315, 344, 576, 735, 814, 1020, 1041, 1464, 1912` |
| `141` | `39` | `10` | `10` | `None` | `1` | `2119, 2290, 2359, 2546, 2550, 2596, 2615, 2637, 2682, 2755` |
| `30` | `38` | `11` | `11` | `None` | `1` | `501, 686, 843, 954, 1050, 1098, 1178, 1211, 1288, 1368` |
| `19` | `29` | `11` | `11` | `None` | `1` | `36, 64, 73, 139, 168, 271, 450, 477, 627, 638` |
| `81` | `24` | `10` | `10` | `None` | `1` | `441, 2188, 2765, 2770, 2793, 2970, 2977, 3226, 3323, 3552` |
| `52` | `23` | `10` | `10` | `None` | `2` | `54, 263, 548, 757, 776, 935, 1222, 1355, 1521, 1579` |

## Decision Hint

A strong quotient would reduce the graph to low thousands or hundreds
of states while preserving semantic transition behavior.  If the
quotient remains close to the raw graph, the state key is still too
fine and this route needs a cancellation-summary or cocycle-gauge
abstraction before Lean emission.

