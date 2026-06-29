# Phase 6Z.6K.8AP.16DU.8 classifier membership route audit

This report is not proof evidence. It records the theorem route selected
after the AP16DU.7 Prop/Bool bridge.

- Status: `selected-prop-membership-route`
- Rank window: `[0, 5000)`
- Identity words: `487`
- Translation sign assignments: `31168`
- GoodDirection survivors: `4693`
- Not-GoodDirection masks avoided: `26475`
- Source-index/state families: `125`

## Lean Surface Scan

| Item | Value |
| --- | ---: |
| `classifier_applies_constructors` | `125` |
| `has_bool_bridge` | `True` |
| `has_prop_bridge` | `True` |
| `has_bool_of_prop` | `True` |

## Rejected Routes

| Route | Status | Estimated obligations | Reason |
| --- | --- | ---: | --- |
| `direct_bool_decide_on_range` | `rejected` | `31168` | Would ask Lean to reduce goodDirectionAtRankBool and classifierAppliesBool over every identity rank/mask in the bounded window. |
| `concrete_good_survivor_replay` | `rejected` | `4693` | Avoids bad-direction masks but still emits one membership branch for each concrete GoodDirection survivor. |
| `old_bounded_replay_current` | `rejected` | `35681` | Already rejected by DU.5 because it includes bad-direction and nonidentity branches. |

## Selected Route

- Name: `source_index_state_prop_membership`
- Status: `selected-next-implementation`
- Family obligations: `125`

DU.7 lets the next proof target Prop-level ClassifierApplies, so the generator can prove a semantic descriptor-language membership theorem and erase to Bool only at the boundary.

Required theorem:

```text
forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords), 0 <= rank -> rank < 5000 -> totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) = (matId : Mat3 Rat) -> goodDirectionAtRankBool ⟨rank, hlt⟩ mask = true -> ClassifierApplies rank mask
```

Preferred lemma shape:

```text
source-index/state language membership: identity-linear + GoodDirection implies one reusable descriptor family applies
```

## Notes

- DU.8 should prove Prop-level ClassifierApplies, not direct Bool membership.
- The proof still must be semantic; this audit does not prove coverage.
- The next Lean emitter should avoid rank-local survivor signatures and all-mask replay.
