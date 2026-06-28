# Phase 6Z.6K.8AP.16AZ: Semantic Precomputed Signature Surface

Status: accepted semantic surface.

AP16AZ extends the AP16T precomputed positive-mask smoke with the AP16AY
semantic classifier.  The generated file still retains the old Boolean-premised
coverage theorem for regression, but now also exports:

```lean
generatedSingletonSignatureSemanticAllGoodCoverage :
  (forall {mask : SignMask} (hlt : 100805 < numPairWords),
    GoodDirectionAtRank ⟨100805, hlt⟩ mask ->
      generatedGoodMaskMember mask) ->
  AllTranslationGoodCoverageOnRange 100805 100806
```

This is the production-facing shape: generated membership can be proved from
domain-specific nonpositive-denominator witnesses instead of reducing
`goodDirectionAtRankBool`.

Focused guarded build:

```text
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 12000 \
  --min-available-mib 4096 \
  --poll-seconds 0.5 \
  --json /tmp/cuboctahedron_ap16az_semantic_precomputed_signature_guard.json \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 220s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorPrecomputedSignatureSmoke'
```

Result:

```text
passed
elapsed:                22.03s
peak process-tree RSS:  4.773 GiB
minimum available mem:  44.09 GiB
guard kill:             no
```

Decision: use this semantic precomputed signature surface as the next target.
The next step is to close the remaining membership premise for this singleton
signature with compact bad-mask witnesses, not with raw Boolean classifier
reduction.
