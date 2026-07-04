# Top-Pairing Closed-Language Graph-Acceptance Audit

This is exact diagnostic evidence, not proof.  It enumerates the
current visible closed-language components and checks whether the
generated deterministic Bellman graph accepts every such label word.

- decision: `closed-components-too-weak`
- graph base: `Cuboctahedron/Generated/NonIdentity/Residual/BellmanTopPairingGraphEvalSplit10MSmoke/Base.lean`

## Counts

- `dfs_nodes`: `11318`
- `closed_candidates`: `47`
- `accepted`: `37`
- `rejected`: `10`
- `prefix_graph_rejects`: `197`

## First Accepted

```json
{
  "labels": [
    "xm",
    "ym",
    "tmpm",
    "tppm",
    "tpmm",
    "tppp",
    "tmmm",
    "tpmp",
    "tmmp",
    "tmpp",
    "yp",
    "zm",
    "zp",
    "xp"
  ],
  "final_state": 558,
  "gain": -376
}
```
```json
{
  "labels": [
    "xm",
    "ym",
    "tmpm",
    "tppm",
    "tpmm",
    "tppp",
    "tmmm",
    "tpmp",
    "tmmp",
    "tmpp",
    "zm",
    "yp",
    "zp",
    "xp"
  ],
  "final_state": 558,
  "gain": -376
}
```
```json
{
  "labels": [
    "xm",
    "ym",
    "tmpm",
    "tppm",
    "tpmm",
    "tppp",
    "tmmm",
    "tpmp",
    "tmmp",
    "tmpp",
    "zm",
    "zp",
    "yp",
    "xp"
  ],
  "final_state": 558,
  "gain": -376
}
```
```json
{
  "labels": [
    "xm",
    "ym",
    "tmpm",
    "tppm",
    "tpmm",
    "tppp",
    "tmmm",
    "tpmp",
    "yp",
    "tmpp",
    "tmmp",
    "zm",
    "zp",
    "xp"
  ],
  "final_state": 559,
  "gain": -596
}
```
```json
{
  "labels": [
    "xm",
    "ym",
    "tmpm",
    "tppm",
    "tpmm",
    "tppp",
    "tmmm",
    "tpmp",
    "yp",
    "tmpp",
    "zm",
    "zp",
    "tmmp",
    "xp"
  ],
  "final_state": 560,
  "gain": -348
}
```

## First Rejections

