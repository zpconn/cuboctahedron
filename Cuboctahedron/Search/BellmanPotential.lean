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

inductive BellmanLabeledGraphPath
    {State Label : Type}
    (GraphEdge : BellmanEdge State -> Prop)
    (EdgeLabel : BellmanEdge State -> Label -> Prop) :
    State -> State -> List Label -> List (BellmanEdge State) -> Prop
  | nil (s : State) : BellmanLabeledGraphPath GraphEdge EdgeLabel s s [] []
  | cons {s t u : State} {label : Label}
      {labels : List Label} {e : BellmanEdge State} {edges : List (BellmanEdge State)}
      (hsrc : e.src = s)
      (hdst : e.dst = t)
      (hgraph : GraphEdge e)
      (hlabel : EdgeLabel e label)
      (htail : BellmanLabeledGraphPath GraphEdge EdgeLabel t u labels edges) :
      BellmanLabeledGraphPath GraphEdge EdgeLabel s u (label :: labels) (e :: edges)

namespace BellmanLabeledGraphPath

theorem toGraphPath
    {State Label : Type}
    {GraphEdge : BellmanEdge State -> Prop}
    {EdgeLabel : BellmanEdge State -> Label -> Prop}
    {start finish : State} {labels : List Label} {edges : List (BellmanEdge State)}
    (hpath : BellmanLabeledGraphPath GraphEdge EdgeLabel start finish labels edges) :
    BellmanGraphPath GraphEdge start finish edges := by
  induction hpath with
  | nil s =>
      exact BellmanGraphPath.nil s
  | cons hsrc hdst hgraph _hlabel _htail ih =>
      exact BellmanGraphPath.cons hsrc hdst hgraph ih

end BellmanLabeledGraphPath

inductive BellmanLabeledRun
    {State Label : Type}
    (GraphEdge : BellmanEdge State -> Prop)
    (EdgeLabel : BellmanEdge State -> Label -> Prop) :
    State -> State -> List Label -> Int -> Prop
  | nil (s : State) : BellmanLabeledRun GraphEdge EdgeLabel s s [] 0
  | cons {s t u : State} {label : Label}
      {labels : List Label} {e : BellmanEdge State} {tailGain : Int}
      (hsrc : e.src = s)
      (hdst : e.dst = t)
      (hgraph : GraphEdge e)
      (hlabel : EdgeLabel e label)
      (htail : BellmanLabeledRun GraphEdge EdgeLabel t u labels tailGain) :
      BellmanLabeledRun GraphEdge EdgeLabel s u
        (label :: labels) (e.gain + tailGain)

inductive BellmanLabelStepRun
    {State Label : Type}
    (Step : State -> Label -> State -> Int -> Prop) :
    State -> State -> List Label -> Int -> Prop
  | nil (s : State) : BellmanLabelStepRun Step s s [] 0
  | cons {s t u : State} {label : Label}
      {labels : List Label} {gain tailGain : Int}
      (hstep : Step s label t gain)
      (htail : BellmanLabelStepRun Step t u labels tailGain) :
      BellmanLabelStepRun Step s u (label :: labels) (gain + tailGain)

namespace BellmanLabelStepRun

theorem append
    {State Label : Type}
    {Step : State -> Label -> State -> Int -> Prop}
    {s t u : State} {labels₁ labels₂ : List Label} {gain₁ gain₂ : Int}
    (h₁ : BellmanLabelStepRun Step s t labels₁ gain₁)
    (h₂ : BellmanLabelStepRun Step t u labels₂ gain₂) :
    BellmanLabelStepRun Step s u (labels₁ ++ labels₂) (gain₁ + gain₂) := by
  induction h₁ generalizing u labels₂ gain₂ with
  | nil s =>
      simpa using h₂
  | cons hstep _htail ih =>
      simpa [List.cons_append, Int.add_assoc] using
        BellmanLabelStepRun.cons hstep (ih h₂)

end BellmanLabelStepRun

def evalLabelStepFn {State Label : Type}
    (next : State -> Label -> Option (State × Int)) :
    State -> List Label -> Option (State × Int)
  | s, [] => some (s, 0)
  | s, label :: labels =>
      match next s label with
      | none => none
      | some (t, gain) =>
          match evalLabelStepFn next t labels with
          | none => none
          | some (u, tailGain) => some (u, gain + tailGain)

theorem bellmanLabelStepRun_of_evalLabelStepFn
    {State Label : Type}
    {Step : State -> Label -> State -> Int -> Prop}
    {next : State -> Label -> Option (State × Int)}
    (hsound :
      forall s label t gain,
        next s label = some (t, gain) -> Step s label t gain)
    {start : State} {labels : List Label} {result : State × Int}
    (h :
      evalLabelStepFn next start labels = some result) :
    BellmanLabelStepRun Step start result.1 labels result.2 := by
  induction labels generalizing start result with
  | nil =>
      simp [evalLabelStepFn] at h
      cases h
      exact BellmanLabelStepRun.nil start
  | cons label labels ih =>
      simp [evalLabelStepFn] at h
      cases hnext : next start label with
      | none =>
          simp [hnext] at h
      | some step =>
          cases step with
          | mk mid stepGain =>
              simp [hnext] at h
              cases htail : evalLabelStepFn next mid labels with
              | none =>
                  simp [htail] at h
              | some result =>
                  cases result with
                  | mk finish' tailGain =>
                      simp [htail] at h
                      cases h
                      exact BellmanLabelStepRun.cons
                        (hsound start label mid stepGain hnext)
                        (ih htail)

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

