import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean

structure CategoricalProbabilityPackage where
  markovCategory : Type u
  probabilityMeasure : Type v
  disintegration : Prop
  bayesTheorem : Prop
  lawOfTotalProbability : Prop
  fubiniTheorem : Prop

structure CategoricalProbabilityEvidence (P : CategoricalProbabilityPackage) where
  disintegrationClosed : P.disintegration
  bayesTheoremClosed : P.bayesTheorem
  lawOfTotalProbabilityClosed : P.lawOfTotalProbability
  fubiniTheoremClosed : P.fubiniTheorem

def CategoricalProbabilityClosed (P : CategoricalProbabilityPackage) : Prop :=
  P.disintegration ∧ P.bayesTheorem ∧ P.lawOfTotalProbability ∧ P.fubiniTheorem

theorem categorical_probability_closed_from_evidence (P : CategoricalProbabilityPackage) (E : CategoricalProbabilityEvidence P) :
    CategoricalProbabilityClosed P := by
  exact And.intro E.disintegrationClosed (And.intro E.bayesTheoremClosed (And.intro E.lawOfTotalProbabilityClosed E.fubiniTheoremClosed))

end CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean
end HautevilleHouse