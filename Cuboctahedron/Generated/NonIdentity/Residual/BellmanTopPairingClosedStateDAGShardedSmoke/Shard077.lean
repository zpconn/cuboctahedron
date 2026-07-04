import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard077

open Cuboctahedron

def shardIndex : Nat := 77
def stateStart : Nat := 4928
def stateStop : Nat := 4992
def emittedEdgeCount : Nat := 77

def next : Nat -> Face -> Option (Nat × Int)
  | 4928, Face.tppp => some (4929, (0 : Int))
  | 4929, Face.tmpm => some (4852, (0 : Int))
  | 4929, Face.tppm => some (4930, (0 : Int))
  | 4930, Face.tmpm => some (4931, (0 : Int))
  | 4932, Face.tmmp => some (4933, (0 : Int))
  | 4932, Face.tpmp => some (4937, (0 : Int))
  | 4933, Face.tmpm => some (4934, (0 : Int))
  | 4933, Face.tppm => some (4936, (0 : Int))
  | 4934, Face.yp => some (4935, (0 : Int))
  | 4937, Face.tmpm => some (4938, (0 : Int))
  | 4938, Face.tmmp => some (4939, (0 : Int))
  | 4940, Face.tmpm => some (4941, (0 : Int))
  | 4940, Face.tppm => some (4946, (0 : Int))
  | 4941, Face.tmmm => some (4942, (0 : Int))
  | 4941, Face.tmmp => some (4943, (0 : Int))
  | 4941, Face.tpmm => some (4945, (0 : Int))
  | 4943, Face.tppm => some (4944, (0 : Int))
  | 4946, Face.tmmm => some (4947, (0 : Int))
  | 4946, Face.tmmp => some (4954, (0 : Int))
  | 4946, Face.tmpp => some (4963, (0 : Int))
  | 4947, Face.tmpm => some (4948, (0 : Int))
  | 4947, Face.tmpp => some (4950, (0 : Int))
  | 4947, Face.tppm => some (4951, (0 : Int))
  | 4948, Face.yp => some (4949, (0 : Int))
  | 4950, Face.yp => some (2259, (0 : Int))
  | 4951, Face.yp => some (4952, (0 : Int))
  | 4952, Face.tmpp => some (4953, (0 : Int))
  | 4954, Face.tmmm => some (4955, (0 : Int))
  | 4954, Face.tmpm => some (4959, (0 : Int))
  | 4954, Face.tmpp => some (4960, (0 : Int))
  | 4955, Face.tmpm => some (4956, (0 : Int))
  | 4955, Face.yp => some (4958, (0 : Int))
  | 4956, Face.tmpp => some (4957, (0 : Int))
  | 4957, Face.yp => some (2355, (0 : Int))
  | 4960, Face.tmpm => some (4961, (0 : Int))
  | 4960, Face.yp => some (2351, (0 : Int))
  | 4961, Face.tmmm => some (4962, (0 : Int))
  | 4963, Face.tmmm => some (4964, (0 : Int))
  | 4963, Face.tmpm => some (4966, (0 : Int))
  | 4963, Face.tppm => some (4969, (0 : Int))
  | 4964, Face.tmpm => some (4965, (0 : Int))
  | 4964, Face.yp => some (2243, (0 : Int))
  | 4966, Face.tmmp => some (4967, (0 : Int))
  | 4967, Face.tmmm => some (4968, (0 : Int))
  | 4969, Face.tmpm => some (4970, (0 : Int))
  | 4970, Face.tmmm => some (4971, (0 : Int))
  | 4972, Face.tpmp => some (1491, (0 : Int))
  | 4972, Face.tppm => some (4973, (0 : Int))
  | 4972, Face.tppp => some (5080, (0 : Int))
  | 4973, Face.tmmm => some (4974, (0 : Int))
  | 4973, Face.tpmm => some (5050, (0 : Int))
  | 4973, Face.tpmp => some (5062, (0 : Int))
  | 4974, Face.tmmp => some (4975, (0 : Int))
  | 4974, Face.tpmm => some (4989, (0 : Int))
  | 4974, Face.tpmp => some (5008, (0 : Int))
  | 4974, Face.tppp => some (5030, (0 : Int))
  | 4975, Face.tpmm => some (4976, (0 : Int))
  | 4975, Face.tpmp => some (4980, (0 : Int))
  | 4975, Face.tppp => some (4986, (0 : Int))
  | 4976, Face.tpmp => some (4977, (0 : Int))
  | 4977, Face.tmpm => some (4978, (0 : Int))
  | 4977, Face.tppp => some (4979, (0 : Int))
  | 4977, Face.yp => some (4300, (0 : Int))
  | 4980, Face.tmmm => some (4981, (0 : Int))
  | 4980, Face.tmpm => some (4984, (0 : Int))
  | 4981, Face.tmpm => some (4982, (0 : Int))
  | 4981, Face.yp => some (4983, (0 : Int))
  | 4984, Face.tppp => some (4985, (0 : Int))
  | 4986, Face.tpmp => some (4987, (0 : Int))
  | 4987, Face.tmpm => some (4988, (0 : Int))
  | 4989, Face.tmmp => some (4990, (0 : Int))
  | 4989, Face.tpmp => some (4996, (0 : Int))
  | 4989, Face.tppp => some (5004, (0 : Int))
  | 4990, Face.tpmp => some (4991, (0 : Int))
  | 4991, Face.tmpm => some (4992, (0 : Int))
  | 4991, Face.tppp => some (4993, (0 : Int))
  | 4991, Face.yp => some (4994, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard077
