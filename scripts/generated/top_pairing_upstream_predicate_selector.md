# Top-Pairing Upstream Predicate Selector

This audit is diagnostic status evidence, not proof.  It replaces the
schematic next-target name `FullTopPairingResidualLanguageAtRank` with
the concrete predicate chain currently available in the repo.

- decision: `target-selected-prefix-cover-family`
- sampled-token hits in selected surfaces: `0`

## Selected Predicate Chain

The current bounded upstream predicate is:

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
    SelectedPrefixCoverFamily scaledMargin rank
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

The theorem must remain semantic.  It should not introduce a sampled
rank/path object or one branch per concrete rank.

## Symbol Locations

| symbol | role | files |
| --- | --- | --- |
| `SelectedPrefixCoverFamily` | bounded selected-prefix state-DAG cover | `selected_prefix_cover_root`, `selected_prefix_cover_socket`, `selected_prefix_trace_margin_cover_bridge`, `selected_prefix_cover_membership_bridge`, `terminal_direct_bridge` |
| `selectedPrefixCover_evalLanguage` | cover -> Bellman eval language | `selected_prefix_cover_root`, `selected_prefix_cover_socket` |
| `selectedPrefixCover_scaledMargin_nonpos` | cover -> nonpositive margin | `selected_prefix_cover_root`, `selected_prefix_cover_socket` |
| `SelectedPrefixCoverSequenceBadFace` | strengthened-language payload for cover | `selected_prefix_cover_socket`, `selected_prefix_trace_margin_cover_bridge`, `selected_prefix_cover_membership_bridge` |
| `evalLanguage_of_strengthenedSelectedPrefixCover` | strengthened cover -> eval language | `selected_prefix_cover_socket`, `selected_prefix_cover_membership_bridge` |
| `strengthenedSelectedPrefixCover_scaledMargin_nonpos` | strengthened cover -> nonpositive margin | `selected_prefix_cover_socket`, `selected_prefix_cover_membership_bridge` |
| `selectedPrefixTraceMarginFamily_of_selectedPrefixCoverFamily` | cover -> trace-margin family | `selected_prefix_trace_margin_cover_bridge`, `terminal_direct_bridge` |
| `selectedPrefixTraceMarginSequenceBadFace_of_selectedPrefixCoverFamily` | cover -> trace-margin payload | `selected_prefix_trace_margin_cover_bridge` |
| `strengthenedTraceMargin_of_strengthenedSelectedPrefixCover` | strengthened cover -> strengthened trace-margin | `selected_prefix_trace_margin_cover_bridge` |
| `strengthenedSelectedPrefixCover_of_terminalAcceptedEval` | terminal-accepted eval -> strengthened selected-prefix cover | `selected_prefix_cover_membership_bridge` |
| `selectedPrefixTraceMargin_nonIdentityRankKilled_of_startViolation` | trace-margin object cover + certs -> killed predicate | `selected_prefix_killed_socket` |
| `TerminalDirectClosedFamily` | terminal direct semantic alternative | `terminal_direct_bridge` |

## Selected Files

| file | lines | sampled-token hits | key symbols |
| --- | ---: | ---: | --- |
| `selected_prefix_cover_root` | `66` | `0` | `SelectedPrefixCoverFamily`, `selectedPrefixCover_evalLanguage`, `selectedPrefixCover_scaledMargin_nonpos` |
| `selected_prefix_cover_socket` | `50` | `0` | `SelectedPrefixCoverFamily`, `SelectedPrefixCoverSequenceBadFace`, `evalLanguage_of_strengthenedSelectedPrefixCover`, `selectedPrefixCover_evalLanguage`, `selectedPrefixCover_scaledMargin_nonpos`, `strengthenedSelectedPrefixCover_scaledMargin_nonpos` |
| `selected_prefix_trace_margin_cover_bridge` | `417` | `0` | `SelectedPrefixCoverFamily`, `SelectedPrefixCoverSequenceBadFace`, `selectedPrefixTraceMarginFamily_of_selectedPrefixCoverFamily`, `selectedPrefixTraceMarginSequenceBadFace_of_selectedPrefixCoverFamily`, `strengthenedTraceMargin_of_strengthenedSelectedPrefixCover` |
| `selected_prefix_cover_membership_bridge` | `279` | `0` | `SelectedPrefixCoverFamily`, `SelectedPrefixCoverSequenceBadFace`, `evalLanguage_of_strengthenedSelectedPrefixCover`, `strengthenedSelectedPrefixCover_of_terminalAcceptedEval`, `strengthenedSelectedPrefixCover_scaledMargin_nonpos` |
| `selected_prefix_trace_margin_socket` | `57` | `0` | none |
| `selected_prefix_killed_socket` | `65` | `0` | `selectedPrefixTraceMargin_nonIdentityRankKilled_of_startViolation` |
| `terminal_direct_bridge` | `163` | `0` | `SelectedPrefixCoverFamily`, `TerminalDirectClosedFamily`, `selectedPrefixTraceMarginFamily_of_selectedPrefixCoverFamily` |

## Strategy Implication

Do not build another Bellman potential or sampled smoke next.  The
next useful Lean/generator work is a semantic producer theorem into
`SelectedPrefixCoverFamily`, or a proof that this cover is too narrow
and must be replaced by the direct `TerminalTracePrefixSharedGain`
family surface.

