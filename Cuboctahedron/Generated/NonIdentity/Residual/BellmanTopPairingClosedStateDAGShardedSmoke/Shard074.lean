import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard074

open Cuboctahedron

def shardIndex : Nat := 74
def stateStart : Nat := 4736
def stateStop : Nat := 4800
def emittedEdgeCount : Nat := 88

def next : Nat -> Face -> Option (Nat × Int)
  | 4738, Face.tppp => some (4739, (0 : Int))
  | 4739, Face.tmmm => some (4740, (0 : Int))
  | 4741, Face.tmmm => some (4742, (0 : Int))
  | 4741, Face.tpmp => some (4834, (0 : Int))
  | 4741, Face.zm => some (4900, (0 : Int))
  | 4742, Face.tpmm => some (4743, (0 : Int))
  | 4742, Face.tpmp => some (4757, (0 : Int))
  | 4742, Face.tppm => some (4777, (0 : Int))
  | 4742, Face.zp => some (4816, (0 : Int))
  | 4743, Face.tmmp => some (4744, (0 : Int))
  | 4743, Face.tpmp => some (4755, (0 : Int))
  | 4743, Face.zp => some (4756, (0 : Int))
  | 4744, Face.tpmp => some (4745, (0 : Int))
  | 4744, Face.zp => some (4753, (0 : Int))
  | 4745, Face.tmpm => some (4746, (0 : Int))
  | 4745, Face.tppm => some (4747, (0 : Int))
  | 4745, Face.yp => some (4748, (0 : Int))
  | 4745, Face.zp => some (4751, (0 : Int))
  | 4747, Face.tmpm => some (18, (0 : Int))
  | 4748, Face.tmmp => some (4749, (0 : Int))
  | 4749, Face.zm => some (4750, (0 : Int))
  | 4751, Face.tmpm => some (1608, (0 : Int))
  | 4751, Face.yp => some (4752, (0 : Int))
  | 4753, Face.tmpm => some (1604, (0 : Int))
  | 4753, Face.tppm => some (4754, (0 : Int))
  | 4755, Face.zp => some (1622, (0 : Int))
  | 4757, Face.tmpm => some (4758, (0 : Int))
  | 4757, Face.tppm => some (4762, (0 : Int))
  | 4757, Face.zm => some (1670, (0 : Int))
  | 4758, Face.tpmm => some (4759, (0 : Int))
  | 4758, Face.zp => some (1638, (0 : Int))
  | 4759, Face.yp => some (4760, (0 : Int))
  | 4759, Face.zp => some (1686, (0 : Int))
  | 4760, Face.tmmp => some (4761, (0 : Int))
  | 4761, Face.zp => some (1085, (0 : Int))
  | 4762, Face.tmmp => some (4763, (0 : Int))
  | 4762, Face.tmpp => some (4770, (0 : Int))
  | 4762, Face.zp => some (1087, (0 : Int))
  | 4763, Face.tmpm => some (4764, (0 : Int))
  | 4763, Face.tmpp => some (4765, (0 : Int))
  | 4763, Face.yp => some (4768, (0 : Int))
  | 4763, Face.zm => some (435, (0 : Int))
  | 4765, Face.tmpm => some (4766, (0 : Int))
  | 4765, Face.zm => some (4767, (0 : Int))
  | 4766, Face.zp => some (437, (0 : Int))
  | 4768, Face.tmpm => some (4769, (0 : Int))
  | 4768, Face.zm => some (438, (0 : Int))
  | 4769, Face.zm => some (365, (0 : Int))
  | 4770, Face.tpmp => some (4771, (0 : Int))
  | 4770, Face.zm => some (4775, (0 : Int))
  | 4771, Face.tmmp => some (4772, (0 : Int))
  | 4771, Face.zm => some (4774, (0 : Int))
  | 4772, Face.zm => some (4773, (0 : Int))
  | 4775, Face.tmmp => some (4776, (0 : Int))
  | 4777, Face.tmmp => some (4778, (0 : Int))
  | 4777, Face.tpmm => some (4786, (0 : Int))
  | 4777, Face.tpmp => some (4806, (0 : Int))
  | 4777, Face.zp => some (4814, (0 : Int))
  | 4778, Face.tpmm => some (4779, (0 : Int))
  | 4778, Face.tpmp => some (157, (0 : Int))
  | 4778, Face.zp => some (4785, (0 : Int))
  | 4779, Face.tpmp => some (4780, (0 : Int))
  | 4779, Face.yp => some (4781, (0 : Int))
  | 4779, Face.zp => some (4782, (0 : Int))
  | 4780, Face.tmpm => some (172, (0 : Int))
  | 4782, Face.tmpm => some (4783, (0 : Int))
  | 4782, Face.yp => some (4784, (0 : Int))
  | 4785, Face.tpmp => some (185, (0 : Int))
  | 4786, Face.tmmp => some (4787, (0 : Int))
  | 4786, Face.tpmp => some (4796, (0 : Int))
  | 4786, Face.zp => some (4804, (0 : Int))
  | 4787, Face.tpmp => some (4788, (0 : Int))
  | 4787, Face.yp => some (4792, (0 : Int))
  | 4787, Face.zp => some (4793, (0 : Int))
  | 4788, Face.tmpm => some (4789, (0 : Int))
  | 4788, Face.zm => some (4791, (0 : Int))
  | 4789, Face.yp => some (4790, (0 : Int))
  | 4789, Face.zp => some (1647, (0 : Int))
  | 4790, Face.zp => some (1648, (0 : Int))
  | 4793, Face.tmpm => some (4794, (0 : Int))
  | 4793, Face.yp => some (4795, (0 : Int))
  | 4796, Face.tmpm => some (4797, (0 : Int))
  | 4796, Face.tppm => some (4798, (0 : Int))
  | 4796, Face.yp => some (4799, (0 : Int))
  | 4796, Face.zp => some (4802, (0 : Int))
  | 4797, Face.tmmp => some (275, (0 : Int))
  | 4798, Face.tmpm => some (282, (0 : Int))
  | 4799, Face.tmmp => some (4800, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard074
