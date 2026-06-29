import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedCoeffCertificate

/-!
Generated DU.9BL scaled weighted-coefficient cover smoke.

This file is emitted from the DU.9BI exact coefficient profile.
It proves scaled-integer nonpositivity for all 11 selected
rank-`6000745` weighted cubes and transports each result to
the rational `WalshQuadratic.coeffEval` surface.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745ScaledCoeffCoverSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PositiveSurvivorClassifier.ImpactSubcube

set_option maxHeartbeats 0
set_option linter.unusedSimpArgs false

-- rank 6000745, DU.9BI cube 0, label ***00*
private def cube00 : MaskSubcube where
  fixed
    | SignBit.d11m => some false
    | SignBit.d1m1 => some false
    | _ => none

private theorem cube00_d11m
    {mask : SignMask} (hmask : cube00.Member mask) :
    maskBitForPair mask PairId.d11m = false := by
  simpa [cube00, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d11m

private theorem cube00_d1m1
    {mask : SignMask} (hmask : cube00.Member mask) :
    maskBitForPair mask PairId.d1m1 = false := by
  simpa [cube00, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d1m1

private def cube00Poly : ScaledWalshQuadratic where
  scale := 9
  c := 216
  y := 0
  z := 0
  d111 := 80
  d11m := 84
  d1m1 := 84
  dm11 := -48
  yz := 0
  y_d111 := 0
  y_d11m := 36
  y_d1m1 := -36
  y_dm11 := 0
  z_d111 := 0
  z_d11m := -36
  z_d1m1 := 36
  z_dm11 := 0
  d111_d11m := 40
  d111_d1m1 := 40
  d111_dm11 := 0
  d11m_d1m1 := -48
  d11m_dm11 := -24
  d1m1_dm11 := -24

private theorem cube00Poly_intEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube00.Member mask) :
    cube00Poly.intEval mask <= 0 := by
  have h_d11m := cube00_d11m hmask
  have h_d1m1 := cube00_d1m1 hmask
  by_cases h_y : maskBitForPair mask PairId.y <;>
    by_cases h_z : maskBitForPair mask PairId.z <;>
    by_cases h_d111 : maskBitForPair mask PairId.d111 <;>
    by_cases h_dm11 : maskBitForPair mask PairId.dm11
    <;> norm_num [cube00Poly, ScaledWalshQuadratic.intEval,
      SignBit.intValue, SignBit.toPairId, h_y, h_z, h_d111, h_d11m, h_d1m1, h_dm11]

theorem cube00Poly_coeffEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube00.Member mask) :
    cube00Poly.toQuadratic.coeffEval mask <= 0 :=
  cube00Poly.coeffEval_nonpos_of_intEval_nonpos
    (by norm_num [cube00Poly])
    (cube00Poly_intEval_nonpos_on_cube hmask)

-- rank 6000745, DU.9BI cube 1, label **0**1
private def cube01 : MaskSubcube where
  fixed
    | SignBit.d111 => some false
    | SignBit.dm11 => some true
    | _ => none

private theorem cube01_d111
    {mask : SignMask} (hmask : cube01.Member mask) :
    maskBitForPair mask PairId.d111 = false := by
  simpa [cube01, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d111

private theorem cube01_dm11
    {mask : SignMask} (hmask : cube01.Member mask) :
    maskBitForPair mask PairId.dm11 = true := by
  simpa [cube01, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.dm11

private def cube01Poly : ScaledWalshQuadratic where
  scale := 3
  c := 168
  y := 0
  z := 0
  d111 := 140
  d11m := 48
  d1m1 := 48
  dm11 := -60
  yz := 0
  y_d111 := 12
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 12
  z_d111 := 12
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 12
  d111_d11m := 40
  d111_d1m1 := 40
  d111_dm11 := -32
  d11m_d1m1 := 0
  d11m_dm11 := -8
  d1m1_dm11 := -8

private theorem cube01Poly_intEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube01.Member mask) :
    cube01Poly.intEval mask <= 0 := by
  have h_d111 := cube01_d111 hmask
  have h_dm11 := cube01_dm11 hmask
  by_cases h_y : maskBitForPair mask PairId.y <;>
    by_cases h_z : maskBitForPair mask PairId.z <;>
    by_cases h_d11m : maskBitForPair mask PairId.d11m <;>
    by_cases h_d1m1 : maskBitForPair mask PairId.d1m1
    <;> norm_num [cube01Poly, ScaledWalshQuadratic.intEval,
      SignBit.intValue, SignBit.toPairId, h_y, h_z, h_d111, h_d11m, h_d1m1, h_dm11]

theorem cube01Poly_coeffEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube01.Member mask) :
    cube01Poly.toQuadratic.coeffEval mask <= 0 :=
  cube01Poly.coeffEval_nonpos_of_intEval_nonpos
    (by norm_num [cube01Poly])
    (cube01Poly_intEval_nonpos_on_cube hmask)

-- rank 6000745, DU.9BI cube 2, label **011*
private def cube02 : MaskSubcube where
  fixed
    | SignBit.d111 => some false
    | SignBit.d11m => some true
    | SignBit.d1m1 => some true
    | _ => none

private theorem cube02_d111
    {mask : SignMask} (hmask : cube02.Member mask) :
    maskBitForPair mask PairId.d111 = false := by
  simpa [cube02, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d111

private theorem cube02_d11m
    {mask : SignMask} (hmask : cube02.Member mask) :
    maskBitForPair mask PairId.d11m = true := by
  simpa [cube02, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d11m

private theorem cube02_d1m1
    {mask : SignMask} (hmask : cube02.Member mask) :
    maskBitForPair mask PairId.d1m1 = true := by
  simpa [cube02, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d1m1

private def cube02Poly : ScaledWalshQuadratic where
  scale := 9
  c := 72
  y := 0
  z := 0
  d111 := 60
  d11m := 0
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 12
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := 12
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 0
  d111_d11m := 40
  d111_d1m1 := 40
  d111_dm11 := -24
  d11m_d1m1 := 0
  d11m_dm11 := 0
  d1m1_dm11 := 0

private theorem cube02Poly_intEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube02.Member mask) :
    cube02Poly.intEval mask <= 0 := by
  have h_d111 := cube02_d111 hmask
  have h_d11m := cube02_d11m hmask
  have h_d1m1 := cube02_d1m1 hmask
  by_cases h_y : maskBitForPair mask PairId.y <;>
    by_cases h_z : maskBitForPair mask PairId.z <;>
    by_cases h_dm11 : maskBitForPair mask PairId.dm11
    <;> norm_num [cube02Poly, ScaledWalshQuadratic.intEval,
      SignBit.intValue, SignBit.toPairId, h_y, h_z, h_d111, h_d11m, h_d1m1, h_dm11]

theorem cube02Poly_coeffEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube02.Member mask) :
    cube02Poly.toQuadratic.coeffEval mask <= 0 :=
  cube02Poly.coeffEval_nonpos_of_intEval_nonpos
    (by norm_num [cube02Poly])
    (cube02Poly_intEval_nonpos_on_cube hmask)

-- rank 6000745, DU.9BI cube 3, label *0**11
private def cube03 : MaskSubcube where
  fixed
    | SignBit.z => some false
    | SignBit.d1m1 => some true
    | SignBit.dm11 => some true
    | _ => none

private theorem cube03_z
    {mask : SignMask} (hmask : cube03.Member mask) :
    maskBitForPair mask PairId.z = false := by
  simpa [cube03, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.z

private theorem cube03_d1m1
    {mask : SignMask} (hmask : cube03.Member mask) :
    maskBitForPair mask PairId.d1m1 = true := by
  simpa [cube03, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d1m1

private theorem cube03_dm11
    {mask : SignMask} (hmask : cube03.Member mask) :
    maskBitForPair mask PairId.dm11 = true := by
  simpa [cube03, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.dm11

private def cube03Poly : ScaledWalshQuadratic where
  scale := 9
  c := 216
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 36
  dm11 := -36
  yz := 0
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := -36
  y_dm11 := 36
  z_d111 := 16
  z_d11m := -48
  z_d1m1 := 84
  z_dm11 := 84
  d111_d11m := 0
  d111_d1m1 := 40
  d111_dm11 := -24
  d11m_d1m1 := -24
  d11m_dm11 := -24
  d1m1_dm11 := -48

private theorem cube03Poly_intEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube03.Member mask) :
    cube03Poly.intEval mask <= 0 := by
  have h_z := cube03_z hmask
  have h_d1m1 := cube03_d1m1 hmask
  have h_dm11 := cube03_dm11 hmask
  by_cases h_y : maskBitForPair mask PairId.y <;>
    by_cases h_d111 : maskBitForPair mask PairId.d111 <;>
    by_cases h_d11m : maskBitForPair mask PairId.d11m
    <;> norm_num [cube03Poly, ScaledWalshQuadratic.intEval,
      SignBit.intValue, SignBit.toPairId, h_y, h_z, h_d111, h_d11m, h_d1m1, h_dm11]

theorem cube03Poly_coeffEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube03.Member mask) :
    cube03Poly.toQuadratic.coeffEval mask <= 0 :=
  cube03Poly.coeffEval_nonpos_of_intEval_nonpos
    (by norm_num [cube03Poly])
    (cube03Poly_intEval_nonpos_on_cube hmask)

-- rank 6000745, DU.9BI cube 4, label 0*1*0*
private def cube04 : MaskSubcube where
  fixed
    | SignBit.y => some false
    | SignBit.d111 => some true
    | SignBit.d1m1 => some false
    | _ => none

private theorem cube04_y
    {mask : SignMask} (hmask : cube04.Member mask) :
    maskBitForPair mask PairId.y = false := by
  simpa [cube04, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.y

private theorem cube04_d111
    {mask : SignMask} (hmask : cube04.Member mask) :
    maskBitForPair mask PairId.d111 = true := by
  simpa [cube04, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d111

private theorem cube04_d1m1
    {mask : SignMask} (hmask : cube04.Member mask) :
    maskBitForPair mask PairId.d1m1 = false := by
  simpa [cube04, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d1m1

private def cube04Poly : ScaledWalshQuadratic where
  scale := 9
  c := 108
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 36
  dm11 := 0
  yz := 0
  y_d111 := 8
  y_d11m := 24
  y_d1m1 := -60
  y_dm11 := 24
  z_d111 := 0
  z_d11m := 0
  z_d1m1 := 36
  z_dm11 := 0
  d111_d11m := 0
  d111_d1m1 := 40
  d111_dm11 := 0
  d11m_d1m1 := -24
  d11m_dm11 := 0
  d1m1_dm11 := -24

private theorem cube04Poly_intEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube04.Member mask) :
    cube04Poly.intEval mask <= 0 := by
  have h_y := cube04_y hmask
  have h_d111 := cube04_d111 hmask
  have h_d1m1 := cube04_d1m1 hmask
  by_cases h_z : maskBitForPair mask PairId.z <;>
    by_cases h_d11m : maskBitForPair mask PairId.d11m <;>
    by_cases h_dm11 : maskBitForPair mask PairId.dm11
    <;> norm_num [cube04Poly, ScaledWalshQuadratic.intEval,
      SignBit.intValue, SignBit.toPairId, h_y, h_z, h_d111, h_d11m, h_d1m1, h_dm11]

theorem cube04Poly_coeffEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube04.Member mask) :
    cube04Poly.toQuadratic.coeffEval mask <= 0 :=
  cube04Poly.coeffEval_nonpos_of_intEval_nonpos
    (by norm_num [cube04Poly])
    (cube04Poly_intEval_nonpos_on_cube hmask)

-- rank 6000745, DU.9BI cube 5, label 1**010
private def cube05 : MaskSubcube where
  fixed
    | SignBit.y => some true
    | SignBit.d11m => some false
    | SignBit.d1m1 => some true
    | SignBit.dm11 => some false
    | _ => none

private theorem cube05_y
    {mask : SignMask} (hmask : cube05.Member mask) :
    maskBitForPair mask PairId.y = true := by
  simpa [cube05, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.y

private theorem cube05_d11m
    {mask : SignMask} (hmask : cube05.Member mask) :
    maskBitForPair mask PairId.d11m = false := by
  simpa [cube05, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d11m

private theorem cube05_d1m1
    {mask : SignMask} (hmask : cube05.Member mask) :
    maskBitForPair mask PairId.d1m1 = true := by
  simpa [cube05, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d1m1

private theorem cube05_dm11
    {mask : SignMask} (hmask : cube05.Member mask) :
    maskBitForPair mask PairId.dm11 = false := by
  simpa [cube05, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.dm11

private def cube05Poly : ScaledWalshQuadratic where
  scale := 9
  c := 36
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 8
  y_d11m := 24
  y_d1m1 := -24
  y_dm11 := 24
  z_d111 := 0
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 0
  d111_d11m := 0
  d111_d1m1 := 0
  d111_dm11 := 0
  d11m_d1m1 := 0
  d11m_dm11 := 0
  d1m1_dm11 := 0

private theorem cube05Poly_intEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube05.Member mask) :
    cube05Poly.intEval mask <= 0 := by
  have h_y := cube05_y hmask
  have h_d11m := cube05_d11m hmask
  have h_d1m1 := cube05_d1m1 hmask
  have h_dm11 := cube05_dm11 hmask
  by_cases h_z : maskBitForPair mask PairId.z <;>
    by_cases h_d111 : maskBitForPair mask PairId.d111
    <;> norm_num [cube05Poly, ScaledWalshQuadratic.intEval,
      SignBit.intValue, SignBit.toPairId, h_y, h_z, h_d111, h_d11m, h_d1m1, h_dm11]

theorem cube05Poly_coeffEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube05.Member mask) :
    cube05Poly.toQuadratic.coeffEval mask <= 0 :=
  cube05Poly.coeffEval_nonpos_of_intEval_nonpos
    (by norm_num [cube05Poly])
    (cube05Poly_intEval_nonpos_on_cube hmask)

-- rank 6000745, DU.9BI cube 6, label *1*100
private def cube06 : MaskSubcube where
  fixed
    | SignBit.z => some true
    | SignBit.d11m => some true
    | SignBit.d1m1 => some false
    | SignBit.dm11 => some false
    | _ => none

private theorem cube06_z
    {mask : SignMask} (hmask : cube06.Member mask) :
    maskBitForPair mask PairId.z = true := by
  simpa [cube06, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.z

private theorem cube06_d11m
    {mask : SignMask} (hmask : cube06.Member mask) :
    maskBitForPair mask PairId.d11m = true := by
  simpa [cube06, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d11m

private theorem cube06_d1m1
    {mask : SignMask} (hmask : cube06.Member mask) :
    maskBitForPair mask PairId.d1m1 = false := by
  simpa [cube06, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d1m1

private theorem cube06_dm11
    {mask : SignMask} (hmask : cube06.Member mask) :
    maskBitForPair mask PairId.dm11 = false := by
  simpa [cube06, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.dm11

private def cube06Poly : ScaledWalshQuadratic where
  scale := 9
  c := 36
  y := 0
  z := 0
  d111 := 0
  d11m := 0
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 0
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := 8
  z_d11m := -24
  z_d1m1 := 24
  z_dm11 := 24
  d111_d11m := 0
  d111_d1m1 := 0
  d111_dm11 := 0
  d11m_d1m1 := 0
  d11m_dm11 := 0
  d1m1_dm11 := 0

private theorem cube06Poly_intEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube06.Member mask) :
    cube06Poly.intEval mask <= 0 := by
  have h_z := cube06_z hmask
  have h_d11m := cube06_d11m hmask
  have h_d1m1 := cube06_d1m1 hmask
  have h_dm11 := cube06_dm11 hmask
  by_cases h_y : maskBitForPair mask PairId.y <;>
    by_cases h_d111 : maskBitForPair mask PairId.d111
    <;> norm_num [cube06Poly, ScaledWalshQuadratic.intEval,
      SignBit.intValue, SignBit.toPairId, h_y, h_z, h_d111, h_d11m, h_d1m1, h_dm11]

theorem cube06Poly_coeffEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube06.Member mask) :
    cube06Poly.toQuadratic.coeffEval mask <= 0 :=
  cube06Poly.coeffEval_nonpos_of_intEval_nonpos
    (by norm_num [cube06Poly])
    (cube06Poly_intEval_nonpos_on_cube hmask)

-- rank 6000745, DU.9BI cube 7, label *010**
private def cube07 : MaskSubcube where
  fixed
    | SignBit.z => some false
    | SignBit.d111 => some true
    | SignBit.d11m => some false
    | _ => none

private theorem cube07_z
    {mask : SignMask} (hmask : cube07.Member mask) :
    maskBitForPair mask PairId.z = false := by
  simpa [cube07, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.z

private theorem cube07_d111
    {mask : SignMask} (hmask : cube07.Member mask) :
    maskBitForPair mask PairId.d111 = true := by
  simpa [cube07, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d111

private theorem cube07_d11m
    {mask : SignMask} (hmask : cube07.Member mask) :
    maskBitForPair mask PairId.d11m = false := by
  simpa [cube07, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d11m

private def cube07Poly : ScaledWalshQuadratic where
  scale := 9
  c := 108
  y := 0
  z := 0
  d111 := 0
  d11m := 36
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 0
  y_d11m := 36
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := 8
  z_d11m := -60
  z_d1m1 := 24
  z_dm11 := 24
  d111_d11m := 40
  d111_d1m1 := 0
  d111_dm11 := 0
  d11m_d1m1 := -24
  d11m_dm11 := -24
  d1m1_dm11 := 0

private theorem cube07Poly_intEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube07.Member mask) :
    cube07Poly.intEval mask <= 0 := by
  have h_z := cube07_z hmask
  have h_d111 := cube07_d111 hmask
  have h_d11m := cube07_d11m hmask
  by_cases h_y : maskBitForPair mask PairId.y <;>
    by_cases h_d1m1 : maskBitForPair mask PairId.d1m1 <;>
    by_cases h_dm11 : maskBitForPair mask PairId.dm11
    <;> norm_num [cube07Poly, ScaledWalshQuadratic.intEval,
      SignBit.intValue, SignBit.toPairId, h_y, h_z, h_d111, h_d11m, h_d1m1, h_dm11]

theorem cube07Poly_coeffEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube07.Member mask) :
    cube07Poly.toQuadratic.coeffEval mask <= 0 :=
  cube07Poly.coeffEval_nonpos_of_intEval_nonpos
    (by norm_num [cube07Poly])
    (cube07Poly_intEval_nonpos_on_cube hmask)

-- rank 6000745, DU.9BI cube 8, label *10*10
private def cube08 : MaskSubcube where
  fixed
    | SignBit.z => some true
    | SignBit.d111 => some false
    | SignBit.d1m1 => some true
    | SignBit.dm11 => some false
    | _ => none

private theorem cube08_z
    {mask : SignMask} (hmask : cube08.Member mask) :
    maskBitForPair mask PairId.z = true := by
  simpa [cube08, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.z

private theorem cube08_d111
    {mask : SignMask} (hmask : cube08.Member mask) :
    maskBitForPair mask PairId.d111 = false := by
  simpa [cube08, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d111

private theorem cube08_d1m1
    {mask : SignMask} (hmask : cube08.Member mask) :
    maskBitForPair mask PairId.d1m1 = true := by
  simpa [cube08, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d1m1

private theorem cube08_dm11
    {mask : SignMask} (hmask : cube08.Member mask) :
    maskBitForPair mask PairId.dm11 = false := by
  simpa [cube08, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.dm11

private def cube08Poly : ScaledWalshQuadratic where
  scale := 9
  c := 72
  y := 0
  z := 0
  d111 := 60
  d11m := 0
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 12
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := 12
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 0
  d111_d11m := 40
  d111_d1m1 := 40
  d111_dm11 := -24
  d11m_d1m1 := 0
  d11m_dm11 := 0
  d1m1_dm11 := 0

private theorem cube08Poly_intEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube08.Member mask) :
    cube08Poly.intEval mask <= 0 := by
  have h_z := cube08_z hmask
  have h_d111 := cube08_d111 hmask
  have h_d1m1 := cube08_d1m1 hmask
  have h_dm11 := cube08_dm11 hmask
  by_cases h_y : maskBitForPair mask PairId.y <;>
    by_cases h_d11m : maskBitForPair mask PairId.d11m
    <;> norm_num [cube08Poly, ScaledWalshQuadratic.intEval,
      SignBit.intValue, SignBit.toPairId, h_y, h_z, h_d111, h_d11m, h_d1m1, h_dm11]

theorem cube08Poly_coeffEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube08.Member mask) :
    cube08Poly.toQuadratic.coeffEval mask <= 0 :=
  cube08Poly.coeffEval_nonpos_of_intEval_nonpos
    (by norm_num [cube08Poly])
    (cube08Poly_intEval_nonpos_on_cube hmask)

-- rank 6000745, DU.9BI cube 9, label 0**111
private def cube09 : MaskSubcube where
  fixed
    | SignBit.y => some false
    | SignBit.d11m => some true
    | SignBit.d1m1 => some true
    | SignBit.dm11 => some true
    | _ => none

private theorem cube09_y
    {mask : SignMask} (hmask : cube09.Member mask) :
    maskBitForPair mask PairId.y = false := by
  simpa [cube09, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.y

private theorem cube09_d11m
    {mask : SignMask} (hmask : cube09.Member mask) :
    maskBitForPair mask PairId.d11m = true := by
  simpa [cube09, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d11m

private theorem cube09_d1m1
    {mask : SignMask} (hmask : cube09.Member mask) :
    maskBitForPair mask PairId.d1m1 = true := by
  simpa [cube09, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d1m1

private theorem cube09_dm11
    {mask : SignMask} (hmask : cube09.Member mask) :
    maskBitForPair mask PairId.dm11 = true := by
  simpa [cube09, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.dm11

private def cube09Poly : ScaledWalshQuadratic where
  scale := 9
  c := 144
  y := 0
  z := 0
  d111 := 0
  d11m := 36
  d1m1 := 0
  dm11 := -36
  yz := 0
  y_d111 := 0
  y_d11m := 36
  y_d1m1 := 0
  y_dm11 := 36
  z_d111 := 0
  z_d11m := -36
  z_d1m1 := 0
  z_dm11 := 36
  d111_d11m := 40
  d111_d1m1 := 0
  d111_dm11 := -24
  d11m_d1m1 := -24
  d11m_dm11 := -48
  d1m1_dm11 := -24

private theorem cube09Poly_intEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube09.Member mask) :
    cube09Poly.intEval mask <= 0 := by
  have h_y := cube09_y hmask
  have h_d11m := cube09_d11m hmask
  have h_d1m1 := cube09_d1m1 hmask
  have h_dm11 := cube09_dm11 hmask
  by_cases h_z : maskBitForPair mask PairId.z <;>
    by_cases h_d111 : maskBitForPair mask PairId.d111
    <;> norm_num [cube09Poly, ScaledWalshQuadratic.intEval,
      SignBit.intValue, SignBit.toPairId, h_y, h_z, h_d111, h_d11m, h_d1m1, h_dm11]

theorem cube09Poly_coeffEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube09.Member mask) :
    cube09Poly.toQuadratic.coeffEval mask <= 0 :=
  cube09Poly.coeffEval_nonpos_of_intEval_nonpos
    (by norm_num [cube09Poly])
    (cube09Poly_intEval_nonpos_on_cube hmask)

-- rank 6000745, DU.9BI cube 10, label 1*01*0
private def cube10 : MaskSubcube where
  fixed
    | SignBit.y => some true
    | SignBit.d111 => some false
    | SignBit.d11m => some true
    | SignBit.dm11 => some false
    | _ => none

private theorem cube10_y
    {mask : SignMask} (hmask : cube10.Member mask) :
    maskBitForPair mask PairId.y = true := by
  simpa [cube10, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.y

private theorem cube10_d111
    {mask : SignMask} (hmask : cube10.Member mask) :
    maskBitForPair mask PairId.d111 = false := by
  simpa [cube10, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d111

private theorem cube10_d11m
    {mask : SignMask} (hmask : cube10.Member mask) :
    maskBitForPair mask PairId.d11m = true := by
  simpa [cube10, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.d11m

private theorem cube10_dm11
    {mask : SignMask} (hmask : cube10.Member mask) :
    maskBitForPair mask PairId.dm11 = false := by
  simpa [cube10, MaskSubcube.Member, SignBit.toPairId] using
    hmask SignBit.dm11

private def cube10Poly : ScaledWalshQuadratic where
  scale := 9
  c := 72
  y := 0
  z := 0
  d111 := 60
  d11m := 0
  d1m1 := 0
  dm11 := 0
  yz := 0
  y_d111 := 12
  y_d11m := 0
  y_d1m1 := 0
  y_dm11 := 0
  z_d111 := 12
  z_d11m := 0
  z_d1m1 := 0
  z_dm11 := 0
  d111_d11m := 40
  d111_d1m1 := 40
  d111_dm11 := -24
  d11m_d1m1 := 0
  d11m_dm11 := 0
  d1m1_dm11 := 0

private theorem cube10Poly_intEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube10.Member mask) :
    cube10Poly.intEval mask <= 0 := by
  have h_y := cube10_y hmask
  have h_d111 := cube10_d111 hmask
  have h_d11m := cube10_d11m hmask
  have h_dm11 := cube10_dm11 hmask
  by_cases h_z : maskBitForPair mask PairId.z <;>
    by_cases h_d1m1 : maskBitForPair mask PairId.d1m1
    <;> norm_num [cube10Poly, ScaledWalshQuadratic.intEval,
      SignBit.intValue, SignBit.toPairId, h_y, h_z, h_d111, h_d11m, h_d1m1, h_dm11]

theorem cube10Poly_coeffEval_nonpos_on_cube
    {mask : SignMask} (hmask : cube10.Member mask) :
    cube10Poly.toQuadratic.coeffEval mask <= 0 :=
  cube10Poly.coeffEval_nonpos_of_intEval_nonpos
    (by norm_num [cube10Poly])
    (cube10Poly_intEval_nonpos_on_cube hmask)

theorem weightedScaledCoeffCoverSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.WeightedDenomCubeRank6000745ScaledCoeffCoverSmoke
