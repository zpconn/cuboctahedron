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

All sampled windows satisfy:

```text
reducedShadow(word) = []  iff  totalLinearOfPairWord(word) = I
```

The final square parity distribution was `000` in every sampled valid word,
as expected from the pair counts together with the final started `X` factor.

## Artifacts

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

## Decision

The sampled exact evidence supports continuing with Track 1.  The next step is
to make the profiler full-run capable without turning Lean into the executor:

1. add checkpoint/range aggregation for the shadow profiler;
2. run the full external exact scan or parallel disjoint-window scan;
3. require zero mismatches and empty-shadow count `2,468,088`;
4. only then begin the Lean square-parity / triangular-shadow core theorem.
