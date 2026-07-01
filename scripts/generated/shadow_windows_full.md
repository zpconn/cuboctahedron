# Shadow Normal-Form Window Aggregate

- Range: `[0, 97297200)`
- Window size: `250000`
- Jobs: `16`
- Scanned words: `97,297,200`
- Empty reduced shadow: `2,468,088`
- Identity linear words: `2,468,088`
- Mismatches: `0`
- Elapsed seconds: `1842.949`

## Confusion Matrix

| shadow / linear | identity | nonidentity |
| --- | ---: | ---: |
| empty | `2,468,088` | `0` |
| nonempty | `0` | `94,829,112` |

## Window Status

| status | count |
| --- | ---: |
| completed | `390` |
| reused existing | `0` |
