import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean.CategoryObjects

namespace HautevilleHouse
namespace CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean

structure AdjointFunctorPackage (C D : CategoryObject) where
  leftAdjoint : C.carrier → D.carrier
  rightAdjoint : D.carrier → C.carrier
  unit : C.carrier → C.carrier
  counit : D.carrier → D.carrier
  triangleIdentities : Prop
  adjunctionDefined : Prop
  triangleWitness : triangleIdentities

def AdjointFunctorClosed {C D : CategoryObject} (A : AdjointFunctorPackage C D) : Prop :=
  A.triangleIdentities

theorem adjoint_functor_closed_from_evidence {C D : CategoryObject} (A : AdjointFunctorPackage C D) :
    AdjointFunctorClosed A := by
  exact A.triangleWitness

end CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean
end HautevilleHouse