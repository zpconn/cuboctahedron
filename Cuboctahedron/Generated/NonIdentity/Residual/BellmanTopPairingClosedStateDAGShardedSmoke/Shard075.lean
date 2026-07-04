import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard075

open Cuboctahedron

def shardIndex : Nat := 75
def stateStart : Nat := 4800
def stateStop : Nat := 4864
def emittedEdgeCount : Nat := 81

def next : Nat -> Face -> Option (Nat × Int)
  | 4800, Face.zm => some (4801, (0 : Int))
  | 4802, Face.tmpm => some (1657, (0 : Int))
  | 4802, Face.yp => some (4803, (0 : Int))
  | 4804, Face.tmpm => some (1654, (0 : Int))
  | 4804, Face.tppm => some (4805, (0 : Int))
  | 4806, Face.tmpp => some (4807, (0 : Int))
  | 4806, Face.zm => some (1096, (0 : Int))
  | 4807, Face.tmpm => some (4808, (0 : Int))
  | 4807, Face.tppm => some (4809, (0 : Int))
  | 4807, Face.yp => some (4810, (0 : Int))
  | 4807, Face.zm => some (4813, (0 : Int))
  | 4809, Face.tmpm => some (202, (0 : Int))
  | 4809, Face.zm => some (264, (0 : Int))
  | 4810, Face.tmpm => some (4811, (0 : Int))
  | 4810, Face.zm => some (4812, (0 : Int))
  | 4811, Face.zm => some (1099, (0 : Int))
  | 4813, Face.tmmp => some (259, (0 : Int))
  | 4813, Face.yp => some (4812, (0 : Int))
  | 4814, Face.tpmm => some (4815, (0 : Int))
  | 4814, Face.tpmp => some (1662, (0 : Int))
  | 4815, Face.tmpm => some (4813, (0 : Int))
  | 4816, Face.tpmm => some (4817, (0 : Int))
  | 4816, Face.tpmp => some (1621, (0 : Int))
  | 4816, Face.tppm => some (4825, (0 : Int))
  | 4817, Face.tmmp => some (4818, (0 : Int))
  | 4818, Face.tmpm => some (4819, (0 : Int))
  | 4818, Face.tppm => some (4822, (0 : Int))
  | 4819, Face.tmmp => some (4820, (0 : Int))
  | 4819, Face.yp => some (4821, (0 : Int))
  | 4822, Face.tmpm => some (4823, (0 : Int))
  | 4822, Face.yp => some (4824, (0 : Int))
  | 4825, Face.tmmp => some (4826, (0 : Int))
  | 4825, Face.tpmm => some (4830, (0 : Int))
  | 4825, Face.tpmp => some (1038, (0 : Int))
  | 4826, Face.tpmp => some (4827, (0 : Int))
  | 4827, Face.tmpm => some (4828, (0 : Int))
  | 4827, Face.yp => some (4829, (0 : Int))
  | 4830, Face.tpmp => some (4831, (0 : Int))
  | 4831, Face.tmmp => some (4832, (0 : Int))
  | 4831, Face.tmpm => some (1047, (0 : Int))
  | 4831, Face.yp => some (4833, (0 : Int))
  | 4834, Face.tmmm => some (4835, (0 : Int))
  | 4834, Face.tpmm => some (4869, (0 : Int))
  | 4834, Face.tppm => some (693, (0 : Int))
  | 4834, Face.zm => some (1755, (0 : Int))
  | 4835, Face.tpmp => some (4836, (0 : Int))
  | 4835, Face.tppm => some (4844, (0 : Int))
  | 4835, Face.zp => some (4865, (0 : Int))
  | 4836, Face.tmpp => some (4837, (0 : Int))
  | 4836, Face.zp => some (1699, (0 : Int))
  | 4837, Face.tppm => some (4838, (0 : Int))
  | 4837, Face.yp => some (4841, (0 : Int))
  | 4837, Face.zm => some (4843, (0 : Int))
  | 4838, Face.tmmp => some (4839, (0 : Int))
  | 4839, Face.yp => some (4840, (0 : Int))
  | 4839, Face.zm => some (917, (0 : Int))
  | 4841, Face.zm => some (4842, (0 : Int))
  | 4843, Face.yp => some (4842, (0 : Int))
  | 4844, Face.tmmp => some (4845, (0 : Int))
  | 4844, Face.tmpp => some (4849, (0 : Int))
  | 4844, Face.tpmp => some (4854, (0 : Int))
  | 4844, Face.zp => some (848, (0 : Int))
  | 4845, Face.tmpp => some (4846, (0 : Int))
  | 4845, Face.tpmp => some (4847, (0 : Int))
  | 4845, Face.yp => some (4848, (0 : Int))
  | 4845, Face.zp => some (814, (0 : Int))
  | 4849, Face.tpmp => some (4850, (0 : Int))
  | 4849, Face.zp => some (4852, (0 : Int))
  | 4850, Face.zm => some (4851, (0 : Int))
  | 4852, Face.tmmp => some (4853, (0 : Int))
  | 4854, Face.tmpp => some (4855, (0 : Int))
  | 4854, Face.yp => some (4857, (0 : Int))
  | 4854, Face.zp => some (4859, (0 : Int))
  | 4855, Face.zm => some (4856, (0 : Int))
  | 4857, Face.tmmp => some (4858, (0 : Int))
  | 4858, Face.zm => some (806, (0 : Int))
  | 4859, Face.tmmp => some (4860, (0 : Int))
  | 4859, Face.yp => some (4862, (0 : Int))
  | 4860, Face.tmpp => some (4861, (0 : Int))
  | 4862, Face.tmpp => some (4863, (0 : Int))
  | 4863, Face.tmmp => some (4864, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard075
