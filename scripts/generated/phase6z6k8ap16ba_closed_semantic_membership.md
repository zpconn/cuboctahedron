# Phase 6Z.6K.8AP.16BA: Closed Singleton Semantic Membership

Status: accepted as a bounded singleton proof, not accepted as the final
production emission strategy.

AP16BA closes the AP16AZ membership premise for the singleton survivor
signature at rank `100805`.  The generated file now proves:

```lean
generatedGoodMaskMember_of_GoodDirection :
  {mask : SignMask} ->
  (hlt : 100805 < numPairWords) ->
  GoodDirectionAtRank (⟨100805, hlt⟩ : Fin numPairWords) mask ->
  generatedGoodMaskMember mask

generatedSingletonSignatureClosedSemanticAllGoodCoverage :
  AllTranslationGoodCoverageOnRange 100805 100806
```

The proof uses the existing precomputed positive-mask source/row facts for the
eight positive masks and emits one exact nonpositive-denominator witness for
each of the 56 bad masks.

Focused guarded build:

```text
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 12000 \
  --min-available-mib 4096 \
  --poll-seconds 0.5 \
  --json /tmp/cuboctahedron_ap16ba_closed_semantic_membership_guard.json \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 360s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorPrecomputedSignatureSmoke'
```

Result:

```text
passed
elapsed:                59.14s
peak process-tree RSS:  7.924 GiB
minimum available mem:  39.04 GiB
guard kill:             no
generated Lean lines:   6303
```

Decision: the theorem shape is viable and memory-safe for a singleton, but the
per-bad-mask denominator-witness approach is too heavy to use as the global
production emitter.  The next production step should factor the 56 bad-mask
witnesses by denominator signature, mask tree, or another shared language so a
signature family exports one small semantic theorem instead of dozens of
rank-local denominator proofs.
