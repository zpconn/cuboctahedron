import Cuboctahedron.Search.Enumeration
import Cuboctahedron.Search.ShadowNormalForm

/-!
Count consequences for the shadow normal form.

This module connects the lightweight list-level parity theorem in
`ShadowNormalForm.lean` to the repository's `ValidPairWord` predicate.
-/

namespace Cuboctahedron

theorem startedPairFactors_count_x_of_valid
    {w : PairWord} (hvalid : ValidPairWord w) :
    (startedPairFactors w).count PairId.x = 2 := by
  have hx : w.count PairId.x = 1 := by
    simpa [pairCount_eq_vector_count] using hvalid.1
  rw [startedPairFactors_eq_toList_append, List.count_append]
  simp [hx]

theorem startedPairFactors_count_y_of_valid
    {w : PairWord} (hvalid : ValidPairWord w) :
    (startedPairFactors w).count PairId.y = 2 := by
  have hy : w.count PairId.y = 2 := by
    simpa [pairCount_eq_vector_count] using hvalid.2.1
  rw [startedPairFactors_eq_toList_append, List.count_append]
  simp [hy]

theorem startedPairFactors_count_z_of_valid
    {w : PairWord} (hvalid : ValidPairWord w) :
    (startedPairFactors w).count PairId.z = 2 := by
  have hz : w.count PairId.z = 2 := by
    simpa [pairCount_eq_vector_count] using hvalid.2.2.1
  rw [startedPairFactors_eq_toList_append, List.count_append]
  simp [hz]

theorem finalSquareParityOfPairWord_eq_id_of_valid
    {w : PairWord} (hvalid : ValidPairWord w) :
    finalSquareParityOfPairWord w = SqParity.id := by
  unfold finalSquareParityOfPairWord shadowStateOfPairWord
  apply finalSquareParityOfPairList_eq_id_of_not_occurs_odd
  · exact pairOccursOdd_eq_false_of_count_two PairId.x (startedPairFactors w)
      (startedPairFactors_count_x_of_valid hvalid)
  · exact pairOccursOdd_eq_false_of_count_two PairId.y (startedPairFactors w)
      (startedPairFactors_count_y_of_valid hvalid)
  · exact pairOccursOdd_eq_false_of_count_two PairId.z (startedPairFactors w)
      (startedPairFactors_count_z_of_valid hvalid)

end Cuboctahedron
