# Phase 6Z.6K.8AP.3 Public All-Good Coverage Bridge

Status: accepted public API bridge.

This phase connects the classifier-free GoodDirection bridge to the public
generated coverage assembly.  The new public route lets generated translation
membership roots target all identity-linear GoodDirection survivors without
depending on `translationEarlyFamilyClassOfChoice`.

Exported names:

- `Cuboctahedron.Generated.Translation.Coverage.AllGoodRankKilled`
- `Cuboctahedron.Generated.Translation.Coverage.caseKilled_of_all_good_interval`
- `Cuboctahedron.Generated.PublicAllGoodSemanticCoverageIntervals`
- `Cuboctahedron.Generated.semanticGeneratedCoverageOfAllGoodIntervals`

Focused builds:

- `/usr/bin/time -v lake build Cuboctahedron.Generated.Translation.Coverage.All`
  - exit status: 0
  - wall time: 0.91s
  - max RSS: 856,656 KiB
- `/usr/bin/time -v lake build Cuboctahedron.Generated.ExhaustiveCoverage`
  - exit status: 0
  - wall time: 3.03s
  - max RSS: 3,287,764 KiB

These builds were run serially.  The public exhaustive adapter peaked at
roughly 3.14 GiB RSS, safely below the practical 45 GiB working ceiling.

This report is not proof evidence.  It records the checked API surface and
focused build telemetry.  Full AP still needs generated source/row membership
chunks proving `AllGoodRankKilled` or the AP.2 source/row bridge predicates
over the full rank range, plus the corresponding nonidentity residual coverage
interval.
