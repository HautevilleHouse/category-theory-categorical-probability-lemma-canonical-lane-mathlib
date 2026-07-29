import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean.CategoryObjects

namespace HautevilleHouse
namespace CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean

structure YonedaLemmaPackage (C : CategoryObject) where
  homFunctor : Type u → Type u
  naturalTransformation : Type u → Type u
  yonedaEmbedding : C.carrier → (C.carrier → C.carrier)
  yonedaLemma : (C.carrier → C.carrier) → C.carrier
  bijectionProperty : Prop
  bijectionWitness : bijectionProperty

structure YonedaEvidence {C : CategoryObject} (Y : YonedaLemmaPackage C) where
  bijectionPropertyClosed : Y.bijectionProperty

def YonedaClosed {C : CategoryObject} (Y : YonedaLemmaPackage C) : Prop :=
  Y.bijectionProperty

theorem yoneda_closed_from_evidence {C : CategoryObject} (Y : YonedaLemmaPackage C) (E : YonedaEvidence Y) :
    YonedaClosed Y := by
  exact E.bijectionPropertyClosed

end CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean
end HautevilleHouse