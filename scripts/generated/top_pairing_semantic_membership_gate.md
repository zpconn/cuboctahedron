# Top-Pairing Semantic Membership Gate

This audit is diagnostic status evidence, not proof.  It records the
next Bellman experiment recommended by the latest GPT5.5 reviews: keep
Bellman, but make the membership theorem semantic and deterministic.
Selected-prefix artifacts are diagnostic only and must not be scaled as
production membership.

- decision: `continue-bellman-for-semantic-terminal-membership-slice`
- sampled membership hits in selected surfaces: `0`
- selected-prefix hits in production surfaces: `0`

## Concrete Gate

The next production theorem should target the semantic terminal
transducer socket, not selected-prefix or sampled object tables:

```lean
structure StrengthenedClosedTransducerMachineProducerAll
    {StateId : Type}
    (scaledMargin : Fin numPairWords -> Int)
    (machine : TerminalStepStatePartialMachine StateId)
    (start : StateId) : Prop where
  terminal :
    forall rank,
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      TerminalContainedEvalPrefixGate machine start rank
  depth11GraphPath :
    forall rank,
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      Split10MDepth11GraphPathProducer rank
  finalMargin :
    forall rank,
      TopPairingStrengthenedClosedLanguageAtRank
        AcceptedSequenceBadFaceAtRank rank Face.ym ->
      Split10MFinalMarginProducer scaledMargin rank
```

A smaller intermediate theorem may target the terminal-membership socket:

```lean
def StrengthenedTerminalTraceMembership : Prop :=
  forall rank,
    TopPairingStrengthenedClosedLanguageAtRank
      AcceptedSequenceBadFaceAtRank rank Face.ym ->
    TerminalTraceLabels (topPairingRankFaceLabels rank)
```

## Why `TopPairingClosedLanguageAtRank` Alone Is Not Enough

`TopPairingClosedLanguageAtRank rank Face.ym` supplies the closed
top-pairing semantic language.  The production route needs the
strengthened predicate because it additionally carries:

- `TopPairingActualFaceOmniAtRank rank`
- `AcceptedSequenceBadFaceAtRank rank Face.ym` or the eventual semantic
  branch-margin predicate

The selected-prefix margin sockets remain useful for comparison and
bounded smokes, but the production membership theorem should go through
the target cursor, semantic tail, terminal machine, depth-11 graph-path
provider, and final-margin producer.

## Symbol Locations

| symbol | role | files |
| --- | --- | --- |
| `TopPairingClosedLanguageAtRank` | closed semantic front door | `language`, `top_pairing_object`, `target_cursor`, `transducer_tail`, `transducer_semantic_gate`, `semantic_eval_socket`, `terminal_direct_socket`, `closed_transducer_producer_socket`, `depth11_graph_path_providers`, `trace_margin_bounds_socket` |
| `TopPairingStrengthenedClosedLanguageAtRank` | actual omni + sequence/bad-face carrier | `language`, `top_pairing_object`, `transducer_semantic_gate`, `semantic_eval_socket`, `selected_prefix_socket`, `selected_prefix_object_cover`, `terminal_direct_socket`, `terminal_trace_membership_socket`, `closed_transducer_producer_socket`, `depth11_graph_path_providers`, `trace_margin_bounds_socket` |
| `TopPairingTransducerTail` | target cursor + schedule/square-gap/local-axis suffix carrier | `transducer_tail` |
| `topPairingTriCursor_of_closed` | closed language to target-shadow cursor bridge | `target_cursor`, `transducer_tail` |
| `closedToEvalGate_of_rankedTransducerInvariantLocalWithSuffix` | ranked semantic evaluator gate | `transducer_semantic_gate` |
| `StrengthenedTerminalTraceMembership` | semantic terminal trace membership target | `terminal_trace_membership_socket` |
| `StrengthenedClosedTransducerProducer` | rank-local semantic transducer production bundle | `closed_transducer_producer_socket`, `depth11_graph_path_providers` |
| `StrengthenedClosedTransducerProducerAll` | all-rank semantic transducer production bundle | `closed_transducer_producer_socket`, `depth11_graph_path_providers` |
| `StrengthenedClosedTransducerMachineProducerAll` | preferred machine-shaped all-rank producer target | `closed_transducer_producer_socket`, `depth11_graph_path_providers` |
| `Split10MDepth11GraphPathProducer` | graph-state-indexed depth-11 suffix target | `terminal_trace_membership_socket`, `closed_transducer_producer_socket`, `depth11_graph_path_providers` |
| `Depth11GraphPathClassCase` | bounded depth-11 semantic class+graph-state cases | `depth11_graph_path_providers` |
| `Split10MFinalMarginProducer` | remaining final integer margin producer target | `closed_transducer_producer_socket`, `depth11_graph_path_providers` |
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

