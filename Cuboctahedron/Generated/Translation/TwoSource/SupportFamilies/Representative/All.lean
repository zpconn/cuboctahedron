import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.Group000
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.Group001
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.Group002
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.Group003
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.Group004
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.Group005
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.Group006
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.Group007

/-!
Generated bounded representative semantic row-family root.

The root composes group-level semantic predicates.  It is deliberately a
bounded representative root, not final full translation coverage.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.All

open Cuboctahedron.Generated.Coverage

inductive RepresentativeFamilyCovered : Nat -> SignMask -> Prop
  | group000 {r : Nat} {mask : SignMask} (h : _root_.Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.Group000.Group000Covered r mask) : RepresentativeFamilyCovered r mask
  | group001 {r : Nat} {mask : SignMask} (h : _root_.Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.Group001.Group001Covered r mask) : RepresentativeFamilyCovered r mask
  | group002 {r : Nat} {mask : SignMask} (h : _root_.Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.Group002.Group002Covered r mask) : RepresentativeFamilyCovered r mask
  | group003 {r : Nat} {mask : SignMask} (h : _root_.Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.Group003.Group003Covered r mask) : RepresentativeFamilyCovered r mask
  | group004 {r : Nat} {mask : SignMask} (h : _root_.Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.Group004.Group004Covered r mask) : RepresentativeFamilyCovered r mask
  | group005 {r : Nat} {mask : SignMask} (h : _root_.Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.Group005.Group005Covered r mask) : RepresentativeFamilyCovered r mask
  | group006 {r : Nat} {mask : SignMask} (h : _root_.Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.Group006.Group006Covered r mask) : RepresentativeFamilyCovered r mask
  | group007 {r : Nat} {mask : SignMask} (h : _root_.Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.Group007.Group007Covered r mask) : RepresentativeFamilyCovered r mask

theorem representativeGoodCasesKilled
    (r : Nat) (hlt : r < numPairWords) (mask : SignMask)
    (h : RepresentativeFamilyCovered r mask) :
    TranslationGoodCaseKilled ⟨r, hlt⟩ mask := by
  cases h with
  | group000 h =>
      exact _root_.Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.Group000.Group000GoodCasesKilled r hlt mask h
  | group001 h =>
      exact _root_.Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.Group001.Group001GoodCasesKilled r hlt mask h
  | group002 h =>
      exact _root_.Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.Group002.Group002GoodCasesKilled r hlt mask h
  | group003 h =>
      exact _root_.Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.Group003.Group003GoodCasesKilled r hlt mask h
  | group004 h =>
      exact _root_.Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.Group004.Group004GoodCasesKilled r hlt mask h
  | group005 h =>
      exact _root_.Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.Group005.Group005GoodCasesKilled r hlt mask h
  | group006 h =>
      exact _root_.Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.Group006.Group006GoodCasesKilled r hlt mask h
  | group007 h =>
      exact _root_.Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.Group007.Group007GoodCasesKilled r hlt mask h

theorem representativeFamilyCoverage_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.Representative.All
