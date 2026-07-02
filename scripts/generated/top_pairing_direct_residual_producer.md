# Top-Pairing Direct Residual Producer Audit

This audit is diagnostic status evidence, not proof.  It scans the
current Lean surfaces for the producer path into the direct terminal
residual bridge.

- decision: `generate-semantic-terminal-classifier-producer`
- sampled-token hits: `0`

## Current Formal Target

Preferred direct target:

```lean
TerminalDirectResidualRankCovered r
```

Composable fallback target:

```lean
SelectedPrefixResidualRankCovered scaledMargin r
```

Both now feed `ResidualRankKilled`, and full interval coverage feeds
`NonIdentity.KilledResidualBridge`.

## Producer Status

- `closedRank_prefix7` exists.
- `closedRank_prefix8` exists.
- The only depth-9 rank bridge found is the bounded
  `depth9Shard000Labels_of_closed_parent` smoke.
- `TerminalTraceLabels` and
  `terminalOk_of_terminalTrace_and_cancellation` exist.
- `nonIdentityRankKilled_of_terminalTraceSemanticComponents` exists.

Therefore the next production theorem is not another Bellman potential.
It is the missing semantic classifier producer from closed/depth-8
classification to terminal trace membership, then to
`TerminalDirectResidualRankCovered`.

Suggested theorem shape:

```lean
forall rank,
  TopPairingClosedLanguageAtRank rank Face.ym ->
  TopPairingActualFaceOmniAtRank rank ->
  AcceptedSequenceBadFaceAtRank rank Face.ym ->
    TopPairingTraceClassifier.TerminalOk.TerminalTraceLabels
      (topPairingRankFaceLabels rank)
```

followed by:

```lean
forall r hlt,
  nonIdEarlyFamilyClassOfRank ⟨r, hlt⟩ = NonIdFamilyClass.residual ->
  totalLinearOfPairWord (unrankPairWord ⟨r, hlt⟩) ≠ (matId : Mat3 Rat) ->
    TerminalDirectClosedFamily ⟨r, hlt⟩
```

If this producer requires exact affine-RHS keys, sampled rank/path
objects, or one branch per concrete rank/path, reject this Bellman
membership surface and pivot to the cancellation-tree summary automaton.

## Scanned Files

| file | lines | sampled-token hits | key symbols |
| --- | ---: | ---: | --- |
| `residual_bridge` | `89` | `0` | SelectedPrefixResidualRankCovered, TerminalDirectClosedFamily, TerminalDirectResidualRankCovered, nonIdentityRankKilled_of_terminalDirectClosedFamily, residualRankKilled_of_selectedPrefixResidualRankCovered, residualRankKilled_of_terminalDirectResidualRankCovered |
| `terminal_direct_socket` | `46` | `0` | TerminalDirectClosedFamily, TerminalTraceLabels, nonIdentityRankKilled_of_terminalDirectClosedFamily |
| `depth7_all` | `1633` | `0` | closedRank_prefix7 |
| `depth8_all` | `366` | `0` | Depth8TraceLabels, closedRank_prefix8 |
| `depth9_root_smoke` | `50` | `0` | Depth9Shard000Labels, depth9Shard000Labels_of_closed_parent |
| `terminal_ok` | `37` | `0` | TerminalTraceLabels, terminalOk_of_terminalTrace_and_cancellation |
| `terminal_all` | `449` | `0` | none |
| `accepted` | `159` | `0` | none |
| `producer_bridge` | `112` | `0` | TerminalTraceLabels, graphAcceptedTraceLabels_of_terminalOkSemanticComponents, nonIdentityRankKilled_of_terminalTraceSemanticComponents, rootFamily_of_terminalTraceSemanticComponents, terminalOk_of_terminalTrace_and_cancellation |
