import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke
import Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.TemplateLanguage

/-!
Generated DU.9H selector-coordinate smoke.

This module exposes the deterministic coordinate identified by the
DU.9H audit: template + source indices + row-property digest.  It does
not prove bounded classifier completeness by itself.
-/

namespace Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke

open Cuboctahedron.Generated.Coverage
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.MembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.PairSignProducerMembershipBridge
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexState
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateClassifierDU3Smoke
open Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.TemplateLanguage

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

/-- Lightweight generated lookup by DU.9H selector coordinate. -/
def keyOfSelectorCoordinate? (coord : SelectorCoordinate) : Option ClassifierKey :=
  if coord = selectorCoordinateOfKey ClassifierKey.k000 then some ClassifierKey.k000 else
  if coord = selectorCoordinateOfKey ClassifierKey.k001 then some ClassifierKey.k001 else
  if coord = selectorCoordinateOfKey ClassifierKey.k002 then some ClassifierKey.k002 else
  if coord = selectorCoordinateOfKey ClassifierKey.k003 then some ClassifierKey.k003 else
  if coord = selectorCoordinateOfKey ClassifierKey.k004 then some ClassifierKey.k004 else
  if coord = selectorCoordinateOfKey ClassifierKey.k005 then some ClassifierKey.k005 else
  if coord = selectorCoordinateOfKey ClassifierKey.k006 then some ClassifierKey.k006 else
  if coord = selectorCoordinateOfKey ClassifierKey.k007 then some ClassifierKey.k007 else
  if coord = selectorCoordinateOfKey ClassifierKey.k008 then some ClassifierKey.k008 else
  if coord = selectorCoordinateOfKey ClassifierKey.k009 then some ClassifierKey.k009 else
  if coord = selectorCoordinateOfKey ClassifierKey.k010 then some ClassifierKey.k010 else
  if coord = selectorCoordinateOfKey ClassifierKey.k011 then some ClassifierKey.k011 else
  if coord = selectorCoordinateOfKey ClassifierKey.k012 then some ClassifierKey.k012 else
  if coord = selectorCoordinateOfKey ClassifierKey.k013 then some ClassifierKey.k013 else
  if coord = selectorCoordinateOfKey ClassifierKey.k014 then some ClassifierKey.k014 else
  if coord = selectorCoordinateOfKey ClassifierKey.k015 then some ClassifierKey.k015 else
  if coord = selectorCoordinateOfKey ClassifierKey.k016 then some ClassifierKey.k016 else
  if coord = selectorCoordinateOfKey ClassifierKey.k017 then some ClassifierKey.k017 else
  if coord = selectorCoordinateOfKey ClassifierKey.k018 then some ClassifierKey.k018 else
  if coord = selectorCoordinateOfKey ClassifierKey.k019 then some ClassifierKey.k019 else
  if coord = selectorCoordinateOfKey ClassifierKey.k020 then some ClassifierKey.k020 else
  if coord = selectorCoordinateOfKey ClassifierKey.k021 then some ClassifierKey.k021 else
  if coord = selectorCoordinateOfKey ClassifierKey.k022 then some ClassifierKey.k022 else
  if coord = selectorCoordinateOfKey ClassifierKey.k023 then some ClassifierKey.k023 else
  if coord = selectorCoordinateOfKey ClassifierKey.k024 then some ClassifierKey.k024 else
  if coord = selectorCoordinateOfKey ClassifierKey.k025 then some ClassifierKey.k025 else
  if coord = selectorCoordinateOfKey ClassifierKey.k026 then some ClassifierKey.k026 else
  if coord = selectorCoordinateOfKey ClassifierKey.k027 then some ClassifierKey.k027 else
  if coord = selectorCoordinateOfKey ClassifierKey.k028 then some ClassifierKey.k028 else
  if coord = selectorCoordinateOfKey ClassifierKey.k029 then some ClassifierKey.k029 else
  if coord = selectorCoordinateOfKey ClassifierKey.k030 then some ClassifierKey.k030 else
  if coord = selectorCoordinateOfKey ClassifierKey.k031 then some ClassifierKey.k031 else
  if coord = selectorCoordinateOfKey ClassifierKey.k032 then some ClassifierKey.k032 else
  if coord = selectorCoordinateOfKey ClassifierKey.k033 then some ClassifierKey.k033 else
  if coord = selectorCoordinateOfKey ClassifierKey.k034 then some ClassifierKey.k034 else
  if coord = selectorCoordinateOfKey ClassifierKey.k035 then some ClassifierKey.k035 else
  if coord = selectorCoordinateOfKey ClassifierKey.k036 then some ClassifierKey.k036 else
  if coord = selectorCoordinateOfKey ClassifierKey.k037 then some ClassifierKey.k037 else
  if coord = selectorCoordinateOfKey ClassifierKey.k038 then some ClassifierKey.k038 else
  if coord = selectorCoordinateOfKey ClassifierKey.k039 then some ClassifierKey.k039 else
  if coord = selectorCoordinateOfKey ClassifierKey.k040 then some ClassifierKey.k040 else
  if coord = selectorCoordinateOfKey ClassifierKey.k041 then some ClassifierKey.k041 else
  if coord = selectorCoordinateOfKey ClassifierKey.k042 then some ClassifierKey.k042 else
  if coord = selectorCoordinateOfKey ClassifierKey.k043 then some ClassifierKey.k043 else
  if coord = selectorCoordinateOfKey ClassifierKey.k044 then some ClassifierKey.k044 else
  if coord = selectorCoordinateOfKey ClassifierKey.k045 then some ClassifierKey.k045 else
  if coord = selectorCoordinateOfKey ClassifierKey.k046 then some ClassifierKey.k046 else
  if coord = selectorCoordinateOfKey ClassifierKey.k047 then some ClassifierKey.k047 else
  if coord = selectorCoordinateOfKey ClassifierKey.k048 then some ClassifierKey.k048 else
  if coord = selectorCoordinateOfKey ClassifierKey.k049 then some ClassifierKey.k049 else
  if coord = selectorCoordinateOfKey ClassifierKey.k050 then some ClassifierKey.k050 else
  if coord = selectorCoordinateOfKey ClassifierKey.k051 then some ClassifierKey.k051 else
  if coord = selectorCoordinateOfKey ClassifierKey.k052 then some ClassifierKey.k052 else
  if coord = selectorCoordinateOfKey ClassifierKey.k053 then some ClassifierKey.k053 else
  if coord = selectorCoordinateOfKey ClassifierKey.k054 then some ClassifierKey.k054 else
  if coord = selectorCoordinateOfKey ClassifierKey.k055 then some ClassifierKey.k055 else
  if coord = selectorCoordinateOfKey ClassifierKey.k056 then some ClassifierKey.k056 else
  if coord = selectorCoordinateOfKey ClassifierKey.k057 then some ClassifierKey.k057 else
  if coord = selectorCoordinateOfKey ClassifierKey.k058 then some ClassifierKey.k058 else
  if coord = selectorCoordinateOfKey ClassifierKey.k059 then some ClassifierKey.k059 else
  if coord = selectorCoordinateOfKey ClassifierKey.k060 then some ClassifierKey.k060 else
  if coord = selectorCoordinateOfKey ClassifierKey.k061 then some ClassifierKey.k061 else
  if coord = selectorCoordinateOfKey ClassifierKey.k062 then some ClassifierKey.k062 else
  if coord = selectorCoordinateOfKey ClassifierKey.k063 then some ClassifierKey.k063 else
  if coord = selectorCoordinateOfKey ClassifierKey.k064 then some ClassifierKey.k064 else
  if coord = selectorCoordinateOfKey ClassifierKey.k065 then some ClassifierKey.k065 else
  if coord = selectorCoordinateOfKey ClassifierKey.k066 then some ClassifierKey.k066 else
  if coord = selectorCoordinateOfKey ClassifierKey.k067 then some ClassifierKey.k067 else
  if coord = selectorCoordinateOfKey ClassifierKey.k068 then some ClassifierKey.k068 else
  if coord = selectorCoordinateOfKey ClassifierKey.k069 then some ClassifierKey.k069 else
  if coord = selectorCoordinateOfKey ClassifierKey.k070 then some ClassifierKey.k070 else
  if coord = selectorCoordinateOfKey ClassifierKey.k071 then some ClassifierKey.k071 else
  if coord = selectorCoordinateOfKey ClassifierKey.k072 then some ClassifierKey.k072 else
  if coord = selectorCoordinateOfKey ClassifierKey.k073 then some ClassifierKey.k073 else
  if coord = selectorCoordinateOfKey ClassifierKey.k074 then some ClassifierKey.k074 else
  if coord = selectorCoordinateOfKey ClassifierKey.k075 then some ClassifierKey.k075 else
  if coord = selectorCoordinateOfKey ClassifierKey.k076 then some ClassifierKey.k076 else
  if coord = selectorCoordinateOfKey ClassifierKey.k077 then some ClassifierKey.k077 else
  if coord = selectorCoordinateOfKey ClassifierKey.k078 then some ClassifierKey.k078 else
  if coord = selectorCoordinateOfKey ClassifierKey.k079 then some ClassifierKey.k079 else
  if coord = selectorCoordinateOfKey ClassifierKey.k080 then some ClassifierKey.k080 else
  if coord = selectorCoordinateOfKey ClassifierKey.k081 then some ClassifierKey.k081 else
  if coord = selectorCoordinateOfKey ClassifierKey.k082 then some ClassifierKey.k082 else
  if coord = selectorCoordinateOfKey ClassifierKey.k083 then some ClassifierKey.k083 else
  if coord = selectorCoordinateOfKey ClassifierKey.k084 then some ClassifierKey.k084 else
  if coord = selectorCoordinateOfKey ClassifierKey.k085 then some ClassifierKey.k085 else
  if coord = selectorCoordinateOfKey ClassifierKey.k086 then some ClassifierKey.k086 else
  if coord = selectorCoordinateOfKey ClassifierKey.k087 then some ClassifierKey.k087 else
  if coord = selectorCoordinateOfKey ClassifierKey.k088 then some ClassifierKey.k088 else
  if coord = selectorCoordinateOfKey ClassifierKey.k089 then some ClassifierKey.k089 else
  if coord = selectorCoordinateOfKey ClassifierKey.k090 then some ClassifierKey.k090 else
  if coord = selectorCoordinateOfKey ClassifierKey.k091 then some ClassifierKey.k091 else
  if coord = selectorCoordinateOfKey ClassifierKey.k092 then some ClassifierKey.k092 else
  if coord = selectorCoordinateOfKey ClassifierKey.k093 then some ClassifierKey.k093 else
  if coord = selectorCoordinateOfKey ClassifierKey.k094 then some ClassifierKey.k094 else
  if coord = selectorCoordinateOfKey ClassifierKey.k095 then some ClassifierKey.k095 else
  if coord = selectorCoordinateOfKey ClassifierKey.k096 then some ClassifierKey.k096 else
  if coord = selectorCoordinateOfKey ClassifierKey.k097 then some ClassifierKey.k097 else
  if coord = selectorCoordinateOfKey ClassifierKey.k098 then some ClassifierKey.k098 else
  if coord = selectorCoordinateOfKey ClassifierKey.k099 then some ClassifierKey.k099 else
  if coord = selectorCoordinateOfKey ClassifierKey.k100 then some ClassifierKey.k100 else
  if coord = selectorCoordinateOfKey ClassifierKey.k101 then some ClassifierKey.k101 else
  if coord = selectorCoordinateOfKey ClassifierKey.k102 then some ClassifierKey.k102 else
  if coord = selectorCoordinateOfKey ClassifierKey.k103 then some ClassifierKey.k103 else
  if coord = selectorCoordinateOfKey ClassifierKey.k104 then some ClassifierKey.k104 else
  if coord = selectorCoordinateOfKey ClassifierKey.k105 then some ClassifierKey.k105 else
  if coord = selectorCoordinateOfKey ClassifierKey.k106 then some ClassifierKey.k106 else
  if coord = selectorCoordinateOfKey ClassifierKey.k107 then some ClassifierKey.k107 else
  if coord = selectorCoordinateOfKey ClassifierKey.k108 then some ClassifierKey.k108 else
  if coord = selectorCoordinateOfKey ClassifierKey.k109 then some ClassifierKey.k109 else
  if coord = selectorCoordinateOfKey ClassifierKey.k110 then some ClassifierKey.k110 else
  if coord = selectorCoordinateOfKey ClassifierKey.k111 then some ClassifierKey.k111 else
  if coord = selectorCoordinateOfKey ClassifierKey.k112 then some ClassifierKey.k112 else
  if coord = selectorCoordinateOfKey ClassifierKey.k113 then some ClassifierKey.k113 else
  if coord = selectorCoordinateOfKey ClassifierKey.k114 then some ClassifierKey.k114 else
  if coord = selectorCoordinateOfKey ClassifierKey.k115 then some ClassifierKey.k115 else
  if coord = selectorCoordinateOfKey ClassifierKey.k116 then some ClassifierKey.k116 else
  if coord = selectorCoordinateOfKey ClassifierKey.k117 then some ClassifierKey.k117 else
  if coord = selectorCoordinateOfKey ClassifierKey.k118 then some ClassifierKey.k118 else
  if coord = selectorCoordinateOfKey ClassifierKey.k119 then some ClassifierKey.k119 else
  if coord = selectorCoordinateOfKey ClassifierKey.k120 then some ClassifierKey.k120 else
  if coord = selectorCoordinateOfKey ClassifierKey.k121 then some ClassifierKey.k121 else
  if coord = selectorCoordinateOfKey ClassifierKey.k122 then some ClassifierKey.k122 else
  if coord = selectorCoordinateOfKey ClassifierKey.k123 then some ClassifierKey.k123 else
  if coord = selectorCoordinateOfKey ClassifierKey.k124 then some ClassifierKey.k124 else
  none

