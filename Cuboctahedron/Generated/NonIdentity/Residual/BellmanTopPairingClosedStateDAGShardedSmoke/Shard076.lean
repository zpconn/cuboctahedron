import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard076

open Cuboctahedron

def shardIndex : Nat := 76
def stateStart : Nat := 4864
def stateStop : Nat := 4928
def emittedEdgeCount : Nat := 76

def next : Nat -> Face -> Option (Nat × Int)
  | 4865, Face.tpmm => some (4866, (0 : Int))
  | 4866, Face.tmpm => some (4843, (0 : Int))
  | 4866, Face.tppm => some (4867, (0 : Int))
  | 4867, Face.tmmp => some (4868, (0 : Int))
  | 4869, Face.tmmp => some (4870, (0 : Int))
  | 4869, Face.tmpm => some (4875, (0 : Int))
  | 4869, Face.zm => some (4888, (0 : Int))
  | 4870, Face.tmmm => some (4871, (0 : Int))
  | 4870, Face.zm => some (882, (0 : Int))
  | 4871, Face.tmpm => some (4872, (0 : Int))
  | 4871, Face.tppm => some (4873, (0 : Int))
  | 4871, Face.yp => some (2157, (0 : Int))
  | 4871, Face.zm => some (4874, (0 : Int))
  | 4872, Face.tmmp => some (454, (0 : Int))
  | 4873, Face.tmpm => some (461, (0 : Int))
  | 4874, Face.tmpm => some (510, (0 : Int))
  | 4874, Face.yp => some (2159, (0 : Int))
  | 4875, Face.tmmp => some (4876, (0 : Int))
  | 4875, Face.tppp => some (4885, (0 : Int))
  | 4875, Face.zp => some (1714, (0 : Int))
  | 4876, Face.tppm => some (4877, (0 : Int))
  | 4876, Face.yp => some (4880, (0 : Int))
  | 4876, Face.zm => some (548, (0 : Int))
  | 4877, Face.tppp => some (4878, (0 : Int))
  | 4878, Face.zp => some (4879, (0 : Int))
  | 4880, Face.tppp => some (4881, (0 : Int))
  | 4880, Face.zm => some (550, (0 : Int))
  | 4881, Face.zm => some (4882, (0 : Int))
  | 4882, Face.tmmp => some (4883, (0 : Int))
  | 4883, Face.xp => some (4884, (0 : Int))
  | 4885, Face.zp => some (4886, (0 : Int))
  | 4886, Face.tmmp => some (4887, (0 : Int))
  | 4888, Face.tmmm => some (4889, (0 : Int))
  | 4888, Face.tmmp => some (4892, (0 : Int))
  | 4889, Face.tmpm => some (4890, (0 : Int))
  | 4890, Face.tmmp => some (517, (0 : Int))
  | 4890, Face.yp => some (4891, (0 : Int))
  | 4892, Face.tmpm => some (4893, (0 : Int))
  | 4892, Face.tppm => some (4896, (0 : Int))
  | 4893, Face.tmmp => some (4894, (0 : Int))
  | 4893, Face.tppp => some (4895, (0 : Int))
  | 4896, Face.tmpm => some (4897, (0 : Int))
  | 4896, Face.yp => some (4898, (0 : Int))
  | 4898, Face.tmmm => some (4899, (0 : Int))
  | 4900, Face.tmmm => some (4901, (0 : Int))
  | 4900, Face.tpmm => some (4927, (0 : Int))
  | 4900, Face.tpmp => some (4940, (0 : Int))
  | 4901, Face.tmmp => some (4902, (0 : Int))
  | 4901, Face.tpmm => some (4911, (0 : Int))
  | 4901, Face.tpmp => some (4920, (0 : Int))
  | 4902, Face.tpmm => some (4903, (0 : Int))
  | 4902, Face.tpmp => some (4906, (0 : Int))
  | 4903, Face.tpmp => some (4904, (0 : Int))
  | 4904, Face.tmpm => some (4905, (0 : Int))
  | 4904, Face.yp => some (2402, (0 : Int))
  | 4906, Face.tmpm => some (4907, (0 : Int))
  | 4906, Face.tppm => some (4908, (0 : Int))
  | 4908, Face.tmpm => some (4909, (0 : Int))
  | 4909, Face.tmpp => some (4910, (0 : Int))
  | 4911, Face.tmmp => some (4912, (0 : Int))
  | 4911, Face.tpmp => some (4917, (0 : Int))
  | 4912, Face.tpmp => some (4913, (0 : Int))
  | 4912, Face.tppm => some (4916, (0 : Int))
  | 4913, Face.tmpm => some (4914, (0 : Int))
  | 4913, Face.yp => some (4915, (0 : Int))
  | 4917, Face.tmpm => some (4918, (0 : Int))
  | 4918, Face.tmmp => some (4919, (0 : Int))
  | 4920, Face.tmpp => some (4921, (0 : Int))
  | 4921, Face.tmpm => some (4922, (0 : Int))
  | 4921, Face.tppm => some (4924, (0 : Int))
  | 4922, Face.tmmp => some (4923, (0 : Int))
  | 4924, Face.tmmp => some (4925, (0 : Int))
  | 4924, Face.tmpm => some (4926, (0 : Int))
  | 4927, Face.tmmp => some (4928, (0 : Int))
  | 4927, Face.tpmp => some (4888, (0 : Int))
  | 4927, Face.tppp => some (4932, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard076
