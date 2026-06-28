# Phase 6Z.6K.8AP.16BI Denominator Sign Forms

This is profiling/design data only, not proof data.

- rank: `100805`
- affine forms validated against all masks: `False`
- full Walsh forms validated against all masks: `True`

## Walsh Degree Summary

| impact | nonzero terms | max degree | degree histogram |
| ---: | ---: | ---: | --- |
| 1 | 6 | 1 | 0:1, 1:5 |
| 2 | 6 | 2 | 0:1, 2:5 |
| 3 | 6 | 2 | 0:1, 2:5 |
| 4 | 7 | 2 | 0:1, 1:1, 2:5 |
| 5 | 7 | 2 | 0:1, 1:1, 2:5 |
| 6 | 7 | 2 | 0:1, 1:1, 2:5 |
| 7 | 7 | 2 | 0:1, 1:1, 2:5 |
| 8 | 7 | 2 | 0:1, 1:1, 2:5 |
| 9 | 7 | 2 | 0:1, 1:1, 2:5 |
| 10 | 7 | 2 | 0:1, 1:1, 2:5 |
| 11 | 7 | 2 | 0:1, 1:1, 2:5 |
| 12 | 7 | 2 | 0:1, 1:1, 2:5 |
| 13 | 7 | 2 | 0:1, 1:1, 2:5 |

## Affine Projection

The affine projection below is not a valid denominator representation when
`forms_validated = False`; it is retained only to diagnose the failed
affine assumption.

| impact | const | nonzero variables |
| ---: | ---: | --- |
| 1 | `4` | z, d111, d11m, d1m1, dm11 |
| 2 | `4` |  |
| 3 | `4` |  |
| 4 | `8` | dm11 |
| 5 | `8` | d11m |
| 6 | `4` | z |
| 7 | `4` | z |
| 8 | `8` | d111 |
| 9 | `8` | d111 |
| 10 | `8` | d1m1 |
| 11 | `8` | d1m1 |
| 12 | `8` | d11m |
| 13 | `8` | dm11 |

## Cube Single-Form Bounds

| cube | masks | fixed bits | best impact | best max |
| ---: | ---: | --- | ---: | ---: |
| 10**** | 16 | y=1, z=-1 | 6 | `4/9` |
| *1**0* | 16 | z=1, d1m1=-1 | 2 | `4` |
| **00** | 16 | d111=-1, d11m=-1 | 8 | `20/9` |
| **1*0* | 16 | d111=1, d1m1=-1 | 2 | `4` |
| **0**1 | 16 | d111=-1, dm11=1 | 8 | `20/9` |
| 1****0 | 16 | y=1, dm11=-1 | 2 | `4` |
| ***0*0 | 16 | d11m=-1, dm11=-1 | 2 | `4` |
| *011** | 8 | z=-1, d111=1, d11m=1 | 6 | `4/9` |
| 01*0** | 8 | y=-1, z=1, d11m=-1 | 2 | `4` |
