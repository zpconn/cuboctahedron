import Cuboctahedron.Generated.Coverage.Predicates
import Cuboctahedron.Search.BellmanAxisBridge

/-!
Semantic bridge from Bellman nonidentity margin bounds to public generated
coverage predicates.

Generated Bellman families prove an integer-scaled margin is nonpositive for
every feasible axis-forced sequence in an accepted rank language.  The final
coverage layer also needs a family-specific positive-margin lemma: if a
nonidentity feasible sequence satisfied the relevant axis constraints, that
same scaled margin would be strictly positive.  This module packages the common
contradiction and exports `NonIdentityRankKilled`, keeping the generated leaf
focused on its private automaton and positive-margin facts.
-/

namespace Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge

theorem nonIdentityRankKilled_of_no_axis_constraints
    {r : Fin numPairWords}
    (hno :
      forall seq : Step14 -> Face,
        SeqRealizesPairWord (unrankPairWord r) seq ->
        StartsXp seq ->
        totalLinear seq ≠ (matId : Mat3 Rat) ->
        ¬ NonIdentityAxisConstraints seq) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled r := by
  intro _hM hbad
  rcases hbad with ⟨seq, hRealize, hStart, hLinear, hFeasible⟩
  have hAxis : NonIdentityAxisConstraints seq :=
    unfolded_feasible_nonidentity_axis_constraints hFeasible hLinear
  exact hno seq hRealize hStart hLinear hAxis

theorem nonIdentityRankKilled_of_indexed_cover_margin_positive
    {Index State Label : Type}
    {V : State -> Int}
    {Step : State -> Label -> State -> Int -> Prop}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {rankOf : Index -> Fin numPairWords}
    {ContainsRank : Fin numPairWords -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    (cover :
      BellmanAxisRankIndexedCover
        Index State Label V Step labelOfFace start const rankOf
        ContainsRank scaledMargin)
    (hpositive :
      forall idx seq,
        SeqRealizesPairWord (unrankPairWord (rankOf idx)) seq ->
        StartsXp seq ->
        totalLinear seq ≠ (matId : Mat3 Rat) ->
        NonIdentityAxisConstraints seq ->
        0 < scaledMargin (rankOf idx))
    {rank : Fin numPairWords}
    (hrank : ContainsRank rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank := by
  apply nonIdentityRankKilled_of_no_axis_constraints
  intro seq hRealize hStart hLinear hAxis
  rcases cover.covers rank hrank with ⟨idx, hidx⟩
  have hRealizeIdx :
      SeqRealizesPairWord (unrankPairWord (rankOf idx)) seq := by
    simpa [hidx] using hRealize
  have hnonpos :
      scaledMargin (rankOf idx) <= 0 :=
    BellmanAxisRankIndexedFamily.scaledMargin_nonpos
      cover.family idx hRealizeIdx hAxis
  have hpos :
      0 < scaledMargin (rankOf idx) :=
    hpositive idx seq hRealizeIdx hStart hLinear hAxis
  linarith

theorem positive_margin_of_axis_forces_start_interior
    {seq : Step14 -> Face} {cert : NonIdCert} {margin : Int}
    (hRealize : SeqRealizesPairWord cert.word seq)
    (hAxisConstraints : NonIdentityAxisConstraints seq)
    (hKernel :
      checkKernelLineWitness (totalLinearOfPairWord cert.word)
        cert.axis cert.kernel = true)
    (hSolve :
      checkAffineAxisSolveWitness (totalAff (faceVectorSeq cert.forcedSeq))
        cert.axis cert.p0 cert.lambda cert.solve = true)
    (hForces :
      AxisForcesForcedSeq cert.word cert.axis
        (faceVectorSeq cert.forcedSeq))
    (hMargin : XpStartInteriorQ cert.p0 -> 0 < margin) :
    0 < margin := by
  rcases
    nonIdCert_forces_candidate_data
      (cert := cert) (seq := seq) hRealize hAxisConstraints
      hKernel hSolve hForces with
    ⟨data, _hForcedEq, hp0, _hw⟩
  have hp0Interior :
      InFaceInterior Face.xp (vecRatToReal cert.p0) := by
    rw [← hp0]
    rw [← hRealize.startsXp]
    exact data.start_interior
  exact hMargin (XpStartInteriorQ_of_real hp0Interior)

end Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge
