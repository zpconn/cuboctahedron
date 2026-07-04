import Cuboctahedron.Search.BellmanTopPairingLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 2048

/-!
Generated closed-language state-DAG evaluator shard.

This file is structural smoke evidence only.  It contains one bounded
source-state range of the deterministic closed-DAG transition table.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard030

open Cuboctahedron

def shardIndex : Nat := 30
def stateStart : Nat := 1920
def stateStop : Nat := 1984
def emittedEdgeCount : Nat := 67

def next : Nat -> Face -> Option (Nat × Int)
  | 1920, Face.tmpm => some (1921, (0 : Int))
  | 1921, Face.tmmp => some (1922, (0 : Int))
  | 1923, Face.tpmm => some (1924, (0 : Int))
  | 1923, Face.tppm => some (1942, (0 : Int))
  | 1924, Face.tmpp => some (1925, (0 : Int))
  | 1924, Face.tppp => some (1933, (0 : Int))
  | 1925, Face.tmmm => some (1926, (0 : Int))
  | 1925, Face.tppm => some (1928, (0 : Int))
  | 1926, Face.yp => some (1927, (0 : Int))
  | 1928, Face.tmmp => some (1929, (0 : Int))
  | 1929, Face.tmmm => some (1930, (0 : Int))
  | 1930, Face.yp => some (1931, (0 : Int))
  | 1931, Face.xp => some (1932, (0 : Int))
  | 1933, Face.tmpp => some (1934, (0 : Int))
  | 1933, Face.tppm => some (1935, (0 : Int))
  | 1935, Face.tmmp => some (1936, (0 : Int))
  | 1935, Face.yp => some (1938, (0 : Int))
  | 1936, Face.tmpp => some (1937, (0 : Int))
  | 1938, Face.tmpp => some (1939, (0 : Int))
  | 1939, Face.tmmp => some (1940, (0 : Int))
  | 1940, Face.xp => some (1941, (0 : Int))
  | 1942, Face.tmmm => some (1943, (0 : Int))
  | 1942, Face.tmmp => some (1945, (0 : Int))
  | 1942, Face.tpmm => some (1948, (0 : Int))
  | 1943, Face.tmpp => some (1944, (0 : Int))
  | 1945, Face.tmmm => some (1946, (0 : Int))
  | 1946, Face.yp => some (1947, (0 : Int))
  | 1948, Face.tmmm => some (1949, (0 : Int))
  | 1948, Face.tmpp => some (1956, (0 : Int))
  | 1949, Face.tmmp => some (1950, (0 : Int))
  | 1949, Face.yp => some (1954, (0 : Int))
  | 1950, Face.tmpp => some (1951, (0 : Int))
  | 1951, Face.yp => some (1952, (0 : Int))
  | 1952, Face.xp => some (1953, (0 : Int))
  | 1954, Face.tmpp => some (1955, (0 : Int))
  | 1955, Face.tmmp => some (1952, (0 : Int))
  | 1956, Face.tmmp => some (1957, (0 : Int))
  | 1957, Face.tmmm => some (1958, (0 : Int))
  | 1958, Face.yp => some (1959, (0 : Int))
  | 1959, Face.xp => some (1960, (0 : Int))
  | 1961, Face.tmmp => some (1962, (0 : Int))
  | 1961, Face.tpmm => some (1976, (0 : Int))
  | 1961, Face.tpmp => some (2011, (0 : Int))
  | 1962, Face.tmmm => some (1963, (0 : Int))
  | 1962, Face.tpmm => some (1966, (0 : Int))
  | 1962, Face.tpmp => some (1973, (0 : Int))
  | 1963, Face.tpmp => some (1964, (0 : Int))
  | 1964, Face.yp => some (1965, (0 : Int))
  | 1966, Face.tmpm => some (1967, (0 : Int))
  | 1966, Face.tmpp => some (1972, (0 : Int))
  | 1967, Face.tppp => some (1968, (0 : Int))
  | 1967, Face.yp => some (1970, (0 : Int))
  | 1968, Face.tmpp => some (1969, (0 : Int))
  | 1970, Face.tmpp => some (1971, (0 : Int))
  | 1973, Face.tmmm => some (1974, (0 : Int))
  | 1974, Face.yp => some (1975, (0 : Int))
  | 1976, Face.tmmp => some (1977, (0 : Int))
  | 1976, Face.tmpp => some (1986, (0 : Int))
  | 1976, Face.tpmp => some (1990, (0 : Int))
  | 1976, Face.tppp => some (2001, (0 : Int))
  | 1977, Face.tmpm => some (1978, (0 : Int))
  | 1977, Face.tmpp => some (1981, (0 : Int))
  | 1978, Face.tppp => some (1979, (0 : Int))
  | 1978, Face.yp => some (1980, (0 : Int))
  | 1981, Face.tmpm => some (1982, (0 : Int))
  | 1981, Face.tppp => some (1983, (0 : Int))
  | 1981, Face.yp => some (1984, (0 : Int))
  | _, _ => none

theorem shard_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingClosedStateDAGShardedSmoke.Shard030
