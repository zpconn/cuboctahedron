# Phase 6Z.6K.8AP.16AX Raw Boolean Membership Rejection

This checkpoint tested whether the singleton positive-survivor signature smoke
could close its remaining mask-membership premise by directly reducing
`goodDirectionAtRankBool` for all 64 masks in Lean.

The attempted theorem was:

```lean
private theorem generatedGoodMaskMember_of_bool
    {mask : SignMask} (hlt : 100805 < numPairWords) :
    goodDirectionAtRankBool ⟨100805, hlt⟩ mask = true ->
      generatedGoodMaskMember mask := by
  intro hgood
  fin_cases mask <;>
    simp [generatedGoodMaskMember, goodDirectionAtRankBool, internalImpactList,
      impactDenomAtRank, translationSeqAtRankMask, translationBAtRankMask,
      translationChoiceSeq, totalAff, totalOrder, composeFaceList, affCompose,
      faceReflectionQ, reflM, reflD, normalQ, offsetQ, matSub, matId, affId,
      scalarMat, outer, dot, matMul, matVec, vecAdd, scalarMul] at hgood ⊢
```

Guarded build command:

```bash
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 12000 \
  --min-available-mib 4096 \
  --poll-seconds 0.5 \
  --json /tmp/cuboctahedron_ap16ax_mask_bool_guard.json \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 180s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSignatureMembershipGeneratedSmoke'
```

Result:

```text
status:                 failed
elapsed:                61.58s
peak process-tree RSS:  4.071 GiB
minimum available mem:  44.93 GiB
failure:                deterministic timeout at whnf, maxHeartbeats 1200000
guard kill:             no
```

After reverting the generated theorem, the same target built again:

```text
status:                 passed
elapsed:                2.50s
peak process-tree RSS:  3.953 GiB
minimum available mem:  45.13 GiB
```

Interpretation: this route is memory-safe but too expensive in Lean
heartbeats even for one singleton signature.  Production membership must not
unfold the full translation geometry over all masks.  The next route should use
a signature-local table, symbolic denominator-signature theorem, or other
small proof-carrying predicate that proves:

```lean
goodDirectionAtRankBool r mask = true -> GoodMaskMember signature mask
```

without replaying `totalAff`/`translationChoiceSeq` reduction in Lean.
