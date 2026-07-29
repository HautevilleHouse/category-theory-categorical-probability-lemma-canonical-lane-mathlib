import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.BridgeLemmas
import canonicalLaneMathlib.GateLemmas

/-!
# Categorical Probability Lemma: Final Closure

This module defines the constrained closure for Categorical Probability Lemma
and supplies the epistemological proof via bridge and gate.
-/

namespace HautevilleHouse
namespace CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean

open MeasureTheory
open CategoryTheory

/-- The admissible class for categorical probability. -/
structure CategoricalProbAdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

/-- The closure for categorical probability. -/
def CategoricalProbClosure (A : CategoricalProbAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

/-- The epistemological endgame. -/
theorem categorical_prob_endgame (A : CategoricalProbAdmissibleClass) :
    CategoricalProbClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean
end HautevilleHouse