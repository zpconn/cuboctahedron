import Cuboctahedron.Search.PairWords

/-!
Square-parity / triangular-shadow normal form.

This module is the Lean-side core for the holonomy pivot recorded in
`SYMMETRY_PLAN.md`.  It is deliberately small and does not import generated
coverage files.  The first job is to define the exact finite classifier that
the external full scan validated:

* square pair reflections update a parity state;
* triangular pair reflections are conjugated by that parity and appended to a
  projective triangular shadow;
* adjacent equal triangular letters cancel in a reduced stack.

The product-order convention matches `totalLinearOfPairWord`: scan the 13
remaining pair letters in word order and then scan the started `x` reflection.
-/

namespace Cuboctahedron

structure SqParity where
  x : Bool
  y : Bool
  z : Bool
deriving DecidableEq, Repr

namespace SqParity

@[ext] theorem ext {p q : SqParity}
    (hx : p.x = q.x) (hy : p.y = q.y) (hz : p.z = q.z) :
    p = q := by
  cases p
  cases q
  simp_all

def id : SqParity where
  x := false
  y := false
  z := false

def xor (p q : SqParity) : SqParity where
  x := Bool.xor p.x q.x
  y := Bool.xor p.y q.y
  z := Bool.xor p.z q.z

def toggleX : SqParity where
  x := true
  y := false
  z := false

def toggleY : SqParity where
  x := false
  y := true
  z := false

def toggleZ : SqParity where
  x := false
  y := false
  z := true

def toggleForPair : PairId -> Option SqParity
  | PairId.x => some toggleX
  | PairId.y => some toggleY
  | PairId.z => some toggleZ
  | PairId.d111 => none
  | PairId.d11m => none
  | PairId.d1m1 => none
  | PairId.dm11 => none

def applyPair (p : SqParity) (pair : PairId) : SqParity :=
  match toggleForPair pair with
  | some q => p.xor q
  | none => p

@[simp] theorem applyPair_d111 (p : SqParity) :
    p.applyPair PairId.d111 = p := by
  cases p
  rfl

@[simp] theorem applyPair_d11m (p : SqParity) :
    p.applyPair PairId.d11m = p := by
  cases p
  rfl

@[simp] theorem applyPair_d1m1 (p : SqParity) :
    p.applyPair PairId.d1m1 = p := by
  cases p
  rfl

@[simp] theorem applyPair_dm11 (p : SqParity) :
    p.applyPair PairId.dm11 = p := by
  cases p
  rfl

end SqParity

inductive TriLetter
  | d111 | d11m | d1m1 | dm11
deriving DecidableEq, Repr

namespace TriLetter

def toPairId : TriLetter -> PairId
  | d111 => PairId.d111
  | d11m => PairId.d11m
  | d1m1 => PairId.d1m1
  | dm11 => PairId.dm11

def ofPairId? : PairId -> Option TriLetter
  | PairId.x => none
  | PairId.y => none
  | PairId.z => none
  | PairId.d111 => some d111
  | PairId.d11m => some d11m
  | PairId.d1m1 => some d1m1
  | PairId.dm11 => some dm11

/-- Whether the projectively normalized triangular normal has negative
`y`-coordinate. -/
def yNeg : TriLetter -> Bool
  | d111 => false
  | d11m => false
  | d1m1 => true
  | dm11 => true

/-- Whether the projectively normalized triangular normal has negative
`z`-coordinate. -/
def zNeg : TriLetter -> Bool
  | d111 => false
  | d11m => true
  | d1m1 => false
  | dm11 => true

def ofSigns (yNeg zNeg : Bool) : TriLetter :=
  match yNeg, zNeg with
  | false, false => d111
  | false, true => d11m
  | true, false => d1m1
  | true, true => dm11

@[simp] theorem ofSigns_yNeg (a b : Bool) :
    (ofSigns a b).yNeg = a := by
  cases a <;> cases b <;> rfl

@[simp] theorem ofSigns_zNeg (a b : Bool) :
    (ofSigns a b).zNeg = b := by
  cases a <;> cases b <;> rfl

@[simp] theorem ofSigns_components (t : TriLetter) :
    ofSigns t.yNeg t.zNeg = t := by
  cases t <;> rfl

/-- Conjugate a projective triangular letter by the accumulated square
parity.  If `x` has been toggled, projective renormalization flips the signs
of both `y` and `z`, hence the `x xor y` and `x xor z` toggles below. -/
def act (p : SqParity) (t : TriLetter) : TriLetter :=
  ofSigns
    (Bool.xor t.yNeg (Bool.xor p.x p.y))
    (Bool.xor t.zNeg (Bool.xor p.x p.z))

@[simp] theorem act_id (t : TriLetter) :
    act SqParity.id t = t := by
  cases t <;> rfl

end TriLetter

structure ShadowState where
  parity : SqParity
  shadowRev : List TriLetter
  reducedRev : List TriLetter
deriving DecidableEq, Repr

namespace ShadowState

def initial : ShadowState where
  parity := SqParity.id
  shadowRev := []
  reducedRev := []

def pushReduced (t : TriLetter) (stack : List TriLetter) : List TriLetter :=
  match stack with
  | [] => [t]
  | u :: rest => if t = u then rest else t :: u :: rest

def scanPair (state : ShadowState) (pair : PairId) : ShadowState :=
  match TriLetter.ofPairId? pair with
  | some tri =>
      let acted := tri.act state.parity
      { state with
        shadowRev := acted :: state.shadowRev
        reducedRev := pushReduced acted state.reducedRev }
  | none =>
      { state with parity := state.parity.applyPair pair }

def shadow : ShadowState -> List TriLetter :=
  fun state => state.shadowRev.reverse

