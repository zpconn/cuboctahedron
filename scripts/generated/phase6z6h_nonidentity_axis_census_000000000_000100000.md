# Phase 6Z.6H Nonidentity Linear-Part/Axis Census

This is an untrusted diagnostic report. It emits no Lean evidence.

## Decision

- Status: `rejected`
- Accepted for Phase 6Z.6H: False
- Projected semantic family leaves: 23806
- M-alone sound scope: M-alone families are considered sound only for no-fixed-axis classes; +1-axis classes require axis/sign/failure structure.

## Window

- Rank window: [0, 100,000)
- Width: 100,000

## Counts

- Pair words scanned: 100,000
- Identity words: 5,565
- Nonidentity words: 94,435
- No fixed axis: 0
- Fixed axis: 94,435
- Final-axis zero: 6,241
- Forced zero denominator: 54,794
- Bad pair balance: 24,364
- Forced-balance survivors: 9,036

## Linear And Axis Families

- Nonidentity linear classes: 3,878
- No-fixed-axis linear classes: 0
- Fixed-axis linear classes: 3,878
- Projective axis classes: 1,906
- Linear/axis classes: 3,878

## Semantic Families

- Family lower bound: 23,806

### bad_pair_balance

- Distinct keys: 11,834

- `linear=-79/729,704/729,-172/729;-656/729,-143/729,-284/729;-308/729,124/729,649/729|axisClass=3,1,-10|badPairBalance|duplicates=tpmm|missing=tmmm|multiplicities=1,1,1,1,1,1,1,1,1,0,2,1,1,1`: 26
- `linear=-143/729,-656/729,284/729;704/729,-79/729,172/729;-124/729,308/729,649/729|axisClass=1,3,10|badPairBalance|duplicates=tpmm|missing=tmmm|multiplicities=1,1,1,1,1,1,1,1,0,1,1,2,1,1`: 26
- `linear=-143/729,-656/729,-284/729;704/729,-79/729,-172/729;124/729,-308/729,649/729|axisClass=1,3,-10|badPairBalance|duplicates=tpmm|missing=tmmm|multiplicities=1,1,1,1,1,1,1,1,1,0,2,1,1,1`: 26
- `linear=-79/729,704/729,172/729;-656/729,-143/729,284/729;308/729,-124/729,649/729|axisClass=3,1,10|badPairBalance|duplicates=tpmm|missing=tmmm|multiplicities=1,1,1,1,1,1,1,1,0,1,1,2,1,1`: 26
- `linear=49/729,688/729,-236/729;-128/729,241/729,676/729;716/729,-4/729,137/729|axisClass=5,7,6|badPairBalance|duplicates=tpmm|missing=tmmm|multiplicities=1,1,1,1,1,1,1,1,0,1,1,2,1,1`: 26
- `linear=241/729,-128/729,676/729;688/729,49/729,-236/729;-4/729,716/729,137/729|axisClass=7,5,6|badPairBalance|duplicates=tpmm|missing=tmmm|multiplicities=1,1,1,1,1,1,1,1,0,1,1,2,1,1`: 26
- `linear=49/729,688/729,-236/729;-128/729,241/729,676/729;716/729,-4/729,137/729|axisClass=5,7,6|badPairBalance|duplicates=yp,tpmm|missing=yp,tmmm|multiplicities=1,1,1,1,0,2,1,1,0,1,1,2,1,1`: 26
- `linear=241/729,-128/729,676/729;688/729,49/729,-236/729;-4/729,716/729,137/729|axisClass=7,5,6|badPairBalance|duplicates=yp,tpmm|missing=yp,tmmm|multiplicities=1,1,1,1,0,2,1,1,0,1,1,2,1,1`: 26
- `linear=49/729,-128/729,-716/729;688/729,241/729,4/729;236/729,-676/729,137/729|axisClass=5,7,-6|badPairBalance|duplicates=tmmm|missing=tpmm|multiplicities=1,1,1,1,1,1,1,1,1,2,0,1,1,1`: 26
- `linear=241/729,688/729,4/729;-128/729,49/729,-716/729;-676/729,236/729,137/729|axisClass=7,5,-6|badPairBalance|duplicates=tmmm|missing=tpmm|multiplicities=1,1,1,1,1,1,1,1,1,2,0,1,1,1`: 26

### final_axis_zero

- Distinct keys: 120

- `linear=17/81,56/81,56/81;-56/81,49/81,-32/81;-56/81,-32/81,49/81|axisClass=0,1,-1|finalNormalClass=17,-56,-56`: 671
- `linear=17/81,-56/81,56/81;56/81,49/81,32/81;-56/81,32/81,49/81|axisClass=0,1,1|finalNormalClass=17,56,-56`: 637
- `linear=17/81,56/81,-56/81;-56/81,49/81,32/81;56/81,32/81,49/81|axisClass=0,1,1|finalNormalClass=17,-56,56`: 636
- `linear=17/81,-56/81,-56/81;56/81,49/81,-32/81;56/81,-32/81,49/81|axisClass=0,1,-1|finalNormalClass=17,56,56`: 470
- `linear=-79/81,8/81,-16/81;-8/81,49/81,64/81;16/81,64/81,-47/81|axisClass=0,2,1|finalNormalClass=79,8,-16`: 415
- `linear=-79/81,-8/81,-16/81;8/81,49/81,-64/81;16/81,-64/81,-47/81|axisClass=0,2,-1|finalNormalClass=79,-8,-16`: 407
- `linear=-79/81,8/81,16/81;-8/81,49/81,-64/81;-16/81,-64/81,-47/81|axisClass=0,2,-1|finalNormalClass=79,8,16`: 406
- `linear=-79/81,-16/81,8/81;16/81,-47/81,64/81;-8/81,64/81,49/81|axisClass=0,1,2|finalNormalClass=79,-16,8`: 359
- `linear=-79/81,16/81,8/81;-16/81,-47/81,-64/81;-8/81,-64/81,49/81|axisClass=0,1,-2|finalNormalClass=79,16,8`: 350
- `linear=-79/81,-16/81,-8/81;16/81,-47/81,-64/81;8/81,-64/81,49/81|axisClass=0,1,-2|finalNormalClass=79,-16,-8`: 349

### forced_zero_denominator

- Distinct keys: 5,128

- `linear=1/9,8/9,4/9;8/9,1/9,-4/9;-4/9,4/9,-7/9|axisClass=1,1,0|zeroAt=3|pair=d111|normalClass=1,-1,-1`: 870
- `linear=1/9,8/9,-4/9;8/9,1/9,4/9;4/9,-4/9,-7/9|axisClass=1,1,0|zeroAt=3|pair=d11m|normalClass=1,-1,1`: 870
- `linear=1/9,-8/9,4/9;-8/9,1/9,4/9;-4/9,-4/9,-7/9|axisClass=1,-1,0|zeroAt=3|pair=d1m1|normalClass=1,1,-1`: 870
- `linear=49/81,-56/81,-32/81;56/81,17/81,56/81;-32/81,-56/81,49/81|axisClass=1,0,-1|zeroAt=1|pair=y|normalClass=0,1,0`: 669
- `linear=49/81,-56/81,32/81;56/81,17/81,-56/81;32/81,56/81,49/81|axisClass=1,0,1|zeroAt=1|pair=y|normalClass=0,1,0`: 630
- `linear=49/81,56/81,32/81;-56/81,17/81,56/81;32/81,-56/81,49/81|axisClass=1,0,1|zeroAt=1|pair=y|normalClass=0,1,0`: 629
- `linear=1/9,8/9,-4/9;8/9,1/9,4/9;4/9,-4/9,-7/9|axisClass=1,1,0|zeroAt=3|pair=z|normalClass=0,0,1`: 440
- `linear=1/9,8/9,4/9;8/9,1/9,-4/9;-4/9,4/9,-7/9|axisClass=1,1,0|zeroAt=3|pair=z|normalClass=0,0,1`: 440
- `linear=1/9,-8/9,-4/9;-8/9,1/9,-4/9;4/9,4/9,-7/9|axisClass=1,-1,0|zeroAt=3|pair=z|normalClass=0,0,1`: 440
- `linear=1/9,-8/9,4/9;-8/9,1/9,4/9;-4/9,-4/9,-7/9|axisClass=1,-1,0|zeroAt=3|pair=z|normalClass=0,0,1`: 440

### terminal_axis_misses_start_interior

- Distinct keys: 6,466

- `linear=-47/81,-64/81,16/81;-64/81,49/81,8/81;-16/81,-8/81,-79/81|axisClass=1,-2,0|axisMissesStartInterior|badFace=yp|margin=neg:-7/2`: 12
- `linear=-47/81,64/81,16/81;64/81,49/81,-8/81;-16/81,8/81,-79/81|axisClass=1,2,0|axisMissesStartInterior|badFace=yp|margin=neg:-7/2`: 12
- `linear=-47/81,-64/81,-16/81;-64/81,49/81,-8/81;16/81,8/81,-79/81|axisClass=1,-2,0|axisMissesStartInterior|badFace=yp|margin=neg:-7/2`: 12
- `linear=-551/729,-368/729,304/729;112/729,-551/729,-464/729;464/729,-304/729,473/729|axisClass=1,-1,3|axisMissesStartInterior|badFace=yp|margin=neg:-53/33`: 8
- `linear=-551/729,368/729,304/729;-112/729,-551/729,464/729;464/729,304/729,473/729|axisClass=1,1,3|axisMissesStartInterior|badFace=yp|margin=neg:-25/11`: 8
- `linear=-551/729,368/729,304/729;-112/729,-551/729,464/729;464/729,304/729,473/729|axisClass=1,1,3|axisMissesStartInterior|badFace=yp|margin=neg:-53/33`: 8
- `linear=-551/729,368/729,-304/729;-112/729,-551/729,-464/729;-464/729,-304/729,473/729|axisClass=1,1,-3|axisMissesStartInterior|badFace=yp|margin=neg:-25/11`: 8
- `linear=-551/729,-368/729,304/729;112/729,-551/729,-464/729;464/729,-304/729,473/729|axisClass=1,-1,3|axisMissesStartInterior|badFace=yp|margin=neg:-25/11`: 8
- `linear=-551/729,-112/729,-464/729;368/729,-551/729,-304/729;-304/729,-464/729,473/729|axisClass=1,1,-3|axisMissesStartInterior|badFace=yp|margin=neg:-6/11`: 8
- `linear=-551/729,-112/729,-464/729;368/729,-551/729,-304/729;-304/729,-464/729,473/729|axisClass=1,1,-3|axisMissesStartInterior|badFace=yp|margin=neg:-17/11`: 8

### terminal_first_hit_mismatch

- Distinct keys: 248

- `linear=-551/729,368/729,304/729;-112/729,-551/729,464/729;464/729,304/729,473/729|axisClass=1,1,3|firstHitMismatch|step=0|faces=xm,tpmm|actualBeforeExpected:pos:113/232`: 2
- `linear=-551/729,368/729,-304/729;-112/729,-551/729,-464/729;-464/729,-304/729,473/729|axisClass=1,1,-3|firstHitMismatch|step=0|faces=xm,tpmm|actualBeforeExpected:pos:113/232`: 2
- `linear=-551/729,-368/729,304/729;112/729,-551/729,-464/729;464/729,-304/729,473/729|axisClass=1,-1,3|firstHitMismatch|step=0|faces=xm,tpmm|actualBeforeExpected:pos:113/232`: 2
- `linear=-2687/6561,2936/6561,-5216/6561;2696/6561,-4511/6561,-3928/6561;-5344/6561,-3752/6561,641/6561|axisClass=11,8,-15|firstHitMismatch|step=0|faces=xm,yp|actualBeforeExpected:pos:7471/48840`: 1
- `linear=-2687/6561,-5216/6561,2936/6561;-5344/6561,641/6561,-3752/6561;2696/6561,-3928/6561,-4511/6561|axisClass=11,-15,8|firstHitMismatch|step=0|faces=xm,yp|actualBeforeExpected:pos:7471/48840`: 1
- `linear=2849/6561,-2272/6561,5456/6561;-5408/6561,1441/6561,3424/6561;-2384/6561,-5984/6561,-1247/6561|axisClass=6,-5,2|firstHitMismatch|step=0|faces=xm,yp|actualBeforeExpected:pos:1477/13920`: 1
- `linear=-1151/6561,-6272/6561,1544/6561;-6208/6561,641/6561,-2024/6561;1784/6561,-1816/6561,-6047/6561|axisClass=13,-15,4|firstHitMismatch|step=0|faces=xm,yp|actualBeforeExpected:pos:8261/56160`: 1
- `linear=2849/6561,5456/6561,-2272/6561;-2384/6561,-1247/6561,-5984/6561;-5408/6561,3424/6561,1441/6561|axisClass=6,2,-5|firstHitMismatch|step=0|faces=xm,yp|actualBeforeExpected:pos:1477/13920`: 1
- `linear=-1151/6561,1544/6561,-6272/6561;1784/6561,-6047/6561,-1816/6561;-6208/6561,-2024/6561,641/6561|axisClass=13,4,-15|firstHitMismatch|step=0|faces=xm,yp|actualBeforeExpected:pos:8261/56160`: 1
- `linear=-2687/6561,2936/6561,5216/6561;2696/6561,-4511/6561,3928/6561;5344/6561,3752/6561,641/6561|axisClass=11,8,15|firstHitMismatch|step=0|faces=xm,yp|actualBeforeExpected:pos:7471/48840`: 1

### terminal_hit_tie

- Distinct keys: 10

- `linear=-551/729,-464/729,-112/729;-304/729,473/729,-464/729;368/729,-304/729,-551/729|axisClass=1,-3,1|hitTie|step=0|faces=xm,tpmm,ym|time=pos:3/328`: 1
- `linear=473/729,464/729,-304/729;304/729,-551/729,-368/729;-464/729,112/729,-551/729|axisClass=3,1,-1|hitTie|step=0|faces=xm,tmmm,xm|time=pos:11/70`: 1
- `linear=473/729,464/729,-304/729;304/729,-551/729,-368/729;-464/729,112/729,-551/729|axisClass=3,1,-1|hitTie|step=0|faces=xm,tmmm,xm|time=pos:11/78`: 1
- `linear=-551/729,-464/729,112/729;-304/729,473/729,464/729;-368/729,304/729,-551/729|axisClass=1,-3,-1|hitTie|step=0|faces=xm,tpmm,ym|time=pos:3/328`: 1
- `linear=473/729,464/729,304/729;304/729,-551/729,368/729;464/729,-112/729,-551/729|axisClass=3,1,1|hitTie|step=0|faces=xm,tmmm,xm|time=pos:11/70`: 1
- `linear=473/729,464/729,304/729;304/729,-551/729,368/729;464/729,-112/729,-551/729|axisClass=3,1,1|hitTie|step=0|faces=xm,tmmm,xm|time=pos:11/78`: 1
- `linear=-551/729,464/729,-112/729;304/729,473/729,464/729;368/729,304/729,-551/729|axisClass=1,3,1|hitTie|step=0|faces=xm,tpmm,ym|time=pos:3/328`: 1
- `linear=473/729,-464/729,-304/729;-304/729,-551/729,368/729;-464/729,-112/729,-551/729|axisClass=3,-1,-1|hitTie|step=0|faces=xm,tmmm,xm|time=pos:11/78`: 1
- `linear=473/729,-464/729,-304/729;-304/729,-551/729,368/729;-464/729,-112/729,-551/729|axisClass=3,-1,-1|hitTie|step=0|faces=xm,tmmm,xm|time=pos:11/70`: 1
- `linear=-551/729,464/729,112/729;304/729,473/729,-464/729;-368/729,-304/729,-551/729|axisClass=1,3,-1|hitTie|step=0|faces=xm,tpmm,ym|time=pos:3/328`: 1

## Notes

- projected semantic family leaves 23806 exceed max 2000
- family bad_pair_balance has 11834 unique keys, exceeding max 2000
- family forced_zero_denominator has 5128 unique keys, exceeding max 2000
- family terminal_axis_misses_start_interior has 6466 unique keys, exceeding max 2000

