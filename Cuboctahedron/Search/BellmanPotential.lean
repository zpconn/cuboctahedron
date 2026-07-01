import Mathlib.Tactic

/-!
Small generic Bellman/potential certificates over integer edge gains.

This module is intentionally independent of the cuboctahedron geometry.  It
captures the trusted proof shape needed by generated nonidentity margin
families: if every transition satisfies `gain + V(next) <= V(current)`, then
the sum of gains along any chained path is bounded by the potential drop.
-/

namespace Cuboctahedron

structure BellmanEdge (State : Type) where
  src : State
  gain : Int
  dst : State
deriving Repr

namespace BellmanEdge

def Valid {State : Type} (V : State -> Int) (e : BellmanEdge State) : Prop :=
  e.gain + V e.dst <= V e.src

end BellmanEdge

inductive BellmanPath {State : Type} :
    State -> State -> List (BellmanEdge State) -> Prop
  | nil (s : State) : BellmanPath s s []
  | cons {s t u : State} {e : BellmanEdge State} {edges : List (BellmanEdge State)}
      (hsrc : e.src = s)
      (hdst : e.dst = t)
      (htail : BellmanPath t u edges) :
      BellmanPath s u (e :: edges)

inductive BellmanGraphPath {State : Type} (GraphEdge : BellmanEdge State -> Prop) :
    State -> State -> List (BellmanEdge State) -> Prop
  | nil (s : State) : BellmanGraphPath GraphEdge s s []
  | cons {s t u : State} {e : BellmanEdge State} {edges : List (BellmanEdge State)}
      (hsrc : e.src = s)
      (hdst : e.dst = t)
      (hgraph : GraphEdge e)
      (htail : BellmanGraphPath GraphEdge t u edges) :
      BellmanGraphPath GraphEdge s u (e :: edges)

namespace BellmanGraphPath

theorem toBellmanPath
    {State : Type} {GraphEdge : BellmanEdge State -> Prop}
    {start finish : State} {edges : List (BellmanEdge State)}
    (hpath : BellmanGraphPath GraphEdge start finish edges) :
    BellmanPath start finish edges := by
  induction hpath with
  | nil s =>
      exact BellmanPath.nil s
  | cons hsrc hdst _hgraph _htail ih =>
      exact BellmanPath.cons hsrc hdst ih

theorem edge_mem
    {State : Type} {GraphEdge : BellmanEdge State -> Prop}
    {start finish : State} {edges : List (BellmanEdge State)}
    (hpath : BellmanGraphPath GraphEdge start finish edges) :
    forall e, e ∈ edges -> GraphEdge e := by
  induction hpath with
  | nil s =>
      intro e he
      simp at he
  | cons hsrc hdst hgraph htail ih =>
      intro e' he
      simp only [List.mem_cons] at he
      rcases he with heq | hmem
      · subst e'
        exact hgraph
      · exact ih e' hmem

end BellmanGraphPath

def bellmanGainSum {State : Type} : List (BellmanEdge State) -> Int
  | [] => 0
  | e :: edges => e.gain + bellmanGainSum edges

theorem bellmanGainSum_add_finalPotential_le_startPotential
    {State : Type} {V : State -> Int}
    {start finish : State} {edges : List (BellmanEdge State)}
    (hpath : BellmanPath start finish edges)
    (hvalid : forall e, e ∈ edges -> e.Valid V) :
    bellmanGainSum edges + V finish <= V start := by
  induction hpath with
  | nil s =>
      simp [bellmanGainSum]
  | cons hsrc hdst htail ih =>
      rename_i s t u e edges
      have hedge : BellmanEdge.Valid V e := hvalid e (by simp)
      have htailValid :
          forall e', e' ∈ edges -> BellmanEdge.Valid V e' := by
        intro e' he
        exact hvalid e' (by simp [he])
      have htailBound := ih htailValid
      simp [bellmanGainSum]
      unfold BellmanEdge.Valid at hedge
      rw [hsrc, hdst] at hedge
      linarith

theorem bellmanGainSum_le_startPotential_of_final_nonneg
    {State : Type} {V : State -> Int}
    {start finish : State} {edges : List (BellmanEdge State)}
    (hpath : BellmanPath start finish edges)
    (hvalid : forall e, e ∈ edges -> e.Valid V)
    (hfinish : 0 <= V finish) :
    bellmanGainSum edges <= V start := by
  have h := bellmanGainSum_add_finalPotential_le_startPotential
    (V := V) hpath hvalid
  linarith

theorem const_add_bellmanGainSum_nonpos_of_path
    {State : Type} {V : State -> Int}
    {start finish : State} {edges : List (BellmanEdge State)}
    {const : Int}
    (hpath : BellmanPath start finish edges)
    (hvalid : forall e, e ∈ edges -> e.Valid V)
    (hfinish : 0 <= V finish)
    (hroot : const + V start <= 0) :
    const + bellmanGainSum edges <= 0 := by
  have hsum := bellmanGainSum_le_startPotential_of_final_nonneg
    (V := V) hpath hvalid hfinish
  linarith

