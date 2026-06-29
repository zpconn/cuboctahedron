# Phase 6Z.6K.8AP.16DU.9L Micro-Shard Scaling

This is bounded telemetry, not proof evidence.  The test generated temporary
Lean files in `/tmp` from the public-support selector slice emitter and checked
them with `lake env lean` under the same 6.5 GiB RSS guard.

Range: `[0,1)`.

GoodDirection survivors in the range: `16`.

| Positive survivors | Result | Elapsed | Peak tree RSS |
| ---: | --- | ---: | ---: |
| 2 | passed | 6.03s | 4.184 GiB |
| 4 | passed | 7.02s | 4.307 GiB |
| 8 | passed | 10.01s | 4.686 GiB |
| 16 | passed | 15.02s | 5.136 GiB |

Decision: the private-support mismatch was the blocker for the earlier
one-survivor source/row-fact proof, and exposing classifier supports fixes it.
The full rank-0 positive-survivor slice now checks under the memory cap.

This does not yet solve bounded `[0,5000)` classifier completeness.  The next
production experiment should emit persistent bounded micro-shards across a
multi-rank window, still avoiding bad-direction replay and keeping broad roots
out of normal builds until shard telemetry is known.
