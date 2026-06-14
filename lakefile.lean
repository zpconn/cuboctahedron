import Lake
open Lake DSL

package cuboctahedron where
  -- Project options will be added as the formalization grows.

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "master"

@[default_target]
lean_lib Cuboctahedron where
  -- The root module is Cuboctahedron.lean.
