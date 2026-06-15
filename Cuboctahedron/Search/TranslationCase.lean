import Cuboctahedron.Geometry.UnfoldingFeasible
import Cuboctahedron.Search.Farkas2D
import Cuboctahedron.Search.NonIdentityCase

/-!
Identity-linear case API for translation itineraries.
-/

namespace Cuboctahedron

def IsIdentityLinear (w : PairWord) : Prop :=
  totalLinearOfPairWord w = (matId : Mat3 Rat)

theorem pairword_linear_cases (w : PairWord) :
    IsIdentityLinear w \/ IsNonIdentityLinear w := by
  exact Classical.em (IsIdentityLinear w)

theorem unfolded_feasible_cases
    (seq : Step14 -> Face)
    (h : UnfoldedFeasible seq) :
    totalLinear seq = (matId : Mat3 Rat) \/
      totalLinear seq ≠ (matId : Mat3 Rat) := by
  let _ := h
  exact Classical.em _

structure SeqRealizesPairWord (w : PairWord) (seq : Step14 -> Face) : Prop where
  valid : ValidPairWord w
  startsXp : StartsXp seq
  pair_matches : PairWordMatchesSeq w seq
  omni : IsOmniSeq seq

theorem SeqRealizesPairWord.linear_eq
    {w : PairWord} {seq : Step14 -> Face}
    (h : SeqRealizesPairWord w seq) :
    totalLinear seq = totalLinearOfPairWord w :=
  totalLinear_eq_totalLinearOfPairWord h.startsXp h.pair_matches

def allFacesList : List Face :=
  [Face.xp, Face.xm, Face.yp, Face.ym, Face.zp, Face.zm,
   Face.tmmm, Face.tmmp, Face.tmpm, Face.tmpp,
   Face.tpmm, Face.tpmp, Face.tppm, Face.tppp]

def nextImpact (i : Step14) : Impact15 :=
  ⟨i.val + 1, by omega⟩

def linDotVec3 (n : Vec3 Rat) (p : Vec3 Lin2) : Lin2 :=
  Lin2.add (Lin2.add (Lin2.scale n.x p.x) (Lin2.scale n.y p.y))
    (Lin2.scale n.z p.z)

def translationLinePointLin (b : Vec3 Rat) (t : Lin2) : Vec3 Lin2 where
  x := Lin2.add (Lin2.constOnly 1) (Lin2.scale b.x t)
  y := Lin2.add Lin2.y (Lin2.scale b.y t)
  z := Lin2.add Lin2.z (Lin2.scale b.z t)

def copiedNormalQ (seq : Step14 -> Face) (i : Impact15) (g : Face) :
    Vec3 Rat :=
  matVec (preImpactCopyAff seq i).M (normalQ g)

def copiedOffsetQ (seq : Step14 -> Face) (i : Impact15) (g : Face) :
    Rat :=
  offsetQ g + dot (copiedNormalQ seq i g) (preImpactCopyAff seq i).b

def impactPlaneNormalQ (seq : Step14 -> Face) (i : Impact15) : Vec3 Rat :=
  copiedNormalQ seq i (impactFace seq i)

def impactPlaneOffsetQ (seq : Step14 -> Face) (i : Impact15) : Rat :=
  copiedOffsetQ seq i (impactFace seq i)

def impactDenom (seq : Step14 -> Face) (b : Vec3 Rat) (i : Impact15) :
    Rat :=
  dot (impactPlaneNormalQ seq i) b

def impactTimeLin (seq : Step14 -> Face) (b : Vec3 Rat) (i : Impact15) :
    Lin2 :=
  if i = (0 : Impact15) then
    Lin2.constOnly 0
  else if i = lastImpact then
    Lin2.constOnly 1
  else
    let n := impactPlaneNormalQ seq i
    let c := impactPlaneOffsetQ seq i
    let den := impactDenom seq b i
    { const := (c - n.x) / den
      yCoeff := -n.y / den
      zCoeff := -n.z / den }

def TranslationDenominatorsPositive
    (seq : Step14 -> Face) (b : Vec3 Rat) : Prop :=
  forall i : Impact15,
    i ≠ (0 : Impact15) -> i ≠ lastImpact -> 0 < impactDenom seq b i

def orderingConstraint (seq : Step14 -> Face) (b : Vec3 Rat)
    (i : Step14) : StrictLin2 :=
  Lin2.ltConstraint (impactTimeLin seq b i.castSucc)
    (impactTimeLin seq b (nextImpact i))

