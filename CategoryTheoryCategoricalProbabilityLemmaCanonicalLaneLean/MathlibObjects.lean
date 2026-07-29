import canonicalLaneMathlib.AdmissibleClass
import Mathlib.CategoryTheory.Category.Basic
import Mathlib.Probability.Kernel

namespace HautevilleHouse
namespace CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean

structure CategoryTheorySpace where
  carrier : Type u
  category : CategoryTheory.CategoryStruct carrier

structure CategoryTheoryAdmittedObject where
  space : CategoryTheorySpace
  hasLimits : Prop
  hasColimits : Prop
  yonedaEmbedding : Type v
  yonedaTopology : TopologicalSpace yonedaEmbedding
  yonedaFull : Prop
  conclusion : yonedaFull

structure CategoryTheoryEndgameState where
  object : CategoryTheoryAdmittedObject

def CategoryTheoryWitnessClosed (O : CategoryTheoryAdmittedObject) : Prop :=
  O.yonedaFull

end CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean
end HautevilleHouse