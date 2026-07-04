import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard016

open Cuboctahedron

def shardIndex : Nat := 16
def stateStart : Nat := 1024
def stateStop : Nat := 1088
def emittedEdgeCount : Nat := 73

def next : Nat -> Face -> Option (Nat × Int)
  | 1025, Face.tmmp => some (1026, (0 : Int))
  | 1025, Face.tmpp => some (1033, (0 : Int))
  | 1025, Face.zp => some (1038, (0 : Int))
  | 1026, Face.tmpm => some (1027, (0 : Int))
  | 1026, Face.tmpp => some (1028, (0 : Int))
  | 1026, Face.yp => some (1032, (0 : Int))
  | 1026, Face.zm => some (387, (0 : Int))
  | 1028, Face.tmpm => some (1029, (0 : Int))
  | 1028, Face.zm => some (1031, (0 : Int))
  | 1029, Face.yp => some (1030, (0 : Int))
  | 1029, Face.zm => some (389, (0 : Int))
  | 1032, Face.zm => some (392, (0 : Int))
  | 1033, Face.tpmp => some (1034, (0 : Int))
  | 1033, Face.zm => some (1036, (0 : Int))
  | 1034, Face.zm => some (1035, (0 : Int))
  | 1036, Face.tmmp => some (1037, (0 : Int))
  | 1038, Face.tmpm => some (1039, (0 : Int))
  | 1038, Face.tmpp => some (1041, (0 : Int))
  | 1038, Face.tppm => some (382, (0 : Int))
  | 1039, Face.tmmp => some (1040, (0 : Int))
  | 1041, Face.tmpm => some (1042, (0 : Int))
  | 1041, Face.yp => some (1043, (0 : Int))
  | 1044, Face.tpmm => some (1045, (0 : Int))
  | 1044, Face.zm => some (1057, (0 : Int))
  | 1045, Face.tmpp => some (1046, (0 : Int))
  | 1045, Face.yp => some (1048, (0 : Int))
  | 1045, Face.zm => some (1054, (0 : Int))
  | 1046, Face.zm => some (1047, (0 : Int))
  | 1048, Face.tmmp => some (1049, (0 : Int))
  | 1048, Face.zm => some (1050, (0 : Int))
  | 1049, Face.zm => some (411, (0 : Int))
  | 1050, Face.tmpp => some (1051, (0 : Int))
  | 1051, Face.tmmp => some (1052, (0 : Int))
  | 1052, Face.xp => some (1053, (0 : Int))
  | 1054, Face.tmmp => some (1055, (0 : Int))
  | 1054, Face.yp => some (1050, (0 : Int))
  | 1055, Face.tmpp => some (1056, (0 : Int))
  | 1056, Face.yp => some (1052, (0 : Int))
  | 1057, Face.tmpp => some (1058, (0 : Int))
  | 1058, Face.tmmp => some (1059, (0 : Int))
  | 1060, Face.tmmp => some (1061, (0 : Int))
  | 1060, Face.tpmm => some (1064, (0 : Int))
  | 1060, Face.tpmp => some (1067, (0 : Int))
  | 1061, Face.tpmp => some (1062, (0 : Int))
  | 1062, Face.yp => some (1063, (0 : Int))
  | 1064, Face.tmpp => some (1065, (0 : Int))
  | 1064, Face.tpmp => some (1054, (0 : Int))
  | 1065, Face.tmmp => some (1066, (0 : Int))
  | 1067, Face.tmpp => some (1068, (0 : Int))
  | 1067, Face.tppm => some (1070, (0 : Int))
  | 1068, Face.yp => some (1069, (0 : Int))
  | 1070, Face.yp => some (1071, (0 : Int))
  | 1071, Face.tmpp => some (381, (0 : Int))
  | 1072, Face.tpmm => some (1073, (0 : Int))
  | 1072, Face.tpmp => some (1093, (0 : Int))
  | 1072, Face.tppm => some (416, (0 : Int))
  | 1072, Face.tppp => some (1095, (0 : Int))
  | 1073, Face.tmmp => some (1074, (0 : Int))
  | 1073, Face.tmpp => some (1082, (0 : Int))
  | 1073, Face.tppp => some (1087, (0 : Int))
  | 1074, Face.tmpm => some (1075, (0 : Int))
  | 1074, Face.tmpp => some (1080, (0 : Int))
  | 1075, Face.tppp => some (1076, (0 : Int))
  | 1075, Face.yp => some (1078, (0 : Int))
  | 1076, Face.tmpp => some (1077, (0 : Int))
  | 1078, Face.tmpp => some (1079, (0 : Int))
  | 1080, Face.tppp => some (1081, (0 : Int))
  | 1082, Face.tpmp => some (1083, (0 : Int))
  | 1082, Face.tppm => some (1086, (0 : Int))
  | 1083, Face.yp => some (1084, (0 : Int))
  | 1084, Face.tmmm => some (1085, (0 : Int))
  | 1087, Face.tmpm => some (1088, (0 : Int))
  | 1087, Face.tmpp => some (1090, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard016
