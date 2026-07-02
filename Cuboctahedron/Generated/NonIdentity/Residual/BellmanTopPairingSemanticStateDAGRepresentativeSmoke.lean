import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticStateDAGProducerSocket

/-!
Representative semantic state-DAG suffix smoke.

This module checks one nontrivial quotient-suffix cone from the minimized
top-pairing semantic state DAG.  The diagnostic quotient contains the path

```text
class 34 --zm--> class 10 --zp--> class 4 --xp--> closed
```

The predicates below encode that local quotient cone and prove the matching
split-10M graph branch-table suffix evidence.  This is not full coverage; it is
the first small generated-proof shape that future state-DAG emitters should
scale from.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticStateDAGRepresentativeSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStrengthenedBranchTableSplit10MSmoke
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingBranchTableSuffixSplit10MSmoke

inductive Class004Suffix : List Face -> Prop
  | xp : Class004Suffix [Face.xp]

inductive Class010Suffix : List Face -> Prop
  | zp {rest : List Face}
      (hrest : Class004Suffix rest) :
      Class010Suffix (Face.zp :: rest)

inductive Class034Suffix : List Face -> Prop
  | zm {rest : List Face}
      (hrest : Class010Suffix rest) :
      Class034Suffix (Face.zm :: rest)

private theorem graphBranchTableSuffixOk_cons
    {rank : Fin numPairWords} {graph graphNext : State}
    {face : Face} {rest : List Face} {gain : Int}
    (hbranch : StrengthenedBranchTable graph face BranchKind.graph)
    (hnext :
      graphSmokeNext graph (smokeLabelOfFace face) =
        some (graphNext, gain))
    (hrest : GraphBranchTableSuffixOk rank graphNext rest) :
    GraphBranchTableSuffixOk rank graph (face :: rest) := by
  refine GraphBranchTableSuffixOk.graph hbranch ?_
  intro graphNext' gain' hgraph
  rw [hnext] at hgraph
  cases hgraph
  exact hrest

theorem graphBranchTableSuffixOk_class004
    {rank : Fin numPairWords} {rest : List Face}
    (hclass : Class004Suffix rest) :
    GraphBranchTableSuffixOk rank (442 : State) rest := by
  cases hclass
  exact graphBranchTableSuffixOk_cons
    StrengthenedBranchTable.graph_0483_s0442_xp
    (by rfl)
    (GraphBranchTableSuffixOk.nil _)

theorem graphBranchTableSuffixOk_class010
    {rank : Fin numPairWords} {rest : List Face}
    (hclass : Class010Suffix rest) :
    GraphBranchTableSuffixOk rank (332 : State) rest := by
  cases hclass with
  | zp hrest =>
      exact graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0373_s0332_zp
        (by rfl)
        (graphBranchTableSuffixOk_class004 hrest)

theorem graphBranchTableSuffixOk_class034
    {rank : Fin numPairWords} {rest : List Face}
    (hclass : Class034Suffix rest) :
    GraphBranchTableSuffixOk rank (197 : State) rest := by
  cases hclass with
  | zm hrest =>
      exact graphBranchTableSuffixOk_cons
        StrengthenedBranchTable.graph_0230_s0197_zm
        (by rfl)
        (graphBranchTableSuffixOk_class010 hrest)

theorem representativeClass034Suffix_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingSemanticStateDAGRepresentativeSmoke
