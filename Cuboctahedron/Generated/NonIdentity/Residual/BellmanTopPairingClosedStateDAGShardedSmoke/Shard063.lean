import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard063

open Cuboctahedron

def shardIndex : Nat := 63
def stateStart : Nat := 4032
def stateStop : Nat := 4096
def emittedEdgeCount : Nat := 83

def next : Nat -> Face -> Option (Nat × Int)
  | 4032, Face.tmpm => some (4033, (0 : Int))
  | 4032, Face.tppp => some (4034, (0 : Int))
  | 4035, Face.tppp => some (4036, (0 : Int))
  | 4036, Face.tmmm => some (4037, (0 : Int))
  | 4038, Face.tmmm => some (4039, (0 : Int))
  | 4038, Face.tmpm => some (4041, (0 : Int))
  | 4039, Face.tppp => some (4040, (0 : Int))
  | 4041, Face.tmmp => some (4042, (0 : Int))
  | 4042, Face.tmmm => some (4043, (0 : Int))
  | 4044, Face.tmmp => some (4045, (0 : Int))
  | 4044, Face.tppp => some (4388, (0 : Int))
  | 4044, Face.zp => some (4582, (0 : Int))
  | 4045, Face.tpmp => some (4046, (0 : Int))
  | 4045, Face.tppm => some (4101, (0 : Int))
  | 4045, Face.tppp => some (4170, (0 : Int))
  | 4045, Face.zp => some (4292, (0 : Int))
  | 4046, Face.tppm => some (4047, (0 : Int))
  | 4046, Face.tppp => some (4064, (0 : Int))
  | 4046, Face.zm => some (4090, (0 : Int))
  | 4047, Face.tpmp => some (4048, (0 : Int))
  | 4047, Face.zp => some (4059, (0 : Int))
  | 4048, Face.tmmm => some (4049, (0 : Int))
  | 4048, Face.tmpp => some (4052, (0 : Int))
  | 4048, Face.zp => some (4057, (0 : Int))
  | 4049, Face.tmpp => some (4050, (0 : Int))
  | 4049, Face.zp => some (4051, (0 : Int))
  | 4050, Face.zm => some (1228, (0 : Int))
  | 4052, Face.tmmm => some (4053, (0 : Int))
  | 4052, Face.zm => some (4056, (0 : Int))
  | 4053, Face.tppp => some (4054, (0 : Int))
  | 4054, Face.zm => some (4055, (0 : Int))
  | 4057, Face.tmmm => some (2670, (0 : Int))
  | 4057, Face.tmpp => some (4058, (0 : Int))
  | 4059, Face.tmmm => some (2656, (0 : Int))
  | 4059, Face.tpmm => some (4060, (0 : Int))
  | 4060, Face.tmmm => some (2340, (0 : Int))
  | 4060, Face.tmpm => some (4056, (0 : Int))
  | 4060, Face.tmpp => some (4061, (0 : Int))
  | 4061, Face.tmpm => some (4062, (0 : Int))
  | 4062, Face.tmmm => some (4063, (0 : Int))
  | 4064, Face.tmpm => some (4065, (0 : Int))
  | 4064, Face.tpmm => some (2112, (0 : Int))
  | 4064, Face.tppm => some (4080, (0 : Int))
  | 4064, Face.zm => some (2722, (0 : Int))
  | 4065, Face.tmmp => some (4066, (0 : Int))
  | 4065, Face.tpmm => some (4069, (0 : Int))
  | 4065, Face.tppp => some (4077, (0 : Int))
  | 4065, Face.zp => some (4078, (0 : Int))
  | 4066, Face.zp => some (4067, (0 : Int))
  | 4067, Face.tppp => some (4068, (0 : Int))
  | 4069, Face.tmpp => some (4070, (0 : Int))
  | 4069, Face.zp => some (2209, (0 : Int))
  | 4070, Face.tmmp => some (4071, (0 : Int))
  | 4070, Face.tppp => some (4073, (0 : Int))
  | 4071, Face.zp => some (4072, (0 : Int))
  | 4073, Face.zp => some (4074, (0 : Int))
  | 4074, Face.tmmp => some (4075, (0 : Int))
  | 4075, Face.xp => some (4076, (0 : Int))
  | 4077, Face.zp => some (2695, (0 : Int))
  | 4078, Face.tmmm => some (2690, (0 : Int))
  | 4078, Face.tppm => some (4079, (0 : Int))
  | 4080, Face.tmmm => some (4081, (0 : Int))
  | 4080, Face.tmpp => some (4086, (0 : Int))
  | 4080, Face.zm => some (4087, (0 : Int))
  | 4081, Face.tmpp => some (4082, (0 : Int))
  | 4081, Face.tpmp => some (4083, (0 : Int))
  | 4081, Face.zp => some (4084, (0 : Int))
  | 4082, Face.zm => some (2143, (0 : Int))
  | 4084, Face.tmpm => some (4085, (0 : Int))
  | 4086, Face.tmmm => some (2149, (0 : Int))
  | 4086, Face.tmpm => some (466, (0 : Int))
  | 4086, Face.zm => some (2222, (0 : Int))
  | 4087, Face.tmmm => some (2703, (0 : Int))
  | 4087, Face.tmpm => some (4088, (0 : Int))
  | 4087, Face.tmpp => some (4089, (0 : Int))
  | 4090, Face.tmpm => some (4091, (0 : Int))
  | 4090, Face.tppm => some (4096, (0 : Int))
  | 4090, Face.tppp => some (2677, (0 : Int))
  | 4091, Face.tmpp => some (4092, (0 : Int))
  | 4091, Face.tppp => some (4094, (0 : Int))
  | 4092, Face.tppm => some (4093, (0 : Int))
  | 4093, Face.tppp => some (1157, (0 : Int))
  | 4094, Face.tmmm => some (4095, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard063
