# Phase 6Z.6G Marginal Signed Cone Profile

This is an untrusted diagnostic report. It emits no Lean evidence.

## Decision

- Status: `rejected`
- Accepted for Phase 6Z.6G: False
- Projected semantic family leaves: 40757
- Residual nonidentity terminal fallback ratio: 0.000%

## State Counts

- Signed states visited: 250,000
- Empty-cone states: 1,491
- Empty-cone signed completion width: 160,080

## Terminal Counts

- Identity terminals routed to translation: 11,239
- Nonidentity terminals: 80,032
- No fixed axis: 0
- Axis-cone failures: 79,571
- Residual fallback terminals: 0

## Family Counts

### semantic

- Families: 40,757
- Cases/completion mass: 240,112
- Largest family: 10,080

- `emptyCone:emptyCone|depth=6|support=0,2,4,5|weights=1,1,1,1|normals=-1,0,0;0,1,0;0,0,-1;1,-1,1`: 10,080
- `emptyCone:emptyCone|depth=7|support=4,5,6|weights=6,1,3|normals=0,0,-1;1,-1,1;-1/3,1/3,5/3`: 7,200
- `emptyCone:emptyCone|depth=6|support=0,2,4,6|weights=1,1,1,1|normals=-1,0,0;0,-1,0;0,0,-1;1,1,1`: 5,040
- `emptyCone:emptyCone|depth=6|support=0,2,4,6|weights=1,1,1,1|normals=-1,0,0;0,-1,0;0,0,1;1,1,-1`: 5,040
- `emptyCone:emptyCone|depth=6|support=0,2,4,6|weights=1,1,1,1|normals=-1,0,0;0,1,0;0,0,-1;1,-1,1`: 5,040
- `emptyCone:emptyCone|depth=6|support=0,2,4,6|weights=1,1,1,1|normals=-1,0,0;0,1,0;0,0,1;1,-1,-1`: 5,040
- `emptyCone:emptyCone|depth=7|support=4,5,6|weights=6,1,3|normals=0,0,1;-1,1,-1;1/3,-1/3,-5/3`: 3,600
- `emptyCone:emptyCone|depth=7|support=0,2,4,5|weights=1,1,1,1|normals=-1,0,0;0,1,0;0,0,-1;1,-1,1`: 3,600
- `emptyCone:emptyCone|depth=7|support=4,5,7|weights=3,4,9|normals=0,0,-1;-1,1,-1;4/9,-4/9,7/9`: 2,880
- `emptyCone:emptyCone|depth=8|support=4,5,6|weights=6,1,3|normals=0,0,-1;1,-1,1;-1/3,1/3,5/3`: 2,400

### empty_cone

- Families: 667
- Cases/completion mass: 160,080
- Largest family: 10,080

- `emptyCone|depth=6|support=0,2,4,5|weights=1,1,1,1|normals=-1,0,0;0,1,0;0,0,-1;1,-1,1`: 10,080
- `emptyCone|depth=7|support=4,5,6|weights=6,1,3|normals=0,0,-1;1,-1,1;-1/3,1/3,5/3`: 7,200
- `emptyCone|depth=6|support=0,2,4,6|weights=1,1,1,1|normals=-1,0,0;0,-1,0;0,0,-1;1,1,1`: 5,040
- `emptyCone|depth=6|support=0,2,4,6|weights=1,1,1,1|normals=-1,0,0;0,-1,0;0,0,1;1,1,-1`: 5,040
- `emptyCone|depth=6|support=0,2,4,6|weights=1,1,1,1|normals=-1,0,0;0,1,0;0,0,-1;1,-1,1`: 5,040
- `emptyCone|depth=6|support=0,2,4,6|weights=1,1,1,1|normals=-1,0,0;0,1,0;0,0,1;1,-1,-1`: 5,040
- `emptyCone|depth=7|support=4,5,6|weights=6,1,3|normals=0,0,1;-1,1,-1;1/3,-1/3,-5/3`: 3,600
- `emptyCone|depth=7|support=0,2,4,5|weights=1,1,1,1|normals=-1,0,0;0,1,0;0,0,-1;1,-1,1`: 3,600
- `emptyCone|depth=7|support=4,5,7|weights=3,4,9|normals=0,0,-1;-1,1,-1;4/9,-4/9,7/9`: 2,880
- `emptyCone|depth=8|support=4,5,6|weights=6,1,3|normals=0,0,-1;1,-1,1;-1/3,1/3,5/3`: 2,400

### no_fixed_axis

- Families: 0
- Cases/completion mass: 0
- Largest family: 0


### axis_cone

- Families: 39,924
- Cases/completion mass: 79,571
- Largest family: 264

- `axis_on_cone_boundary|axis=1,1,0|dotSignature=-,-,-,-,0,0,0,-,-,-,-,0,0,0`: 264
- `axis_on_cone_boundary|axis=1,1,0|dotSignature=-,-,-,-,0,0,0,0,-,-,-,-,0,0`: 200
- `axis_on_cone_boundary|axis=1,1,0|dotSignature=-,-,-,-,0,0,0,0,0,-,-,-,-,0`: 160
- `axis_on_cone_boundary|axis=1,-1,0|dotSignature=+,+,-,-,0,-,-,-,-,0,0,0,0,0`: 160
- `axis_on_cone_boundary|axis=1,-1,0|dotSignature=+,+,-,-,0,+,+,+,+,0,0,0,0,0`: 160
- `axis_on_cone_boundary|axis=1,-1,0|dotSignature=+,+,+,+,0,+,+,+,+,0,0,0,0,0`: 144
- `axis_on_cone_boundary|axis=1,1,0|dotSignature=-,-,-,-,0,0,0,0,0,0,+,+,+,+`: 104
- `axis_on_cone_boundary|axis=1,1,0|dotSignature=-,-,-,-,0,0,0,0,0,0,-,-,-,-`: 104
- `axis_on_cone_boundary|axis=1,1,0|dotSignature=-,-,-,-,0,0,0,0,-,-,0,0,-,-`: 100
- `axis_on_cone_boundary|axis=1,1,0|dotSignature=-,-,-,-,0,0,0,0,-,-,0,0,+,+`: 100

### terminal_algebra

- Families: 166
- Cases/completion mass: 461
- Largest family: 9

- `axisMissesStartInterior|badFace=yp|margin=neg:-25/11`: 9
- `axisMissesStartInterior|badFace=yp|margin=neg:-3/11`: 9
- `axisMissesStartInterior|badFace=yp|margin=neg:-4401/410`: 8
- `axisMissesStartInterior|badFace=yp|margin=neg:-61/66`: 7
- `axisMissesStartInterior|badFace=yp|margin=neg:-511/66`: 7
- `axisMissesStartInterior|badFace=yp|margin=neg:-35/66`: 7
- `axisMissesStartInterior|badFace=yp|margin=neg:-2719/1300`: 6
- `axisMissesStartInterior|badFace=yp|margin=neg:-643/462`: 6
- `axisMissesStartInterior|badFace=tpmm|margin=neg:-7/22`: 6
- `axisMissesStartInterior|badFace=yp|margin=neg:-123/22`: 6

## Reasons

- signed state cap reached before completing the requested window
- projected semantic family leaves 40757 exceed max 2000