```json
{
  "labels": [
    "xm",
    "ym",
    "tmpm",
    "tppm",
    "tpmm",
    "tppp",
    "tmmm",
    "zp",
    "tpmm",
    "yp",
    "tmpm",
    "zp",
    "tmmp",
    "xp"
  ],
  "first_graph_reject": {
    "step": 8,
    "state": 851,
    "face": "tpmm",
    "label": 4,
    "prefix": [
      "xm",
      "ym",
      "tmpm",
      "tppm",
      "tpmm",
      "tppp",
      "tmmm",
      "zp",
      "tpmm"
    ],
    "semantic_state_before_reject": {
      "square_gap": 5,
      "parity": "111",
      "remaining_counts": {
        "d111": 0,
        "d11m": 1,
        "d1m1": 1,
        "dm11": 1,
        "x": 0,
        "y": 1,
        "z": 1
      },
      "stack": {
        "shadow_len": 5,
        "stack": [
          [
            "dm11",
            0
          ],
          [
            "d111",
            1
          ],
          [
            "d1m1",
            2
          ]
        ],
        "cancellations": [
          [
            "d11m",
            3,
            4
          ]
        ]
      },
      "linear": [
        [
          "7/27",
          "26/27",
          "-2/27"
        ],
        [
          "-22/27",
          "7/27",
          "14/27"
        ],
        [
          "14/27",
          "-2/27",
          "23/27"
        ]
      ]
    }
  }
}
```
```json
{
  "labels": [
    "xm",
    "ym",
    "tmpm",
    "tppm",
    "tpmm",
    "tppp",
    "zp",
    "tmmp",
    "tpmm",
    "tmmm",
    "tmpm",
    "yp",
    "zp",
    "xp"
  ],
  "first_graph_reject": {
    "step": 7,
    "state": 777,
    "face": "tmmp",
    "label": 1,
    "prefix": [
      "xm",
      "ym",
      "tmpm",
      "tppm",
      "tpmm",
      "tppp",
      "zp",
      "tmmp"
    ],
    "semantic_state_before_reject": {
      "square_gap": 4,
      "parity": "111",
      "remaining_counts": {
        "d111": 1,
        "d11m": 1,
        "d1m1": 1,
        "dm11": 1,
        "x": 0,
        "y": 1,
        "z": 1
      },
      "stack": {
        "shadow_len": 4,
        "stack": [
          [
            "dm11",
            0
          ],
          [
            "d111",
            1
          ],
          [
            "d1m1",
            2
          ],
          [
            "d11m",
            3
          ]
        ],
        "cancellations": []
      },
      "linear": [
        [
          "-49/81",
          "8/81",
          "64/81"
        ],
        [
          "-8/81",
          "79/81",
          "-16/81"
        ],
        [
          "64/81",
          "16/81",
          "47/81"
        ]
      ]
    }
  }
}
```
```json
{
  "labels": [
    "xm",
    "ym",
    "tmpm",
    "tppm",
    "tpmm",
    "tppp",
    "zp",
    "tmmp",
    "tpmm",
    "tmmm",
    "tmpm",
    "zp",
    "yp",
    "xp"
  ],
  "first_graph_reject": {
    "step": 7,
    "state": 777,
    "face": "tmmp",
    "label": 1,
    "prefix": [
      "xm",
      "ym",
      "tmpm",
      "tppm",
      "tpmm",
      "tppp",
      "zp",
      "tmmp"
    ],
    "semantic_state_before_reject": {
      "square_gap": 4,
      "parity": "111",
      "remaining_counts": {
        "d111": 1,
        "d11m": 1,
        "d1m1": 1,
        "dm11": 1,
        "x": 0,
        "y": 1,
        "z": 1
      },
      "stack": {
        "shadow_len": 4,
        "stack": [
          [
            "dm11",
            0
          ],
          [
            "d111",
            1
          ],
          [
            "d1m1",
            2
          ],
          [
            "d11m",
            3
          ]
        ],
        "cancellations": []
      },
      "linear": [
        [
          "-49/81",
          "8/81",
          "64/81"
        ],
        [
          "-8/81",
          "79/81",
          "-16/81"
        ],
        [
          "64/81",
          "16/81",
          "47/81"
        ]
      ]
    }
  }
}
```
```json
{
  "labels": [
    "xm",
    "ym",
    "tmpm",
    "tppm",
    "tpmm",
    "tppp",
    "zp",
    "tmmp",
    "tpmm",
    "yp",
    "tmpm",
    "tmmm",
    "zp",
    "xp"
  ],
  "first_graph_reject": {
    "step": 7,
    "state": 777,
    "face": "tmmp",
    "label": 1,
    "prefix": [
      "xm",
      "ym",
      "tmpm",
      "tppm",
      "tpmm",
      "tppp",
      "zp",
      "tmmp"
    ],
    "semantic_state_before_reject": {
      "square_gap": 4,
      "parity": "111",
      "remaining_counts": {
        "d111": 1,
        "d11m": 1,
        "d1m1": 1,
        "dm11": 1,
        "x": 0,
        "y": 1,
        "z": 1
      },
      "stack": {
        "shadow_len": 4,
        "stack": [
          [
            "dm11",
            0
          ],
          [
            "d111",
            1
          ],
          [
            "d1m1",
            2
          ],
          [
            "d11m",
            3
          ]
        ],
        "cancellations": []
      },
      "linear": [
        [
          "-49/81",
          "8/81",
          "64/81"
        ],
        [
          "-8/81",
          "79/81",
          "-16/81"
        ],
        [
          "64/81",
          "16/81",
          "47/81"
        ]
      ]
    }
  }
}
```
```json
{
  "labels": [
    "xm",
    "ym",
    "tmpm",
    "zm",
    "zp",
    "tppm",
    "tpmm",
    "tppp",
    "tmmm",
    "tpmp",
    "tmmp",
    "tmpp",
    "yp",
    "xp"
  ],
  "first_graph_reject": {
    "step": 10,
    "state": 81,
    "face": "tmmp",
    "label": 1,
    "prefix": [
      "xm",
      "ym",
      "tmpm",
      "zm",
      "zp",
      "tppm",
      "tpmm",
      "tppp",
      "tmmm",
      "tpmp",
      "tmmp"
    ],
    "semantic_state_before_reject": {
      "square_gap": 6,
      "parity": "110",
      "remaining_counts": {
        "d111": 0,
        "d11m": 1,
        "d1m1": 0,
        "dm11": 1,
        "x": 0,
        "y": 1,
        "z": 0
      },
      "stack": {
        "shadow_len": 6,
        "stack": [
          [
            "dm11",
            0
          ],
          [
            "d111",
            1
          ],
          [
            "d1m1",
            2
          ],
          [
            "dm11",
            5
          ]
        ],
        "cancellations": [
          [
            "d11m",
            3,
            4
          ]
        ]
      },
      "linear": [
        [
          "55/81",
          "44/81",
          "40/81"
        ],
        [
          "20/81",
          "-65/81",
          "44/81"
        ],
        [
          "56/81",
          "-20/81",
          "-55/81"
        ]
      ]
    }
  }
}
```

## Rejection Transition Histogram

| step | graph state | face | count |
| ---: | ---: | --- | ---: |
| `7` | `740` | `Face.tmpm` | `3` |
| `8` | `814` | `Face.tmmp` | `3` |
| `8` | `814` | `Face.tmpp` | `3` |
| `10` | `34` | `Face.tmmp` | `3` |
| `9` | `901` | `Face.tmpp` | `3` |
| `8` | `814` | `Face.tppp` | `3` |
| `7` | `740` | `Face.tppp` | `3` |
| `6` | `683` | `Face.tpmp` | `3` |
| `6` | `683` | `Face.tppm` | `3` |
| `6` | `683` | `Face.tppp` | `3` |
| `5` | `646` | `Face.tppm` | `3` |
| `10` | `42` | `Face.tmmp` | `2` |
| `6` | `693` | `Face.tppm` | `2` |
| `7` | `749` | `Face.tmpm` | `2` |
| `8` | `831` | `Face.tmmm` | `2` |
| `9` | `920` | `Face.tmmm` | `2` |
| `9` | `920` | `Face.tmpm` | `2` |
| `11` | `186` | `Face.zp` | `2` |
| `10` | `58` | `Face.zm` | `2` |
| `9` | `920` | `Face.zm` | `2` |
| `8` | `831` | `Face.zm` | `2` |
| `7` | `749` | `Face.tppm` | `2` |
| `7` | `749` | `Face.zm` | `2` |
| `6` | `693` | `Face.zm` | `2` |
| `5` | `650` | `Face.tppm` | `2` |
| `5` | `650` | `Face.tppp` | `2` |
| `5` | `650` | `Face.zp` | `2` |
| `4` | `625` | `Face.tppp` | `2` |
| `4` | `635` | `Face.tmmp` | `1` |
| `5` | `667` | `Face.tpmp` | `1` |
| `7` | `779` | `Face.tmmp` | `1` |
| `9` | `947` | `Face.zm` | `1` |
| `8` | `856` | `Face.tmpp` | `1` |
| `9` | `942` | `Face.tmpp` | `1` |
| `8` | `851` | `Face.tpmm` | `1` |
| `9` | `931` | `Face.tmpp` | `1` |
| `6` | `716` | `Face.tpmp` | `1` |
| `7` | `777` | `Face.tmmp` | `1` |
| `7` | `777` | `Face.tmpm` | `1` |
| `7` | `777` | `Face.tpmm` | `1` |
| `9` | `932` | `Face.tmpp` | `1` |
| `8` | `845` | `Face.tmmp` | `1` |
| `8` | `845` | `Face.tmpp` | `1` |
| `8` | `845` | `Face.tpmp` | `1` |
| `6` | `714` | `Face.tmmm` | `1` |
| `6` | `714` | `Face.tpmm` | `1` |
| `6` | `714` | `Face.tppm` | `1` |
| `7` | `769` | `Face.tmmp` | `1` |
| `7` | `769` | `Face.tpmp` | `1` |
| `9` | `933` | `Face.tmpp` | `1` |
| `8` | `846` | `Face.tmmp` | `1` |
| `8` | `846` | `Face.tmpp` | `1` |
| `8` | `846` | `Face.tpmp` | `1` |
| `5` | `664` | `Face.tmmm` | `1` |
| `5` | `664` | `Face.tpmp` | `1` |
| `6` | `704` | `Face.tmmm` | `1` |
| `7` | `770` | `Face.tmmp` | `1` |
| `7` | `770` | `Face.tpmp` | `1` |
| `9` | `934` | `Face.tmpp` | `1` |
| `8` | `847` | `Face.tmmp` | `1` |
| `8` | `847` | `Face.tmpp` | `1` |
| `8` | `847` | `Face.tpmp` | `1` |
| `6` | `704` | `Face.tpmp` | `1` |
| `4` | `631` | `Face.tpmm` | `1` |
| `4` | `631` | `Face.tppp` | `1` |
| `5` | `657` | `Face.tpmp` | `1` |
| `6` | `705` | `Face.tmmm` | `1` |
| `7` | `771` | `Face.tmmp` | `1` |
| `7` | `771` | `Face.tpmp` | `1` |
| `9` | `935` | `Face.tmpp` | `1` |
| `10` | `81` | `Face.tmmp` | `1` |
| `8` | `848` | `Face.tmmp` | `1` |
| `8` | `848` | `Face.tmpp` | `1` |
| `8` | `848` | `Face.tpmp` | `1` |
| `6` | `705` | `Face.tpmp` | `1` |
| `5` | `657` | `Face.tppp` | `1` |
| `7` | `762` | `Face.tmmp` | `1` |
| `8` | `839` | `Face.tmmp` | `1` |
| `8` | `839` | `Face.tmpp` | `1` |
| `10` | `44` | `Face.tmmp` | `1` |
| `9` | `912` | `Face.tmmm` | `1` |
| `9` | `912` | `Face.tppm` | `1` |
| `10` | `27` | `Face.tmmp` | `1` |
| `7` | `762` | `Face.tppp` | `1` |
| `8` | `829` | `Face.tmmm` | `1` |
| `8` | `829` | `Face.tmpp` | `1` |
| `10` | `28` | `Face.tmmp` | `1` |
| `9` | `895` | `Face.tmpp` | `1` |
| `6` | `699` | `Face.tppp` | `1` |
| `7` | `755` | `Face.tmpm` | `1` |
| `7` | `755` | `Face.tpmm` | `1` |
| `7` | `755` | `Face.tppm` | `1` |
| `8` | `809` | `Face.tmmp` | `1` |
| `8` | `809` | `Face.tmpp` | `1` |
| `10` | `29` | `Face.tmmp` | `1` |
| `9` | `896` | `Face.tmpp` | `1` |
| `8` | `809` | `Face.tppp` | `1` |
| `5` | `654` | `Face.tppp` | `1` |
| `6` | `689` | `Face.tppm` | `1` |
| `6` | `689` | `Face.tppp` | `1` |
| `7` | `737` | `Face.tmpm` | `1` |
| `8` | `810` | `Face.tmmp` | `1` |
| `8` | `810` | `Face.tmpp` | `1` |
| `10` | `30` | `Face.tmmp` | `1` |
| `9` | `897` | `Face.tmpp` | `1` |
| `8` | `810` | `Face.tppp` | `1` |
| `7` | `737` | `Face.tppp` | `1` |
| `4` | `627` | `Face.tppp` | `1` |
| `6` | `685` | `Face.tppm` | `1` |
| `7` | `742` | `Face.tmpm` | `1` |
| `9` | `904` | `Face.tmpm` | `1` |
| `10` | `48` | `Face.tmmp` | `1` |
| `10` | `48` | `Face.zm` | `1` |
| `9` | `904` | `Face.zm` | `1` |
| `8` | `817` | `Face.zm` | `1` |
| `7` | `742` | `Face.tppm` | `1` |
| `7` | `742` | `Face.zm` | `1` |
| `6` | `685` | `Face.zm` | `1` |
| `5` | `648` | `Face.tppm` | `1` |
| `5` | `648` | `Face.tppp` | `1` |
| `7` | `738` | `Face.tmpm` | `1` |
| `8` | `812` | `Face.tmmp` | `1` |
| `8` | `812` | `Face.tmpp` | `1` |
| `10` | `32` | `Face.tmmp` | `1` |
| `9` | `899` | `Face.tmpp` | `1` |
| `8` | `812` | `Face.tppp` | `1` |
| `7` | `738` | `Face.tppp` | `1` |
| `6` | `682` | `Face.tpmp` | `1` |
| `6` | `682` | `Face.tppm` | `1` |
| `6` | `682` | `Face.tppp` | `1` |
| `3` | `615` | `Face.tppm` | `1` |
| `4` | `632` | `Face.tpmm` | `1` |
| `5` | `662` | `Face.tmmm` | `1` |
| `6` | `713` | `Face.tmmm` | `1` |
| `6` | `713` | `Face.tpmm` | `1` |
| `8` | `852` | `Face.tmmm` | `1` |
| `9` | `945` | `Face.tmpm` | `1` |
| `11` | `185` | `Face.zp` | `1` |
| `10` | `57` | `Face.zm` | `1` |
| `9` | `945` | `Face.zm` | `1` |
| `8` | `852` | `Face.zm` | `1` |
| `7` | `778` | `Face.tmpm` | `1` |
| `7` | `778` | `Face.tpmm` | `1` |
| `7` | `778` | `Face.zm` | `1` |
| `6` | `713` | `Face.zm` | `1` |
| `5` | `662` | `Face.zm` | `1` |
| `4` | `632` | `Face.zp` | `1` |
| `5` | `658` | `Face.tpmp` | `1` |
| `6` | `706` | `Face.tmmm` | `1` |
| `7` | `772` | `Face.tmmp` | `1` |
| `7` | `772` | `Face.tpmp` | `1` |
| `9` | `936` | `Face.tmpp` | `1` |
| `8` | `850` | `Face.tmmp` | `1` |
| `8` | `850` | `Face.tmpp` | `1` |
| `8` | `850` | `Face.tpmp` | `1` |
| `6` | `706` | `Face.tpmp` | `1` |
| `5` | `658` | `Face.tppp` | `1` |
| `4` | `628` | `Face.tpmm` | `1` |

