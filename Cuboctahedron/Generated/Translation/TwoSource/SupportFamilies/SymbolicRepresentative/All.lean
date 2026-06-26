import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicRepresentative.Group000
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicRepresentative.Group001
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicRepresentative.Group002
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicRepresentative.Group003
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicRepresentative.Group004
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicRepresentative.Group005
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicRepresentative.Group006
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicRepresentative.Group007

/-!
Generated bounded symbolic representative row-family root.

The root composes group-level semantic predicates.  It is deliberately a
bounded representative root, not final full translation coverage.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicRepresentative.All

open Cuboctahedron.Generated.Coverage

inductive SymbolicRepresentativeCovered : Nat -> SignMask -> Prop
  | group000 {r : Nat} {mask : SignMask} (h : _root_.Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicRepresentative.Group000.Group000Covered r mask) : SymbolicRepresentativeCovered r mask
  | group001 {r : Nat} {mask : SignMask} (h : _root_.Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicRepresentative.Group001.Group001Covered r mask) : SymbolicRepresentativeCovered r mask
  | group002 {r : Nat} {mask : SignMask} (h : _root_.Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicRepresentative.Group002.Group002Covered r mask) : SymbolicRepresentativeCovered r mask
  | group003 {r : Nat} {mask : SignMask} (h : _root_.Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicRepresentative.Group003.Group003Covered r mask) : SymbolicRepresentativeCovered r mask
  | group004 {r : Nat} {mask : SignMask} (h : _root_.Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicRepresentative.Group004.Group004Covered r mask) : SymbolicRepresentativeCovered r mask
  | group005 {r : Nat} {mask : SignMask} (h : _root_.Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicRepresentative.Group005.Group005Covered r mask) : SymbolicRepresentativeCovered r mask
  | group006 {r : Nat} {mask : SignMask} (h : _root_.Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicRepresentative.Group006.Group006Covered r mask) : SymbolicRepresentativeCovered r mask
  | group007 {r : Nat} {mask : SignMask} (h : _root_.Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicRepresentative.Group007.Group007Covered r mask) : SymbolicRepresentativeCovered r mask

theorem symbolicRepresentativeGoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : SymbolicRepresentativeCovered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | group000 h =>
      exact _root_.Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicRepresentative.Group000.Group000GoodCasesKilled r hlt mask h
  | group001 h =>
      exact _root_.Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicRepresentative.Group001.Group001GoodCasesKilled r hlt mask h
  | group002 h =>
      exact _root_.Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicRepresentative.Group002.Group002GoodCasesKilled r hlt mask h
  | group003 h =>
      exact _root_.Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicRepresentative.Group003.Group003GoodCasesKilled r hlt mask h
  | group004 h =>
      exact _root_.Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicRepresentative.Group004.Group004GoodCasesKilled r hlt mask h
  | group005 h =>
      exact _root_.Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicRepresentative.Group005.Group005GoodCasesKilled r hlt mask h
  | group006 h =>
      exact _root_.Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicRepresentative.Group006.Group006GoodCasesKilled r hlt mask h
  | group007 h =>
      exact _root_.Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicRepresentative.Group007.Group007GoodCasesKilled r hlt mask h

theorem symbolicRepresentativeCoverage_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SymbolicRepresentative.All
