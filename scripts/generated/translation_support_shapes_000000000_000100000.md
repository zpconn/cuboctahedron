# Phase 6Z.1 Translation Support Row-Shape Profile

This report is diagnostic only; Lean must check generated shape modules.

| Metric | Value |
| --- | ---: |
| Pair words scanned | 100,000 |
| Identity-linear words | 5,565 |
| GoodDirection survivors | 39,710 |
| Row-shape cases | 39,710 |
| Unique row shapes | 8,970 |
| Max cases per shape | 10,435 |
| Singleton row shapes | 4,843 |

Decision: **rejected**

- row-shape count exceeds the hard gate of 500

## Top Row Shapes

1. `81bceefacf1dbd65297009949844430d9fe5fec27db2d104bd6322bb0b11c608`: 10,435 cases; sources=[{'kind': 'interior', 'impact': 1, 'face': 'tmmm'}, {'kind': 'xpStart', 'index': 0}]; multipliers=['1', '1']; first_ab=['-1', '-1']; second_ab=['1', '1']
2. `077d46715000fa07e732235f9bca1403bcc7c843437edd0a0c78ae108d1b7dfb`: 4,433 cases; sources=[{'kind': 'interior', 'impact': 1, 'face': 'tmmp'}, {'kind': 'xpStart', 'index': 1}]; multipliers=['1', '1']; first_ab=['-1', '1']; second_ab=['1', '-1']
3. `766a91d47bd038d0c101f259bd7210b05d0265c0c0e7a739538f2b073ce85669`: 2,342 cases; sources=[{'kind': 'interior', 'impact': 1, 'face': 'tmpm'}, {'kind': 'xpStart', 'index': 2}]; multipliers=['1', '1']; first_ab=['1', '-1']; second_ab=['-1', '1']
4. `4ed28d68bff661ac01cecdd746c2ba2147dc14140b58f397e343dea5333a521d`: 713 cases; sources=[{'kind': 'interior', 'impact': 3, 'face': 'zm'}, {'kind': 'xpStart', 'index': 0}]; multipliers=['1', '1']; first_ab=['-1', '-1']; second_ab=['1', '1']
5. `5629023722114ec881563e24075c690e529814c92620ddcea23620e4e24f4202`: 404 cases; sources=[{'kind': 'interior', 'impact': 1, 'face': 'tmpp'}, {'kind': 'xpStart', 'index': 3}]; multipliers=['1', '1']; first_ab=['1', '1']; second_ab=['-1', '-1']
6. `ecde05a5266ae0d4ba48fb10287138eb5503de0b837a7e31fff992e51c406a96`: 254 cases; sources=[{'kind': 'interior', 'impact': 3, 'face': 'zp'}, {'kind': 'xpStart', 'index': 1}]; multipliers=['1', '1']; first_ab=['-1', '1']; second_ab=['1', '-1']
7. `ceea5bd883fb07303626d1b676df5ff9b3498fb2471d544752e2a57e5f1f2347`: 118 cases; sources=[{'kind': 'xpStart', 'index': 0}, {'kind': 'ordering', 'step': 3}]; multipliers=['3/28', '1']; first_ab=['1', '1']; second_ab=['-3/28', '-3/28']
8. `76d786b172e6d80338509ec22519f2467f594b05ec3070a9bcaf4ee138faeef7`: 104 cases; sources=[{'kind': 'interior', 'impact': 3, 'face': 'zm'}, {'kind': 'xpStart', 'index': 2}]; multipliers=['1', '1']; first_ab=['1', '-1']; second_ab=['-1', '1']
9. `f96ef326cbfbb24f821353df95df61a98dd47089e4b79e559ab8905d7e3529bf`: 100 cases; sources=[{'kind': 'xpStart', 'index': 0}, {'kind': 'ordering', 'step': 3}]; multipliers=['1/4', '1']; first_ab=['1', '1']; second_ab=['-1/4', '-1/4']
10. `89d26b724e0a9fac29e3bb6913d500435e96f75d38400c157da42c1ad7fd8a07`: 81 cases; sources=[{'kind': 'interior', 'impact': 4, 'face': 'xp'}, {'kind': 'xpStart', 'index': 0}]; multipliers=['1', '31/51']; first_ab=['-31/51', '-31/51']; second_ab=['1', '1']
11. `1d8f80ca8ab49b8c2156c34cd2cec66b648d7d0483e949d8c983bb43bc98af58`: 77 cases; sources=[{'kind': 'interior', 'impact': 4, 'face': 'xp'}, {'kind': 'xpStart', 'index': 1}]; multipliers=['1', '31/51']; first_ab=['-31/51', '31/51']; second_ab=['1', '-1']
12. `c3235c1f4cad689dca82c7cacf978dd7fc9b2391bcb365c179129fc963a16749`: 72 cases; sources=[{'kind': 'xpStart', 'index': 0}, {'kind': 'ordering', 'step': 3}]; multipliers=['9/100', '1']; first_ab=['1', '1']; second_ab=['-9/100', '-9/100']
13. `32c44141910b389ba19acc6e40df4b0dc21ab890ac436be11f6cf2295a5be6c4`: 64 cases; sources=[{'kind': 'xpStart', 'index': 0}, {'kind': 'ordering', 'step': 3}]; multipliers=['9/20', '1']; first_ab=['1', '1']; second_ab=['-9/20', '-9/20']
14. `d7dafee339f2dfd35262d507238723469b301da81ef4323f4dcdbe1cd61da055`: 64 cases; sources=[{'kind': 'xpStart', 'index': 0}, {'kind': 'ordering', 'step': 3}]; multipliers=['9/52', '1']; first_ab=['1', '1']; second_ab=['-9/52', '-9/52']
15. `a2c6899ce0db3e1ea6e9b05bf09ad2c3c208da7aec5c3af895d1e0d7bfc20c4b`: 51 cases; sources=[{'kind': 'interior', 'impact': 8, 'face': 'ym'}, {'kind': 'xpStart', 'index': 0}]; multipliers=['1', '1']; first_ab=['-1', '-1']; second_ab=['1', '1']
16. `062bbb16398a00f3cce6b52cad739e79f213c996c4de35bf919784a214e5fd20`: 48 cases; sources=[{'kind': 'xpStart', 'index': 1}, {'kind': 'ordering', 'step': 3}]; multipliers=['3/28', '1']; first_ab=['1', '-1']; second_ab=['-3/28', '3/28']
17. `961e851900df9cb97c7d6207d0a6301c250c59fd5120fbb3f0a45eaba0fcec22`: 44 cases; sources=[{'kind': 'interior', 'impact': 4, 'face': 'xm'}, {'kind': 'xpStart', 'index': 1}]; multipliers=['1', '13/15']; first_ab=['-13/15', '13/15']; second_ab=['1', '-1']
18. `051c4c8525e50a31377b2983c280f107317209389be1a84353367ab7af650ed5`: 43 cases; sources=[{'kind': 'interior', 'impact': 4, 'face': 'tmmp'}, {'kind': 'xpStart', 'index': 1}]; multipliers=['1', '38/15']; first_ab=['-38/15', '38/15']; second_ab=['1', '-1']
19. `6e2de6a0bf0261d92bcad7bcd56131af7f7d2e93e3e393d5c18818c52b6584ba`: 42 cases; sources=[{'kind': 'interior', 'impact': 7, 'face': 'xp'}, {'kind': 'xpStart', 'index': 0}]; multipliers=['1', '1']; first_ab=['-1', '-1']; second_ab=['1', '1']
20. `7661b61dbaea74b7afd3e099480927cc484e6f903e57e9b21428c43d8444c174`: 42 cases; sources=[{'kind': 'xpStart', 'index': 2}, {'kind': 'ordering', 'step': 3}]; multipliers=['1/4', '1']; first_ab=['-1', '1']; second_ab=['1/4', '-1/4']
21. `b093c980155a6aede7cc4a2b395db069259321c697ba6b62efd552aeb66e2330`: 42 cases; sources=[{'kind': 'interior', 'impact': 8, 'face': 'xp'}, {'kind': 'xpStart', 'index': 0}]; multipliers=['1', '1']; first_ab=['-1', '-1']; second_ab=['1', '1']
22. `b32ddbbbf98cef4d939eb3e00b977bc6784ea79777ec7054cf66bea95eba6d8f`: 42 cases; sources=[{'kind': 'interior', 'impact': 6, 'face': 'xp'}, {'kind': 'xpStart', 'index': 0}]; multipliers=['1', '1']; first_ab=['-1', '-1']; second_ab=['1', '1']
23. `fb9f9aa7fc09b73bb4c111d7ca0dbcf30c4175dcfabdbbc2adaa2fa7e6e1be1c`: 40 cases; sources=[{'kind': 'interior', 'impact': 4, 'face': 'xm'}, {'kind': 'xpStart', 'index': 1}]; multipliers=['1', '31/33']; first_ab=['-31/33', '31/33']; second_ab=['1', '-1']
24. `86bcdd341bfdbf0fa00db295078df4e18b2c4e436c438d6806f7e93fc1c7af2a`: 38 cases; sources=[{'kind': 'interior', 'impact': 6, 'face': 'ym'}, {'kind': 'xpStart', 'index': 0}]; multipliers=['1', '1']; first_ab=['-1', '-1']; second_ab=['1', '1']
