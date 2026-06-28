# Phase 6Z.6K.8AP.16BP Walsh Bound All-Subcube Smoke

Status: generated all-subcube smoke accepted.

- rank: `100805`
- selected subcubes: `20`
- total terms: `134`
- max terms per subcube: `7`
- max Walsh degree: `2`

| index | label | impact | terms | bound sum |
| ---: | --- | ---: | ---: | ---: |
| 0 | `*000**` | 1 | 6 | `-4/27` |
| 1 | `*00*0*` | 1 | 6 | `-4/3` |
| 2 | `0100**` | 8 | 7 | `-4/9` |
| 3 | `01*1*1` | 2 | 6 | `-20/27` |
| 4 | `0*10*1` | 4 | 7 | `-4/3` |
| 5 | `1011**` | 6 | 7 | `-28/9` |
| 6 | `1100**` | 5 | 7 | `-4/3` |
| 7 | `1*100*` | 2 | 6 | `-4/27` |
| 8 | `0*011*` | 2 | 6 | `-4/27` |
| 9 | `*01*10` | 6 | 7 | `-4/3` |
| 10 | `10*11*` | 6 | 7 | `-28/9` |
| 11 | `11*01*` | 5 | 7 | `-4/3` |
| 12 | `11**01` | 10 | 7 | `-4/9` |
| 13 | `00110*` | 5 | 7 | `-4` |
| 14 | `010**0` | 8 | 7 | `-4` |
| 15 | `0**111` | 2 | 6 | `-4/3` |
| 16 | `101*1*` | 6 | 7 | `-28/9` |
| 17 | `*10*10` | 8 | 7 | `-28/9` |
| 18 | `0*1100` | 5 | 7 | `-4/3` |
| 19 | `11110*` | 10 | 7 | `-20/9` |

This generated smoke proves polynomial nonpositivity through
`WalshSubcubeUpperBound`; it does not yet prove equality with
`impactDenomAtRank`.

Focused guarded build:

```text
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 6000 \
  --min-available-mib 12000 \
  --poll-seconds 0.5 \
  --json /tmp/cuboctahedron_ap16bp_walsh_all_smoke_guard.json \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 240s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshAllSmoke'

passed
elapsed:                23.54s
peak process-tree RSS:  4.135 GiB
minimum available mem:  44.870 GiB
guard kill:             no
```

Decision: accepted as the rank-`100805` all-selected-subcube Walsh-bound
smoke.  The polynomial-bound layer now scales across the 20 AP16BJ selected
subcubes without mask enumeration.  The next proof gap is the denominator
equality bridge from each emitted Walsh polynomial to `impactDenomAtRank`.
