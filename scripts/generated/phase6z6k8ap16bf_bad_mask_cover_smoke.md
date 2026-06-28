# Phase 6Z.6K.8AP.16BF Bad-Mask Cover Smoke

Status: accepted as a bounded interface smoke.

This checkpoint instantiates the `BadMaskCover` interface for the rank `100805`
singleton survivor signature.  The generated module uses the AP16BD greedy
Boolean cube cover of the bad-mask complement:

- positive masks: 8
- bad masks: 56
- bad cube families: 9
- generated Lean lines: 7,555

The smoke still uses the existing per-mask nonpositive-denominator witnesses
inside each cube as a regression baseline.  Its value is that it proves the
erased cover interface composes with the AP16AZ semantic precomputed signature
surface and closes:

```lean
generatedSingletonSignatureClosedSemanticAllGoodCoverage :
  AllTranslationGoodCoverageOnRange 100805 100806
```

Focused guarded build:

```text
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 9000 \
  --min-available-mib 8192 \
  --poll-seconds 0.5 \
  --json /tmp/cuboctahedron_ap16bf_bad_mask_cover_smoke_guard_fixed2.json \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 180s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorPrecomputedSignatureSmoke 2>&1 | tee /tmp/cuboctahedron_ap16bf_bad_mask_cover_smoke_build_fixed2.log'
```

Result:

```text
passed
elapsed:                60.17s
peak process-tree RSS:  7.886 GiB
minimum available mem:  39.10 GiB
guard kill:             no
```

Decision: keep `BadMaskCover` as the accepted erased semantic interface for
bad-mask complements.  Do not scale the per-mask witness implementation.  The
next compression step is a genuine denominator-cube or pseudo-Boolean Farkas
soundness theorem for one Boolean cube, then one survivor bitset.
