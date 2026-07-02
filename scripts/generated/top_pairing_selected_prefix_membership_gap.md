# Top-Pairing Selected-Prefix Membership Gap

This audit is diagnostic status evidence, not proof.  It records that
the selected-prefix prefix/shared-gain Bellman evaluator path is
Lean-checked, then isolates the remaining production membership theorem.

- decision: `selected-prefix-cover-accepted-residual-interval-gap-remains`
- accepted traces in diagnostic cover: `37`
- prefix buckets: `31`
- singleton buckets: `26`
- largest bucket: `3`

## Guarded Lean Checks

| target | exit | elapsed | max RSS | hard AS |
| --- | ---: | ---: | ---: | ---: |
| `shared_gain_prefix_bucket_smoke` | `0` | `10.01s` | `3644 MiB` | `12288 MiB` |
| `selected_prefix_trace_margin_object_cover` | `0` | `2.00s` | `3600 MiB` | `12288 MiB` |
| `selected_prefix_trace_margin_killed_socket` | `0` | `2.00s` | `3602 MiB` | `12288 MiB` |
| `selected_prefix_cover_membership_bridge` | `0` | `13.02s` | `3931 MiB` | `8192 MiB` |
| `selected_prefix_cover_root_producer_bridge` | `0` | `2.00s` | `3685 MiB` | `8192 MiB` |

## Current Lean Surfaces

| surface | lines | forbidden sampled tokens | key surface tokens |
| --- | ---: | --- | --- |
| `shared_gain_prefix_bucket_smoke` | `98` | `none` | `TerminalTracePrefixSharedGainClosedMarginFamily, TopPairingBellmanEvalLanguageAtRank` |
| `trace_margin_bounds_socket` | `936` | `none` | `TerminalTracePrefixSharedGainClosedMarginFamily, TopPairingBellmanEvalLanguageAtRank` |
| `selected_prefix_trace_margin_adapter` | `559` | `none` | `TerminalTracePrefixSharedGainClosedMarginFamily, SelectedPrefixTraceMarginFamily, SelectedPrefixCoverFamily, TopPairingBellmanEvalLanguageAtRank` |
| `selected_prefix_cover_root` | `66` | `none` | `SelectedPrefixCoverFamily, TopPairingBellmanEvalLanguageAtRank` |
| `selected_prefix_object_cover` | `176` | `none` | `BellmanAxisRankObjectCover` |
| `selected_prefix_killed_socket` | `65` | `none` | `Coverage.NonIdentityRankKilled` |
| `selected_prefix_terminal_direct_bridge` | `163` | `none` | `TerminalTracePrefixSharedGainClosedMarginFamily, SelectedPrefixTraceMarginFamily, SelectedPrefixCoverFamily, Coverage.NonIdentityRankKilled, TerminalDirectClosedFamily` |
| `selected_prefix_residual_bridge` | `89` | `none` | `SelectedPrefixCoverFamily, SelectedPrefixResidualRankCovered, KilledResidualBridge, TerminalDirectClosedFamily` |

## Remaining Production Theorem

The selected-prefix evaluator/killed path is not the remaining blocker.
The current residual bridge has already made the production theorem
concrete.  The remaining generated coverage target is:

```lean
CoversInterval
  (SelectedPrefixResidualRankCovered scaledMargin)
  0 numPairWords
```

Equivalently, the generated semantic residual classifier must prove:

```lean
forall r (hlt : r < numPairWords),
  nonIdEarlyFamilyClassOfRank ⟨r, hlt⟩ =
      NonIdFamilyClass.residual ->
  totalLinearOfPairWord (unrankPairWord ⟨r, hlt⟩) ≠
      (matId : Mat3 Rat) ->
    SelectedPrefixCoverFamily scaledMargin ⟨r, hlt⟩
```

This exact theorem feeds:

```lean
killedResidualBridge_of_selectedPrefixInterval
residualRankKilled_of_selectedPrefixResidualRankCovered
```

The preferred direct semantic consumer remains:

```lean
SelectedPrefixCoverFamily scaledMargin rank ->
  TerminalDirectClosedFamily rank ->
    Coverage.NonIdentityRankKilled rank
```

The proof must stay semantic.  It must not use sampled ranks, sampled
paths, exact affine-RHS keys, broad generated root imports, or one
branch per concrete rank.

