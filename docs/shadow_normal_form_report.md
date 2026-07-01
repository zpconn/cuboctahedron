# Shadow Normal-Form Report

This report tracks the first exact external validation of the
square-parity / triangular-shadow classifier.  The profiler is
`scripts/shadow_normal_form_profile.py`.

The profiler is not trusted proof.  It is an exact arithmetic diagnostic used
to decide whether the holonomy-normal-form theorem should be formalized in
Lean.

## Convention

The product order matches the current Lean and `scripts/exact_profile.py`
interfaces:

```text
R(w[0]) * R(w[1]) * ... * R(w[12]) * R(x)
```

The final `R(x)` is the started `X+` pair reflection.  Square parity is
tracked through all 14 factors.  The triangular shadow appends the
square-parity-conjugated projective triangular pair and cancels adjacent equal
triangular projective letters.

## Calibration Runs

| range/sample | scanned | empty shadow | identity linear | mismatches | elapsed |
| --- | ---: | ---: | ---: | ---: | ---: |
| `[0,1000)` | 1,000 | 138 | 138 | 0 | 0.231s |
| random ranks, seed 1 | 20 | n/a | n/a | 0 | n/a |
| `[0,10000)` | 10,000 | 712 | 712 | 0 | 2.360s |
| `[10000000,10001000)` | 1,000 | 42 | 42 | 0 | 0.241s |
| `[30000000,30001000)` | 1,000 | 19 | 19 | 0 | 0.246s |
| `[60000000,60001000)` | 1,000 | 0 | 0 | 0 | 0.250s |
| `[90000000,90001000)` | 1,000 | 1 | 1 | 0 | 0.247s |
| window runner `[0,20000)`, 4 jobs | 20,000 | 1,091 | 1,091 | 0 | 1.239s |
| window runner `[0,100000)`, 4 jobs | 100,000 | 5,565 | 5,565 | 0 | 6.106s |
| full window runner `[0,97297200)`, 16 jobs | 97,297,200 | 2,468,088 | 2,468,088 | 0 | 1842.949s |

All sampled windows satisfy:

```text
reducedShadow(word) = []  iff  totalLinearOfPairWord(word) = I
```

The final square parity distribution was `000` in every sampled valid word,
as expected from the pair counts together with the final started `X` factor.

## Artifacts

- `scripts/run_shadow_normal_form_windows.py`
- `scripts/generated/shadow_normal_form_0_1000.json`
- `scripts/generated/shadow_normal_form_0_1000.md`
- `scripts/generated/shadow_normal_form_random20.json`
- `scripts/generated/shadow_normal_form_0_10000.json`
- `scripts/generated/shadow_normal_form_0_10000.md`
- `scripts/generated/shadow_normal_form_10000000_10001000.json`
- `scripts/generated/shadow_normal_form_10000000_10001000.md`
- `scripts/generated/shadow_normal_form_30000000_30001000.json`
- `scripts/generated/shadow_normal_form_30000000_30001000.md`
- `scripts/generated/shadow_normal_form_60000000_60001000.json`
- `scripts/generated/shadow_normal_form_60000000_60001000.md`
- `scripts/generated/shadow_normal_form_90000000_90001000.json`
- `scripts/generated/shadow_normal_form_90000000_90001000.md`
- `scripts/generated/shadow_windows_smoke_0_20000.json`
- `scripts/generated/shadow_windows_smoke_0_20000.md`
- `scripts/generated/shadow_windows_smoke_0_20000/window_000000000_000005000.json`
- `scripts/generated/shadow_windows_smoke_0_20000/window_000005000_000010000.json`
- `scripts/generated/shadow_windows_smoke_0_20000/window_000010000_000015000.json`
- `scripts/generated/shadow_windows_smoke_0_20000/window_000015000_000020000.json`
- `scripts/generated/shadow_windows_calibration_0_100000.json`
- `scripts/generated/shadow_windows_calibration_0_100000.md`
- `scripts/generated/shadow_windows_calibration_0_100000/window_000000000_000025000.json`
- `scripts/generated/shadow_windows_calibration_0_100000/window_000025000_000050000.json`
- `scripts/generated/shadow_windows_calibration_0_100000/window_000050000_000075000.json`
- `scripts/generated/shadow_windows_calibration_0_100000/window_000075000_000100000.json`
- `scripts/generated/shadow_windows_full.json`
- `scripts/generated/shadow_windows_full.md`
- `scripts/generated/shadow_windows_full/`

## Decision

The full exact external scan passed the Track 1 profiler gate:

```text
reducedShadow(word) = []  iff  totalLinearOfPairWord(word) = I
```

for every one of the `97,297,200` pair words.

The full confusion matrix was:

| shadow / linear | identity | nonidentity |
| --- | ---: | ---: |
| empty | 2,468,088 | 0 |
| nonempty | 0 | 94,829,112 |

The final parity distribution was exactly:

```text
000: 97,297,200
```

This does not prove the theorem in Lean, but it validates that the next Lean
formalization target should be the square-parity / triangular-shadow normal
form rather than more rank-interval evidence.

Next steps:

1. implement a small Lean module for square parity, triangular projective
   letters, shadow scan, and stack reduction;
2. prove the product-order bridge to `totalLinearOfPairWord`;
3. prove the mod-3 triangular theorem that a nonempty reduced triangular
   shadow cannot have identity linear product;
4. derive the Lean theorem:

   ```lean
   totalLinearOfPairWord w = (matId : Mat3 Rat) <->
     reduceShadow (triangularShadow w) = []
   ```

   with the exact theorem shape adapted to the final definitions.

The `[0,100000)` calibration used `/usr/bin/time -v` and reported:

```text
User time: 24.20s
Wall time: 0:06.14
CPU: 394%
Maximum resident set size: 18,240 kB
```

At this throughput, a full external scan should be feasible as a low-memory
profiling job.  It is still not a Lean proof; it is the acceptance gate before
formalizing the classifier.

The full scan used `/usr/bin/time -v` and reported:

```text
User time: 28,898.10s
Wall time: 30:42.98
CPU: 1568%
Maximum resident set size: 20,160 kB
```

## Lean Core Checkpoint

The first Lean-side normal-form infrastructure is now in:

- `Cuboctahedron/Search/ShadowNormalForm.lean`

It defines:

- `SqParity`;
- `TriLetter`;
- square-pair parity updates;
- projective triangular action by square parity;
- `ShadowState`;
- `startedPairFactors`;
- `triangularShadowOfPairWord`;
- `reducedShadowOfPairWord`;
- `finalSquareParityOfPairWord`.

Focused build:

```bash
lake build Cuboctahedron.Search.ShadowNormalForm
```

Result:

```text
Built Cuboctahedron.Search.ShadowNormalForm (1.4s)
Build completed successfully
```

This is Lean-checked code, but it is not yet the full shadow normal-form
theorem.  The next proof obligations are:

1. prove that `startedPairFactors` matches the product order of
   `totalLinearOfPairWord`;
2. prove that square parity is identity for valid pair words;
3. prove the mod-3 triangular product theorem for nonempty reduced shadows;
4. derive the identity classifier theorem in Lean.

## Linear Product Bridge Checkpoint

The first proof obligation above now has a Lean bridge module:

- `Cuboctahedron/Search/ShadowNormalFormLinear.lean`

It defines `pairLinearProductFactors`, a list product over the exact pair
factor order consumed by the shadow scanner, and proves:

```lean
theorem totalLinearOfPairWord_eq_pairLinearProductFactors
    (w : PairWord) :
    totalLinearOfPairWord w =
      pairLinearProductFactors (startedPairFactors w)
```

Focused build:

```bash
lake build Cuboctahedron.Search.ShadowNormalFormLinear
```

Result:

```text
Built Cuboctahedron.Search.ShadowNormalFormLinear (4.0s)
Build completed successfully
```

Remaining Lean proof gates are now the valid-count parity theorem, triangular
adjacent-cancellation/product theorem, and the mod-3 nonidentity theorem for
nonempty reduced triangular shadows.

## Square-Parity List Checkpoint

`Cuboctahedron/Search/ShadowNormalForm.lean` now also proves the list-level
square-parity invariant.  The key theorem is:

```lean
theorem shadowStateOfPairList_parity (pairs : List PairId) :
    (shadowStateOfPairList pairs).parity =
      { x := pairOccursOdd PairId.x pairs
        y := pairOccursOdd PairId.y pairs
        z := pairOccursOdd PairId.z pairs }
```

with the immediate identity corollary:

```lean
theorem finalSquareParityOfPairList_eq_id_of_not_occurs_odd
    {pairs : List PairId}
    (hx : pairOccursOdd PairId.x pairs = false)
    (hy : pairOccursOdd PairId.y pairs = false)
    (hz : pairOccursOdd PairId.z pairs = false) :
    (shadowStateOfPairList pairs).parity = SqParity.id
```

Focused builds:

```bash
lake build Cuboctahedron.Search.ShadowNormalForm
lake build Cuboctahedron.Search.ShadowNormalFormLinear
```

Results:

```text
Built Cuboctahedron.Search.ShadowNormalForm (1.9s)
Built Cuboctahedron.Search.ShadowNormalFormLinear (1.3s)
Build completed successfully
```

This proves that the scanner's square-parity component is exactly the parity
of square-pair occurrences in its input list.  The remaining parity gate is to
connect `ValidPairWord w` to even `x/y/z` occurrence in
`startedPairFactors w`.

The same module now also proves the factor-list/toList bridge:

```lean
theorem startedPairFactors_eq_toList_append (w : PairWord) :
    startedPairFactors w = w.toList ++ [PairId.x]
```

Focused build:

```bash
lake build Cuboctahedron.Search.ShadowNormalForm
```

Result:

```text
Built Cuboctahedron.Search.ShadowNormalForm (2.1s)
Build completed successfully
```

This isolates the remaining valid-count parity proof from the concrete
`Fin 13` indexing used by the product-order bridge.

## Valid-Count Square-Parity Checkpoint

The remaining square-parity proof gate is now Lean-checked in:

- `Cuboctahedron/Search/ShadowNormalFormCounts.lean`

This module connects the list-level parity invariant to the repository's
`ValidPairWord` predicate.  It proves the started factor list has even square
pair occurrence counts:

```lean
theorem startedPairFactors_count_x_of_valid
    {w : PairWord} (hvalid : ValidPairWord w) :
    (startedPairFactors w).count PairId.x = 2

theorem startedPairFactors_count_y_of_valid
    {w : PairWord} (hvalid : ValidPairWord w) :
    (startedPairFactors w).count PairId.y = 2

theorem startedPairFactors_count_z_of_valid
    {w : PairWord} (hvalid : ValidPairWord w) :
    (startedPairFactors w).count PairId.z = 2
```

and derives the semantic square-parity result:

```lean
theorem finalSquareParityOfPairWord_eq_id_of_valid
    {w : PairWord} (hvalid : ValidPairWord w) :
    finalSquareParityOfPairWord w = SqParity.id
```

Focused build:

```bash
lake build Cuboctahedron.Search.ShadowNormalFormCounts
```

Result:

```text
Built Cuboctahedron.Search.ShadowNormalFormCounts (2.3s)
Build completed successfully
```

Accepted: Track 1 proof gate 2 is complete.  For every valid started
pair-word, the square part of the holonomy normal form is Lean-proved to be
the identity parity.  The remaining Track 1 proof gates are now:

1. adjacent triangular cancellation preserves the triangular linear product;
2. a nonempty reduced triangular shadow cannot have identity triangular
   product, using the planned mod-3 scaled-integer argument;
3. the final Lean identity classifier theorem connecting
   `totalLinearOfPairWord w = matId` with `reducedShadowOfPairWord w = []`.

## Triangular Product Checkpoint

The first triangular algebra layer is now Lean-checked in:

- `Cuboctahedron/Search/ShadowNormalFormTriangular.lean`

It defines:

```lean
def triLinear (t : TriLetter) : Mat3 Rat
def triProduct : List TriLetter -> Mat3 Rat
def triProductRevStack : List TriLetter -> Mat3 Rat
```

and proves the local algebra needed by stack cancellation:

```lean
theorem triLinear_mul_self (t : TriLetter) :
    matMul (triLinear t) (triLinear t) = (matId : Mat3 Rat)

theorem triProduct_append (xs ys : List TriLetter) :
    triProduct (xs ++ ys) = matMul (triProduct xs) (triProduct ys)

theorem triProductRevStack_eq_triProduct_reverse
    (stack : List TriLetter) :
    triProductRevStack stack = triProduct stack.reverse

theorem triProductRevStack_pushReduced
    (t : TriLetter) (stack : List TriLetter) :
    triProductRevStack (ShadowState.pushReduced t stack) =
      matMul (triProductRevStack stack) (triLinear t)
```

Focused build:

```bash
lake build Cuboctahedron.Search.ShadowNormalFormTriangular
```

Result:

```text
Built Cuboctahedron.Search.ShadowNormalFormTriangular (6.1s)
Build completed successfully
```

Accepted: the adjacent-cancellation/product-preservation core is in place.
The remaining triangular work is to connect this local stack lemma to the full
scanner's acted triangular shadow and then prove the mod-3 theorem that a
nonempty reduced triangular product is never the identity.

## Scanner Reduced-Shadow Product Checkpoint

The triangular module now also connects the local cancellation lemma to the
actual scanner state.  It proves that the scanner's reduced stack and
unreduced triangular shadow have the same triangular product:

```lean
theorem shadowStateOfPairList_reducedRev_product_eq_shadowRev_product
    (pairs : List PairId) :
    triProductRevStack (shadowStateOfPairList pairs).reducedRev =
      triProductRevStack (shadowStateOfPairList pairs).shadowRev

theorem reducedShadow_triProduct_eq_shadow_triProduct
    (pairs : List PairId) :
    triProduct (ShadowState.reducedShadow (shadowStateOfPairList pairs)) =
      triProduct (ShadowState.shadow (shadowStateOfPairList pairs))
```

Focused build:

```bash
lake build Cuboctahedron.Search.ShadowNormalFormTriangular
```

Result:

```text
Built Cuboctahedron.Search.ShadowNormalFormTriangular (6.1s)
Build completed successfully
```

Accepted: the full shadow scanner is now Lean-proved to preserve triangular
linear product under adjacent stack cancellation.  The remaining Track 1
algebra gate is the mod-3 theorem that a nonempty reduced triangular product
cannot be identity.
