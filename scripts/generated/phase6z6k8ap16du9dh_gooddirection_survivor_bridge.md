# Phase 6Z.6K.8AP.16DU.9DH GoodDirection Survivor Bridge Audit

This diagnostic emits no Lean and is not trusted as proof evidence.

- Status: `implement-source-index-state-bridge-smoke`
- Window: `[0, 3)`
- Identity ranks: `[0, 2]`
- Nonidentity ranks: `[1]`
- GoodDirection survivors: `29`
- Bad-direction masks: `99`
- Source-index/state families: `7`
- Largest family size: `10`

## Prior Signals

- `denominator_signature_status`: `denominator-signatures-still-mostly-rank-local`
- `nonenum_chosen_candidate`: `source_index_state`
- `descriptor_membership_status`: `accepted-next-lean-smoke`
- `du9db_route_status`: `blocked-on-semantic-membership-theorem`
- `du9dc_contract_status`: `contract-present-generator-obligation-open`

## Route Decisions

| Route | Status | Reason |
| --- | --- | --- |
| `local_bad_mask_denominator_contradictions` | `reject` | DU.9DE showed this can prove a tiny complete hclass, but it spent substantial memory on concrete non-GoodDirection masks. DU.9DG deliberately avoided this path. |
| `rank_local_boolean_membership` | `reject` | DU.9DB Boolean smoke got stuck on goodDirectionAtRankBool comparisons even for singleton membership; this is not the production bridge. |
| `completed_rank_denominator_signature_grouping` | `reject` | 16BC denominator-signature status is 'denominator-signatures-still-mostly-rank-local'; completed-rank denominator signatures are not compressing enough for a global bridge. |
| `source_index_state_semantic_bridge` | `next` | 8G selected source_index_state as stable, fact-free, and member-list-free; DU.9DC confirms the semantic coverage contract is already present. |
| `symbolic_walsh_or_state_language_bridge` | `fallback` | 16BI shows denominator signs can be degree-2 Walsh forms, so if source_index_state still cannot prove membership directly, the fallback should be a symbolic Walsh/state-language theorem rather than affine mask cubes. |

## Accepted Next Theorem Shape

```lean
forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
  0 <= rank ->
  rank < 3 ->
    totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
        (matId : Mat3 Rat) ->
      GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
        exists key : SourceIndexStateKey,
          SourceIndexStateSourceFacts key rank mask /\
          SourceIndexStateRowFacts key rank mask
```

## Decision Notes

- Keep DU.9DG descriptor-side theorem shape.
- Do not scale local bad-mask denominator contradictions.
- Do not use rank-local Boolean GoodDirection membership.
- The next Lean smoke should prove source/row facts for one broad source-index/state family from GoodDirection premises, or prove that an additional symbolic state predicate is required.