/-- The selector lookup recognizes every generated classifier key.

This is intentionally weaker than a full pairwise injectivity theorem: the
all-pairs proof expands to 15,625 cases and timed out under the guarded
smoke.  The lookup theorem is the proof-usable direction needed by
future generated selector witnesses. -/
theorem keyOfSelectorCoordinate?_selectorCoordinateOfKey
    (key : ClassifierKey) :
    keyOfSelectorCoordinate? (selectorCoordinateOfKey key) = some key := by
  cases key <;> rfl

/-- Source/row facts for the key recovered from a selector coordinate. -/
def SelectorCoordinateSourceRowFacts
    (coord : SelectorCoordinate) (rank : Nat) (mask : SignMask) : Prop :=
  match keyOfSelectorCoordinate? coord with
  | some key =>
      SourceIndexStateSourceFacts key.toSourceIndexStateKey rank mask /\
        SourceIndexStateRowFacts key.toSourceIndexStateKey rank mask
  | none => False

theorem selectorCoordinateSourceRowFacts_of_key
    {key : ClassifierKey} {rank : Nat} {mask : SignMask}
    (hsource :
      SourceIndexStateSourceFacts key.toSourceIndexStateKey rank mask)
    (hrows :
      SourceIndexStateRowFacts key.toSourceIndexStateKey rank mask) :
    SelectorCoordinateSourceRowFacts
      (selectorCoordinateOfKey key) rank mask := by
  unfold SelectorCoordinateSourceRowFacts
  rw [keyOfSelectorCoordinate?_selectorCoordinateOfKey]
  exact ⟨hsource, hrows⟩

