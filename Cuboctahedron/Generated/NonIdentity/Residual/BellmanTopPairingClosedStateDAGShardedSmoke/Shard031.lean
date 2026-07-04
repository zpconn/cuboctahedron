import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard031

open Cuboctahedron

def shardIndex : Nat := 31
def stateStart : Nat := 1984
def stateStop : Nat := 2048
def emittedEdgeCount : Nat := 74

def next : Nat -> Face -> Option (Nat × Int)
  | 1984, Face.tmmm => some (1985, (0 : Int))
  | 1986, Face.tmmm => some (1987, (0 : Int))
  | 1986, Face.tpmp => some (1989, (0 : Int))
  | 1987, Face.tmmp => some (1988, (0 : Int))
  | 1990, Face.tmmm => some (1991, (0 : Int))
  | 1990, Face.tmpp => some (1998, (0 : Int))
  | 1991, Face.tmmp => some (1992, (0 : Int))
  | 1991, Face.yp => some (1996, (0 : Int))
  | 1992, Face.tmpp => some (1993, (0 : Int))
  | 1993, Face.yp => some (1994, (0 : Int))
  | 1994, Face.xp => some (1995, (0 : Int))
  | 1996, Face.tmpp => some (1997, (0 : Int))
  | 1997, Face.tmmp => some (1994, (0 : Int))
  | 1998, Face.tmmp => some (1999, (0 : Int))
  | 1999, Face.tmmm => some (2000, (0 : Int))
  | 2001, Face.tmpp => some (2002, (0 : Int))
  | 2001, Face.tpmp => some (2004, (0 : Int))
  | 2002, Face.tmmp => some (2003, (0 : Int))
  | 2004, Face.tmmp => some (2005, (0 : Int))
  | 2004, Face.yp => some (2009, (0 : Int))
  | 2005, Face.tmpp => some (2006, (0 : Int))
  | 2006, Face.yp => some (2007, (0 : Int))
  | 2007, Face.xp => some (2008, (0 : Int))
  | 2009, Face.tmpp => some (2010, (0 : Int))
  | 2010, Face.tmmp => some (2007, (0 : Int))
  | 2011, Face.tmmm => some (2012, (0 : Int))
  | 2011, Face.tpmm => some (2018, (0 : Int))
  | 2012, Face.tmpp => some (2013, (0 : Int))
  | 2012, Face.tppm => some (2015, (0 : Int))
  | 2013, Face.yp => some (2014, (0 : Int))
  | 2015, Face.yp => some (2016, (0 : Int))
  | 2016, Face.tmpp => some (2017, (0 : Int))
  | 2018, Face.tmmm => some (2019, (0 : Int))
  | 2018, Face.tmpp => some (2021, (0 : Int))
  | 2019, Face.yp => some (2020, (0 : Int))
  | 2022, Face.tmmm => some (2023, (0 : Int))
  | 2022, Face.tppm => some (2980, (0 : Int))
  | 2022, Face.zm => some (4044, (0 : Int))
  | 2023, Face.tpmm => some (2024, (0 : Int))
  | 2023, Face.tppp => some (2411, (0 : Int))
  | 2023, Face.zm => some (2644, (0 : Int))
  | 2024, Face.tppm => some (2025, (0 : Int))
  | 2024, Face.tppp => some (2233, (0 : Int))
  | 2024, Face.zp => some (2303, (0 : Int))
  | 2025, Face.tpmp => some (2026, (0 : Int))
  | 2025, Face.tppp => some (2129, (0 : Int))
  | 2025, Face.zp => some (2173, (0 : Int))
  | 2026, Face.tmmp => some (2027, (0 : Int))
  | 2026, Face.tmpm => some (2061, (0 : Int))
  | 2026, Face.tppp => some (2091, (0 : Int))
  | 2026, Face.zp => some (2112, (0 : Int))
  | 2027, Face.tmpp => some (2028, (0 : Int))
  | 2027, Face.tppp => some (2039, (0 : Int))
  | 2027, Face.zp => some (2048, (0 : Int))
  | 2028, Face.tpmp => some (2029, (0 : Int))
  | 2028, Face.zm => some (2036, (0 : Int))
  | 2029, Face.tppp => some (2030, (0 : Int))
  | 2029, Face.zm => some (2034, (0 : Int))
  | 2030, Face.zm => some (2031, (0 : Int))
  | 2031, Face.zp => some (2032, (0 : Int))
  | 2032, Face.xp => some (2033, (0 : Int))
  | 2034, Face.zp => some (2035, (0 : Int))
  | 2036, Face.tppp => some (2037, (0 : Int))
  | 2037, Face.zm => some (2038, (0 : Int))
  | 2039, Face.tmpm => some (2040, (0 : Int))
  | 2039, Face.tmpp => some (2041, (0 : Int))
  | 2039, Face.zm => some (2045, (0 : Int))
  | 2041, Face.tmpm => some (2042, (0 : Int))
  | 2041, Face.zm => some (2043, (0 : Int))
  | 2042, Face.zm => some (720, (0 : Int))
  | 2043, Face.zp => some (2044, (0 : Int))
  | 2045, Face.tmpm => some (2046, (0 : Int))
  | 2046, Face.tmpp => some (720, (0 : Int))
  | 2046, Face.zp => some (2047, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard031
