import Cuboctahedron.Geometry.Unfolding
import Cuboctahedron.Search.Itineraries

/-!
Pair-word linear products and the non-identity side of the finite case split.
-/

namespace Cuboctahedron

def pairAtStartedIndex (w : PairWord) (i : Step14) : PairId :=
  if h : i = 0 then PairId.x else w.get (dropStart i h)

def canonicalSeqOfPairWord (w : PairWord) : Step14 -> Face :=
  fun i => faceOfPairSign (pairAtStartedIndex w i) true

def totalLinearOfPairWord (w : PairWord) : Mat3 Rat :=
  totalLinear (canonicalSeqOfPairWord w)

def IsNonIdentityLinear (w : PairWord) : Prop :=
  totalLinearOfPairWord w ≠ (matId : Mat3 Rat)

@[simp] theorem pairAtStartedIndex_zero (w : PairWord) :
    pairAtStartedIndex w 0 = PairId.x := by
  simp [pairAtStartedIndex]

@[simp] theorem pairAtStartedIndex_afterStart (w : PairWord) (i : WordIndex) :
    pairAtStartedIndex w (afterStart i) = w.get i := by
  unfold pairAtStartedIndex
  simp only [dif_neg (afterStart_ne_zero i)]
  congr

@[simp] theorem canonicalSeqOfPairWord_zero (w : PairWord) :
    canonicalSeqOfPairWord w 0 = Face.xp := by
  simp [canonicalSeqOfPairWord, pairAtStartedIndex, faceOfPairSign]

@[simp] theorem pairOfFace_canonicalSeqOfPairWord (w : PairWord) (i : Step14) :
    pairOfFace (canonicalSeqOfPairWord w i) = pairAtStartedIndex w i := by
  simp [canonicalSeqOfPairWord]

theorem faceReflection_linear_eq_of_pairOfFace_eq {f g : Face}
    (h : pairOfFace f = pairOfFace g) :
    (faceReflectionQ f).M = (faceReflectionQ g).M := by
  cases f <;> cases g <;> simp [pairOfFace] at h ⊢ <;>
    apply Mat3.ext <;>
    simp [faceReflectionQ, reflM, normalQ, offsetQ, matSub, scalarMat, outer,
      matId, dot]

theorem pairOfFace_eq_canonical_of_matches
    (seq : Step14 -> Face) (w : PairWord)
    (hStart : StartsXp seq)
    (hMatch : PairWordMatchesSeq w seq) :
    forall i : Step14,
      pairOfFace (seq i) = pairOfFace (canonicalSeqOfPairWord w i) := by
  intro i
  by_cases hi : i = 0
  · subst i
    rw [hStart]
    rfl
  · have hm := hMatch (dropStart i hi)
    rw [afterStart_dropStart i hi] at hm
    simpa [canonicalSeqOfPairWord, pairAtStartedIndex, hi] using hm.symm

theorem composeFaceList_linear_eq_of_pairwise_pair
    (seq canon : Step14 -> Face)
    (is : List Step14)
    (h : forall i : Step14, pairOfFace (seq i) = pairOfFace (canon i)) :
    (composeFaceList seq is).M = (composeFaceList canon is).M := by
  induction is with
  | nil => rfl
  | cons i is ih =>
      simp [composeFaceList, affCompose]
      rw [faceReflection_linear_eq_of_pairOfFace_eq (h i), ih]

theorem totalLinear_eq_totalLinearOfPairWord
    {seq : Step14 -> Face} {w : PairWord}
    (hStart : StartsXp seq)
    (hMatch : PairWordMatchesSeq w seq) :
    totalLinear seq = totalLinearOfPairWord w := by
  unfold totalLinearOfPairWord totalLinear totalAff
  exact composeFaceList_linear_eq_of_pairwise_pair
    seq (canonicalSeqOfPairWord w) totalOrder
    (pairOfFace_eq_canonical_of_matches seq w hStart hMatch)

theorem seq_to_pairword_with_linear
    (seq : Step14 -> Face)
    (hOmni : IsOmniSeq seq)
    (hStart : StartsXp seq) :
    exists w : PairWord,
      ValidPairWord w /\ PairWordMatchesSeq w seq /\
        totalLinear seq = totalLinearOfPairWord w := by
  rcases seq_to_pairword seq hOmni hStart with ⟨w, hValid, hMatch⟩
  exact ⟨w, hValid, hMatch, totalLinear_eq_totalLinearOfPairWord hStart hMatch⟩

def vec3NonzeroQ (v : Vec3 Rat) : Prop :=
  v.x ≠ 0 \/ v.y ≠ 0 \/ v.z ≠ 0

def checkVec3NonzeroQ (v : Vec3 Rat) : Bool :=
  decide (v.x ≠ (0 : Rat)) ||
    decide (v.y ≠ (0 : Rat)) ||
    decide (v.z ≠ (0 : Rat))

def fixedPart (M : Mat3 Rat) : Mat3 Rat :=
  matSub M (matId : Mat3 Rat)

def crossLeftMatrix (axis : Vec3 Rat) : Mat3 Rat where
  m00 := 0
  m01 := -axis.z
  m02 := axis.y
  m10 := axis.z
  m11 := 0
  m12 := -axis.x
  m20 := -axis.y
  m21 := axis.x
  m22 := 0

theorem matVec_crossLeftMatrix (axis v : Vec3 Rat) :
    matVec (crossLeftMatrix axis) v = cross axis v := by
  apply Vec3.ext <;> simp [crossLeftMatrix, matVec, cross] <;> ring

structure KernelLineWitness where
  crossFactor : Mat3 Rat
deriving DecidableEq, Repr

def checkKernelLineWitness
    (M : Mat3 Rat) (axis : Vec3 Rat) (witness : KernelLineWitness) : Bool :=
  checkVec3NonzeroQ axis &&
    decide (matVec M axis = axis) &&
    decide (matMul witness.crossFactor (fixedPart M) = crossLeftMatrix axis)

structure Vec4 where
  x0 : Rat
  x1 : Rat
  x2 : Rat
  x3 : Rat
deriving DecidableEq, Repr, Inhabited

namespace Vec4

theorem ext {a b : Vec4}
    (h0 : a.x0 = b.x0) (h1 : a.x1 = b.x1)
    (h2 : a.x2 = b.x2) (h3 : a.x3 = b.x3) : a = b := by
  cases a
  cases b
  simp_all

end Vec4

structure Mat4 where
  m00 : Rat
  m01 : Rat
  m02 : Rat
  m03 : Rat
  m10 : Rat
  m11 : Rat
  m12 : Rat
  m13 : Rat
  m20 : Rat
  m21 : Rat
  m22 : Rat
  m23 : Rat
  m30 : Rat
  m31 : Rat
  m32 : Rat
  m33 : Rat
deriving DecidableEq, Repr, Inhabited

namespace Mat4

theorem ext {A B : Mat4}
    (h00 : A.m00 = B.m00) (h01 : A.m01 = B.m01)
    (h02 : A.m02 = B.m02) (h03 : A.m03 = B.m03)
    (h10 : A.m10 = B.m10) (h11 : A.m11 = B.m11)
    (h12 : A.m12 = B.m12) (h13 : A.m13 = B.m13)
    (h20 : A.m20 = B.m20) (h21 : A.m21 = B.m21)
    (h22 : A.m22 = B.m22) (h23 : A.m23 = B.m23)
    (h30 : A.m30 = B.m30) (h31 : A.m31 = B.m31)
    (h32 : A.m32 = B.m32) (h33 : A.m33 = B.m33) : A = B := by
  cases A
  cases B
  simp_all

end Mat4

def mat4Id : Mat4 where
  m00 := 1; m01 := 0; m02 := 0; m03 := 0
  m10 := 0; m11 := 1; m12 := 0; m13 := 0
  m20 := 0; m21 := 0; m22 := 1; m23 := 0
  m30 := 0; m31 := 0; m32 := 0; m33 := 1

def mat4Vec (A : Mat4) (v : Vec4) : Vec4 where
  x0 := A.m00 * v.x0 + A.m01 * v.x1 + A.m02 * v.x2 + A.m03 * v.x3
  x1 := A.m10 * v.x0 + A.m11 * v.x1 + A.m12 * v.x2 + A.m13 * v.x3
  x2 := A.m20 * v.x0 + A.m21 * v.x1 + A.m22 * v.x2 + A.m23 * v.x3
  x3 := A.m30 * v.x0 + A.m31 * v.x1 + A.m32 * v.x2 + A.m33 * v.x3

def mat4Mul (A B : Mat4) : Mat4 where
  m00 := A.m00 * B.m00 + A.m01 * B.m10 + A.m02 * B.m20 + A.m03 * B.m30
  m01 := A.m00 * B.m01 + A.m01 * B.m11 + A.m02 * B.m21 + A.m03 * B.m31
  m02 := A.m00 * B.m02 + A.m01 * B.m12 + A.m02 * B.m22 + A.m03 * B.m32
  m03 := A.m00 * B.m03 + A.m01 * B.m13 + A.m02 * B.m23 + A.m03 * B.m33
  m10 := A.m10 * B.m00 + A.m11 * B.m10 + A.m12 * B.m20 + A.m13 * B.m30
  m11 := A.m10 * B.m01 + A.m11 * B.m11 + A.m12 * B.m21 + A.m13 * B.m31
  m12 := A.m10 * B.m02 + A.m11 * B.m12 + A.m12 * B.m22 + A.m13 * B.m32
  m13 := A.m10 * B.m03 + A.m11 * B.m13 + A.m12 * B.m23 + A.m13 * B.m33
  m20 := A.m20 * B.m00 + A.m21 * B.m10 + A.m22 * B.m20 + A.m23 * B.m30
  m21 := A.m20 * B.m01 + A.m21 * B.m11 + A.m22 * B.m21 + A.m23 * B.m31
  m22 := A.m20 * B.m02 + A.m21 * B.m12 + A.m22 * B.m22 + A.m23 * B.m32
  m23 := A.m20 * B.m03 + A.m21 * B.m13 + A.m22 * B.m23 + A.m23 * B.m33
  m30 := A.m30 * B.m00 + A.m31 * B.m10 + A.m32 * B.m20 + A.m33 * B.m30
  m31 := A.m30 * B.m01 + A.m31 * B.m11 + A.m32 * B.m21 + A.m33 * B.m31
  m32 := A.m30 * B.m02 + A.m31 * B.m12 + A.m32 * B.m22 + A.m33 * B.m32
  m33 := A.m30 * B.m03 + A.m31 * B.m13 + A.m32 * B.m23 + A.m33 * B.m33

def axisSolveMatrix (A : Aff3 Rat) (axis : Vec3 Rat) : Mat4 where
  m00 := A.M.m00 - 1
  m01 := A.M.m01
  m02 := A.M.m02
  m03 := -axis.x
  m10 := A.M.m10
  m11 := A.M.m11 - 1
  m12 := A.M.m12
  m13 := -axis.y
  m20 := A.M.m20
  m21 := A.M.m21
  m22 := A.M.m22 - 1
  m23 := -axis.z
  m30 := 1
  m31 := 0
  m32 := 0
  m33 := 0

def axisSolveRhs (A : Aff3 Rat) : Vec4 where
  x0 := -A.b.x
  x1 := -A.b.y
  x2 := -A.b.z
  x3 := 1

def axisSolveVector (p0 : Vec3 Rat) (lambda : Rat) : Vec4 where
  x0 := p0.x
  x1 := p0.y
  x2 := p0.z
  x3 := lambda

structure AffineAxisSolveWitness where
  leftInverse : Mat4
deriving DecidableEq, Repr

def checkAffineAxisSolveWitness
    (A : Aff3 Rat) (axis p0 : Vec3 Rat) (lambda : Rat)
    (witness : AffineAxisSolveWitness) : Bool :=
  decide (mat4Mul witness.leftInverse (axisSolveMatrix A axis) = mat4Id) &&
    decide (mat4Vec (axisSolveMatrix A axis) (axisSolveVector p0 lambda) =
      axisSolveRhs A)

example :
    totalLinear sampleStartedSeq =
      totalLinearOfPairWord (pairWordOfSeq sampleStartedSeq) := by
  exact totalLinear_eq_totalLinearOfPairWord rfl
    (pairWordOfSeq_matches sampleStartedSeq)

#check totalLinearOfPairWord
#check totalLinear_eq_totalLinearOfPairWord

end Cuboctahedron
