import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean
end HautevilleHouse