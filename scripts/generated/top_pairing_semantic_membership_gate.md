# Top-Pairing Semantic Membership Gate

This audit is diagnostic status evidence, not proof.  It records the
next Bellman experiment recommended by the GPT5.5 review: keep the
Bellman route for one more semantic-membership slice, but reject it as
a final architecture if that slice falls back to sampled rank/path
membership.

- decision: `continue-bellman-for-one-semantic-membership-slice`
- sampled membership hits in selected surfaces: `0`

## Concrete Gate

The next production theorem should target the selected-prefix
strengthened-language socket, not a sampled object table:

```lean
forall rank,
  FullTopPairingResidualLanguageAtRank rank ->
    TopPairingStrengthenedClosedLanguageAtRank
      (SelectedPrefixTraceMarginSequenceBadFace scaledMargin)
      rank Face.ym
```

Here `FullTopPairingResidualLanguageAtRank` is still schematic: it must
be replaced by the existing upstream residual classifier predicate once
that predicate is selected.  If the selected-prefix family is too narrow,
the fallback target is direct prefix/shared-gain membership:

```lean
forall rank,
  FullTopPairingResidualLanguageAtRank rank ->
    exists pfx gain,
      TerminalTracePrefixSharedGainClosedMarginFamily
        pfx gain scaledMargin rank
```

## Why `TopPairingClosedLanguageAtRank` Alone Is Not Enough

`TopPairingClosedLanguageAtRank rank Face.ym` supplies the closed
top-pairing semantic language.  The selected-prefix killed path needs
the strengthened predicate because it additionally carries:

- `TopPairingActualFaceOmniAtRank rank`
- `SelectedPrefixTraceMarginSequenceBadFace scaledMargin rank Face.ym`

The latter contains the actual margin-family membership that drives the
deterministic evaluator and margin bound.

## Symbol Locations

| symbol | role | files |
| --- | --- | --- |
| `TopPairingClosedLanguageAtRank` | closed semantic front door | `language`, `top_pairing_object`, `semantic_eval_socket`, `terminal_direct_socket`, `trace_margin_bounds_socket` |
| `TopPairingStrengthenedClosedLanguageAtRank` | actual omni + sequence/bad-face carrier | `language`, `top_pairing_object`, `semantic_eval_socket`, `selected_prefix_socket`, `selected_prefix_object_cover`, `terminal_direct_socket`, `trace_margin_bounds_socket` |
| `SelectedPrefixTraceMarginSequenceBadFace` | selected-prefix production socket predicate | `selected_prefix_socket`, `selected_prefix_object_cover`, `selected_prefix_killed_socket` |
| `SelectedPrefixTraceMarginFamily` | selected-prefix margin family target | `selected_prefix_socket` |
| `evalLanguage_of_strengthenedSelectedPrefixTraceMargin` | selected-prefix eval-language bridge | `selected_prefix_socket`, `selected_prefix_object_cover` |
| `strengthenedSelectedPrefixTraceMargin_scaledMargin_nonpos` | selected-prefix margin bound bridge | `selected_prefix_socket` |
| `selectedPrefixTraceMarginObjectCover` | semantic object-cover bridge | `selected_prefix_object_cover`, `selected_prefix_killed_socket` |
| `selectedPrefixTraceMargin_nonIdentityRankKilled_of_startViolation` | killed-predicate bridge | `selected_prefix_killed_socket` |
| `TerminalTracePrefixSharedGainClosedMarginFamily` | direct prefix/shared-gain fallback target | `trace_margin_bounds_socket` |
| `TerminalDirectClosedFamily` | terminal direct alternative socket | `terminal_direct_socket` |
| `GraphAcceptedEvalSequenceBadFace` | generic graph-accepted eval socket | `semantic_eval_socket` |

## Selected Surfaces

| file | lines | sampled-token hits | key symbols |
| --- | ---: | ---: | --- |
| `language` | `818` | `0` | `TopPairingClosedLanguageAtRank`, `TopPairingStrengthenedClosedLanguageAtRank` |
| `top_pairing_object` | `564` | `0` | `TopPairingClosedLanguageAtRank`, `TopPairingStrengthenedClosedLanguageAtRank` |
| `semantic_eval_socket` | `96` | `0` | `GraphAcceptedEvalSequenceBadFace`, `TopPairingClosedLanguageAtRank`, `TopPairingStrengthenedClosedLanguageAtRank` |
| `selected_prefix_socket` | `57` | `0` | `SelectedPrefixTraceMarginFamily`, `SelectedPrefixTraceMarginSequenceBadFace`, `TopPairingStrengthenedClosedLanguageAtRank`, `evalLanguage_of_strengthenedSelectedPrefixTraceMargin`, `strengthenedSelectedPrefixTraceMargin_scaledMargin_nonpos` |
| `selected_prefix_object_cover` | `176` | `0` | `SelectedPrefixTraceMarginSequenceBadFace`, `TopPairingStrengthenedClosedLanguageAtRank`, `evalLanguage_of_strengthenedSelectedPrefixTraceMargin`, `selectedPrefixTraceMarginObjectCover` |
| `selected_prefix_killed_socket` | `65` | `0` | `SelectedPrefixTraceMarginSequenceBadFace`, `selectedPrefixTraceMarginObjectCover`, `selectedPrefixTraceMargin_nonIdentityRankKilled_of_startViolation` |
| `terminal_direct_socket` | `46` | `0` | `TerminalDirectClosedFamily`, `TopPairingClosedLanguageAtRank`, `TopPairingStrengthenedClosedLanguageAtRank` |
| `trace_margin_bounds_socket` | `936` | `0` | `TerminalTracePrefixSharedGainClosedMarginFamily`, `TopPairingClosedLanguageAtRank`, `TopPairingStrengthenedClosedLanguageAtRank` |

## Go/No-Go Rule

Continue Bellman only if the next theorem is proved semantically from
the selected upstream residual language into the strengthened
selected-prefix socket.  Stop and pivot to cancellation-tree summary
automata if the proof requires any of:

- sampled rank/path objects;
- exact affine-RHS keys;
- one generated branch per rank;
- a giant Boolean checker over accepted paths.

