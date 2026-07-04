import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard033

open Cuboctahedron

def shardIndex : Nat := 33
def stateStart : Nat := 2112
def stateStop : Nat := 2176
def emittedEdgeCount : Nat := 84

def next : Nat -> Face -> Option (Nat × Int)
  | 2112, Face.tmmm => some (2113, (0 : Int))
  | 2112, Face.tmpp => some (2121, (0 : Int))
  | 2112, Face.zm => some (2127, (0 : Int))
  | 2113, Face.tmpm => some (2114, (0 : Int))
  | 2113, Face.tmpp => some (2115, (0 : Int))
  | 2113, Face.tppm => some (2045, (0 : Int))
  | 2113, Face.zm => some (2119, (0 : Int))
  | 2115, Face.tmpm => some (2116, (0 : Int))
  | 2115, Face.zm => some (2118, (0 : Int))
  | 2116, Face.zm => some (2117, (0 : Int))
  | 2119, Face.tmpm => some (2120, (0 : Int))
  | 2120, Face.tmpp => some (2117, (0 : Int))
  | 2121, Face.tmmm => some (2122, (0 : Int))
  | 2121, Face.tmpm => some (2081, (0 : Int))
  | 2121, Face.tppm => some (698, (0 : Int))
  | 2121, Face.zm => some (2125, (0 : Int))
  | 2122, Face.tmpm => some (2123, (0 : Int))
  | 2122, Face.zm => some (2124, (0 : Int))
  | 2123, Face.zp => some (2089, (0 : Int))
  | 2125, Face.tmmp => some (2126, (0 : Int))
  | 2125, Face.tppp => some (617, (0 : Int))
  | 2127, Face.tmpm => some (2090, (0 : Int))
  | 2127, Face.tmpp => some (2128, (0 : Int))
  | 2129, Face.tmmp => some (2130, (0 : Int))
  | 2129, Face.tmpm => some (2144, (0 : Int))
  | 2129, Face.zp => some (2163, (0 : Int))
  | 2130, Face.tpmm => some (2131, (0 : Int))
  | 2130, Face.zm => some (2136, (0 : Int))
  | 2131, Face.tmpm => some (2132, (0 : Int))
  | 2131, Face.zm => some (2133, (0 : Int))
  | 2133, Face.tmpm => some (2134, (0 : Int))
  | 2134, Face.zp => some (2135, (0 : Int))
  | 2136, Face.tmpp => some (2137, (0 : Int))
  | 2136, Face.tpmp => some (2139, (0 : Int))
  | 2136, Face.zp => some (2142, (0 : Int))
  | 2137, Face.zm => some (2138, (0 : Int))
  | 2139, Face.tmpm => some (2140, (0 : Int))
  | 2140, Face.tmpp => some (875, (0 : Int))
  | 2140, Face.zp => some (2141, (0 : Int))
  | 2142, Face.tmpm => some (2143, (0 : Int))
  | 2144, Face.tmmp => some (2145, (0 : Int))
  | 2144, Face.tmpp => some (2150, (0 : Int))
  | 2144, Face.tpmp => some (494, (0 : Int))
  | 2144, Face.zp => some (2160, (0 : Int))
  | 2145, Face.tmpm => some (2146, (0 : Int))
  | 2145, Face.zm => some (2149, (0 : Int))
  | 2146, Face.zm => some (2147, (0 : Int))
  | 2147, Face.zp => some (2148, (0 : Int))
  | 2150, Face.tpmp => some (2151, (0 : Int))
  | 2150, Face.zp => some (2157, (0 : Int))
  | 2151, Face.tmmp => some (2152, (0 : Int))
  | 2151, Face.zm => some (2155, (0 : Int))
  | 2152, Face.zm => some (2153, (0 : Int))
  | 2153, Face.zp => some (2154, (0 : Int))
  | 2155, Face.zp => some (2156, (0 : Int))
  | 2156, Face.tmmp => some (2154, (0 : Int))
  | 2157, Face.tmmp => some (2158, (0 : Int))
  | 2157, Face.zm => some (2159, (0 : Int))
  | 2158, Face.zm => some (856, (0 : Int))
  | 2160, Face.tmpm => some (511, (0 : Int))
  | 2160, Face.zm => some (2161, (0 : Int))
  | 2161, Face.tmmp => some (2162, (0 : Int))
  | 2163, Face.tmmp => some (2164, (0 : Int))
  | 2163, Face.tmpp => some (2167, (0 : Int))
  | 2163, Face.zm => some (2170, (0 : Int))
  | 2164, Face.tmpm => some (2165, (0 : Int))
  | 2164, Face.zm => some (2166, (0 : Int))
  | 2167, Face.tmpm => some (2157, (0 : Int))
  | 2167, Face.zm => some (2168, (0 : Int))
  | 2168, Face.tmmp => some (2169, (0 : Int))
  | 2170, Face.tmpm => some (2161, (0 : Int))
  | 2170, Face.tmpp => some (2171, (0 : Int))
  | 2171, Face.tmmp => some (2172, (0 : Int))
  | 2173, Face.tmpm => some (2174, (0 : Int))
  | 2173, Face.tpmm => some (2211, (0 : Int))
  | 2173, Face.tppm => some (2217, (0 : Int))
  | 2173, Face.zm => some (2224, (0 : Int))
  | 2174, Face.tmmp => some (2175, (0 : Int))
  | 2174, Face.tpmm => some (2181, (0 : Int))
  | 2174, Face.tpmp => some (2191, (0 : Int))
  | 2174, Face.tppp => some (2201, (0 : Int))
  | 2174, Face.zp => some (2207, (0 : Int))
  | 2175, Face.tpmp => some (2176, (0 : Int))
  | 2175, Face.zp => some (2179, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard033
