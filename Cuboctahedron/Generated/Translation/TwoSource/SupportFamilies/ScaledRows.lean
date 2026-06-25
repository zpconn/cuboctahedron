import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates

/-!
Small scaled-row helpers for semantic two-source translation families.

The generated row-family path ultimately reasons about `StrictLin2` rows.  This
module lets generated pilot files record row normal forms as integer numerators
with an explicit positive denominator, then convert them to `StrictLin2` only at
the semantic family boundary.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ScaledRows

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.RowRelationTemplates

structure SLine where
  den : Int
  a : Int
  b : Int
  c : Int
deriving Repr, DecidableEq

def SLine.toStrictLin2 (L : SLine) : StrictLin2 :=
  { a := (L.a : Rat) / L.den
    b := (L.b : Rat) / L.den
    c := (L.c : Rat) / L.den }

def SLine.lineEqEqPos (L : SLine) : Bool :=
  L.a == L.b && L.a < 0 && L.c <= L.a

def SLine.lineFixed (L : SLine) (a b : Int) : Bool :=
  L.a == a * L.den && L.b == b * L.den && L.c == L.den

def SLine.weightedA (L M : SLine) : Int :=
  L.a * M.den + M.a * L.den

def SLine.weightedB (L M : SLine) : Int :=
  L.b * M.den + M.b * L.den

def SLine.weightedC (L M : SLine) : Int :=
  L.c * M.den + M.c * L.den

def sampleEqEqPosLine : SLine :=
  { den := 29, a := -29, b := -29, c := -39 }

def sampleFixedOneOneLine : SLine :=
  { den := 1, a := 1, b := 1, c := 1 }

theorem sampleEqEqPosLine_check :
    sampleEqEqPosLine.lineEqEqPos = true := by
  rfl

theorem sampleFixedOneOneLine_check :
    sampleFixedOneOneLine.lineFixed 1 1 = true := by
  rfl

theorem sampleWeightedA :
    sampleEqEqPosLine.weightedA sampleFixedOneOneLine = 0 := by
  rfl

theorem sampleWeightedB :
    sampleEqEqPosLine.weightedB sampleFixedOneOneLine = 0 := by
  rfl

theorem sampleWeightedC_nonpos :
    sampleEqEqPosLine.weightedC sampleFixedOneOneLine <= 0 := by
  decide

theorem sampleEqEqPosRow :
    EqEqPosRow sampleEqEqPosLine.toStrictLin2 := by
  norm_num [SLine.toStrictLin2, sampleEqEqPosLine, EqEqPosRow]

theorem sampleFixedOneOneRow :
    FixedRow sampleFixedOneOneLine.toStrictLin2 1 1 := by
  norm_num [SLine.toStrictLin2, sampleFixedOneOneLine, FixedRow]

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.ScaledRows