## Rejection State/Step/Gap Histogram

| graph state | step | square gap | count |
| ---: | ---: | ---: | ---: |
| `814` | `8` | `3` | `9` |
| `683` | `6` | `1` | `9` |
| `749` | `7` | `3` | `6` |
| `920` | `9` | `5` | `6` |
| `650` | `5` | `1` | `6` |
| `740` | `7` | `2` | `6` |
| `693` | `6` | `2` | `4` |
| `831` | `8` | `4` | `4` |
| `777` | `7` | `4` | `3` |
| `845` | `8` | `4` | `3` |
| `714` | `6` | `3` | `3` |
| `846` | `8` | `4` | `3` |
| `847` | `8` | `4` | `3` |
| `848` | `8` | `4` | `3` |
| `755` | `7` | `3` | `3` |
| `809` | `8` | `3` | `3` |
| `810` | `8` | `3` | `3` |
| `742` | `7` | `3` | `3` |
| `812` | `8` | `3` | `3` |
| `682` | `6` | `1` | `3` |
| `34` | `10` | `5` | `3` |
| `901` | `9` | `4` | `3` |
| `646` | `5` | `0` | `3` |
| `713` | `6` | `3` | `3` |
| `778` | `7` | `4` | `3` |
| `850` | `8` | `4` | `3` |
| `42` | `10` | `6` | `2` |
| `769` | `7` | `3` | `2` |
| `664` | `5` | `2` | `2` |
| `704` | `6` | `2` | `2` |
| `770` | `7` | `3` | `2` |
| `631` | `4` | `1` | `2` |
| `657` | `5` | `1` | `2` |
| `705` | `6` | `2` | `2` |
| `771` | `7` | `3` | `2` |
| `762` | `7` | `4` | `2` |
| `839` | `8` | `5` | `2` |
| `912` | `9` | `5` | `2` |
| `829` | `8` | `4` | `2` |
| `689` | `6` | `2` | `2` |
| `737` | `7` | `2` | `2` |
| `685` | `6` | `2` | `2` |
| `904` | `9` | `5` | `2` |
| `48` | `10` | `6` | `2` |
| `648` | `5` | `1` | `2` |
| `738` | `7` | `2` | `2` |
| `186` | `11` | `7` | `2` |
| `58` | `10` | `6` | `2` |
| `625` | `4` | `0` | `2` |
| `632` | `4` | `1` | `2` |
| `662` | `5` | `2` | `2` |
| `852` | `8` | `5` | `2` |
| `945` | `9` | `6` | `2` |
| `658` | `5` | `1` | `2` |
| `706` | `6` | `2` | `2` |
| `772` | `7` | `3` | `2` |
| `635` | `4` | `2` | `1` |
| `667` | `5` | `3` | `1` |
| `779` | `7` | `5` | `1` |
| `947` | `9` | `7` | `1` |
| `856` | `8` | `6` | `1` |
| `942` | `9` | `6` | `1` |
| `851` | `8` | `5` | `1` |
| `931` | `9` | `5` | `1` |
| `716` | `6` | `4` | `1` |
| `932` | `9` | `5` | `1` |
| `933` | `9` | `5` | `1` |
| `934` | `9` | `5` | `1` |
| `935` | `9` | `5` | `1` |
| `81` | `10` | `6` | `1` |
| `44` | `10` | `6` | `1` |
| `27` | `10` | `5` | `1` |
| `28` | `10` | `5` | `1` |
| `895` | `9` | `4` | `1` |
| `699` | `6` | `3` | `1` |
| `29` | `10` | `5` | `1` |
| `896` | `9` | `4` | `1` |
| `654` | `5` | `2` | `1` |
| `30` | `10` | `5` | `1` |
| `897` | `9` | `4` | `1` |
| `627` | `4` | `1` | `1` |
| `817` | `8` | `4` | `1` |
| `32` | `10` | `5` | `1` |
| `899` | `9` | `4` | `1` |
| `615` | `3` | `0` | `1` |
| `185` | `11` | `7` | `1` |
| `57` | `10` | `6` | `1` |
| `936` | `9` | `5` | `1` |
| `628` | `4` | `0` | `1` |

