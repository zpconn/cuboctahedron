import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceStartViolationDirectKilledBridge
import Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStateDAGSelectedPrefixCover.Group000

/-!
Direct selected-prefix smoke for the top-pairing start-violation route.

The older selected-prefix smoke packages a shared Bellman margin bound.  This
file checks the cheaper semantic route: once a rank is in one of the selected
terminal trace prefixes, the accepted trace id has an all-trace
start-violation provider, so the nonidentity rank is killed directly.  The
public direct family below has no `scaledMargin` argument.
-/

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStateDAGSelectedPrefixDirectKilledSmoke

open Cuboctahedron
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingTraceStartViolationDirectKilledBridge
open Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStateDAGSelectedPrefixCover.Group000

def Prefix000DirectStartViolationFamily (rank : Fin numPairWords) : Prop :=
  TerminalTracePrefixStartViolationFamily Prefix000Prefix rank

def Prefix001DirectStartViolationFamily (rank : Fin numPairWords) : Prop :=
  TerminalTracePrefixStartViolationFamily Prefix001Prefix rank

def Prefix002DirectStartViolationFamily (rank : Fin numPairWords) : Prop :=
  TerminalTracePrefixStartViolationFamily Prefix002Prefix rank

def Prefix003DirectStartViolationFamily (rank : Fin numPairWords) : Prop :=
  TerminalTracePrefixStartViolationFamily Prefix003Prefix rank

def Prefix004DirectStartViolationFamily (rank : Fin numPairWords) : Prop :=
  TerminalTracePrefixStartViolationFamily Prefix004Prefix rank

def SelectedPrefixGroupDirectStartViolationFamily
    (rank : Fin numPairWords) : Prop :=
  Prefix000DirectStartViolationFamily rank \/
    Prefix001DirectStartViolationFamily rank \/
    Prefix002DirectStartViolationFamily rank \/
    Prefix003DirectStartViolationFamily rank \/
    Prefix004DirectStartViolationFamily rank

