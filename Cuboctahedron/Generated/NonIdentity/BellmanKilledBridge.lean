import Cuboctahedron.Generated.Coverage.Predicates
import Cuboctahedron.Search.BellmanAxisBridge
import Cuboctahedron.Search.TerminalNonidentityTemplates

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

theorem nonIdentityRankKilled_of_object_cover_margin_positive
    {Obj State Label : Type}
    {V : State -> Int}
    {Step : State -> Label -> State -> Int -> Prop}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {rankOf : Obj -> Fin numPairWords}
    {Accepts : Obj -> Prop}
    {ContainsRank : Fin numPairWords -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    (cover :
      BellmanAxisRankObjectCover
        Obj State Label V Step labelOfFace start const rankOf
        Accepts ContainsRank scaledMargin)
    (hpositive :
      forall obj seq,
        Accepts obj ->
        SeqRealizesPairWord (unrankPairWord (rankOf obj)) seq ->
        StartsXp seq ->
        totalLinear seq ≠ (matId : Mat3 Rat) ->
        NonIdentityAxisConstraints seq ->
        0 < scaledMargin (rankOf obj))
    {rank : Fin numPairWords}
    (hrank : ContainsRank rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank := by
  apply nonIdentityRankKilled_of_no_axis_constraints
  intro seq hRealize hStart hLinear hAxis
  rcases cover.covers rank hrank with ⟨obj, hobj, hidx⟩
  have hRealizeObj :
      SeqRealizesPairWord (unrankPairWord (rankOf obj)) seq := by
    simpa [hidx] using hRealize
  have hnonpos :
      scaledMargin (rankOf obj) <= 0 :=
    BellmanAxisRankObjectCover.scaledMargin_nonpos_at_object
      cover obj hobj
  have hpos :
      0 < scaledMargin (rankOf obj) :=
    hpositive obj seq hobj hRealizeObj hStart hLinear hAxis
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

structure ObjectStartViolationMarginCert
    (rank : Fin numPairWords) (margin : Int) where
  cert : NonIdCert
  word_eq : cert.word = unrankPairWord rank
  kernel_check :
    checkKernelLineWitness (totalLinearOfPairWord cert.word)
      cert.axis cert.kernel = true
  solve_check :
    checkAffineAxisSolveWitness (totalAff (faceVectorSeq cert.forcedSeq))
      cert.axis cert.p0 cert.lambda cert.solve = true
  axis_forces :
    AxisForcesForcedSeq cert.word cert.axis
      (faceVectorSeq cert.forcedSeq)
  badFace : Face
  badFace_ne_xp : badFace ≠ Face.xp
  badFace_violation :
    offsetR badFace ≤ dot (normalR badFace) (vecRatToReal cert.p0)

structure TraceStartViolationMarginCert
    (template : Step14 -> Face) (margin : Int) where
  cert : NonIdCert
  word_eq : cert.word = pairWordOfSeq template
  kernel_check :
    checkKernelLineWitness (totalLinearOfPairWord cert.word)
      cert.axis cert.kernel = true
  solve_check :
    checkAffineAxisSolveWitness (totalAff (faceVectorSeq cert.forcedSeq))
      cert.axis cert.p0 cert.lambda cert.solve = true
  axis_forces :
    AxisForcesForcedSeq cert.word cert.axis
      (faceVectorSeq cert.forcedSeq)
  badFace : Face
  badFace_ne_xp : badFace ≠ Face.xp
  badFace_violation :
    offsetR badFace ≤ dot (normalR badFace) (vecRatToReal cert.p0)

namespace TraceStartViolationMarginCert

def toObjectStartViolationMarginCert
    {template : Step14 -> Face} {margin : Int}
    {rank : Fin numPairWords}
    (traceCert : TraceStartViolationMarginCert template margin)
    (hword : pairWordOfSeq template = unrankPairWord rank) :
    ObjectStartViolationMarginCert rank margin where
  cert := traceCert.cert
  word_eq := traceCert.word_eq.trans hword
  kernel_check := traceCert.kernel_check
  solve_check := traceCert.solve_check
  axis_forces := traceCert.axis_forces
  badFace := traceCert.badFace
  badFace_ne_xp := traceCert.badFace_ne_xp
  badFace_violation := traceCert.badFace_violation

end TraceStartViolationMarginCert

namespace ObjectStartViolationMarginCert

theorem positive
    {rank : Fin numPairWords} {margin : Int}
    (cert : ObjectStartViolationMarginCert rank margin)
    {seq : Step14 -> Face}
    (hRealize : SeqRealizesPairWord (unrankPairWord rank) seq)
    (hAxisConstraints : NonIdentityAxisConstraints seq) :
    0 < margin := by
  have hRealizeCert : SeqRealizesPairWord cert.cert.word seq := by
    simpa [cert.word_eq] using hRealize
  rcases
    nonIdCert_forces_candidate_data
      (cert := cert.cert) (seq := seq) hRealizeCert hAxisConstraints
      cert.kernel_check cert.solve_check cert.axis_forces with
    ⟨data, _hForcedEq, hp0, _hw⟩
  have hp0Interior :
      InFaceInterior Face.xp (vecRatToReal cert.cert.p0) := by
    rw [← hp0]
    rw [← hRealize.startsXp]
    exact data.start_interior
  have hnot :
      ¬ InFaceInterior Face.xp (vecRatToReal cert.cert.p0) :=
    not_inFaceInterior_of_not_strict
      (f := Face.xp) (g := cert.badFace)
      (p := vecRatToReal cert.cert.p0)
      cert.badFace_ne_xp cert.badFace_violation
  exact False.elim (hnot hp0Interior)

end ObjectStartViolationMarginCert

theorem nonIdentityRankKilled_of_object_cover_start_violation_margin_certs
    {Obj State Label : Type}
    {V : State -> Int}
    {Step : State -> Label -> State -> Int -> Prop}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {rankOf : Obj -> Fin numPairWords}
    {Accepts : Obj -> Prop}
    {ContainsRank : Fin numPairWords -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    (cover :
      BellmanAxisRankObjectCover
        Obj State Label V Step labelOfFace start const rankOf
        Accepts ContainsRank scaledMargin)
    (certOf :
      forall obj, Accepts obj ->
        ObjectStartViolationMarginCert
          (rankOf obj) (scaledMargin (rankOf obj)))
    {rank : Fin numPairWords}
    (hrank : ContainsRank rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_object_cover_margin_positive
    cover
    (fun obj _seq hobj hRealize _hStart _hLinear hAxis =>
      (certOf obj hobj).positive hRealize hAxis)
    hrank

structure BellmanEvalStartViolationObject
    (State Label : Type)
    (V : State -> Int)
    (next : State -> Label -> Option (State × Int))
    (labelOfFace : Face -> Label)
    (start : State)
    (const : Int)
    (axis : Vec3 Rat)
    (scaledMargin : Fin numPairWords -> Int) where
  bellman :
    BellmanEvalAxisObject
      State Label V next labelOfFace start const axis scaledMargin
  startViolation :
    ObjectStartViolationMarginCert
      bellman.rank (scaledMargin bellman.rank)

theorem nonIdentityRankKilled_of_eval_start_violation_objects
    {State Label : Type}
    {V : State -> Int}
    {Step : State -> Label -> State -> Int -> Prop}
    {next : State -> Label -> Option (State × Int)}
    {labelOfFace : Face -> Label}
    {start : State}
    {const : Int}
    {axis : Vec3 Rat}
    {scaledMargin : Fin numPairWords -> Int}
    (next_sound :
      forall s label t gain,
        next s label = some (t, gain) -> Step s label t gain)
    (step_valid :
      forall s label t gain, Step s label t gain -> gain + V t <= V s)
    (root_bound : const + V start <= 0)
    {rank : Fin numPairWords}
    (hrank :
      exists obj :
        BellmanEvalStartViolationObject
          State Label V next labelOfFace start const axis scaledMargin,
        True /\ obj.bellman.rank = rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_object_cover_start_violation_margin_certs
    (BellmanAxisRankObjectCover.ofEvalExistsMembership
      (Obj :=
        BellmanEvalStartViolationObject
          State Label V next labelOfFace start const axis scaledMargin)
      (State := State)
      (Label := Label)
      (V := V)
      (Step := Step)
      (next := next)
      (labelOfFace := labelOfFace)
      (start := start)
      (const := const)
      (rankOf := fun obj => obj.bellman.rank)
      (Accepts := fun _obj => True)
      (scaledMargin := scaledMargin)
      (fun obj :
        BellmanEvalStartViolationObject
          State Label V next labelOfFace start const axis scaledMargin =>
        obj.bellman.forcedSeq)
      next_sound
      (fun obj _hAccept =>
        BellmanEvalAxisObject.evalAccepts obj.bellman)
      step_valid
      root_bound)
    (fun obj _hAccept => obj.startViolation)
    hrank

theorem nonIdentityRankKilled_of_object_nonpos_start_violation_margin_certs
    {Obj : Type}
    {rankOf : Obj -> Fin numPairWords}
    {Accepts : Obj -> Prop}
    {ContainsRank : Fin numPairWords -> Prop}
    {scaledMargin : Fin numPairWords -> Int}
    (covers :
      forall rank, ContainsRank rank ->
        exists obj, Accepts obj /\ rankOf obj = rank)
    (hnonpos :
      forall obj, Accepts obj ->
        scaledMargin (rankOf obj) <= 0)
    (certOf :
      forall obj, Accepts obj ->
        ObjectStartViolationMarginCert
          (rankOf obj) (scaledMargin (rankOf obj)))
    {rank : Fin numPairWords}
    (hrank : ContainsRank rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank := by
  apply nonIdentityRankKilled_of_no_axis_constraints
  intro seq hRealize hStart _hLinear hAxis
  rcases covers rank hrank with ⟨obj, hobj, hidx⟩
  have hRealizeObj :
      SeqRealizesPairWord (unrankPairWord (rankOf obj)) seq := by
    simpa [hidx] using hRealize
  have hle :
      scaledMargin (rankOf obj) <= 0 :=
    hnonpos obj hobj
  have hpos :
      0 < scaledMargin (rankOf obj) :=
    (certOf obj hobj).positive hRealizeObj hAxis
  linarith

structure BellmanNonposStartViolationObject
    (scaledMargin : Fin numPairWords -> Int) where
  rank : Fin numPairWords
  nonpos : scaledMargin rank <= 0
  startViolation :
    ObjectStartViolationMarginCert rank (scaledMargin rank)

structure BellmanNonposStartViolationObjectMembership
    (scaledMargin : Fin numPairWords -> Int)
    (ContainsRank : Fin numPairWords -> Prop) where
  objectOf :
    forall rank, ContainsRank rank ->
      BellmanNonposStartViolationObject scaledMargin
  object_rank :
    forall rank hrank, (objectOf rank hrank).rank = rank

namespace BellmanNonposStartViolationObjectMembership

noncomputable def ofExists
    {scaledMargin : Fin numPairWords -> Int} :
    BellmanNonposStartViolationObjectMembership scaledMargin
      (fun rank =>
        exists obj : BellmanNonposStartViolationObject scaledMargin,
          True /\ obj.rank = rank) where
  objectOf := fun _rank hrank => Classical.choose hrank
  object_rank := by
    intro rank hrank
    exact (Classical.choose_spec hrank).2

theorem covers
    {scaledMargin : Fin numPairWords -> Int}
    {ContainsRank : Fin numPairWords -> Prop}
    (membership :
      BellmanNonposStartViolationObjectMembership scaledMargin ContainsRank) :
    forall rank, ContainsRank rank ->
      exists obj : BellmanNonposStartViolationObject scaledMargin,
        True /\ obj.rank = rank := by
  intro rank hrank
  exact ⟨membership.objectOf rank hrank, True.intro,
    membership.object_rank rank hrank⟩

theorem rankKilled
    {scaledMargin : Fin numPairWords -> Int}
    {ContainsRank : Fin numPairWords -> Prop}
    (membership :
      BellmanNonposStartViolationObjectMembership scaledMargin ContainsRank)
    {rank : Fin numPairWords} (hrank : ContainsRank rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_object_nonpos_start_violation_margin_certs
    (Obj := BellmanNonposStartViolationObject scaledMargin)
    (rankOf := fun obj => obj.rank)
    (Accepts := fun _obj => True)
    (ContainsRank := ContainsRank)
    (scaledMargin := scaledMargin)
    (BellmanNonposStartViolationObjectMembership.covers membership)
    (fun obj _hAccept => obj.nonpos)
    (fun obj _hAccept => obj.startViolation)
    hrank

end BellmanNonposStartViolationObjectMembership

theorem nonIdentityRankKilled_of_nonpos_start_violation_objects
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank :
      exists obj : BellmanNonposStartViolationObject scaledMargin,
        True /\ obj.rank = rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  BellmanNonposStartViolationObjectMembership.rankKilled
    (BellmanNonposStartViolationObjectMembership.ofExists
      (scaledMargin := scaledMargin))
    hrank

end Cuboctahedron.Generated.NonIdentity.BellmanKilledBridge