/--
Selector-coordinate catalog target for generated bounded DU.9 membership proofs.

A future generated module can provide a compact coordinate selector plus facts
for the key recovered by `keyOfSelectorCoordinate?`; this theorem surface
then erases it to the existing finite source/row catalog API without
exporting the selector data as final coverage.
-/
abbrev SelectorCoordinateFactsGoodCatalogOnRange
    (coordAt : Nat -> SignMask -> SelectorCoordinate)
    (lo hi : Nat) : Prop :=
  forall {rank : Nat} {mask : SignMask} (hlt : rank < numPairWords),
    lo <= rank ->
      rank < hi ->
        totalLinearOfPairWord (unrankPairWord ⟨rank, hlt⟩) =
            (matId : Mat3 Rat) ->
          GoodDirectionAtRank ⟨rank, hlt⟩ mask ->
            SelectorCoordinateSourceRowFacts (coordAt rank mask) rank mask

theorem SelectorCoordinateFactsGoodCatalogOnRange.to_sourceIndexFactsCatalog
    {coordAt : Nat -> SignMask -> SelectorCoordinate}
    (catalog : SelectorCoordinateFactsGoodCatalogOnRange coordAt 0 5000) :
    SourceRowFactsGoodCatalogOnRange classifierSourceIndexKeyAt 0 5000 := by
  intro rank mask hlt hlo hhi hM hgood
  have hfacts := catalog hlt hlo hhi hM hgood
  unfold SelectorCoordinateSourceRowFacts at hfacts
  cases hkey : keyOfSelectorCoordinate? (coordAt rank mask) with
  | none =>
      simp [hkey] at hfacts
  | some key =>
      simp [hkey] at hfacts
      rcases hfacts with ⟨hsource, hrows⟩
      have hlookup := classifierSourceIndexKeyAt_toFin key
      exact ⟨key.toFin, by simpa [hlookup] using hsource,
        by simpa [hlookup] using hrows⟩

theorem SelectorCoordinateFactsGoodCatalogOnRange.to_allGoodCoverage
    {coordAt : Nat -> SignMask -> SelectorCoordinate}
    (catalog : SelectorCoordinateFactsGoodCatalogOnRange coordAt 0 5000) :
    AllTranslationGoodCoverageOnRange 0 5000 :=
  SourceRowFactsGoodCatalogOnRange.to_allGoodCoverage
    (SelectorCoordinateFactsGoodCatalogOnRange.to_sourceIndexFactsCatalog catalog)

theorem SelectorCoordinateFactsGoodCatalogOnRange.to_templateLanguageCoverage
    {coordAt : Nat -> SignMask -> SelectorCoordinate}
    (catalog : SelectorCoordinateFactsGoodCatalogOnRange coordAt 0 5000) :
    TemplateLanguageCoverageOnIdentityRange 0 5000 :=
  TemplateLanguageCoverageOnIdentityRange.of_sourceRowFactsCatalog
    (SelectorCoordinateFactsGoodCatalogOnRange.to_sourceIndexFactsCatalog catalog)

theorem SelectorCoordinateFactsGoodCatalogOnRange.to_allGoodCoverage_via_template
    {coordAt : Nat -> SignMask -> SelectorCoordinate}
    (catalog : SelectorCoordinateFactsGoodCatalogOnRange coordAt 0 5000) :
    AllTranslationGoodCoverageOnRange 0 5000 :=
  TemplateLanguageCoverageOnIdentityRange.to_allGoodCoverage
    (SelectorCoordinateFactsGoodCatalogOnRange.to_templateLanguageCoverage catalog)

/-- Smoke theorem: every generated classifier key has a public selector coordinate. -/
theorem selectorCoordinateSmoke_builds : True := by
  trivial

end Cuboctahedron.Generated.Translation.TwoSource.SupportFamilies.SourceIndexStateSelectorDU9HSmoke
