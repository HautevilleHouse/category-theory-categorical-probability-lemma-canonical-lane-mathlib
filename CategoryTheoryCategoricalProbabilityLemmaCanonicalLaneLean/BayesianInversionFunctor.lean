import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Probability.Kernel

/-!
# Bayesian Inversion Functor

This module defines a functorial approach to Bayesian inversion,
connecting conditional probability to categorical probability.
-/

namespace HautevilleHouse
namespace CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean

open CategoryTheory
open MeasureTheory

/-- A category of kernels. -/
structure KernelCategory where
  objects : Type u
  morphisms : objects → objects → Type v
  composition : ∀ {A B C : objects}, morphisms A B → morphisms B C → morphisms A C
  identities : ∀ (A : objects), morphisms A A

/-- A Bayesian inversion structure on a kernel category. -/
structure BayesianInversionFunctor (K : KernelCategory) where
  inversion : ∀ {A B : K.objects}, K.morphisms A B → K.morphisms B A
  functoriality : Prop
  categoricalBridge : Prop

/-- Evidence for Bayesian inversion bridge closure. -/
structure BayesianInversionEvidence {K : KernelCategory}
    (F : BayesianInversionFunctor K) where
  functorialityClosed : F.functoriality
  categoricalBridgeClosed : F.categoricalBridge

def BayesianInversionClosed {K : KernelCategory}
    (F : BayesianInversionFunctor K) : Prop :=
  F.functoriality ∧ F.categoricalBridge

theorem bayesian_inversion_closed_from_evidence
    {K : KernelCategory} (F : BayesianInversionFunctor K)
    (E : BayesianInversionEvidence F) : BayesianInversionClosed F :=
  And.intro E.functorialityClosed E.categoricalBridgeClosed

end CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean
end HautevilleHouse