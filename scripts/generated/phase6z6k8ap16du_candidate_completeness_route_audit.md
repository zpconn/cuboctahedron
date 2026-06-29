# Phase 6Z.6K.8AP.16DU.1 candidate-completeness route audit

This report is not proof evidence.  It audits the obvious signature
route for proving the AP16DU catalog-completeness premise.

- Status: `rejected-rank-local-signature-route`
- Range: `[0, 5000)`
- Profiled GoodDirection cases: `4693`
- Cases represented by range signatures: `4693`
- Ranks with GoodDirection in range: `487`
- Candidate groups in range catalog: `125`
- Signature count in range: `464`
- Singleton signatures: `444`
- Singleton-signature case mass: `4329`
- Non-singleton signatures: `20`
- Candidate keys match range catalog: `True`

## Decision

The range-specific candidate catalog and the positive-survivor
signature catalog agree on candidate keys, but the signature route is
still too rank-local: nearly every signature anchors only one rank.
AP16DU should therefore not prove `hcomplete` by emitting one
signature/rank theorem per signature.  The next route must prove
candidate membership from a reusable source-position/state predicate or
compact trace bridge.

## Top Signatures

| Signature | Ranks | Good masks | Cases | Candidate keys |
| --- | ---: | ---: | ---: | ---: |
| `1a2d3b5d48d95e0791284c07c5185ae55ed3b1c2b5174f09ce6d028dffe7faa2` | `2` | `11` | `22` | `7` |
| `21528d33c6c44be05c153947d7625b6be2387bbba98d19072e65eb7ebcc72405` | `2` | `11` | `22` | `4` |
| `2db6d2c109d2e80856f133d97013deba9bbc3f2b7b735f3b15f81b3d6c16478e` | `2` | `11` | `22` | `5` |
| `51473639dfa5f7633a4c7a743f2d12b688539d71f5f51b0ae76ea4566c234533` | `2` | `11` | `22` | `5` |
| `539bc0688455e8aeb73d0f4c560f34d663a7319a4ba36cba992727ad6620e3d3` | `2` | `11` | `22` | `7` |
| `95d7f35dce594b20cb9d6d67a2ec2e5c8ed87b6098d8de60abb620a88928d4f8` | `2` | `11` | `22` | `7` |
| `a7fe9e83f17a3bd1a3f0ed87659eacfb4abaae1108b6e99c4e3750d61bf79d09` | `2` | `11` | `22` | `7` |
| `ca9d2ca7932297f31429078bef46d0df64d9ec82fd61e03c5a3dcde88b713377` | `2` | `11` | `22` | `6` |
| `eb9b3f884860f87535e7134432aecad9ab240936f5b4d0aa4355960bf6c95f32` | `2` | `11` | `22` | `7` |
| `89738e696d18e032d93292152bcc3fb3fe7e62ea3bd2c6d3e4582e5633c77f5f` | `2` | `9` | `18` | `6` |
| `00b6dc7cd6fb22973f5661008f83ce122320e2139b0242d1d414af22b1714bd8` | `1` | `16` | `16` | `7` |
| `026aa34aa596e5331ee97a888405ef6fdf8f9f0de858a2bd8b328eb0dd1f1f56` | `2` | `8` | `16` | `6` |
| `08894ea3432474a704bd684ae1d8ea4f4cd0dc7916d035661cf048c3eec6ccec` | `1` | `16` | `16` | `9` |
| `1198102eaae929024639f1ed973345c24edc4ec253affdcb730bae346f390e88` | `2` | `8` | `16` | `6` |
| `14ec2d374c66f86f17d3a264a9d435ea1ab028df224a6fa5250d86b6cc898025` | `1` | `16` | `16` | `6` |
| `287440b096c1cb54e2a3a155787036687726a7d8cecc571989766dc0f58afbed` | `1` | `16` | `16` | `9` |
| `2fe6d7a894edaefe94cc5f3776e00a5067c9108b71a9c7a9d3190affdee5bfab` | `1` | `16` | `16` | `6` |
| `342c56af25299e8f6067c4e1121f44fed063ffd6aabd3348d980e05ace516896` | `2` | `8` | `16` | `6` |
| `40c1794738d0ccf7a1269f68d07b3375f215fb0a38172f382eb7cd9610c1692b` | `2` | `8` | `16` | `6` |
| `44ea86a41ba10689c5b82fa577de97effefe08237a272415313b2e4e9fe968b4` | `2` | `8` | `16` | `6` |
