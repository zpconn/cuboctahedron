import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard014

open Cuboctahedron

def shardIndex : Nat := 14
def stateStart : Nat := 896
def stateStop : Nat := 960
def emittedEdgeCount : Nat := 84

def next : Nat -> Face -> Option (Nat × Int)
  | 897, Face.tmmm => some (715, (0 : Int))
  | 898, Face.tmmm => some (899, (0 : Int))
  | 898, Face.zm => some (904, (0 : Int))
  | 899, Face.tmpm => some (633, (0 : Int))
  | 899, Face.yp => some (900, (0 : Int))
  | 899, Face.zp => some (901, (0 : Int))
  | 901, Face.tmpm => some (652, (0 : Int))
  | 901, Face.tppp => some (902, (0 : Int))
  | 901, Face.yp => some (903, (0 : Int))
  | 903, Face.tmmm => some (734, (0 : Int))
  | 904, Face.tmmm => some (749, (0 : Int))
  | 904, Face.tmpm => some (905, (0 : Int))
  | 906, Face.tmmm => some (704, (0 : Int))
  | 906, Face.tmpp => some (907, (0 : Int))
  | 906, Face.tpmp => some (910, (0 : Int))
  | 907, Face.tmmm => some (908, (0 : Int))
  | 907, Face.tpmp => some (896, (0 : Int))
  | 908, Face.tppp => some (909, (0 : Int))
  | 910, Face.tmmm => some (677, (0 : Int))
  | 910, Face.tmpp => some (911, (0 : Int))
  | 912, Face.tmmp => some (913, (0 : Int))
  | 912, Face.tpmp => some (542, (0 : Int))
  | 912, Face.tppp => some (755, (0 : Int))
  | 913, Face.tpmm => some (914, (0 : Int))
  | 913, Face.tppp => some (813, (0 : Int))
  | 914, Face.tmpm => some (915, (0 : Int))
  | 915, Face.tppp => some (916, (0 : Int))
  | 915, Face.yp => some (920, (0 : Int))
  | 916, Face.tmmm => some (917, (0 : Int))
  | 917, Face.yp => some (918, (0 : Int))
  | 918, Face.xp => some (919, (0 : Int))
  | 921, Face.tmmm => some (922, (0 : Int))
  | 921, Face.tpmp => some (1102, (0 : Int))
  | 921, Face.zm => some (1148, (0 : Int))
  | 922, Face.tpmm => some (923, (0 : Int))
  | 922, Face.tpmp => some (994, (0 : Int))
  | 922, Face.tppm => some (303, (0 : Int))
  | 922, Face.tppp => some (1013, (0 : Int))
  | 922, Face.zp => some (1072, (0 : Int))
  | 923, Face.tmmp => some (924, (0 : Int))
  | 923, Face.tpmp => some (942, (0 : Int))
  | 923, Face.tppp => some (965, (0 : Int))
  | 923, Face.zp => some (986, (0 : Int))
  | 924, Face.tmpp => some (925, (0 : Int))
  | 924, Face.tpmp => some (24, (0 : Int))
  | 924, Face.tppp => some (938, (0 : Int))
  | 924, Face.zp => some (357, (0 : Int))
  | 925, Face.tpmp => some (926, (0 : Int))
  | 925, Face.yp => some (932, (0 : Int))
  | 925, Face.zp => some (935, (0 : Int))
  | 926, Face.tppp => some (927, (0 : Int))
  | 926, Face.zm => some (931, (0 : Int))
  | 927, Face.yp => some (928, (0 : Int))
  | 927, Face.zm => some (929, (0 : Int))
  | 929, Face.yp => some (930, (0 : Int))
  | 932, Face.tppp => some (933, (0 : Int))
  | 933, Face.zm => some (934, (0 : Int))
  | 935, Face.tppp => some (936, (0 : Int))
  | 935, Face.yp => some (937, (0 : Int))
  | 938, Face.tmpm => some (939, (0 : Int))
  | 938, Face.zm => some (941, (0 : Int))
  | 939, Face.zm => some (940, (0 : Int))
  | 942, Face.tmpp => some (943, (0 : Int))
  | 942, Face.tppp => some (949, (0 : Int))
  | 942, Face.zp => some (961, (0 : Int))
  | 943, Face.tmmm => some (944, (0 : Int))
  | 943, Face.tppm => some (946, (0 : Int))
  | 943, Face.zm => some (947, (0 : Int))
  | 944, Face.zm => some (945, (0 : Int))
  | 947, Face.tmmp => some (96, (0 : Int))
  | 947, Face.tppp => some (948, (0 : Int))
  | 949, Face.tmpp => some (950, (0 : Int))
  | 949, Face.yp => some (952, (0 : Int))
  | 949, Face.zm => some (958, (0 : Int))
  | 950, Face.zm => some (951, (0 : Int))
  | 952, Face.tmmp => some (953, (0 : Int))
  | 952, Face.zm => some (954, (0 : Int))
  | 953, Face.zm => some (106, (0 : Int))
  | 954, Face.tmpp => some (955, (0 : Int))
  | 955, Face.tmmp => some (956, (0 : Int))
  | 956, Face.xp => some (957, (0 : Int))
  | 958, Face.tmmp => some (959, (0 : Int))
  | 958, Face.yp => some (954, (0 : Int))
  | 959, Face.tmpp => some (960, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard014
