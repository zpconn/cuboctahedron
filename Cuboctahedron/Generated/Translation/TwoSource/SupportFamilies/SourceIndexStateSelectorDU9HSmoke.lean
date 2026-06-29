import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke

/-!
Generated DU.9H selector-coordinate smoke.

This module exposes the deterministic coordinate identified by the
DU.9H audit: template + source indices + row-property digest.  It does
not prove bounded classifier completeness by itself.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke

open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke

set_option linter.unusedVariables false

/-- Opaque names for the row-property digests observed in the bounded DU.9 catalog. -/
inductive RowPropertyDigest
  | d000
  | d001
  | d002
  | d003
  | d004
  | d005
  | d006
  | d007
  | d008
  | d009
  | d010
  | d011
deriving DecidableEq, Repr

/-- The source selector coordinate that determines a bounded DU.9 classifier key. -/
structure SelectorCoordinate where
  template : SourceIndexTemplate
  firstIndex : Nat
  secondIndex : Nat
  rowProperty : RowPropertyDigest
deriving DecidableEq, Repr

def rowPropertyDigestOfKey : ClassifierKey -> RowPropertyDigest
  | .k000 => .d007
  | .k001 => .d006
  | .k002 => .d000
  | .k003 => .d008
  | .k004 => .d007
  | .k005 => .d008
  | .k006 => .d006
  | .k007 => .d008
  | .k008 => .d008
  | .k009 => .d008
  | .k010 => .d003
  | .k011 => .d007
  | .k012 => .d010
  | .k013 => .d008
  | .k014 => .d010
  | .k015 => .d007
  | .k016 => .d008
  | .k017 => .d006
  | .k018 => .d007
  | .k019 => .d010
  | .k020 => .d007
  | .k021 => .d007
  | .k022 => .d007
  | .k023 => .d004
  | .k024 => .d000
  | .k025 => .d007
  | .k026 => .d007
  | .k027 => .d008
  | .k028 => .d007
  | .k029 => .d007
  | .k030 => .d007
  | .k031 => .d010
  | .k032 => .d006
  | .k033 => .d004
  | .k034 => .d007
  | .k035 => .d004
  | .k036 => .d010
  | .k037 => .d010
  | .k038 => .d000
  | .k039 => .d006
  | .k040 => .d010
  | .k041 => .d007
  | .k042 => .d010
  | .k043 => .d000
  | .k044 => .d006
  | .k045 => .d006
  | .k046 => .d007
  | .k047 => .d006
  | .k048 => .d004
  | .k049 => .d007
  | .k050 => .d006
  | .k051 => .d006
  | .k052 => .d006
  | .k053 => .d007
  | .k054 => .d007
  | .k055 => .d007
  | .k056 => .d006
  | .k057 => .d004
  | .k058 => .d004
  | .k059 => .d007
  | .k060 => .d006
  | .k061 => .d006
  | .k062 => .d006
  | .k063 => .d002
  | .k064 => .d003
  | .k065 => .d003
  | .k066 => .d007
  | .k067 => .d007
  | .k068 => .d007
  | .k069 => .d007
  | .k070 => .d000
  | .k071 => .d004
  | .k072 => .d011
  | .k073 => .d006
  | .k074 => .d000
  | .k075 => .d000
  | .k076 => .d006
  | .k077 => .d007
  | .k078 => .d007
  | .k079 => .d000
  | .k080 => .d009
  | .k081 => .d006
  | .k082 => .d000
  | .k083 => .d005
  | .k084 => .d003
  | .k085 => .d001
  | .k086 => .d001
  | .k087 => .d007
  | .k088 => .d007
  | .k089 => .d006
  | .k090 => .d006
  | .k091 => .d004
  | .k092 => .d006
  | .k093 => .d006
  | .k094 => .d006
  | .k095 => .d006
  | .k096 => .d000
  | .k097 => .d000
  | .k098 => .d000
  | .k099 => .d003
  | .k100 => .d003
  | .k101 => .d003
  | .k102 => .d001
  | .k103 => .d001
  | .k104 => .d007
  | .k105 => .d007
  | .k106 => .d006
  | .k107 => .d006
  | .k108 => .d000
  | .k109 => .d000
  | .k110 => .d000
  | .k111 => .d003
  | .k112 => .d003
  | .k113 => .d001
  | .k114 => .d001
  | .k115 => .d007
  | .k116 => .d007
  | .k117 => .d007
  | .k118 => .d007
  | .k119 => .d007
  | .k120 => .d007
  | .k121 => .d006
  | .k122 => .d000
  | .k123 => .d000
  | .k124 => .d000

