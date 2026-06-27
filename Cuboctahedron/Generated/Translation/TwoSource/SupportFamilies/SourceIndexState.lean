import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge

/-!
Small source-index/state descriptor interface for row-property membership.

This is intentionally only a fact-free descriptor shape.  It does not prove
source agreement or row-property facts by itself; generated family modules must
derive those facts outside `Applies` before composing through
`RowPropertyParametricCovered`.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState

structure SourceIndexStateDescriptor where
  rank : Nat
  mask : SignMask
  support : TwoSourceFarkasSupport

def SourceIndexStateDescriptor.Applies
    (desc : SourceIndexStateDescriptor) (r : Nat) (mask : SignMask) : Prop :=
  r = desc.rank /\ mask = desc.mask

theorem sourceIndexState_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