def reducedShadow : ShadowState -> List TriLetter :=
  fun state => state.reducedRev.reverse

@[simp] theorem scanPair_x_parity (state : ShadowState) :
    (state.scanPair PairId.x).parity = state.parity.applyPair PairId.x := by
  cases state
  rfl

@[simp] theorem scanPair_d111_parity (state : ShadowState) :
    (state.scanPair PairId.d111).parity = state.parity := by
  cases state
  rfl

end ShadowState

def startedPairFactors (w : PairWord) : List PairId :=
  (List.finRange 13).map (fun i : Fin 13 => w.get i) ++ [PairId.x]

def shadowStateOfPairList (pairs : List PairId) : ShadowState :=
  pairs.foldl ShadowState.scanPair ShadowState.initial

def pairOccursOddFrom (start : Bool) (target : PairId) : List PairId -> Bool
  | [] => start
  | p :: ps =>
      pairOccursOddFrom (if p = target then !start else start) target ps

def pairOccursOdd (target : PairId) (pairs : List PairId) : Bool :=
  pairOccursOddFrom false target pairs

theorem foldl_scanPair_parity_x
    (pairs : List PairId) (state : ShadowState) :
    ((pairs.foldl ShadowState.scanPair state).parity).x =
      pairOccursOddFrom state.parity.x PairId.x pairs := by
  induction pairs generalizing state with
  | nil => rfl
  | cons p ps ih =>
      rw [List.foldl_cons, ih]
      cases p <;>
        cases state with
        | mk parity shadowRev reducedRev =>
            cases parity with
            | mk px py pz =>
                cases px <;> cases py <;> cases pz <;>
                  simp [pairOccursOddFrom, ShadowState.scanPair,
                    TriLetter.ofPairId?, SqParity.applyPair,
                    SqParity.toggleForPair, SqParity.toggleX,
                    SqParity.toggleY, SqParity.toggleZ, SqParity.xor]

theorem foldl_scanPair_parity_y
    (pairs : List PairId) (state : ShadowState) :
    ((pairs.foldl ShadowState.scanPair state).parity).y =
      pairOccursOddFrom state.parity.y PairId.y pairs := by
  induction pairs generalizing state with
  | nil => rfl
  | cons p ps ih =>
      rw [List.foldl_cons, ih]
      cases p <;>
        cases state with
        | mk parity shadowRev reducedRev =>
            cases parity with
            | mk px py pz =>
                cases px <;> cases py <;> cases pz <;>
                  simp [pairOccursOddFrom, ShadowState.scanPair,
                    TriLetter.ofPairId?, SqParity.applyPair,
                    SqParity.toggleForPair, SqParity.toggleX,
                    SqParity.toggleY, SqParity.toggleZ, SqParity.xor]

theorem foldl_scanPair_parity_z
    (pairs : List PairId) (state : ShadowState) :
    ((pairs.foldl ShadowState.scanPair state).parity).z =
      pairOccursOddFrom state.parity.z PairId.z pairs := by
  induction pairs generalizing state with
  | nil => rfl
  | cons p ps ih =>
      rw [List.foldl_cons, ih]
      cases p <;>
        cases state with
        | mk parity shadowRev reducedRev =>
            cases parity with
            | mk px py pz =>
                cases px <;> cases py <;> cases pz <;>
                  simp [pairOccursOddFrom, ShadowState.scanPair,
                    TriLetter.ofPairId?, SqParity.applyPair,
                    SqParity.toggleForPair, SqParity.toggleX,
                    SqParity.toggleY, SqParity.toggleZ, SqParity.xor]

theorem shadowStateOfPairList_parity (pairs : List PairId) :
    (shadowStateOfPairList pairs).parity =
      { x := pairOccursOdd PairId.x pairs
        y := pairOccursOdd PairId.y pairs
        z := pairOccursOdd PairId.z pairs } := by
  ext
  · simp [shadowStateOfPairList, pairOccursOdd, ShadowState.initial, SqParity.id,
      foldl_scanPair_parity_x]
  · simp [shadowStateOfPairList, pairOccursOdd, ShadowState.initial, SqParity.id,
      foldl_scanPair_parity_y]
  · simp [shadowStateOfPairList, pairOccursOdd, ShadowState.initial, SqParity.id,
      foldl_scanPair_parity_z]

theorem finalSquareParityOfPairList_eq_id_of_not_occurs_odd
    {pairs : List PairId}
    (hx : pairOccursOdd PairId.x pairs = false)
    (hy : pairOccursOdd PairId.y pairs = false)
    (hz : pairOccursOdd PairId.z pairs = false) :
    (shadowStateOfPairList pairs).parity = SqParity.id := by
  rw [shadowStateOfPairList_parity]
  simp [SqParity.id, hx, hy, hz]

def shadowStateOfPairWord (w : PairWord) : ShadowState :=
  shadowStateOfPairList (startedPairFactors w)

def triangularShadowOfPairWord (w : PairWord) : List TriLetter :=
  (shadowStateOfPairWord w).shadow

def reducedShadowOfPairWord (w : PairWord) : List TriLetter :=
  (shadowStateOfPairWord w).reducedShadow

def finalSquareParityOfPairWord (w : PairWord) : SqParity :=
  (shadowStateOfPairWord w).parity

theorem startedPairFactors_length (w : PairWord) :
    (startedPairFactors w).length = 14 := by
  simp [startedPairFactors]

/- Small sanity examples matching the external profiler's stack convention. -/
example :
    (shadowStateOfPairList [PairId.d111, PairId.d111]).reducedShadow = [] := by
  rfl

example :
    (shadowStateOfPairList [PairId.x, PairId.d111]).reducedShadow =
      [TriLetter.dm11] := by
  rfl

end Cuboctahedron