def orderingConstraints (seq : Step14 -> Face) (b : Vec3 Rat) :
    List StrictLin2 :=
  (List.finRange 14).map fun i : Step14 => orderingConstraint seq b i

def impactInteriorConstraint
    (seq : Step14 -> Face) (b : Vec3 Rat) (i : Impact15) (g : Face) :
    StrictLin2 :=
  let point := translationLinePointLin b (impactTimeLin seq b i)
  Lin2.ltConstraint (linDotVec3 (copiedNormalQ seq i g) point)
    (Lin2.constOnly (copiedOffsetQ seq i g))

def nonStartImpacts : List Impact15 :=
  (List.finRange 15).filter fun i : Impact15 =>
    decide (i ≠ (0 : Impact15))

def impactInteriorConstraints
    (seq : Step14 -> Face) (b : Vec3 Rat) (i : Impact15) :
    List StrictLin2 :=
  (allFacesList.filter fun g : Face => decide (g ≠ impactFace seq i)).map
    fun g => impactInteriorConstraint seq b i g

def interiorConstraints (seq : Step14 -> Face) (b : Vec3 Rat) :
    List StrictLin2 :=
  nonStartImpacts.flatMap fun i => impactInteriorConstraints seq b i

def xpStartConstraints : List StrictLin2 :=
  [{ a := 1, b := 1, c := 1 },
   { a := 1, b := -1, c := 1 },
   { a := -1, b := 1, c := 1 },
   { a := -1, b := -1, c := 1 }]

def translationConstraints (seq : Step14 -> Face) (b : Vec3 Rat) :
    List StrictLin2 :=
  xpStartConstraints ++ orderingConstraints seq b ++ interiorConstraints seq b

structure TranslationUnfoldedFeasible (seq : Step14 -> Face) (b : Vec3 Rat) where
  feasible : UnfoldedFeasible seq
  startsXp : StartsXp seq
  linear_id : totalLinear seq = (matId : Mat3 Rat)
  translation_vector : (totalAff seq).b = b

theorem xpStartConstraints_holds_of_interior {p : Vec3 Real}
    (h : InFaceInterior Face.xp p) :
    forall L, L ∈ xpStartConstraints -> L.Holds p.y p.z := by
  intro L hmem
  rcases h with ⟨hxDot, hint⟩
  have hx : p.x = 1 := by
    simpa [normalR, normalQ, offsetR, offsetQ, dot] using hxDot
  have htppp := hint Face.tppp (by decide)
  have htppm := hint Face.tppm (by decide)
  have htpmp := hint Face.tpmp (by decide)
  have htpmm := hint Face.tpmm (by decide)
  simp [normalR, normalQ, offsetR, offsetQ, dot] at htppp htppm htpmp htpmm
  simp [xpStartConstraints] at hmem
  rcases hmem with rfl | rfl | rfl | rfl
  · simp [StrictLin2.Holds, StrictLin2.eval]
    linarith
  · simp [StrictLin2.Holds, StrictLin2.eval]
    linarith
  · simp [StrictLin2.Holds, StrictLin2.eval]
    linarith
  · simp [StrictLin2.Holds, StrictLin2.eval]
    linarith

theorem matVec_ratToReal (M : Mat3 Rat) (v : Vec3 Rat) :
    matVec (affRatToReal ({ M := M, b := { x := 0, y := 0, z := 0 } } : Aff3 Rat)).M
        (vecRatToReal v) =
      vecRatToReal (matVec M v) := by
  apply Vec3.ext <;>
    simp [vecRatToReal, affRatToReal, Aff3.map, Mat3.map, Vec3.map,
      matVec]

theorem copied_dot_apply_eq
    (A : Aff3 Rat)
    (hA : PreservesDot (affRatToReal A).M)
    (n : Vec3 Rat) (p : Vec3 Real) :
    dot (vecRatToReal (matVec A.M n)) (affApply (affRatToReal A) p) =
      dot (vecRatToReal n) p + ((dot (matVec A.M n) A.b : Rat) : Real) := by
  have hcast :
      matVec (affRatToReal A).M (vecRatToReal n) =
        vecRatToReal (matVec A.M n) := by
    apply Vec3.ext <;>
      simp [vecRatToReal, affRatToReal, Aff3.map, Mat3.map, Vec3.map,
        matVec]
  have hpres :
      dot (vecRatToReal (matVec A.M n)) (matVec (affRatToReal A).M p) =
        dot (vecRatToReal n) p := by
    simpa [hcast] using hA (vecRatToReal n) p
  have hb :
      dot (vecRatToReal (matVec A.M n)) (affRatToReal A).b =
        ((dot (matVec A.M n) A.b : Rat) : Real) := by
    simp [vecRatToReal, affRatToReal, Aff3.map, Vec3.map, dot]
  calc
    dot (vecRatToReal (matVec A.M n)) (affApply (affRatToReal A) p)
        = dot (vecRatToReal (matVec A.M n)) (matVec (affRatToReal A).M p) +
            dot (vecRatToReal (matVec A.M n)) (affRatToReal A).b := by
          simp [affApply, vecAdd, dot]
          ring
    _ = dot (vecRatToReal n) p + ((dot (matVec A.M n) A.b : Rat) : Real) := by
          rw [hpres, hb]