| file | lines | sampled-token hits | diagnostic only | key symbols |
| --- | ---: | ---: | --- | --- |
| `language` | `936` | `0` | `no` | `TopPairingClosedLanguageAtRank`, `TopPairingStrengthenedClosedLanguageAtRank` |
| `top_pairing_object` | `564` | `0` | `no` | `TopPairingClosedLanguageAtRank`, `TopPairingStrengthenedClosedLanguageAtRank` |
| `target_cursor` | `387` | `0` | `no` | `TopPairingClosedLanguageAtRank`, `topPairingTriCursor_of_closed` |
| `transducer_tail` | `97` | `0` | `no` | `TopPairingClosedLanguageAtRank`, `TopPairingTransducerTail`, `topPairingTriCursor_of_closed` |
| `transducer_semantic_gate` | `692` | `0` | `no` | `TopPairingClosedLanguageAtRank`, `TopPairingStrengthenedClosedLanguageAtRank`, `closedToEvalGate_of_rankedTransducerInvariantLocalWithSuffix` |
| `semantic_eval_socket` | `96` | `0` | `no` | `GraphAcceptedEvalSequenceBadFace`, `TopPairingClosedLanguageAtRank`, `TopPairingStrengthenedClosedLanguageAtRank` |
| `selected_prefix_socket` | `57` | `0` | `yes` | `SelectedPrefixTraceMarginFamily`, `SelectedPrefixTraceMarginSequenceBadFace`, `TopPairingStrengthenedClosedLanguageAtRank`, `evalLanguage_of_strengthenedSelectedPrefixTraceMargin`, `strengthenedSelectedPrefixTraceMargin_scaledMargin_nonpos` |
| `selected_prefix_object_cover` | `176` | `0` | `yes` | `SelectedPrefixTraceMarginSequenceBadFace`, `TopPairingStrengthenedClosedLanguageAtRank`, `evalLanguage_of_strengthenedSelectedPrefixTraceMargin`, `selectedPrefixTraceMarginObjectCover` |
| `selected_prefix_killed_socket` | `65` | `0` | `yes` | `SelectedPrefixTraceMarginSequenceBadFace`, `selectedPrefixTraceMarginObjectCover`, `selectedPrefixTraceMargin_nonIdentityRankKilled_of_startViolation` |
| `terminal_direct_socket` | `46` | `0` | `no` | `TerminalDirectClosedFamily`, `TopPairingClosedLanguageAtRank`, `TopPairingStrengthenedClosedLanguageAtRank` |
| `terminal_trace_membership_socket` | `61` | `0` | `no` | `Split10MDepth11GraphPathProducer`, `StrengthenedTerminalTraceMembership`, `TopPairingStrengthenedClosedLanguageAtRank` |
| `closed_transducer_producer_socket` | `274` | `0` | `no` | `Split10MDepth11GraphPathProducer`, `Split10MFinalMarginProducer`, `StrengthenedClosedTransducerMachineProducerAll`, `StrengthenedClosedTransducerProducer`, `StrengthenedClosedTransducerProducerAll`, `TopPairingClosedLanguageAtRank`, `TopPairingStrengthenedClosedLanguageAtRank` |
| `depth11_graph_path_providers` | `592` | `0` | `no` | `Depth11GraphPathClassCase`, `Split10MDepth11GraphPathProducer`, `Split10MFinalMarginProducer`, `StrengthenedClosedTransducerMachineProducerAll`, `StrengthenedClosedTransducerProducer`, `StrengthenedClosedTransducerProducerAll`, `TopPairingClosedLanguageAtRank`, `TopPairingStrengthenedClosedLanguageAtRank` |
| `trace_margin_bounds_socket` | `1173` | `0` | `no` | `TerminalTracePrefixSharedGainClosedMarginFamily`, `TopPairingClosedLanguageAtRank`, `TopPairingStrengthenedClosedLanguageAtRank` |

## Go/No-Go Rule

Continue Bellman only if the next theorem is proved semantically from
closed/strengthened top-pairing language into the terminal machine,
depth-11 graph-path, and final-margin producer sockets.  Stop and
pivot to cancellation-tree summary automata if the proof requires any
of:

- sampled rank/path objects;
- selected-prefix ids as production membership;
- exact affine-RHS keys;
- one generated branch per rank;
- a giant Boolean checker over accepted paths.

