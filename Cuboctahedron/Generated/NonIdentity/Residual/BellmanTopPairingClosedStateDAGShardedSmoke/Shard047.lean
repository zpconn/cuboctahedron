import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard047

open Cuboctahedron

def shardIndex : Nat := 47
def stateStart : Nat := 3008
def stateStop : Nat := 3072
def emittedEdgeCount : Nat := 68

def next : Nat -> Face -> Option (Nat × Int)
  | 3008, Face.tmpm => some (3009, (0 : Int))
  | 3008, Face.zm => some (3012, (0 : Int))
  | 3009, Face.zm => some (3010, (0 : Int))
  | 3010, Face.zp => some (3011, (0 : Int))
  | 3013, Face.tmpm => some (3014, (0 : Int))
  | 3013, Face.zm => some (3018, (0 : Int))
  | 3014, Face.tppp => some (3015, (0 : Int))
  | 3014, Face.zm => some (3017, (0 : Int))
  | 3015, Face.zm => some (3016, (0 : Int))
  | 3018, Face.tppp => some (3019, (0 : Int))
  | 3020, Face.tpmm => some (3021, (0 : Int))
  | 3020, Face.zm => some (3026, (0 : Int))
  | 3021, Face.tmpm => some (3022, (0 : Int))
  | 3021, Face.zm => some (3023, (0 : Int))
  | 3023, Face.tmpm => some (3024, (0 : Int))
  | 3024, Face.zp => some (3025, (0 : Int))
  | 3026, Face.tmpp => some (3027, (0 : Int))
  | 3026, Face.tpmp => some (3029, (0 : Int))
  | 3026, Face.zp => some (3033, (0 : Int))
  | 3027, Face.zm => some (3028, (0 : Int))
  | 3029, Face.tmpm => some (3030, (0 : Int))
  | 3030, Face.tmpp => some (3031, (0 : Int))
  | 3030, Face.zp => some (3032, (0 : Int))
  | 3033, Face.tmpm => some (3034, (0 : Int))
  | 3035, Face.tmpp => some (3036, (0 : Int))
  | 3035, Face.tppp => some (3039, (0 : Int))
  | 3035, Face.zm => some (3042, (0 : Int))
  | 3036, Face.tmpm => some (2992, (0 : Int))
  | 3036, Face.zm => some (3037, (0 : Int))
  | 3037, Face.tppp => some (3038, (0 : Int))
  | 3039, Face.tmpm => some (3040, (0 : Int))
  | 3039, Face.zm => some (3041, (0 : Int))
  | 3042, Face.tmpm => some (3018, (0 : Int))
  | 3042, Face.tmpp => some (3043, (0 : Int))
  | 3043, Face.tppp => some (3044, (0 : Int))
  | 3045, Face.tmpm => some (3046, (0 : Int))
  | 3045, Face.tpmm => some (3064, (0 : Int))
  | 3045, Face.tppp => some (3092, (0 : Int))
  | 3045, Face.zm => some (3110, (0 : Int))
  | 3046, Face.tpmm => some (3047, (0 : Int))
  | 3046, Face.tppp => some (3059, (0 : Int))
  | 3046, Face.zm => some (3061, (0 : Int))
  | 3047, Face.tmpp => some (3048, (0 : Int))
  | 3047, Face.zp => some (3055, (0 : Int))
  | 3048, Face.tppp => some (3049, (0 : Int))
  | 3048, Face.zm => some (3053, (0 : Int))
  | 3049, Face.zm => some (3050, (0 : Int))
  | 3050, Face.zp => some (3051, (0 : Int))
  | 3051, Face.xp => some (3052, (0 : Int))
  | 3053, Face.zp => some (3054, (0 : Int))
  | 3055, Face.tppp => some (3056, (0 : Int))
  | 3055, Face.zm => some (3058, (0 : Int))
  | 3056, Face.zm => some (3057, (0 : Int))
  | 3058, Face.tmpp => some (3054, (0 : Int))
  | 3059, Face.zm => some (3060, (0 : Int))
  | 3061, Face.zp => some (3062, (0 : Int))
  | 3062, Face.tppp => some (3063, (0 : Int))
  | 3064, Face.tmpp => some (3065, (0 : Int))
  | 3064, Face.tppp => some (3076, (0 : Int))
  | 3064, Face.zm => some (3079, (0 : Int))
  | 3065, Face.tmpm => some (3066, (0 : Int))
  | 3065, Face.zm => some (3073, (0 : Int))
  | 3066, Face.tppp => some (3067, (0 : Int))
  | 3066, Face.zm => some (3071, (0 : Int))
  | 3067, Face.zm => some (3068, (0 : Int))
  | 3068, Face.zp => some (3069, (0 : Int))
  | 3069, Face.xp => some (3070, (0 : Int))
  | 3071, Face.zp => some (3072, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard047
