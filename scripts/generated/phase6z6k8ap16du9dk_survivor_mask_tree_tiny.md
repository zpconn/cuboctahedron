# Phase 6Z.6K.8AP.16DU.9DK Survivor Mask-Tree Tiny Profile

This is a dry-run diagnostic only. It is not proof evidence.

Command:

```bash
python3 scripts/profile_symmetry_compression.py \
  --dry-run \
  --translation-survivor-mask-tree \
  --limit 3 \
  --max-lean-leaves 2000 \
  --warn-lean-leaves 1000 \
  --max-distinct-tracked 10000 \
  --sample-limit 20 \
  --progress-interval 0
```

Output JSON:

- `scripts/generated/phase6z6k8ap16du9dk_survivor_mask_tree_tiny.json`

Summary:

- Pair words scanned: `3`
- Identity-linear words: `2`
- Nonidentity words skipped: `1`
- Translation sign assignments: `128`
- GoodDirection survivor masks: `29`
- Denominator-nonpositive masks: `99`
- Bad-direction generated evidence: `0`
- Unique denominator signatures: `2`
- Unique survivor shape maps: `2`
- Total mask-tree leaves: `29`
- Bad-cube leaves: `0`
- Farkas leaves: `29`
- Unique structural tree shapes: `2`
- Unique signature-tree obligations: `2`
- Unique signature-leaf obligations: `29`
- Planned heavy Lean leaves: `29`

Decision:

The tiny survivor mask-tree profile is memory-safe and consistent with the
DU.9DG window, but it does not compress the missing GoodDirection membership
bridge. On `[0,3)`, every GoodDirection survivor remains its own Farkas leaf.

Do not make the next proof-producing step a survivor mask-tree emitter. The
next useful proof target remains a semantic bridge of the form:

```lean
SourceRowFactsGoodBridgeOnRange lo hi
```

or an equivalent direct theorem deriving source-index/source-row facts from
identity-linear `GoodDirectionAtRank`, without routing through per-survivor
Farkas leaves or bad-direction mask witnesses.