## Rejection Stack Shapes

```json
{
  "shadow_len": 3,
  "stack": [
    [
      "dm11",
      0
    ],
    [
      "d111",
      1
    ],
    [
      "d1m1",
      2
    ]
  ],
  "cancellations": [],
  "count": 46
}
```
```json
{
  "shadow_len": 4,
  "stack": [
    [
      "dm11",
      0
    ],
    [
      "d111",
      1
    ],
    [
      "d1m1",
      2
    ],
    [
      "d11m",
      3
    ]
  ],
  "cancellations": [],
  "count": 38
}
```
```json
{
  "shadow_len": 2,
  "stack": [
    [
      "dm11",
      0
    ],
    [
      "d111",
      1
    ]
  ],
  "cancellations": [],
  "count": 30
}
```
```json
{
  "shadow_len": 5,
  "stack": [
    [
      "dm11",
      0
    ],
    [
      "d111",
      1
    ],
    [
      "d1m1",
      2
    ]
  ],
  "cancellations": [
    [
      "d11m",
      3,
      4
    ]
  ],
  "count": 30
}
```
```json
{
  "shadow_len": 1,
  "stack": [
    [
      "dm11",
      0
    ]
  ],
  "cancellations": [],
  "count": 29
}
```
```json
{
  "shadow_len": 6,
  "stack": [
    [
      "dm11",
      0
    ],
    [
      "d111",
      1
    ],
    [
      "d1m1",
      2
    ],
    [
      "dm11",
      5
    ]
  ],
  "cancellations": [
    [
      "d11m",
      3,
      4
    ]
  ],
  "count": 13
}
```
```json
{
  "shadow_len": 0,
  "stack": [],
  "cancellations": [],
  "count": 7
}
```
```json
{
  "shadow_len": 7,
  "stack": [
    [
      "dm11",
      0
    ],
    [
      "d111",
      1
    ],
    [
      "d1m1",
      2
    ],
    [
      "dm11",
      5
    ],
    [
      "d111",
      6
    ]
  ],
  "cancellations": [
    [
      "d11m",
      3,
      4
    ]
  ],
  "count": 4
}
```
