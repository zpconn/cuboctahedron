import Cuboctahedron.Search.Certificates

/-!
Conditional public theorem skeleton.

This module intentionally does not construct generated evidence.  It exposes
the trusted Lean bridge showing that an `ExhaustiveGeneratedCoverage` witness
would eliminate every started unfolded omnihedral itinerary.
-/

namespace Cuboctahedron

theorem conditional_generated_nonidentity_complete
    (coverage : ExhaustiveGeneratedCoverage) :
    forall seq : Step14 -> Face,
      IsOmniSeq seq ->
      StartsXp seq ->
      totalLinear seq ≠ (matId : Mat3 Rat) ->
      ¬ UnfoldedFeasible seq :=
  generated_nonidentity_complete_of_coverage coverage

theorem conditional_generated_translation_complete
    (coverage : ExhaustiveGeneratedCoverage) :
    forall seq : Step14 -> Face,
      IsOmniSeq seq ->
      StartsXp seq ->
      totalLinear seq = (matId : Mat3 Rat) ->
      ¬ UnfoldedFeasible seq :=
  generated_translation_complete_of_coverage coverage

theorem conditional_no_unfolded_omni_starting_xp
    (coverage : ExhaustiveGeneratedCoverage) :
    forall seq : Step14 -> Face,
      IsOmniSeq seq ->
      StartsXp seq ->
      ¬ UnfoldedFeasible seq :=
  no_unfolded_omni_starting_xp_of_coverage coverage

theorem conditional_cuboctahedron_no_omnihedral
    (coverage : ExhaustiveGeneratedCoverage) :
    ¬ exists o : BilliardOrbit14,
      o.Nonsingular /\ o.Periodic /\ o.TouchesEachFaceExactlyOnce := by
  intro h
  rcases h with ⟨o, _hNonSingular, _hPeriodic, hOmni⟩
  obtain ⟨o', hOmni', hStart⟩ := can_start_at_xp o hOmni
  have hUnfolded : UnfoldedFeasible o'.face :=
    billiard_implies_unfolded o' hOmni' hStart
  exact conditional_no_unfolded_omni_starting_xp
    coverage o'.face hOmni' hStart hUnfolded

end Cuboctahedron
