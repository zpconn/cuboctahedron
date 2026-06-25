# Phase 6Z.6G Marginal Signed Cone Profile

This is an untrusted diagnostic report. It emits no Lean evidence.

## Decision

- Status: `rejected`
- Accepted for Phase 6Z.6G: False
- Projected semantic family leaves: 85740
- Residual nonidentity terminal fallback ratio: 0.000%

## State Counts

- Signed states visited: 500,000
- Empty-cone states: 3,143
- Empty-cone signed completion width: 389,856

## Terminal Counts

- Identity terminals routed to translation: 14,155
- Nonidentity terminals: 168,365
- No fixed axis: 0
- Axis-cone failures: 167,551
- Residual fallback terminals: 0

## Family Counts

### semantic

- Families: 85,740
- Cases/completion mass: 558,221
- Largest family: 40,320

- `emptyCone:emptyCone|depth=5|support=0,2,4,5|weights=1,1,1,1|normals=-1,0,0;0,-1,0;0,0,-1;1,1,1`: 40,320
- `emptyCone:emptyCone|depth=6|support=0,5,6|weights=6,1,3|normals=-1,0,0;1,-1,1;5/3,1/3,-1/3`: 10,080
- `emptyCone:emptyCone|depth=6|support=2,5,6|weights=6,1,3|normals=0,-1,0;-1,1,-1;1/3,5/3,1/3`: 10,080
- `emptyCone:emptyCone|depth=6|support=0,5,6|weights=6,1,3|normals=-1,0,0;1,-1,-1;5/3,1/3,1/3`: 10,080
- `emptyCone:emptyCone|depth=6|support=2,5,6|weights=6,1,3|normals=0,-1,0;-1,1,1;1/3,5/3,-1/3`: 10,080
- `emptyCone:emptyCone|depth=6|support=0,2,4,6|weights=1,1,1,1|normals=-1,0,0;0,-1,0;0,0,-1;1,1,1`: 5,040
- `emptyCone:emptyCone|depth=6|support=4,5,6|weights=6,1,3|normals=0,0,-1;1,-1,1;-1/3,1/3,5/3`: 5,040
- `emptyCone:emptyCone|depth=6|support=0,2,4,6|weights=1,5,1,3|normals=-1,0,0;0,-1,0;0,0,-1;1/3,5/3,1/3`: 5,040
- `emptyCone:emptyCone|depth=6|support=4,5,6|weights=6,1,3|normals=0,0,-1;-1,1,1;1/3,-1/3,5/3`: 5,040
- `emptyCone:emptyCone|depth=6|support=0,2,4,6|weights=5,1,1,3|normals=-1,0,0;0,-1,0;0,0,-1;5/3,1/3,1/3`: 5,040

### empty_cone

- Families: 1,465
- Cases/completion mass: 389,856
- Largest family: 40,320

- `emptyCone|depth=5|support=0,2,4,5|weights=1,1,1,1|normals=-1,0,0;0,-1,0;0,0,-1;1,1,1`: 40,320
- `emptyCone|depth=6|support=0,5,6|weights=6,1,3|normals=-1,0,0;1,-1,1;5/3,1/3,-1/3`: 10,080
- `emptyCone|depth=6|support=2,5,6|weights=6,1,3|normals=0,-1,0;-1,1,-1;1/3,5/3,1/3`: 10,080
- `emptyCone|depth=6|support=0,5,6|weights=6,1,3|normals=-1,0,0;1,-1,-1;5/3,1/3,1/3`: 10,080
- `emptyCone|depth=6|support=2,5,6|weights=6,1,3|normals=0,-1,0;-1,1,1;1/3,5/3,-1/3`: 10,080
- `emptyCone|depth=6|support=0,2,4,6|weights=1,1,1,1|normals=-1,0,0;0,-1,0;0,0,-1;1,1,1`: 5,040
- `emptyCone|depth=6|support=4,5,6|weights=6,1,3|normals=0,0,-1;1,-1,1;-1/3,1/3,5/3`: 5,040
- `emptyCone|depth=6|support=0,2,4,6|weights=1,5,1,3|normals=-1,0,0;0,-1,0;0,0,-1;1/3,5/3,1/3`: 5,040
- `emptyCone|depth=6|support=4,5,6|weights=6,1,3|normals=0,0,-1;-1,1,1;1/3,-1/3,5/3`: 5,040
- `emptyCone|depth=6|support=0,2,4,6|weights=5,1,1,3|normals=-1,0,0;0,-1,0;0,0,-1;5/3,1/3,1/3`: 5,040

### no_fixed_axis

- Families: 0
- Cases/completion mass: 0
- Largest family: 0


### axis_cone

- Families: 83,933
- Cases/completion mass: 167,551
- Largest family: 576

- `axis_on_cone_boundary|axis=1,1,0|dotSignature=-,-,-,-,0,0,-,-,-,-,0,0,0,0`: 576
- `axis_on_cone_boundary|axis=1,1,0|dotSignature=-,-,-,-,0,0,0,-,-,-,-,0,0,0`: 512
- `axis_on_cone_boundary|axis=1,1,0|dotSignature=-,-,-,-,0,0,0,0,-,-,-,-,0,0`: 352
- `axis_on_cone_boundary|axis=1,-1,0|dotSignature=+,+,-,-,0,-,-,-,-,0,0,0,0,0`: 320
- `axis_on_cone_boundary|axis=1,-1,0|dotSignature=+,+,-,-,0,+,+,+,+,0,0,0,0,0`: 320
- `axis_on_cone_boundary|axis=1,1,0|dotSignature=-,-,-,-,0,-,-,-,-,0,0,0,0,0`: 288
- `axis_on_cone_boundary|axis=1,1,0|dotSignature=-,-,-,-,0,0,0,0,0,-,-,-,-,0`: 272
- `axis_on_cone_boundary|axis=1,1,0|dotSignature=-,-,-,-,0,0,-,-,0,-,-,0,0,0`: 256
- `axis_on_cone_boundary|axis=1,1,0|dotSignature=-,-,-,-,0,0,-,+,+,-,0,0,0,0`: 208
- `axis_on_cone_boundary|axis=1,-1,0|dotSignature=+,+,-,-,0,0,-,-,-,-,0,0,0,0`: 176

### terminal_algebra

- Families: 342
- Cases/completion mass: 814
- Largest family: 13

- `axisMissesStartInterior|badFace=yp|margin=neg:-25/11`: 13
- `axisMissesStartInterior|badFace=yp|margin=neg:-3/11`: 10
- `axisMissesStartInterior|badFace=yp|margin=neg:-19/11`: 10
- `axisMissesStartInterior|badFace=yp|margin=neg:-141/22`: 9
- `axisMissesStartInterior|badFace=yp|margin=neg:-3/22`: 9
- `axisMissesStartInterior|badFace=yp|margin=neg:-35/66`: 8
- `axisMissesStartInterior|badFace=yp|margin=neg:-35/22`: 7
- `axisMissesStartInterior|badFace=yp|margin=neg:-53/33`: 7
- `axisMissesStartInterior|badFace=yp|margin=neg:-511/66`: 7
- `axisMissesStartInterior|badFace=yp|margin=neg:-2719/1300`: 6

## Reasons

- signed state cap reached before completing the requested window
- projected semantic family leaves 85740 exceed max 2000

