# Phase 6Z.6K.8AP.16DU.9FY Hcover Route Frontier

This is a proof-neutral planning audit over recent bounded diagnostics.
It records what is reusable, what is rejected, and what the next
generated hcover smoke should target.

## Accepted Downstream Surfaces

| Metric | Value |
| --- | ---: |
| `semantic_contract_present` | `True` |
| `source_language_validation_failures` | `0` |
| `source_language_obligations` | `68` |
| `source_index_state_families_sampled` | `125` |

## Rejected Or Insufficient Membership Coordinates

| Metric | Value |
| --- | ---: |
| `mask_to_candidate_map_status` | `rejected-signature-local` |
| `candidate_set_status` | `candidate-for-sharing` |
| `unique_mask_to_candidate_maps` | `757` |
| `unique_candidate_sets` | `717` |
| `positive_survivor_signatures` | `757` |

## Quotient Frontier

| Metric | Value |
| --- | ---: |
| `concrete_families` | `649` |
| `template_source_skeletons_row_groups` | `138` |
| `template_source_skeletons_row_multi_family_cases` | `63498` |
| `template_row_groups` | `25` |
| `template_row_multi_family_cases` | `63638` |
| `normal_form_template_integer_groups` | `583` |
| `normal_form_template_skeleton_integer_groups` | `616` |

## Decision

- Status: `frontier-recorded-generator-obligation-open`.
- Next gate: Target a bounded generated hcover smoke whose domain is keyed above exact rank/mask maps but below template-only facts.  The candidate should reuse source-position obligations and row normal forms, then prove candidate-union membership through TemplateLanguageDomainCoversIdentityRange.single/concat rather than through exact mask-to-candidate maps.

Do not use:
- exact mask-to-candidate maps as production hcover.
- exact candidate sets as production hcover without further quotienting.
- template-only quotients that hide multiple source obligations.
- rank/mask singleton tables.
