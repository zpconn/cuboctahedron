# Top-Pairing Terminal-Direct Provider Gate

This is diagnostic evidence, not proof.  It summarizes the current
Lean-checked terminal/direct consumer route and the remaining semantic
provider obligation for the top-pairing residual family.

- decision: `continue-strengthened-terminal-provider`
- closed-language audit decision: `closed-components-too-weak`
- closed candidates: `47`
- graph accepted: `37`
- graph rejected: `10`
- accepted trace classifier count: `37`
- selected-prefix buckets: `31`
- selected-prefix groups: `7`

## Lean Consumer Surface

Accepted consumer theorem:

```lean
theorem nonIdentityRankKilled_of_terminalDirectClosedFamily
    {rank : Fin numPairWords}
    (h : TerminalDirectClosedFamily rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank
```

The strengthened semantic provider target is:

```lean
TerminalDirectClosedFamily rank
```

which packages closed top-pairing language, actual-face omnihedral
usage, accepted sequence/bad-face classification, and terminal trace
classifier membership.

Current bounded semantic-provider smoke:

```lean
theorem terminalDirectClosedFamily_of_selectedPrefixCoverFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : SelectedPrefixCoverFamily scaledMargin rank) :
    TerminalDirectClosedFamily rank

theorem nonIdentityRankKilled_of_selectedPrefixCoverFamily
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : SelectedPrefixCoverFamily scaledMargin rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank
```

## Guarded Lean Checks

### terminal_direct_sequence_socket

- exit: `0`
- elapsed seconds: `2.002223881005193`
- peak RSS MiB: `3688.1875`
- hard address-space MiB: `12288.0`
- min available MiB: `46312.82421875`
- killed reason: `None`

### terminal_producer_coverage_bridge

- exit: `0`
- elapsed seconds: `2.0122658479958773`
- peak RSS MiB: `3696.015625`
- hard address-space MiB: `12288.0`
- min available MiB: `46315.078125`
- killed reason: `None`

### terminal_producer_root

- exit: `0`
- elapsed seconds: `2.0019567160052247`
- peak RSS MiB: `3683.50390625`
- hard address-space MiB: `12288.0`
- min available MiB: `46305.953125`
- killed reason: `None`

### selected_prefix_cover_to_accepted_eval

- exit: `0`
- elapsed seconds: `6.015521445006016`
- peak RSS MiB: `4001.3828125`
- hard address-space MiB: `12288.0`
- min available MiB: `46202.99609375`
- killed reason: `None`

### selected_prefix_cover_to_terminal_direct

- exit: `0`
- elapsed seconds: `12.015479765002965`
- peak RSS MiB: `3613.453125`
- hard address-space MiB: `12288.0`
- min available MiB: `46312.84765625`
- killed reason: `None`

## Forbidden Token Scan

- scanned Lean files: `5`
- forbidden hits: `0`

No forbidden tokens were found in the scanned files.

## Gate Interpretation

- Do not pursue a bare
  `TopPairingClosedLanguageAtRank -> AcceptedPrefix13EvalFamily`
  theorem: the exact closed-language audit has already rejected that
  coordinate.
- Continue through a strengthened semantic provider that proves
  `TerminalDirectClosedFamily rank` or an equivalent
  `TopPairingStrengthenedClosedLanguageAtRank` predicate.
- The next generated theorem should cover the intended residual
  family by semantic terminal/state fields.  It must not introduce
  sampled rank/path objects, exact affine-RHS keys, or a broad
  Boolean checker.
