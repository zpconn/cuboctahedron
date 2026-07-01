# Shadow Normal-Form Window Aggregate

- Range: `[0, 20000)`
- Window size: `5000`
- Jobs: `4`
- Scanned words: `20,000`
- Empty reduced shadow: `1,091`
- Identity linear words: `1,091`
- Mismatches: `0`
- Elapsed seconds: `1.239`

## Confusion Matrix

| shadow / linear | identity | nonidentity |
| --- | ---: | ---: |
| empty | `1,091` | `0` |
| nonempty | `0` | `18,909` |

## Window Status

| status | count |
| --- | ---: |
| completed | `4` |
| reused existing | `0` |
