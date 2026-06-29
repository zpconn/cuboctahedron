# Phase 6Z.6K.8AP.16DU.9DO: descriptor Boolean bridge

DU.9DO adds a descriptor-level Boolean GoodDirection bridge.  This is a
generator-facing target for shards that can prove membership from
`goodDirectionAtRankBool = true`, while the public theorem remains semantic by
using `goodDirectionAtRankBool_eq_true_of_goodDirection`.

New theorem/definition surfaces:

```lean
def SourceIndexStateDescriptorBoolCoverageOnRange (lo hi : Nat) : Prop

structure SourceIndexStateDescriptorBoolLanguageOnRange (lo hi : Nat)

def SourceIndexStateDescriptorBoolLanguageOnRange.to_goodLanguage
    {lo hi : Nat}
    (language : SourceIndexStateDescriptorBoolLanguageOnRange lo hi) :
    SourceIndexStateDescriptorGoodLanguageOnRange lo hi

theorem SourceIndexStateDescriptorBoolCoverageOnRange.to_goodCoverage
    {lo hi : Nat}
    (coverage : SourceIndexStateDescriptorBoolCoverageOnRange lo hi) :
    SourceIndexStateDescriptorGoodCoverageOnRange lo hi

theorem SourceIndexStateDescriptorBoolLanguageOnRange.to_factsBridge
    {lo hi : Nat}
    (language : SourceIndexStateDescriptorBoolLanguageOnRange lo hi) :
    SourceRowFactsGoodBridgeOnRange lo hi

theorem SourceIndexStateDescriptorBoolCoverageOnRange.to_factsBridge
    {lo hi : Nat}
    (coverage : SourceIndexStateDescriptorBoolCoverageOnRange lo hi) :
    SourceRowFactsGoodBridgeOnRange lo hi
```

Focused guarded build:

```bash
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 8192 \
  --min-available-mib 16384 \
  --poll-seconds 0.5 \
  --json scripts/generated/phase6z6k8ap16du9do_descriptor_bool_bridge_guard.json \
  -- lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateDescriptorLanguage
```

Result:

- Exit: `0`
- Elapsed: `6.51s`
- Peak tree RSS: `3962.82 MiB`
- Minimum available memory observed: `46152.95 MiB`

Decision: accepted.  This does not authorize reducing large Boolean
GoodDirection checks in Lean; it only gives generated evidence a smaller
descriptor-level theorem target when a Boolean membership proof has already
been decomposed into safe family facts.
