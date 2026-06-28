# Phase 6Z.6K.8AP.16BE: Bad-Mask Cover Core

Status: accepted.

AP16BE adds a small proof-valued bad-mask cover interface:

```lean
BadMaskCover
BadMaskCover.goodMaskMember_of_goodDirection
BadMaskCover.toMembershipPremise
```

The interface abstracts over the representation of bad-mask families.  A future
generated leaf can instantiate `BadFamily` with Boolean mask cubes,
denominator-cube Farkas certificates, or another symbolic language.  Once it
proves every family contradicts `GoodDirectionAtRank` and every non-positive
mask belongs to some family, the generic theorem produces the AP16AZ membership
premise:

```lean
GoodDirectionAtRank ⟨rank, hlt⟩ mask -> GoodMaskMember mask
```

Focused guarded build:

```text
python3 scripts/run_memory_guarded.py \
  --max-tree-rss-mib 12000 \
  --min-available-mib 4096 \
  --poll-seconds 0.5 \
  --json /tmp/cuboctahedron_ap16be_bad_mask_cover_guard.json \
  -- bash -lc 'export LEAN_NUM_THREADS=1; export LAKE_JOBS=1; timeout 180s lake build Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.BadMaskCover'
```

Result:

```text
passed
elapsed:                7.51s
peak process-tree RSS:  3.813 GiB
minimum available mem:  45.26 GiB
guard kill:             no
```

Decision: use `BadMaskCover` as the erased semantic interface for the next
mask-tree/Farkas-cube generated smoke.  Do not expose dozens of rank-local
denominator witnesses at the positive-survivor classifier layer.