theorem labeledRunGain_add_finalPotential_le_startPotential
    {State Label : Type} {V : State -> Int}
    {GraphEdge : BellmanEdge State -> Prop}
    {EdgeLabel : BellmanEdge State -> Label -> Prop}
    {start finish : State} {labels : List Label} {gain : Int}
    (hrun : BellmanLabeledRun GraphEdge EdgeLabel start finish labels gain)
    (hvalid : forall e, GraphEdge e -> e.Valid V) :
    gain + V finish <= V start := by
  induction hrun with
  | nil s =>
      simp
  | cons hsrc hdst hgraph _hlabel _htail ih =>
      rename_i s t u label labels e tailGain
      have hedge : BellmanEdge.Valid V e := hvalid e hgraph
      unfold BellmanEdge.Valid at hedge
      rw [hsrc, hdst] at hedge
      linarith

theorem labeledRunGain_le_startPotential_of_final_nonneg
    {State Label : Type} {V : State -> Int}
    {GraphEdge : BellmanEdge State -> Prop}
    {EdgeLabel : BellmanEdge State -> Label -> Prop}
    {start finish : State} {labels : List Label} {gain : Int}
    (hrun : BellmanLabeledRun GraphEdge EdgeLabel start finish labels gain)
    (hvalid : forall e, GraphEdge e -> e.Valid V)
    (hfinish : 0 <= V finish) :
    gain <= V start := by
  have h := labeledRunGain_add_finalPotential_le_startPotential
    (V := V) hrun hvalid
  linarith

theorem const_add_labeledRunGain_nonpos
    {State Label : Type} {V : State -> Int}
    {GraphEdge : BellmanEdge State -> Prop}
    {EdgeLabel : BellmanEdge State -> Label -> Prop}
    {start finish : State} {labels : List Label} {gain const : Int}
    (hrun : BellmanLabeledRun GraphEdge EdgeLabel start finish labels gain)
    (hvalid : forall e, GraphEdge e -> e.Valid V)
    (hfinish : 0 <= V finish)
    (hroot : const + V start <= 0) :
    const + gain <= 0 := by
  have hgain := labeledRunGain_le_startPotential_of_final_nonneg
    (V := V) hrun hvalid hfinish
  linarith

theorem labelStepRunGain_add_finalPotential_le_startPotential
    {State Label : Type} {V : State -> Int}
    {Step : State -> Label -> State -> Int -> Prop}
    {start finish : State} {labels : List Label} {gain : Int}
    (hrun : BellmanLabelStepRun Step start finish labels gain)
    (hvalid : forall s label t gain, Step s label t gain -> gain + V t <= V s) :
    gain + V finish <= V start := by
  induction hrun with
  | nil s =>
      simp
  | cons hstep _htail ih =>
      rename_i s t u label labels stepGain tailGain
      have hedge : stepGain + V t <= V s := hvalid s label t stepGain hstep
      linarith

theorem labelStepRunGain_le_startPotential_of_final_nonneg
    {State Label : Type} {V : State -> Int}
    {Step : State -> Label -> State -> Int -> Prop}
    {start finish : State} {labels : List Label} {gain : Int}
    (hrun : BellmanLabelStepRun Step start finish labels gain)
    (hvalid : forall s label t gain, Step s label t gain -> gain + V t <= V s)
    (hfinish : 0 <= V finish) :
    gain <= V start := by
  have h := labelStepRunGain_add_finalPotential_le_startPotential
    (V := V) hrun hvalid
  linarith

theorem const_add_labelStepRunGain_nonpos
    {State Label : Type} {V : State -> Int}
    {Step : State -> Label -> State -> Int -> Prop}
    {start finish : State} {labels : List Label} {gain const : Int}
    (hrun : BellmanLabelStepRun Step start finish labels gain)
    (hvalid : forall s label t gain, Step s label t gain -> gain + V t <= V s)
    (hfinish : 0 <= V finish)
    (hroot : const + V start <= 0) :
    const + gain <= 0 := by
  have hgain := labelStepRunGain_le_startPotential_of_final_nonneg
    (V := V) hrun hvalid hfinish
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

def BellmanLabeledGraphLanguageTraceBound
    {State Label Obj : Type}
    (V : State -> Int)
    (GraphEdge : BellmanEdge State -> Prop)
    (EdgeLabel : BellmanEdge State -> Label -> Prop)
    (start : State)
    (const : Int)
    (scaledMargin : Obj -> Int)
    (wordOf : Obj -> List Label)
    (Accepts : Obj -> Prop) : Prop :=
  forall obj : Obj, Accepts obj -> exists finish edges,
    BellmanLabeledGraphPath GraphEdge EdgeLabel start finish (wordOf obj) edges
      /\ 0 <= V finish
      /\ scaledMargin obj <= const + bellmanGainSum edges

