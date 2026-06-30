# Phase 6Z.6K.8AP.16DU.9FZ Hcover Smoke Targets

This proof-neutral planner chooses the next bounded hcover smoke targets
from the quotient diagnostics.

## Baseline Target

| Metric | Value |
| --- | ---: |
| `case_count` | `11163` |
| `concrete_family_count` | `1` |
| `support_count` | `1` |
| `integer_scaled_count` | `1` |
| `exact_row_shape_count` | `1` |

Payload:

```json
{
  "integer_scaled": {
    "first_line": [
      -3,
      -3,
      -25
    ],
    "multipliers": [
      1,
      1
    ],
    "second_line": [
      1,
      1,
      1
    ]
  },
  "source_skeletons": [
    "{\"impact\": \"1\", \"kind\": \"interior\"}",
    "{\"impact\": \"index:0\", \"kind\": \"xpStart\"}"
  ],
  "template": "eq_eq_pos_var_first"
}
```

## Mixed Target

| Metric | Value |
| --- | ---: |
| `case_count` | `11573` |
| `concrete_family_count` | `4` |
| `support_count` | `4` |
| `integer_scaled_count` | `4` |
| `exact_row_shape_count` | `4` |

Payload:

```json
{
  "row_property": "89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df",
  "source_skeletons": [
    "{\"impact\": \"1\", \"kind\": \"interior\"}",
    "{\"impact\": \"index:0\", \"kind\": \"xpStart\"}"
  ],
  "template": "eq_eq_pos_var_first"
}
```

## Rejected Stress Target

| Metric | Value |
| --- | ---: |
| `case_count` | `29662` |
| `concrete_family_count` | `103` |
| `support_count` | `None` |
| `integer_scaled_count` | `None` |
| `exact_row_shape_count` | `None` |

Payload:

```json
{
  "row_property": "89150a165454d85708caa44cd6a931ee7e3e1f1eebf92fc2a41907dc9743a8df",
  "template": "eq_eq_pos_var_first"
}
```

## Decision

- Status: `targets-selected-generator-obligation-open`.
- Baseline gate: Emit a bounded hcover smoke for the baseline group first.  It should use TemplateLanguageDomainCoversIdentityRange.single or concat and the candidate-union/source-position erasure path, but it is allowed to be close to one concrete family.
- Mixed gate: After the baseline builds, emit a mixed source-skeleton/row smoke over the selected multi-family group.  This is the first useful test that candidate-union hcover can share above exact source indices without hiding everything in a template-only predicate.
- Do not start with: Do not start with the template_row stress group: it has high case count but hides too many distinct source obligations.
