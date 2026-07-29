import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean.CategoryObjects

namespace HautevilleHouse
namespace CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean

structure LimitPackage (C : CategoryObject) where
  diagram : Type u → Type u
  cone : Type u → Type u
  universalProperty : Prop
  limitObject : C.carrier
  limitPropertyWitness : universalProperty

structure ColimitPackage (C : CategoryObject) where
  diagram : Type u → Type u
  cocone : Type u → Type u
  universalProperty : Prop
  colimitObject : C.carrier
  colimitPropertyWitness : universalProperty

def LimitClosed {C : CategoryObject} (L : LimitPackage C) : Prop :=
  L.universalProperty

def ColimitClosed {C : CategoryObject} (Co : ColimitPackage C) : Prop :=
  Co.universalProperty

theorem limit_closed_from_evidence {C : CategoryObject} (L : LimitPackage C) :
    LimitClosed L := by
  exact L.limitPropertyWitness

theorem colimit_closed_from_evidence {C : CategoryObject} (Co : ColimitPackage C) :
    ColimitClosed Co := by
  exact Co.colimitPropertyWitness

end CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean
end HautevilleHouse