import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean

structure CategoryObject where
  carrier : Type u
  identityMorphism : carrier → carrier
  composition : carrier → carrier → carrier → carrier
  identityLeft : ∀ (x : carrier), composition (identityMorphism x) x x = x
  identityRight : ∀ (x : carrier), composition x (identityMorphism x) x = x
  associativity : ∀ (x y z w : carrier), composition (composition x y z) z w = composition x (composition y z w)

structure CategoryAdmittedObject where
  obj : CategoryObject
  categoryLawsHold : Prop
  conclusion : categoryLawsHold

def CategoryWitnessClosed (O : CategoryAdmittedObject) : Prop :=
  O.categoryLawsHold

end CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean
end HautevilleHouse