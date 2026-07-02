# Top-Pairing Graph Rejection Diagnosis

This is exact diagnostic evidence, not proof.

- decision: `strengthen_language_not_graph`
- accepted count: `37`
- rejected count: `10`

The graph-accepted traces are exact top-family matches, while every graph-rejected closed candidate is excluded by an extra semantic condition: actual omnihedral face uniqueness for nine traces and canonical bad-face compatibility for one trace.  Strengthen the Bellman language predicate instead of repairing the graph.

## Classification Histograms

### Accepted

| classification | count |
| --- | ---: |
| `matched_top_family` | `37` |

### Rejected

| classification | count |
| --- | ---: |
| `not_omni_contribution_sequence` | `9` |
| `canonical_bad_face_mismatch` | `1` |

## Rejected Transition Context

### Rejection 0

- classification: `not_omni_contribution_sequence`
- step/state/face: `8` / `851` / `tpmm`
- requested label: `face=tpmm|pair=dm11`
- prefix: `xm ym tmpm tppm tpmm tppp tmmm zp tpmm`
- state key: `step=8|rem=1,1,1,0,1,1,1|par=111|stack=dm11 d111 d1m1|triSrc=2:d1m1->dm11@110|3:d11m->d111@110|4:dm11->d1m1@110|5:d111->d11m@110|6:d111->d11m@110`
- outgoing labels:
  - `face=zm|pair=z` -> state `931`

### Rejection 1

- classification: `not_omni_contribution_sequence`
- step/state/face: `7` / `777` / `tmmp`
- requested label: `face=tmmp|pair=d11m`
- prefix: `xm ym tmpm tppm tpmm tppp zp tmmp`
- state key: `step=7|rem=1,1,1,1,1,1,1|par=111|stack=dm11 d111 d1m1 d11m|triSrc=2:d1m1->dm11@110|3:d11m->d111@110|4:dm11->d1m1@110|5:d111->d11m@110`
- outgoing labels:
  - `face=zm|pair=z` -> state `845`

### Rejection 2

- classification: `not_omni_contribution_sequence`
- step/state/face: `7` / `777` / `tmmp`
- requested label: `face=tmmp|pair=d11m`
- prefix: `xm ym tmpm tppm tpmm tppp zp tmmp`
- state key: `step=7|rem=1,1,1,1,1,1,1|par=111|stack=dm11 d111 d1m1 d11m|triSrc=2:d1m1->dm11@110|3:d11m->d111@110|4:dm11->d1m1@110|5:d111->d11m@110`
- outgoing labels:
  - `face=zm|pair=z` -> state `845`

### Rejection 3

- classification: `not_omni_contribution_sequence`
- step/state/face: `7` / `777` / `tmmp`
- requested label: `face=tmmp|pair=d11m`
- prefix: `xm ym tmpm tppm tpmm tppp zp tmmp`
- state key: `step=7|rem=1,1,1,1,1,1,1|par=111|stack=dm11 d111 d1m1 d11m|triSrc=2:d1m1->dm11@110|3:d11m->d111@110|4:dm11->d1m1@110|5:d111->d11m@110`
- outgoing labels:
  - `face=zm|pair=z` -> state `845`

### Rejection 4

- classification: `canonical_bad_face_mismatch`
- step/state/face: `10` / `81` / `tmmp`
- requested label: `face=tmmp|pair=d11m`
- prefix: `xm ym tmpm zm zp tppm tpmm tppp tmmm tpmp tmmp`
- state key: `step=10|rem=1,1,0,0,1,0,1|par=110|stack=dm11 d111 d1m1 dm11|triSrc=2:d1m1->dm11@110|5:d11m->d111@110|6:dm11->d1m1@110|7:d111->d11m@110|8:d111->d11m@110|9:d1m1->dm11@110`
- outgoing labels:
  - `face=yp|pair=y` -> state `147`

### Rejection 5

- classification: `not_omni_contribution_sequence`
- step/state/face: `8` / `829` / `tmpp`
- requested label: `face=tmpp|pair=dm11`
- prefix: `xm ym yp tmmm tpmm tppm tpmp zp tmpp`
- state key: `step=8|rem=1,0,1,1,1,1,1|par=101|stack=dm11 d111 d1m1 d11m|triSrc=3:d111->dm11@100|4:dm11->d111@100|5:d11m->d1m1@100|6:d1m1->d11m@100`
- outgoing labels:
  - `face=zm|pair=z` -> state `895`

### Rejection 6

- classification: `not_omni_contribution_sequence`
- step/state/face: `8` / `831` / `zm`
- requested label: `face=zm|pair=z`
- prefix: `xm ym yp zm tmmp tpmp tppp tpmm zm`
- state key: `step=8|rem=1,0,1,1,1,1,1|par=101|stack=dm11 d111 d1m1 d11m|triSrc=4:d11m->dm11@101|5:d1m1->d111@101|6:d111->d1m1@101|7:dm11->d11m@101`
- outgoing labels:
  - `face=tmpp|pair=dm11` -> state `920`

### Rejection 7

- classification: `not_omni_contribution_sequence`
- step/state/face: `7` / `778` / `zm`
- requested label: `face=zm|pair=z`
- prefix: `xm ym zm tmpp tppp tpmp tppm zm`
- state key: `step=7|rem=1,1,1,1,1,1,1|par=111|stack=dm11 d111 d1m1 d11m|triSrc=3:dm11->dm11@111|4:d111->d111@111|5:d1m1->d1m1@111|6:d11m->d11m@111`
- outgoing labels:
  - `face=tmmp|pair=d11m` -> state `852`

### Rejection 8

- classification: `not_omni_contribution_sequence`
- step/state/face: `7` / `778` / `zm`
- requested label: `face=zm|pair=z`
- prefix: `xm ym zm tmpp tppp tpmp tppm zm`
- state key: `step=7|rem=1,1,1,1,1,1,1|par=111|stack=dm11 d111 d1m1 d11m|triSrc=3:dm11->dm11@111|4:d111->d111@111|5:d1m1->d1m1@111|6:d11m->d11m@111`
- outgoing labels:
  - `face=tmmp|pair=d11m` -> state `852`

### Rejection 9

- classification: `not_omni_contribution_sequence`
- step/state/face: `8` / `831` / `zm`
- requested label: `face=zm|pair=z`
- prefix: `xm ym zm yp tmmp tpmp tppp tpmm zm`
- state key: `step=8|rem=1,0,1,1,1,1,1|par=101|stack=dm11 d111 d1m1 d11m|triSrc=4:d11m->dm11@101|5:d1m1->d111@101|6:d111->d1m1@101|7:dm11->d11m@101`
- outgoing labels:
  - `face=tmpp|pair=dm11` -> state `920`

