# Shadow Normal-Form Window Aggregate

- Range: `[0, 100000)`
- Window size: `25000`
- Jobs: `4`
- Scanned words: `100,000`
- Empty reduced shadow: `5,565`
- Identity linear words: `5,565`
- Mismatches: `0`
- Elapsed seconds: `6.106`

## Confusion Matrix

| shadow / linear | identity | nonidentity |
| --- | ---: | ---: |
| empty | `5,565` | `0` |
| nonempty | `0` | `94,435` |

## Window Status

| status | count |
| --- | ---: |
| completed | `4` |
| reused existing | `0` |
