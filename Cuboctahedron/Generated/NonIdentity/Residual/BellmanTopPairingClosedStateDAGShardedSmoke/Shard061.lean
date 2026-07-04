import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard061

open Cuboctahedron

def shardIndex : Nat := 61
def stateStart : Nat := 3904
def stateStop : Nat := 3968
def emittedEdgeCount : Nat := 68

def next : Nat -> Face -> Option (Nat × Int)
  | 3904, Face.tppp => some (3905, (0 : Int))
  | 3906, Face.tmmp => some (3907, (0 : Int))
  | 3906, Face.tmpp => some (3910, (0 : Int))
  | 3906, Face.zm => some (3915, (0 : Int))
  | 3907, Face.tmpm => some (3908, (0 : Int))
  | 3907, Face.zm => some (3909, (0 : Int))
  | 3910, Face.tmpm => some (3911, (0 : Int))
  | 3910, Face.zm => some (3687, (0 : Int))
  | 3911, Face.tmmp => some (3912, (0 : Int))
  | 3911, Face.zm => some (3914, (0 : Int))
  | 3912, Face.zm => some (3913, (0 : Int))
  | 3915, Face.tmpm => some (3916, (0 : Int))
  | 3915, Face.tmpp => some (3918, (0 : Int))
  | 3916, Face.tmmp => some (3917, (0 : Int))
  | 3918, Face.tmmp => some (3919, (0 : Int))
  | 3920, Face.tpmm => some (3631, (0 : Int))
  | 3920, Face.tppp => some (3921, (0 : Int))
  | 3921, Face.tmpm => some (3922, (0 : Int))
  | 3921, Face.tppm => some (3899, (0 : Int))
  | 3923, Face.tmmp => some (3924, (0 : Int))
  | 3923, Face.tmpm => some (3933, (0 : Int))
  | 3924, Face.tpmm => some (3925, (0 : Int))
  | 3924, Face.tppp => some (3901, (0 : Int))
  | 3925, Face.tmpm => some (3926, (0 : Int))
  | 3925, Face.tmpp => some (3929, (0 : Int))
  | 3926, Face.tppp => some (3927, (0 : Int))
  | 3927, Face.tmmm => some (3928, (0 : Int))
  | 3929, Face.tmpm => some (3930, (0 : Int))
  | 3929, Face.tppp => some (3931, (0 : Int))
  | 3931, Face.tmmm => some (3932, (0 : Int))
  | 3933, Face.tmmm => some (3934, (0 : Int))
  | 3933, Face.tmmp => some (3937, (0 : Int))
  | 3933, Face.tmpp => some (3938, (0 : Int))
  | 3934, Face.tmpp => some (3935, (0 : Int))
  | 3935, Face.tmmp => some (3936, (0 : Int))
  | 3938, Face.tmmm => some (3939, (0 : Int))
  | 3939, Face.tmmp => some (3940, (0 : Int))
  | 3939, Face.tppp => some (3941, (0 : Int))
  | 3942, Face.tmmm => some (3943, (0 : Int))
  | 3942, Face.tpmm => some (3697, (0 : Int))
  | 3942, Face.tpmp => some (3984, (0 : Int))
  | 3943, Face.tpmp => some (3944, (0 : Int))
  | 3943, Face.tppm => some (3959, (0 : Int))
  | 3943, Face.tppp => some (3973, (0 : Int))
  | 3944, Face.tmpp => some (3945, (0 : Int))
  | 3944, Face.tppp => some (3951, (0 : Int))
  | 3945, Face.tmmm => some (3946, (0 : Int))
  | 3945, Face.tmpm => some (3948, (0 : Int))
  | 3945, Face.tppm => some (3950, (0 : Int))
  | 3946, Face.tmpm => some (3947, (0 : Int))
  | 3948, Face.tppp => some (3949, (0 : Int))
  | 3951, Face.tmpm => some (3952, (0 : Int))
  | 3951, Face.tmpp => some (3954, (0 : Int))
  | 3951, Face.tppm => some (3956, (0 : Int))
  | 3952, Face.tmmp => some (3953, (0 : Int))
  | 3954, Face.tmpm => some (3955, (0 : Int))
  | 3956, Face.tmpm => some (3957, (0 : Int))
  | 3957, Face.tmpp => some (3958, (0 : Int))
  | 3959, Face.tmpp => some (3960, (0 : Int))
  | 3959, Face.tpmp => some (3965, (0 : Int))
  | 3959, Face.tppp => some (3970, (0 : Int))
  | 3960, Face.tpmp => some (3961, (0 : Int))
  | 3961, Face.tmpm => some (3962, (0 : Int))
  | 3961, Face.tppp => some (3963, (0 : Int))
  | 3963, Face.tmpp => some (3964, (0 : Int))
  | 3965, Face.tmpm => some (3966, (0 : Int))
  | 3965, Face.tmpp => some (3968, (0 : Int))
  | 3966, Face.tppp => some (3967, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard061
