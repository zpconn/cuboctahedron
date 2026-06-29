# Phase 6Z.6K.8AP.16DU.9DP: GoodDirection Boolean equivalence

DU.9DP proves the missing finite converse for the GoodDirection Boolean
surface:

```lean
theorem goodDirection_of_goodDirectionAtRankBool_eq_true
    {r : Fin numPairWords} {mask : SignMask}
    (h : goodDirectionAtRankBool r mask = true) :
    GoodDirectionAtRank r mask
```

Together with the existing
`goodDirectionAtRankBool_eq_true_of_goodDirection`, this gives exact
equivalence between the semantic and Boolean GoodDirection surfaces.  The proof
is a finite case split over the 13 internal impacts; it does not reduce any
rank-specific denominator computations.

DU.9DP also adds descriptor coverage adapters in the reverse direction:

```lean
def SourceIndexStateDescriptorGoodLanguageOnRange.to_boolLanguage
    {lo hi : Nat}
    (language : SourceIndexStateDescriptorGoodLanguageOnRange lo hi) :
    SourceIndexStateDescriptorBoolLanguageOnRange lo hi

theorem SourceIndexStateDescriptorGoodCoverageOnRange.to_boolCoverage
    {lo hi : Nat}
    (coverage : SourceIndexStateDescriptorGoodCoverageOnRange lo hi) :
    SourceIndexStateDescriptorBoolCoverageOnRange lo hi
```

Focused guarded build:

```bash
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 8192 \
  --min-available-mib 16384 \
  --poll-seconds 0.5 \
  --json scripts/generated/phase6z6k8ap16du9dp_gooddirection_bool_equiv_guard.json \
  -- lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorLanguage
```

Result:

- Exit: `0`
- Elapsed: `34.07s`
- Peak tree RSS: `7011.87 MiB`
- Minimum available memory observed: `45687.01 MiB`

Decision: accepted under the 8 GiB guard.  This checkpoint lets future
generated descriptor chunks choose either the semantic `GoodDirectionAtRank`
premise or the Boolean `goodDirectionAtRankBool = true` premise without
changing the final public theorem surface.
