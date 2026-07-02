# Top-Pairing Upstream Predicate Selector

This audit is diagnostic status evidence, not proof.  It replaces the
schematic next-target name `FullTopPairingResidualLanguageAtRank` with
the concrete predicate chain currently available in the repo.

- decision: `target-selected-prefix-cover-family`
- sampled-token hits in selected surfaces: `0`

## Selected Predicate Chain

The current bounded upstream predicate is:

```lean
RootTraceMarginProducer scaledMargin rank
```

which bridges to:

```lean
TopPairingStrengthenedClosedLanguageAtRank
  (SelectedPrefixCoverSequenceBadFace scaledMargin) rank Face.ym
TopPairingBellmanEvalLanguageAtRank ... scaledMargin rank Face.ym
scaledMargin rank <= 0
```

It can now be produced from:

```lean
TerminalTraceIdBucketClosedMarginFamily allowedTraceId scaledMargin rank
TerminalTraceIdSharedGainBucketClosedMarginFamily allowedTraceId gain scaledMargin rank
TerminalTracePrefixSharedGainClosedMarginFamily pfx gain scaledMargin rank
```

and the generated selected-prefix trace-margin family now feeds it:

```lean
SelectedPrefixTraceMarginFamily scaledMargin rank
  -> RootTraceMarginProducer scaledMargin rank
SelectedPrefixCoverFamily scaledMargin rank
  -> RootTraceMarginProducer scaledMargin rank
```

The selected-prefix cover itself is:

```lean
SelectedPrefixCoverFamily scaledMargin rank
```

It already has bridges to:

```lean
SelectedPrefixTraceMarginFamily scaledMargin rank
SelectedPrefixTraceMarginSequenceBadFace scaledMargin rank Face.ym
TopPairingStrengthenedClosedLanguageAtRank
  (SelectedPrefixCoverSequenceBadFace scaledMargin) rank Face.ym
TopPairingBellmanEvalLanguageAtRank ... scaledMargin rank Face.ym
scaledMargin rank <= 0
```

The next production theorem should therefore be stated against the
actual upstream residual classifier once selected, with this shape:

```lean
forall rank,
  ProductionTopPairingResidualAtRank rank ->
    RootTraceMarginProducer scaledMargin rank
```

If the production residual classifier already carries closed-language
and actual-omni fields, the stronger socket target is:

```lean
forall rank,
  ProductionTopPairingResidualAtRank rank ->
    TopPairingStrengthenedClosedLanguageAtRank
      (SelectedPrefixCoverSequenceBadFace scaledMargin)
      rank Face.ym
```

A direct theorem into `SelectedPrefixCoverFamily scaledMargin rank` is
also acceptable, but the root trace-margin producer is now the preferred
upstream socket because it carries accepted-prefix membership and the
per-trace margin inequality in one compact semantic predicate.

The theorem must remain semantic.  It should not introduce a sampled
rank/path object or one branch per concrete rank.

## Symbol Locations

| symbol | role | files |
| --- | --- | --- |
| `SelectedPrefixCoverFamily` | bounded selected-prefix state-DAG cover | `selected_prefix_cover_root`, `selected_prefix_cover_socket`, `selected_prefix_trace_margin_cover_bridge`, `selected_prefix_cover_membership_bridge`, `selected_prefix_cover_root_producer_bridge`, `terminal_direct_bridge` |
| `selectedPrefixCover_evalLanguage` | cover -> Bellman eval language | `selected_prefix_cover_root`, `selected_prefix_cover_socket` |
| `selectedPrefixCover_scaledMargin_nonpos` | cover -> nonpositive margin | `selected_prefix_cover_root`, `selected_prefix_cover_socket` |
| `SelectedPrefixCoverSequenceBadFace` | strengthened-language payload for cover | `selected_prefix_cover_socket`, `selected_prefix_trace_margin_cover_bridge`, `selected_prefix_cover_membership_bridge`, `root_trace_margin_selected_prefix_bridge` |
| `evalLanguage_of_strengthenedSelectedPrefixCover` | strengthened cover -> eval language | `selected_prefix_cover_socket`, `selected_prefix_cover_membership_bridge`, `root_trace_margin_selected_prefix_bridge` |
| `strengthenedSelectedPrefixCover_scaledMargin_nonpos` | strengthened cover -> nonpositive margin | `selected_prefix_cover_socket`, `selected_prefix_cover_membership_bridge`, `root_trace_margin_selected_prefix_bridge` |
| `selectedPrefixTraceMarginFamily_of_selectedPrefixCoverFamily` | cover -> trace-margin family | `selected_prefix_trace_margin_cover_bridge`, `selected_prefix_cover_root_producer_bridge`, `terminal_direct_bridge` |
| `selectedPrefixTraceMarginSequenceBadFace_of_selectedPrefixCoverFamily` | cover -> trace-margin payload | `selected_prefix_trace_margin_cover_bridge` |
| `strengthenedTraceMargin_of_strengthenedSelectedPrefixCover` | strengthened cover -> strengthened trace-margin | `selected_prefix_trace_margin_cover_bridge` |
| `strengthenedSelectedPrefixCover_of_terminalAcceptedEval` | terminal-accepted eval -> strengthened selected-prefix cover | `selected_prefix_cover_membership_bridge`, `root_trace_margin_selected_prefix_bridge` |
| `RootTraceMarginProducer` | root accepted-prefix producer plus trace margin | `root_trace_margin_selected_prefix_bridge`, `trace_margin_root_producer_bridge`, `selected_prefix_trace_margin_root_producer_bridge`, `selected_prefix_cover_root_producer_bridge` |
| `graphAcceptedTraceMargin_exists_of_rootTraceMarginProducer` | root trace-margin producer -> graph margin object | `root_trace_margin_selected_prefix_bridge` |
| `terminalAcceptedEvalSequenceBadFace_of_rootTraceMarginProducer` | root trace-margin producer -> terminal-accepted eval payload | `root_trace_margin_selected_prefix_bridge` |
| `strengthenedTerminalAcceptedEval_of_rootTraceMarginProducer` | root trace-margin producer -> strengthened terminal-accepted eval | `root_trace_margin_selected_prefix_bridge` |
| `strengthenedSelectedPrefixCover_of_rootTraceMarginProducer` | root trace-margin producer -> strengthened selected-prefix cover | `root_trace_margin_selected_prefix_bridge` |
| `selectedPrefixCover_evalLanguage_of_rootTraceMarginProducer` | root trace-margin producer -> Bellman eval language | `root_trace_margin_selected_prefix_bridge` |
| `selectedPrefixCover_scaledMargin_nonpos_of_rootTraceMarginProducer` | root trace-margin producer -> nonpositive margin | `root_trace_margin_selected_prefix_bridge` |
| `terminalProducerRootFamily_of_terminalTraceIdBucketClosedMarginFamily` | trace-id bucket -> accepted-prefix root | `trace_margin_root_producer_bridge` |
| `rootTraceMarginProducer_of_terminalTraceIdBucketClosedMarginFamily` | trace-id bucket -> root trace-margin producer | `trace_margin_root_producer_bridge` |
| `rootTraceMarginProducer_of_terminalTraceIdSharedGainBucketClosedMarginFamily` | shared-gain bucket -> root trace-margin producer | `trace_margin_root_producer_bridge` |
| `rootTraceMarginProducer_of_terminalTracePrefixSharedGainClosedMarginFamily` | prefix shared-gain family -> root trace-margin producer | `trace_margin_root_producer_bridge`, `selected_prefix_trace_margin_root_producer_bridge` |
| `SelectedPrefixTraceMarginFamily` | selected prefix trace-margin OR-family | `selected_prefix_trace_margin_cover_bridge`, `selected_prefix_trace_margin_root_producer_bridge`, `selected_prefix_trace_margin_socket`, `terminal_direct_bridge` |
| `rootTraceMarginProducer_of_selectedPrefixTraceMarginFamily` | selected prefix trace-margin family -> root trace-margin producer | `selected_prefix_trace_margin_root_producer_bridge`, `selected_prefix_cover_root_producer_bridge` |
| `rootTraceMarginProducer_of_selectedPrefixCoverFamily` | selected-prefix cover -> root trace-margin producer | `selected_prefix_cover_root_producer_bridge` |
| `selectedPrefixTraceMargin_nonIdentityRankKilled_of_startViolation` | trace-margin object cover + certs -> killed predicate | `selected_prefix_killed_socket` |
| `TerminalDirectClosedFamily` | terminal direct semantic alternative | `terminal_direct_bridge` |

## Selected Files

