import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard059

open Cuboctahedron

def shardIndex : Nat := 59
def stateStart : Nat := 3776
def stateStop : Nat := 3840
def emittedEdgeCount : Nat := 78

def next : Nat -> Face -> Option (Nat × Int)
  | 3776, Face.tmmp => some (3777, (0 : Int))
  | 3776, Face.tpmm => some (3786, (0 : Int))
  | 3776, Face.tpmp => some (3813, (0 : Int))
  | 3776, Face.zp => some (3827, (0 : Int))
  | 3777, Face.tpmm => some (3778, (0 : Int))
  | 3777, Face.zm => some (3287, (0 : Int))
  | 3778, Face.tmpm => some (3779, (0 : Int))
  | 3778, Face.tmpp => some (3780, (0 : Int))
  | 3778, Face.zp => some (3784, (0 : Int))
  | 3780, Face.tmpm => some (3781, (0 : Int))
  | 3780, Face.zm => some (3783, (0 : Int))
  | 3781, Face.zm => some (3782, (0 : Int))
  | 3784, Face.tmpm => some (3785, (0 : Int))
  | 3785, Face.tmpp => some (3782, (0 : Int))
  | 3786, Face.tmmp => some (3787, (0 : Int))
  | 3786, Face.tmpp => some (3790, (0 : Int))
  | 3786, Face.tpmp => some (3798, (0 : Int))
  | 3786, Face.zp => some (3810, (0 : Int))
  | 3787, Face.tmpm => some (3788, (0 : Int))
  | 3787, Face.zm => some (3267, (0 : Int))
  | 3788, Face.zm => some (3789, (0 : Int))
  | 3790, Face.tpmp => some (3791, (0 : Int))
  | 3790, Face.zp => some (3796, (0 : Int))
  | 3791, Face.tmmp => some (3792, (0 : Int))
  | 3791, Face.tmpm => some (3793, (0 : Int))
  | 3791, Face.zm => some (3795, (0 : Int))
  | 3792, Face.zm => some (3250, (0 : Int))
  | 3793, Face.zp => some (3794, (0 : Int))
  | 3794, Face.tmmp => some (3246, (0 : Int))
  | 3796, Face.tmmp => some (3797, (0 : Int))
  | 3798, Face.tmpm => some (3799, (0 : Int))
  | 3798, Face.tmpp => some (3802, (0 : Int))
  | 3798, Face.zp => some (3807, (0 : Int))
  | 3799, Face.tmmp => some (3800, (0 : Int))
  | 3800, Face.zm => some (3801, (0 : Int))
  | 3802, Face.tmmp => some (3803, (0 : Int))
  | 3802, Face.tmpm => some (3804, (0 : Int))
  | 3802, Face.zm => some (3806, (0 : Int))
  | 3803, Face.zm => some (3262, (0 : Int))
  | 3804, Face.zm => some (3805, (0 : Int))
  | 3805, Face.tmmp => some (3258, (0 : Int))
  | 3807, Face.tmmp => some (3808, (0 : Int))
  | 3807, Face.tmpm => some (3809, (0 : Int))
  | 3809, Face.tmpp => some (3805, (0 : Int))
  | 3810, Face.tmpm => some (3811, (0 : Int))
  | 3811, Face.tmmp => some (3812, (0 : Int))
  | 3813, Face.tmmp => some (3814, (0 : Int))
  | 3813, Face.tmpp => some (3816, (0 : Int))
  | 3813, Face.zm => some (3822, (0 : Int))
  | 3814, Face.tmpm => some (3815, (0 : Int))
  | 3814, Face.zm => some (3283, (0 : Int))
  | 3816, Face.tmpm => some (3817, (0 : Int))
  | 3816, Face.zm => some (3820, (0 : Int))
  | 3817, Face.tmmp => some (3818, (0 : Int))
  | 3817, Face.zm => some (3819, (0 : Int))
  | 3818, Face.zm => some (3280, (0 : Int))
  | 3820, Face.tmmp => some (3821, (0 : Int))
  | 3822, Face.tmpm => some (3823, (0 : Int))
  | 3822, Face.tmpp => some (3825, (0 : Int))
  | 3823, Face.tmmp => some (3824, (0 : Int))
  | 3825, Face.tmmp => some (3826, (0 : Int))
  | 3827, Face.tmmp => some (3828, (0 : Int))
  | 3827, Face.tpmm => some (3830, (0 : Int))
  | 3827, Face.tpmp => some (3833, (0 : Int))
  | 3828, Face.tmpm => some (3829, (0 : Int))
  | 3830, Face.tmpm => some (3820, (0 : Int))
  | 3830, Face.tmpp => some (3831, (0 : Int))
  | 3831, Face.tmmp => some (3832, (0 : Int))
  | 3833, Face.tmpm => some (3834, (0 : Int))
  | 3834, Face.tmmp => some (3835, (0 : Int))
  | 3836, Face.tmpm => some (3837, (0 : Int))
  | 3836, Face.tpmm => some (3853, (0 : Int))
  | 3836, Face.tppm => some (3286, (0 : Int))
  | 3837, Face.tmmm => some (3838, (0 : Int))
  | 3837, Face.tpmm => some (3841, (0 : Int))
  | 3837, Face.tpmp => some (3850, (0 : Int))
  | 3838, Face.tpmp => some (3839, (0 : Int))
  | 3838, Face.tppm => some (3840, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard059
