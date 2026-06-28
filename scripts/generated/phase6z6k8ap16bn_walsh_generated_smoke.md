# Phase 6Z.6K.8AP.16BN Walsh Generated-Style Smoke

Status: accepted as a generated-style polynomial-bound smoke.

File:

```text
Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/ImpactSubcubeWalshGeneratedSmoke.lean
```

The smoke uses the first AP16BJ selected subcube:

```text
rank:       100805
label:      *000**
impact:     1
fixed bits: z=-1, d111=-1, d11m=-1
max value:  -4/27
```

The emitted Walsh polynomial has six terms:

| variables | coefficient | subcube bound |
| --- | ---: | ---: |
| constant | `4` | `4` |
| `z` | `32/9` | `-32/9` |
| `d111` | `104/27` | `-104/27` |
| `d11m` | `8/9` | `-8/9` |
| `d1m1` | `40/27` | `40/27` |
| `dm11` | `-8/3` | `8/3` |

The bounds sum to `-4/27`, so `WalshSubcubeUpperBound.eval_nonpos`
proves the polynomial is nonpositive for every mask in the subcube without
enumerating all masks.

Focused guarded build:

```text
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 6000 \
  --min-available-mib 12000 \
  --poll-seconds 0.5 \
  --json /tmp/cuboctahedron_ap16bn_walsh_generated_smoke_guard.json \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 180s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ImpactSubcubeWalshGeneratedSmoke'

passed
elapsed:                4.50s
peak process-tree RSS:  3.935 GiB
minimum available mem:  45.111 GiB
guard kill:             no
```

Decision: this validates the real coefficient-level proof shape that AP16BM
was designed for.  It is not final evidence because it intentionally does not
yet prove that `impactDenomAtRank` equals the emitted Walsh polynomial.  The
next production step is to automate this emitter and add a scalable
denominator-equality bridge.
