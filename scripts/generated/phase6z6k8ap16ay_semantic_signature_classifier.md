# Phase 6Z.6K.8AP.16AY Semantic Signature Classifier

AP16AX showed that directly reducing `goodDirectionAtRankBool` for all masks is
too expensive even for a singleton signature.  AP16AY adds the alternative
production surface: a semantic signature classifier whose membership premise is
`GoodDirectionAtRank`, not the Boolean classifier.

New API in
`Cuboctahedron/Generated/Translation/TwoSource/SupportFamilies/PositiveSurvivorClassifier.lean`:

```text
PositiveSurvivorSignatureClassifierOnRange
PositiveSurvivorSignatureClassifierOnRange.to_classifier
PositiveSurvivorSignatureClassifierOnRange.to_allGoodCoverage
PositiveSurvivorSignatureClassifierOnRange.to_coverage
PositiveSurvivorSignatureClassifierOnRange.to_killedBridge_of_fullRange
PositiveSurvivorSignatureClassifierOnRange.of_singleAnchorSignatureMultiFactSplit
```

The AP16L generator now also emits:

```text
generatedSingletonSignatureSemanticSourcePositionCoverage
generatedSingletonSignatureSemanticAllGoodCoverage
```

These theorems are still parameterized by the signature-local semantic
membership and facts premises, but the membership premise now has the shape:

```lean
GoodDirectionAtRank ⟨anchor, hlt⟩ mask -> generatedGoodMaskMember mask
```

instead of:

```lean
goodDirectionAtRankBool ⟨anchor, hlt⟩ mask = true -> generatedGoodMaskMember mask
```

Focused guarded builds:

```bash
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 12000 \
  --min-available-mib 4096 \
  --poll-seconds 0.5 \
  --json /tmp/cuboctahedron_ap16ay_semantic_signature_guard.json \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 180s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier'
```

```text
status:                 passed
elapsed:                4.00s
peak process-tree RSS:  3.942 GiB
minimum available mem:  45.15 GiB
```

```bash
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 12000 \
  --min-available-mib 4096 \
  --poll-seconds 0.5 \
  --json /tmp/cuboctahedron_ap16ay_semantic_signature_smoke_guard.json \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 180s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorSignatureMembershipGeneratedSmoke'
```

```text
status:                 passed
elapsed:                3.50s
peak process-tree RSS:  3.940 GiB
minimum available mem:  45.15 GiB
```

Decision: use the semantic signature classifier as the next production target.
Generated membership can now use one nonpositive-denominator contradiction for
each bad mask, plus source/row facts for positive masks, without unfolding the
full Boolean GoodDirection computation in Lean.
