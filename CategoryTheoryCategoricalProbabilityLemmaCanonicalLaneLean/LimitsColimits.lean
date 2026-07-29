import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean.CategoryObjects

namespace HautevilleHouse
namespace CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean

structure LimitCone (D : Type u → Type u) (J : Type u) (diagram : J → CategoryObject) where
  apex : CategoryObject
  projection : (j : J) → apex.carrier → (diagram j).carrier
  commuting : Prop
  universalProperty : Prop
  universalPropertyTerm : universalProperty

structure ColimitCocone (D : Type u → Type u) (J : Type u) (diagram : J → CategoryObject) where
  apex : CategoryObject
  inclusion : (j : J) → (diagram j).carrier → apex.carrier
  commuting : Prop
  universalProperty : Prop
  universalPropertyTerm : universalProperty

structure CompleteCategory where
  category : CategoryObject
  allLimitsExist : Prop
  allLimitsExistTerm : allLimitsExist

structure CocompleteCategory where
  category : CategoryObject
  allColimitsExist : Prop
  allColimitsExistTerm : allColimitsExist

end HautevilleHouse
end CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean