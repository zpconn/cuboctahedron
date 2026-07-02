# Top-Pairing Selected-Prefix Membership Gap

This audit is diagnostic status evidence, not proof.  It records that
the selected-prefix prefix/shared-gain Bellman evaluator path is
Lean-checked, then isolates the remaining production membership theorem.

- decision: `selected-prefix-evaluator-path-accepted-membership-gap-remains`
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

## Current Lean Surfaces

| surface | lines | forbidden sampled tokens | key surface tokens |
| --- | ---: | --- | --- |
| `shared_gain_prefix_bucket_smoke` | `98` | `none` | `TerminalTracePrefixSharedGainClosedMarginFamily, TopPairingBellmanEvalLanguageAtRank` |
| `trace_margin_bounds_socket` | `936` | `none` | `TerminalTracePrefixSharedGainClosedMarginFamily, TopPairingBellmanEvalLanguageAtRank` |
| `selected_prefix_trace_margin_adapter` | `559` | `none` | `TerminalTracePrefixSharedGainClosedMarginFamily, SelectedPrefixTraceMarginFamily, TopPairingBellmanEvalLanguageAtRank` |
| `selected_prefix_cover_root` | `66` | `none` | `TopPairingBellmanEvalLanguageAtRank` |
| `selected_prefix_object_cover` | `176` | `none` | `BellmanAxisRankObjectCover` |
| `selected_prefix_killed_socket` | `65` | `none` | `Coverage.NonIdentityRankKilled` |

## Remaining Production Theorem

The selected-prefix evaluator/killed path is not the remaining blocker.
The remaining blocker is semantic membership into the selected-prefix
trace-margin families for the full intended top-pairing residual
language:

```lean
forall rank,
  FullTopPairingResidualLanguageAtRank rank ->
    SelectedPrefixTraceMarginFamily scaledMargin rank
```

or, if the selected-prefix cover is too narrow:

```lean
forall rank,
  FullTopPairingResidualLanguageAtRank rank ->
    exists pfx gain,
      TerminalTracePrefixSharedGainClosedMarginFamily
        pfx gain scaledMargin rank
```

The upstream `FullTopPairingResidualLanguageAtRank` name is schematic:
the actual theorem should use the existing residual classifier
predicate once it is selected.  The proof must be semantic and must
not use sampled ranks, sampled paths, exact affine-RHS keys, or one
branch per concrete rank.