| file | lines | sampled-token hits | key symbols |
| --- | ---: | ---: | --- |
| `selected_prefix_cover_root` | `66` | `0` | `SelectedPrefixCoverFamily`, `selectedPrefixCover_evalLanguage`, `selectedPrefixCover_scaledMargin_nonpos` |
| `selected_prefix_cover_socket` | `50` | `0` | `SelectedPrefixCoverFamily`, `SelectedPrefixCoverSequenceBadFace`, `evalLanguage_of_strengthenedSelectedPrefixCover`, `selectedPrefixCover_evalLanguage`, `selectedPrefixCover_scaledMargin_nonpos`, `strengthenedSelectedPrefixCover_scaledMargin_nonpos` |
| `selected_prefix_trace_margin_cover_bridge` | `417` | `0` | `SelectedPrefixCoverFamily`, `SelectedPrefixCoverSequenceBadFace`, `SelectedPrefixTraceMarginFamily`, `selectedPrefixTraceMarginFamily_of_selectedPrefixCoverFamily`, `selectedPrefixTraceMarginSequenceBadFace_of_selectedPrefixCoverFamily`, `strengthenedTraceMargin_of_strengthenedSelectedPrefixCover` |
| `selected_prefix_cover_membership_bridge` | `279` | `0` | `SelectedPrefixCoverFamily`, `SelectedPrefixCoverSequenceBadFace`, `evalLanguage_of_strengthenedSelectedPrefixCover`, `strengthenedSelectedPrefixCover_of_terminalAcceptedEval`, `strengthenedSelectedPrefixCover_scaledMargin_nonpos` |
| `root_trace_margin_selected_prefix_bridge` | `123` | `0` | `RootTraceMarginProducer`, `SelectedPrefixCoverSequenceBadFace`, `evalLanguage_of_strengthenedSelectedPrefixCover`, `graphAcceptedTraceMargin_exists_of_rootTraceMarginProducer`, `selectedPrefixCover_evalLanguage_of_rootTraceMarginProducer`, `selectedPrefixCover_scaledMargin_nonpos_of_rootTraceMarginProducer`, `strengthenedSelectedPrefixCover_of_rootTraceMarginProducer`, `strengthenedSelectedPrefixCover_of_terminalAcceptedEval`, `strengthenedSelectedPrefixCover_scaledMargin_nonpos`, `strengthenedTerminalAcceptedEval_of_rootTraceMarginProducer`, `terminalAcceptedEvalSequenceBadFace_of_rootTraceMarginProducer` |
| `trace_margin_root_producer_bridge` | `129` | `0` | `RootTraceMarginProducer`, `rootTraceMarginProducer_of_terminalTraceIdBucketClosedMarginFamily`, `rootTraceMarginProducer_of_terminalTraceIdSharedGainBucketClosedMarginFamily`, `rootTraceMarginProducer_of_terminalTracePrefixSharedGainClosedMarginFamily`, `terminalProducerRootFamily_of_terminalTraceIdBucketClosedMarginFamily` |
| `selected_prefix_trace_margin_root_producer_bridge` | `652` | `0` | `RootTraceMarginProducer`, `SelectedPrefixTraceMarginFamily`, `rootTraceMarginProducer_of_selectedPrefixTraceMarginFamily`, `rootTraceMarginProducer_of_terminalTracePrefixSharedGainClosedMarginFamily` |
| `selected_prefix_cover_root_producer_bridge` | `31` | `0` | `RootTraceMarginProducer`, `SelectedPrefixCoverFamily`, `rootTraceMarginProducer_of_selectedPrefixCoverFamily`, `rootTraceMarginProducer_of_selectedPrefixTraceMarginFamily`, `selectedPrefixTraceMarginFamily_of_selectedPrefixCoverFamily` |
| `selected_prefix_trace_margin_socket` | `57` | `0` | `SelectedPrefixTraceMarginFamily` |
| `selected_prefix_killed_socket` | `65` | `0` | `selectedPrefixTraceMargin_nonIdentityRankKilled_of_startViolation` |
| `terminal_direct_bridge` | `163` | `0` | `SelectedPrefixCoverFamily`, `SelectedPrefixTraceMarginFamily`, `TerminalDirectClosedFamily`, `selectedPrefixTraceMarginFamily_of_selectedPrefixCoverFamily` |

## Strategy Implication

Do not build another Bellman potential or sampled smoke next.  The
next useful Lean/generator work is a semantic producer theorem into
`RootTraceMarginProducer`, or a proof that this cover is too narrow
and must be replaced by the direct `TerminalTracePrefixSharedGain`
family surface.