theorem Prefix000Direct_nonIdentityRankKilled
    {rank : Fin numPairWords}
    (hrank : Prefix000DirectStartViolationFamily rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_terminalTracePrefixStartViolationFamily
    (allowedTraceId := Prefix000Allowed)
    (pfx := Prefix000Prefix)
    (fun traceId hprefix =>
      (Prefix000Prefix_gain traceId hprefix).1)
    hrank

theorem Prefix001Direct_nonIdentityRankKilled
    {rank : Fin numPairWords}
    (hrank : Prefix001DirectStartViolationFamily rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_terminalTracePrefixStartViolationFamily
    (allowedTraceId := Prefix001Allowed)
    (pfx := Prefix001Prefix)
    (fun traceId hprefix =>
      (Prefix001Prefix_gain traceId hprefix).1)
    hrank

theorem Prefix002Direct_nonIdentityRankKilled
    {rank : Fin numPairWords}
    (hrank : Prefix002DirectStartViolationFamily rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_terminalTracePrefixStartViolationFamily
    (allowedTraceId := Prefix002Allowed)
    (pfx := Prefix002Prefix)
    (fun traceId hprefix =>
      (Prefix002Prefix_gain traceId hprefix).1)
    hrank

theorem Prefix003Direct_nonIdentityRankKilled
    {rank : Fin numPairWords}
    (hrank : Prefix003DirectStartViolationFamily rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_terminalTracePrefixStartViolationFamily
    (allowedTraceId := Prefix003Allowed)
    (pfx := Prefix003Prefix)
    (fun traceId hprefix =>
      (Prefix003Prefix_gain traceId hprefix).1)
    hrank

theorem Prefix004Direct_nonIdentityRankKilled
    {rank : Fin numPairWords}
    (hrank : Prefix004DirectStartViolationFamily rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  nonIdentityRankKilled_of_terminalTracePrefixStartViolationFamily
    (allowedTraceId := Prefix004Allowed)
    (pfx := Prefix004Prefix)
    (fun traceId hprefix =>
      (Prefix004Prefix_gain traceId hprefix).1)
    hrank

theorem selectedPrefixGroupDirect_nonIdentityRankKilled
    {rank : Fin numPairWords}
    (hrank : SelectedPrefixGroupDirectStartViolationFamily rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank := by
  rcases hrank with h0 | h1 | h2 | h3 | h4
  · exact Prefix000Direct_nonIdentityRankKilled h0
  · exact Prefix001Direct_nonIdentityRankKilled h1
  · exact Prefix002Direct_nonIdentityRankKilled h2
  · exact Prefix003Direct_nonIdentityRankKilled h3
  · exact Prefix004Direct_nonIdentityRankKilled h4

theorem Prefix000Direct_of_shard
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : Prefix000ShardFamily scaledMargin rank) :
    Prefix000DirectStartViolationFamily rank := by
  rcases hrank with
    ⟨hclosed, hactual, hbad, hterminal, hprefix, _hmargin⟩
  rcases hprefix with ⟨rest, hlabels⟩
  refine ⟨hclosed, hactual, hbad, hterminal, ?_⟩
  rw [hlabels]
  simp [Prefix000Prefix]

theorem Prefix001Direct_of_shard
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : Prefix001ShardFamily scaledMargin rank) :
    Prefix001DirectStartViolationFamily rank := by
  rcases hrank with
    ⟨hclosed, hactual, hbad, hterminal, hprefix, _hmargin⟩
  rcases hprefix with ⟨rest, hlabels⟩
  refine ⟨hclosed, hactual, hbad, hterminal, ?_⟩
  rw [hlabels]
  simp [Prefix001Prefix]

theorem Prefix002Direct_of_shard
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : Prefix002ShardFamily scaledMargin rank) :
    Prefix002DirectStartViolationFamily rank := by
  rcases hrank with
    ⟨hclosed, hactual, hbad, hterminal, hprefix, _hmargin⟩
  rcases hprefix with ⟨rest, hlabels⟩
  refine ⟨hclosed, hactual, hbad, hterminal, ?_⟩
  rw [hlabels]
  simp [Prefix002Prefix]

theorem Prefix003Direct_of_shard
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : Prefix003ShardFamily scaledMargin rank) :
    Prefix003DirectStartViolationFamily rank := by
  rcases hrank with
    ⟨hclosed, hactual, hbad, hterminal, hprefix, _hmargin⟩
  rcases hprefix with ⟨rest, hlabels⟩
  refine ⟨hclosed, hactual, hbad, hterminal, ?_⟩
  rw [hlabels]
  simp [Prefix003Prefix]

theorem Prefix004Direct_of_shard
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : Prefix004ShardFamily scaledMargin rank) :
    Prefix004DirectStartViolationFamily rank := by
  rcases hrank with
    ⟨hclosed, hactual, hbad, hterminal, hprefix, _hmargin⟩
  rcases hprefix with ⟨rest, hlabels⟩
  refine ⟨hclosed, hactual, hbad, hterminal, ?_⟩
  rw [hlabels]
  simp [Prefix004Prefix]

theorem selectedPrefixGroupDirect_of_selectedPrefixGroup
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : SelectedPrefixGroupFamily scaledMargin rank) :
    SelectedPrefixGroupDirectStartViolationFamily rank := by
  rcases hrank with h0 | h1 | h2 | h3 | h4
  · exact Or.inl (Prefix000Direct_of_shard h0)
  · exact Or.inr (Or.inl (Prefix001Direct_of_shard h1))
  · exact Or.inr (Or.inr (Or.inl (Prefix002Direct_of_shard h2)))
  · exact Or.inr (Or.inr (Or.inr (Or.inl (Prefix003Direct_of_shard h3))))
  · exact Or.inr (Or.inr (Or.inr (Or.inr (Prefix004Direct_of_shard h4))))

theorem selectedPrefixGroup_nonIdentityRankKilled_direct
    {scaledMargin : Fin numPairWords -> Int}
    {rank : Fin numPairWords}
    (hrank : SelectedPrefixGroupFamily scaledMargin rank) :
    Cuboctahedron.Generated.Coverage.NonIdentityRankKilled rank :=
  selectedPrefixGroupDirect_nonIdentityRankKilled
    (selectedPrefixGroupDirect_of_selectedPrefixGroup hrank)

theorem selected_prefix_direct_killed_smoke_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingStateDAGSelectedPrefixDirectKilledSmoke