def BellmanTraceBound
    {State Obj : Type}
    (V : State -> Int)
    (GraphEdge : BellmanEdge State -> Prop)
    (start : State)
    (const : Int)
    (scaledMargin : Obj -> Int) : Prop :=
  forall obj : Obj, exists finish edges,
    BellmanPath start finish edges
      /\ (forall e, e ∈ edges -> GraphEdge e)
      /\ 0 <= V finish
      /\ scaledMargin obj <= const + bellmanGainSum edges

theorem scaledMargin_nonpos_of_bellmanTraceBound
    {State Obj : Type}
    {V : State -> Int}
    {GraphEdge : BellmanEdge State -> Prop}
    {start : State}
    {const : Int}
    {scaledMargin : Obj -> Int}
    (hvalid : forall e, GraphEdge e -> e.Valid V)
    (hroot : const + V start <= 0)
    (htrace : BellmanTraceBound V GraphEdge start const scaledMargin) :
    forall obj : Obj, scaledMargin obj <= 0 := by
  intro obj
  rcases htrace obj with ⟨finish, edges, hpath, hgraph, hfinish, hmargin⟩
  have hbound :
      const + bellmanGainSum edges <= 0 :=
    const_add_bellmanGainSum_nonpos_of_path
      (V := V)
      (const := const)
      hpath
      (fun e he => hvalid e (hgraph e he))
      hfinish
      hroot
  linarith

def BellmanLanguageTraceBound
    {State Obj : Type}
    (V : State -> Int)
    (GraphEdge : BellmanEdge State -> Prop)
    (start : State)
    (const : Int)
    (scaledMargin : Obj -> Int)
    (Accepts : Obj -> Prop) : Prop :=
  forall obj : Obj, Accepts obj -> exists finish edges,
    BellmanPath start finish edges
      /\ (forall e, e ∈ edges -> GraphEdge e)
      /\ 0 <= V finish
      /\ scaledMargin obj <= const + bellmanGainSum edges

theorem scaledMargin_nonpos_of_bellmanLanguageTraceBound
    {State Obj : Type}
    {V : State -> Int}
    {GraphEdge : BellmanEdge State -> Prop}
    {start : State}
    {const : Int}
    {scaledMargin : Obj -> Int}
    {Accepts : Obj -> Prop}
    (hvalid : forall e, GraphEdge e -> e.Valid V)
    (hroot : const + V start <= 0)
    (htrace : BellmanLanguageTraceBound V GraphEdge start const scaledMargin Accepts) :
    forall obj : Obj, Accepts obj -> scaledMargin obj <= 0 := by
  intro obj hobj
  rcases htrace obj hobj with ⟨finish, edges, hpath, hgraph, hfinish, hmargin⟩
  have hbound :
      const + bellmanGainSum edges <= 0 :=
    const_add_bellmanGainSum_nonpos_of_path
      (V := V)
      (const := const)
      hpath
      (fun e he => hvalid e (hgraph e he))
      hfinish
      hroot
  linarith

def BellmanGraphLanguageTraceBound
    {State Obj : Type}
    (V : State -> Int)
    (GraphEdge : BellmanEdge State -> Prop)
    (start : State)
    (const : Int)
    (scaledMargin : Obj -> Int)
    (Accepts : Obj -> Prop) : Prop :=
  forall obj : Obj, Accepts obj -> exists finish edges,
    BellmanGraphPath GraphEdge start finish edges
      /\ 0 <= V finish
      /\ scaledMargin obj <= const + bellmanGainSum edges

theorem scaledMargin_nonpos_of_bellmanGraphLanguageTraceBound
    {State Obj : Type}
    {V : State -> Int}
    {GraphEdge : BellmanEdge State -> Prop}
    {start : State}
    {const : Int}
    {scaledMargin : Obj -> Int}
    {Accepts : Obj -> Prop}
    (hvalid : forall e, GraphEdge e -> e.Valid V)
    (hroot : const + V start <= 0)
    (htrace : BellmanGraphLanguageTraceBound V GraphEdge start const scaledMargin Accepts) :
    forall obj : Obj, Accepts obj -> scaledMargin obj <= 0 := by
  intro obj hobj
  rcases htrace obj hobj with ⟨finish, edges, hpath, hfinish, hmargin⟩
  have hbound :
      const + bellmanGainSum edges <= 0 :=
    const_add_bellmanGainSum_nonpos_of_path
      (V := V)
      (const := const)
      (BellmanGraphPath.toBellmanPath hpath)
      (fun e he => hvalid e (BellmanGraphPath.edge_mem hpath e he))
      hfinish
      hroot
  linarith

end Cuboctahedron