theorem copied_strict_halfspace_of_unfolded_interior
    {seq : Step14 -> Face} {i : Impact15} {x : Vec3 Real} {g : Face}
    (h : InPreUnfoldedImpactFaceInterior seq i x)
    (hg : g ≠ impactFace seq i) :
    dot (vecRatToReal (copiedNormalQ seq i g)) x <
      (copiedOffsetQ seq i g : Real) := by
  rcases h with ⟨p, hpInterior, hx⟩
  rcases hpInterior with ⟨_, hpStrict⟩
  have hstrict := hpStrict g hg
  have hdot := copied_dot_apply_eq (preImpactCopyAff seq i)
    (preImpactCopyAff_preservesDot seq i) (normalQ g) p
  have hx' :
      affApply (affRatToReal (preImpactCopyAff seq i)) p = x := by
    simpa [preImpactUnfoldedAt] using hx
  rw [hx'] at hdot
  simp [copiedNormalQ, copiedOffsetQ, normalR, offsetR, vecRatToReal] at hdot hstrict ⊢
  linarith

theorem copied_face_plane_of_unfolded_interior
    {seq : Step14 -> Face} {i : Impact15} {x : Vec3 Real}
    (h : InPreUnfoldedImpactFaceInterior seq i x) :
    dot (vecRatToReal (impactPlaneNormalQ seq i)) x =
      (impactPlaneOffsetQ seq i : Real) := by
  rcases h with ⟨p, hpInterior, hx⟩
  rcases hpInterior with ⟨hpOn, _⟩
  have hdot := copied_dot_apply_eq (preImpactCopyAff seq i)
    (preImpactCopyAff_preservesDot seq i) (normalQ (impactFace seq i)) p
  have hx' :
      affApply (affRatToReal (preImpactCopyAff seq i)) p = x := by
    simpa [preImpactUnfoldedAt] using hx
  rw [hx'] at hdot
  simp [impactPlaneNormalQ, impactPlaneOffsetQ, copiedNormalQ,
    copiedOffsetQ, normalR, offsetR, vecRatToReal] at hdot hpOn ⊢
  linarith

theorem linDotVec3_eval (n : Vec3 Rat) (p : Vec3 Lin2) (y z : Real) :
    (linDotVec3 n p).eval y z =
      dot (vecRatToReal n)
        { x := p.x.eval y z, y := p.y.eval y z, z := p.z.eval y z } := by
  simp [linDotVec3, Lin2.eval, Lin2.add, Lin2.scale, vecRatToReal, dot]
  ring

theorem translationLinePointLin_eval
    (b : Vec3 Rat) (t : Lin2) (y z : Real) :
    { x := (translationLinePointLin b t).x.eval y z
      y := (translationLinePointLin b t).y.eval y z
      z := (translationLinePointLin b t).z.eval y z } =
      linePoint { x := 1, y := y, z := z }
        (vecRatToReal b) (t.eval y z) := by
  apply Vec3.ext <;>
    simp [translationLinePointLin, linePoint, vecAdd, scalarMul,
      vecRatToReal] <;>
    ring

theorem linDot_translationLinePoint_eval
    (n b : Vec3 Rat) (t : Lin2) (y z : Real) :
    (linDotVec3 n (translationLinePointLin b t)).eval y z =
      dot (vecRatToReal n)
        (linePoint { x := 1, y := y, z := z }
          (vecRatToReal b) (t.eval y z)) := by
  rw [linDotVec3_eval, translationLinePointLin_eval]

theorem translation_direction_eq_of_endpoint
    {seq : Step14 -> Face} {b : Vec3 Rat}
    (data : UnfoldedFeasibleData seq)
    (hLinear : totalLinear seq = (matId : Mat3 Rat))
    (hB : (totalAff seq).b = b) :
    data.w = vecRatToReal b := by
  have hLinearM : (totalAff seq).M = (matId : Mat3 Rat) := by
    simpa [totalLinear] using hLinear
  have hMReal : (affRatToReal (totalAff seq)).M = (matId : Mat3 Real) := by
    rw [show (affRatToReal (totalAff seq)).M =
        ((totalAff seq).M.map fun q => (q : Real)) by rfl]
    rw [hLinearM]
    apply Mat3.ext <;> simp [Mat3.map, matId]
  have hbReal : (affRatToReal (totalAff seq)).b = vecRatToReal b := by
    rw [show (affRatToReal (totalAff seq)).b =
        ((totalAff seq).b.map fun q => (q : Real)) by rfl]
    rw [hB]
    rfl
  have hx := congrArg Vec3.x data.endpoint_eq
  have hy := congrArg Vec3.y data.endpoint_eq
  have hz := congrArg Vec3.z data.endpoint_eq
  apply Vec3.ext
  · simp [linePoint, affApply, hMReal, hbReal, matVec, matId, vecAdd,
      scalarMul, vecRatToReal] at hx ⊢
    linarith
  · simp [linePoint, affApply, hMReal, hbReal, matVec, matId, vecAdd,
      scalarMul, vecRatToReal] at hy ⊢
    linarith
  · simp [linePoint, affApply, hMReal, hbReal, matVec, matId, vecAdd,
      scalarMul, vecRatToReal] at hz ⊢
    linarith

theorem impactTimeLin_eval_eq_crossing_time
    {seq : Step14 -> Face} {b : Vec3 Rat}
    (data : UnfoldedFeasibleData seq)
    (hStart : StartsXp seq)
    (hLinear : totalLinear seq = (matId : Mat3 Rat))
    (hB : (totalAff seq).b = b)
    (hDen : TranslationDenominatorsPositive seq b)
    (i : Impact15) :
    (impactTimeLin seq b i).eval data.p0.y data.p0.z =
      data.crossing_times i := by
  by_cases hi0 : i = (0 : Impact15)
  · subst i
    simp [impactTimeLin, data.t0]
  · by_cases hilast : i = lastImpact
    · subst i
      simp [impactTimeLin, data.t14, hi0]
    · have hStartInterior : InFaceInterior Face.xp data.p0 := by
        rw [← hStart]
        exact data.start_interior
      rcases hStartInterior with ⟨hxDot, _⟩
      have hp0x : data.p0.x = 1 := by
        simpa [normalR, normalQ, offsetR, offsetQ, dot] using hxDot
      have hw : data.w = vecRatToReal b :=
        translation_direction_eq_of_endpoint data hLinear hB
      have hplane := copied_face_plane_of_unfolded_interior
        (data.pre_impact_hit_conditions i)
      have hdenQ : 0 < impactDenom seq b i := hDen i hi0 hilast
      have hdenR : (impactDenom seq b i : Real) ≠ 0 := by
        exact_mod_cast ne_of_gt hdenQ
      simp [impactTimeLin, hi0, hilast, Lin2.eval]
      field_simp [hdenR]
      simp [impactDenom, impactPlaneNormalQ, impactPlaneOffsetQ, dot,
        copiedNormalQ, copiedOffsetQ] at hplane hdenR ⊢
      rw [hw] at hplane
      simp [linePoint, vecAdd, scalarMul, vecRatToReal, hp0x] at hplane
      ring_nf at hplane ⊢
      linarith

theorem orderingConstraints_holds
    {seq : Step14 -> Face} {b : Vec3 Rat}
    (data : UnfoldedFeasibleData seq)
    (hTime :
      forall i : Impact15,
        (impactTimeLin seq b i).eval data.p0.y data.p0.z =
          data.crossing_times i) :
    forall L, L ∈ orderingConstraints seq b -> L.Holds data.p0.y data.p0.z := by
  intro L hmem
  rcases List.mem_map.mp hmem with ⟨i, _hi, rfl⟩
  apply Lin2.holds_ltConstraint_of_eval_lt
  rw [hTime i.castSucc, hTime (nextImpact i)]
  exact data.increasing (by
    change i.val < i.val + 1
    omega)

theorem interiorConstraints_holds
    {seq : Step14 -> Face} {b : Vec3 Rat}
    (data : UnfoldedFeasibleData seq)
    (hStart : StartsXp seq)
    (hLinear : totalLinear seq = (matId : Mat3 Rat))
    (hB : (totalAff seq).b = b)
    (hTime :
      forall i : Impact15,
        (impactTimeLin seq b i).eval data.p0.y data.p0.z =
          data.crossing_times i) :
    forall L, L ∈ interiorConstraints seq b -> L.Holds data.p0.y data.p0.z := by
  intro L hmem
  rcases List.mem_flatMap.mp hmem with ⟨i, hiImpact, hL⟩
  rcases List.mem_filter.mp hiImpact with ⟨_hiAll, _hiNonzero⟩
  rcases List.mem_map.mp hL with ⟨g, hgmem, rfl⟩
  rcases List.mem_filter.mp hgmem with ⟨_hgAll, hgNe⟩
  have hgNeProp : g ≠ impactFace seq i := of_decide_eq_true hgNe
  apply Lin2.holds_ltConstraint_of_eval_lt
  rw [linDot_translationLinePoint_eval]
  rw [hTime i]
  have hStartInterior : InFaceInterior Face.xp data.p0 := by
    rw [← hStart]
    exact data.start_interior
  rcases hStartInterior with ⟨hxDot, _⟩
  have hp0x : data.p0.x = 1 := by
    simpa [normalR, normalQ, offsetR, offsetQ, dot] using hxDot
  have hp0 :
      { x := 1, y := data.p0.y, z := data.p0.z } = data.p0 := by
    apply Vec3.ext <;> simp [hp0x]
  have hw : data.w = vecRatToReal b :=
    translation_direction_eq_of_endpoint data hLinear hB
  have hstrict := copied_strict_halfspace_of_unfolded_interior
    (data.pre_impact_hit_conditions i) hgNeProp
  simpa [hp0, hw] using hstrict

theorem impactDenom_cast_eq_dot_preImpact
    (seq : Step14 -> Face) (b : Vec3 Rat) (i : Impact15) :
    (impactDenom seq b i : Real) =
      dot (preImpactNormalR seq i) (vecRatToReal b) := by
  simp [impactDenom, impactPlaneNormalQ, copiedNormalQ, preImpactNormalR,
    preImpactNormalQ, vecRatToReal, dot]

theorem unfolded_feasible_translation_denominators_positive
    {seq : Step14 -> Face}
    {b : Vec3 Rat}
    (h : TranslationUnfoldedFeasible seq b) :
    TranslationDenominatorsPositive seq b := by
  rcases h.feasible with ⟨data⟩
  intro i hi0 hilast
  have hw : data.w = vecRatToReal b :=
    translation_direction_eq_of_endpoint data h.linear_id h.translation_vector
  have hpos := data.preImpact_forward i hi0 hilast
  rw [hw] at hpos
  have hposCast : (0 : Real) < (impactDenom seq b i : Real) := by
    simpa [impactDenom_cast_eq_dot_preImpact] using hpos
  exact_mod_cast hposCast

theorem unfolded_feasible_translation_constraints
    {seq : Step14 -> Face}
    {b : Vec3 Rat}
    (h : TranslationUnfoldedFeasible seq b) :
    exists y z : Real,
      forall L, L ∈ translationConstraints seq b -> L.Holds y z := by
  rcases h.feasible with ⟨data⟩
  refine ⟨data.p0.y, data.p0.z, ?_⟩
  intro L hmem
  have hStartInterior : InFaceInterior Face.xp data.p0 := by
    rw [← h.startsXp]
    exact data.start_interior
  simp [translationConstraints] at hmem
  rcases hmem with hmem | hmem
  · exact xpStartConstraints_holds_of_interior hStartInterior L hmem
  · have hTime :
        forall i : Impact15,
          (impactTimeLin seq b i).eval data.p0.y data.p0.z =
            data.crossing_times i :=
        impactTimeLin_eval_eq_crossing_time data h.startsXp h.linear_id
          h.translation_vector
          (unfolded_feasible_translation_denominators_positive h)
    rcases hmem with hmem | hmem
    · exact orderingConstraints_holds data hTime L hmem
    · exact interiorConstraints_holds data h.startsXp h.linear_id
        h.translation_vector hTime L hmem

theorem translation_feasible_implies_constraints
    {seq : Step14 -> Face}
    {b : Vec3 Rat}
    (h : TranslationUnfoldedFeasible seq b) :
    exists y z : Real,
      forall L, L ∈ translationConstraints seq b -> L.Holds y z :=
  unfolded_feasible_translation_constraints h

example :
    IsIdentityLinear (pairWordOfSeq sampleStartedSeq) \/
      IsNonIdentityLinear (pairWordOfSeq sampleStartedSeq) :=
  pairword_linear_cases (pairWordOfSeq sampleStartedSeq)

#check pairword_linear_cases
#check unfolded_feasible_cases
#check unfolded_feasible_translation_denominators_positive
#check unfolded_feasible_translation_constraints
#check translation_feasible_implies_constraints

end Cuboctahedron
