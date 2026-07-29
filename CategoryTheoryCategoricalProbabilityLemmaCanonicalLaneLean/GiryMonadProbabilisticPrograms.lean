import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Probability.Kernel

/-!
# Giry Monad and Probabilistic Programming

This module frames the Giry monad (the probability monad) and its
categorical semantics as an admissible-class bridge.
-/

namespace HautevilleHouse
namespace CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean

open CategoryTheory
open MeasureTheory

/-- A measurable space. -/
structure MeasurableSpaceObj where
  carrier : Type u
  ms : MeasurableSpace carrier

/-- The Giry monad acting on `M`. -/
structure GiryMonadStructure (M : MeasurableSpaceObj) where
  space : MeasurableSpaceObj
  measurable : MeasurableSpaceObj.ms = M.ms
  kernel : Kernel M.carrier space.carrier

/-- A probability space with a Giry monad structure. -/
structure ProbabilisticProgram (M : MeasurableSpaceObj) where
  giry : GiryMonadStructure M
  program : Kernel M.carrier M.carrier
  categoricalSemantics : Prop

/-- Evidence for a Giry-monad bridge closure. -/
structure GiryMonadEvidence (P : ProbabilisticProgram M) where
  categoricalSemanticsClosed : P.categoricalSemantics

def GiryMonadClosed (P : ProbabilisticProgram M) : Prop :=
  P.categoricalSemantics

theorem giry_monad_closed_from_evidence (P : ProbabilisticProgram M)
    (E : GiryMonadEvidence P) : GiryMonadClosed P :=
  E.categoricalSemanticsClosed

end CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean
end HautevilleHouse