def selectorCoordinateOfKey (key : ClassifierKey) : SelectorCoordinate :=
  let sourceKey := key.toSourceIndexStateKey
  { template := sourceKey.template
    firstIndex := sourceKey.firstIndex
    secondIndex := sourceKey.secondIndex
    rowProperty := rowPropertyDigestOfKey key }

def selectorCoordinateAt (i : Fin 125) : SelectorCoordinate :=
  if i.val = 0 then selectorCoordinateOfKey ClassifierKey.k000 else
  if i.val = 1 then selectorCoordinateOfKey ClassifierKey.k001 else
  if i.val = 2 then selectorCoordinateOfKey ClassifierKey.k002 else
  if i.val = 3 then selectorCoordinateOfKey ClassifierKey.k003 else
  if i.val = 4 then selectorCoordinateOfKey ClassifierKey.k004 else
  if i.val = 5 then selectorCoordinateOfKey ClassifierKey.k005 else
  if i.val = 6 then selectorCoordinateOfKey ClassifierKey.k006 else
  if i.val = 7 then selectorCoordinateOfKey ClassifierKey.k007 else
  if i.val = 8 then selectorCoordinateOfKey ClassifierKey.k008 else
  if i.val = 9 then selectorCoordinateOfKey ClassifierKey.k009 else
  if i.val = 10 then selectorCoordinateOfKey ClassifierKey.k010 else
  if i.val = 11 then selectorCoordinateOfKey ClassifierKey.k011 else
  if i.val = 12 then selectorCoordinateOfKey ClassifierKey.k012 else
  if i.val = 13 then selectorCoordinateOfKey ClassifierKey.k013 else
  if i.val = 14 then selectorCoordinateOfKey ClassifierKey.k014 else
  if i.val = 15 then selectorCoordinateOfKey ClassifierKey.k015 else
  if i.val = 16 then selectorCoordinateOfKey ClassifierKey.k016 else
  if i.val = 17 then selectorCoordinateOfKey ClassifierKey.k017 else
  if i.val = 18 then selectorCoordinateOfKey ClassifierKey.k018 else
  if i.val = 19 then selectorCoordinateOfKey ClassifierKey.k019 else
  if i.val = 20 then selectorCoordinateOfKey ClassifierKey.k020 else
  if i.val = 21 then selectorCoordinateOfKey ClassifierKey.k021 else
  if i.val = 22 then selectorCoordinateOfKey ClassifierKey.k022 else
  if i.val = 23 then selectorCoordinateOfKey ClassifierKey.k023 else
  if i.val = 24 then selectorCoordinateOfKey ClassifierKey.k024 else
  if i.val = 25 then selectorCoordinateOfKey ClassifierKey.k025 else
  if i.val = 26 then selectorCoordinateOfKey ClassifierKey.k026 else
  if i.val = 27 then selectorCoordinateOfKey ClassifierKey.k027 else
  if i.val = 28 then selectorCoordinateOfKey ClassifierKey.k028 else
  if i.val = 29 then selectorCoordinateOfKey ClassifierKey.k029 else
  if i.val = 30 then selectorCoordinateOfKey ClassifierKey.k030 else
  if i.val = 31 then selectorCoordinateOfKey ClassifierKey.k031 else
  if i.val = 32 then selectorCoordinateOfKey ClassifierKey.k032 else
  if i.val = 33 then selectorCoordinateOfKey ClassifierKey.k033 else
  if i.val = 34 then selectorCoordinateOfKey ClassifierKey.k034 else
  if i.val = 35 then selectorCoordinateOfKey ClassifierKey.k035 else
  if i.val = 36 then selectorCoordinateOfKey ClassifierKey.k036 else
  if i.val = 37 then selectorCoordinateOfKey ClassifierKey.k037 else
  if i.val = 38 then selectorCoordinateOfKey ClassifierKey.k038 else
  if i.val = 39 then selectorCoordinateOfKey ClassifierKey.k039 else
  if i.val = 40 then selectorCoordinateOfKey ClassifierKey.k040 else
  if i.val = 41 then selectorCoordinateOfKey ClassifierKey.k041 else
  if i.val = 42 then selectorCoordinateOfKey ClassifierKey.k042 else
  if i.val = 43 then selectorCoordinateOfKey ClassifierKey.k043 else
  if i.val = 44 then selectorCoordinateOfKey ClassifierKey.k044 else
  if i.val = 45 then selectorCoordinateOfKey ClassifierKey.k045 else
  if i.val = 46 then selectorCoordinateOfKey ClassifierKey.k046 else
  if i.val = 47 then selectorCoordinateOfKey ClassifierKey.k047 else
  if i.val = 48 then selectorCoordinateOfKey ClassifierKey.k048 else
  if i.val = 49 then selectorCoordinateOfKey ClassifierKey.k049 else
  if i.val = 50 then selectorCoordinateOfKey ClassifierKey.k050 else
  if i.val = 51 then selectorCoordinateOfKey ClassifierKey.k051 else
  if i.val = 52 then selectorCoordinateOfKey ClassifierKey.k052 else
  if i.val = 53 then selectorCoordinateOfKey ClassifierKey.k053 else
  if i.val = 54 then selectorCoordinateOfKey ClassifierKey.k054 else
  if i.val = 55 then selectorCoordinateOfKey ClassifierKey.k055 else
  if i.val = 56 then selectorCoordinateOfKey ClassifierKey.k056 else
  if i.val = 57 then selectorCoordinateOfKey ClassifierKey.k057 else
  if i.val = 58 then selectorCoordinateOfKey ClassifierKey.k058 else
  if i.val = 59 then selectorCoordinateOfKey ClassifierKey.k059 else
  if i.val = 60 then selectorCoordinateOfKey ClassifierKey.k060 else
  if i.val = 61 then selectorCoordinateOfKey ClassifierKey.k061 else
  if i.val = 62 then selectorCoordinateOfKey ClassifierKey.k062 else
  if i.val = 63 then selectorCoordinateOfKey ClassifierKey.k063 else
  if i.val = 64 then selectorCoordinateOfKey ClassifierKey.k064 else
  if i.val = 65 then selectorCoordinateOfKey ClassifierKey.k065 else
  if i.val = 66 then selectorCoordinateOfKey ClassifierKey.k066 else
  if i.val = 67 then selectorCoordinateOfKey ClassifierKey.k067 else
  if i.val = 68 then selectorCoordinateOfKey ClassifierKey.k068 else
  if i.val = 69 then selectorCoordinateOfKey ClassifierKey.k069 else
  if i.val = 70 then selectorCoordinateOfKey ClassifierKey.k070 else
  if i.val = 71 then selectorCoordinateOfKey ClassifierKey.k071 else
  if i.val = 72 then selectorCoordinateOfKey ClassifierKey.k072 else
  if i.val = 73 then selectorCoordinateOfKey ClassifierKey.k073 else
  if i.val = 74 then selectorCoordinateOfKey ClassifierKey.k074 else
  if i.val = 75 then selectorCoordinateOfKey ClassifierKey.k075 else
  if i.val = 76 then selectorCoordinateOfKey ClassifierKey.k076 else
  if i.val = 77 then selectorCoordinateOfKey ClassifierKey.k077 else
  if i.val = 78 then selectorCoordinateOfKey ClassifierKey.k078 else
  if i.val = 79 then selectorCoordinateOfKey ClassifierKey.k079 else
  if i.val = 80 then selectorCoordinateOfKey ClassifierKey.k080 else
  if i.val = 81 then selectorCoordinateOfKey ClassifierKey.k081 else
  if i.val = 82 then selectorCoordinateOfKey ClassifierKey.k082 else
  if i.val = 83 then selectorCoordinateOfKey ClassifierKey.k083 else
  if i.val = 84 then selectorCoordinateOfKey ClassifierKey.k084 else
  if i.val = 85 then selectorCoordinateOfKey ClassifierKey.k085 else
  if i.val = 86 then selectorCoordinateOfKey ClassifierKey.k086 else
  if i.val = 87 then selectorCoordinateOfKey ClassifierKey.k087 else
  if i.val = 88 then selectorCoordinateOfKey ClassifierKey.k088 else
  if i.val = 89 then selectorCoordinateOfKey ClassifierKey.k089 else
  if i.val = 90 then selectorCoordinateOfKey ClassifierKey.k090 else
  if i.val = 91 then selectorCoordinateOfKey ClassifierKey.k091 else
  if i.val = 92 then selectorCoordinateOfKey ClassifierKey.k092 else
  if i.val = 93 then selectorCoordinateOfKey ClassifierKey.k093 else
  if i.val = 94 then selectorCoordinateOfKey ClassifierKey.k094 else
  if i.val = 95 then selectorCoordinateOfKey ClassifierKey.k095 else
  if i.val = 96 then selectorCoordinateOfKey ClassifierKey.k096 else
  if i.val = 97 then selectorCoordinateOfKey ClassifierKey.k097 else
  if i.val = 98 then selectorCoordinateOfKey ClassifierKey.k098 else
  if i.val = 99 then selectorCoordinateOfKey ClassifierKey.k099 else
  if i.val = 100 then selectorCoordinateOfKey ClassifierKey.k100 else
  if i.val = 101 then selectorCoordinateOfKey ClassifierKey.k101 else
  if i.val = 102 then selectorCoordinateOfKey ClassifierKey.k102 else
  if i.val = 103 then selectorCoordinateOfKey ClassifierKey.k103 else
  if i.val = 104 then selectorCoordinateOfKey ClassifierKey.k104 else
  if i.val = 105 then selectorCoordinateOfKey ClassifierKey.k105 else
  if i.val = 106 then selectorCoordinateOfKey ClassifierKey.k106 else
  if i.val = 107 then selectorCoordinateOfKey ClassifierKey.k107 else
  if i.val = 108 then selectorCoordinateOfKey ClassifierKey.k108 else
  if i.val = 109 then selectorCoordinateOfKey ClassifierKey.k109 else
  if i.val = 110 then selectorCoordinateOfKey ClassifierKey.k110 else
  if i.val = 111 then selectorCoordinateOfKey ClassifierKey.k111 else
  if i.val = 112 then selectorCoordinateOfKey ClassifierKey.k112 else
  if i.val = 113 then selectorCoordinateOfKey ClassifierKey.k113 else
  if i.val = 114 then selectorCoordinateOfKey ClassifierKey.k114 else
  if i.val = 115 then selectorCoordinateOfKey ClassifierKey.k115 else
  if i.val = 116 then selectorCoordinateOfKey ClassifierKey.k116 else
  if i.val = 117 then selectorCoordinateOfKey ClassifierKey.k117 else
  if i.val = 118 then selectorCoordinateOfKey ClassifierKey.k118 else
  if i.val = 119 then selectorCoordinateOfKey ClassifierKey.k119 else
  if i.val = 120 then selectorCoordinateOfKey ClassifierKey.k120 else
  if i.val = 121 then selectorCoordinateOfKey ClassifierKey.k121 else
  if i.val = 122 then selectorCoordinateOfKey ClassifierKey.k122 else
  if i.val = 123 then selectorCoordinateOfKey ClassifierKey.k123 else
  if i.val = 124 then selectorCoordinateOfKey ClassifierKey.k124 else
  selectorCoordinateOfKey ClassifierKey.k000

theorem selectorCoordinateAt_toFin (key : ClassifierKey) :
    selectorCoordinateAt key.toFin = selectorCoordinateOfKey key := by
  cases key <;> rfl

/-- Smoke theorem: every generated classifier key has a public selector coordinate. -/
theorem selectorCoordinateSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke
