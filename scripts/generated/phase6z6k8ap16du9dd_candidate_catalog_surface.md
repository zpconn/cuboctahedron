# Phase 6Z.6K.8AP.16DU.9DD Candidate Catalog Surface Build

This focused build verifies that the existing generated candidate-catalog
surface already exposes and checks the semantic `GoodDirectionAtRank` erasure
path:

```lean
generatedCandidateCatalogAllGoodCoverage_viaRowProperty_semantic
```

The module still assumes the catalog-completeness premise.  This is not final
coverage evidence; it verifies that the Lean bridge/catalog layer is not the
current bottleneck.

## Command

```bash
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 8192 \
  --min-available-mib 16384 \
  --poll-seconds 0.5 \
  --json scripts/generated/phase6z6k8ap16du9dd_candidate_catalog_surface_guard.json \
  -- lake build \
     Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorCandidateCatalogSurfaceSmoke
```

## Result

```text
exit_code:          0
killed_reason:      null
elapsed_seconds:    4.014860051014461
max_tree_rss_mib:   822.4765625
min_available_mib:  46487.1953125
```

## Decision

Accepted as a bridge-layer sanity check.  The semantic catalog surface is
memory-safe and already present.  The next proof-producing work should not
add more erasure adapters; it should generate the missing semantic
catalog-completeness theorem:

```lean
forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
  lo <= rank ->
    rank < hi ->
      totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) = (matId : Mat3 Rat) ->
        GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
          exists candidate : GeneratedCandidate,
            generatedMember candidate rank mask
```