theorem scaledMargin_nonpos_of_bellmanLabeledGraphLanguageTraceBound
    {State Label Obj : Type}
    {V : State -> Int}
    {GraphEdge : BellmanEdge State -> Prop}
    {EdgeLabel : BellmanEdge State -> Label -> Prop}
    {start : State}
    {const : Int}
    {scaledMargin : Obj -> Int}
    {wordOf : Obj -> List Label}
    {Accepts : Obj -> Prop}
    (hvalid : forall e, GraphEdge e -> e.Valid V)
    (hroot : const + V start <= 0)
    (htrace :
      BellmanLabeledGraphLanguageTraceBound
        V GraphEdge EdgeLabel start const scaledMargin wordOf Accepts) :
    forall obj : Obj, Accepts obj -> scaledMargin obj <= 0 := by
  intro obj hobj
  rcases htrace obj hobj with ⟨finish, edges, hpath, hfinish, hmargin⟩
  have hbound :
      const + bellmanGainSum edges <= 0 :=
    const_add_bellmanGainSum_nonpos_of_path
      (V := V)
      (const := const)
      (BellmanGraphPath.toBellmanPath
        (BellmanLabeledGraphPath.toGraphPath hpath))
      (fun e he =>
        hvalid e
          (BellmanGraphPath.edge_mem
            (BellmanLabeledGraphPath.toGraphPath hpath) e he))
      hfinish
      hroot
  linarith

def BellmanLabeledRunLanguageBound
    {State Label Obj : Type}
    (V : State -> Int)
    (GraphEdge : BellmanEdge State -> Prop)
    (EdgeLabel : BellmanEdge State -> Label -> Prop)
    (start : State)
    (const : Int)
    (scaledMargin : Obj -> Int)
    (wordOf : Obj -> List Label)
    (Accepts : Obj -> Prop) : Prop :=
  forall obj : Obj, Accepts obj -> exists finish gain,
    BellmanLabeledRun GraphEdge EdgeLabel start finish (wordOf obj) gain
      /\ 0 <= V finish
      /\ scaledMargin obj <= const + gain

theorem scaledMargin_nonpos_of_bellmanLabeledRunLanguageBound
    {State Label Obj : Type}
    {V : State -> Int}
    {GraphEdge : BellmanEdge State -> Prop}
    {EdgeLabel : BellmanEdge State -> Label -> Prop}
    {start : State}
    {const : Int}
    {scaledMargin : Obj -> Int}
    {wordOf : Obj -> List Label}
    {Accepts : Obj -> Prop}
    (hvalid : forall e, GraphEdge e -> e.Valid V)
    (hroot : const + V start <= 0)
    (htrace :
      BellmanLabeledRunLanguageBound
        V GraphEdge EdgeLabel start const scaledMargin wordOf Accepts) :
    forall obj : Obj, Accepts obj -> scaledMargin obj <= 0 := by
  intro obj hobj
  rcases htrace obj hobj with ⟨finish, gain, hrun, hfinish, hmargin⟩
  have hbound :
      const + gain <= 0 :=
    const_add_labeledRunGain_nonpos
      (V := V)
      (const := const)
      hrun
      hvalid
      hfinish
      hroot
  linarith

def BellmanLabelStepRunLanguageBound
    {State Label Obj : Type}
    (V : State -> Int)
    (Step : State -> Label -> State -> Int -> Prop)
    (start : State)
    (const : Int)
    (scaledMargin : Obj -> Int)
    (wordOf : Obj -> List Label)
    (Accepts : Obj -> Prop) : Prop :=
  forall obj : Obj, Accepts obj -> exists finish gain,
    BellmanLabelStepRun Step start finish (wordOf obj) gain
      /\ 0 <= V finish
      /\ scaledMargin obj <= const + gain

theorem scaledMargin_nonpos_of_bellmanLabelStepRunLanguageBound
    {State Label Obj : Type}
    {V : State -> Int}
    {Step : State -> Label -> State -> Int -> Prop}
    {start : State}
    {const : Int}
    {scaledMargin : Obj -> Int}
    {wordOf : Obj -> List Label}
    {Accepts : Obj -> Prop}
    (hvalid : forall s label t gain, Step s label t gain -> gain + V t <= V s)
    (hroot : const + V start <= 0)
    (htrace :
      BellmanLabelStepRunLanguageBound
        V Step start const scaledMargin wordOf Accepts) :
    forall obj : Obj, Accepts obj -> scaledMargin obj <= 0 := by
  intro obj hobj
  rcases htrace obj hobj with ⟨finish, gain, hrun, hfinish, hmargin⟩
  have hbound :
      const + gain <= 0 :=
    const_add_labelStepRunGain_nonpos
      (V := V)
      (const := const)
      hrun
      hvalid
      hfinish
      hroot
  linarith

end Cuboctahedron
