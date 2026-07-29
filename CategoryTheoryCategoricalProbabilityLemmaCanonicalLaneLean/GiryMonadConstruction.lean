import CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean.YonedaEmbeddingBridge

namespace HautevilleHouse
namespace CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean

structure GiryMonadPackage (M : MonadCategory) where
  spaceAssignment : M.obj -> MeasurableSpace
  markovKernel : Prop
  functoriality : Prop
  lawOfTotalProbability : Prop

structure GiryMonadEvidence {M : MonadCategory} (G : GiryMonadPackage M) where
  functorialityClosed : G.functoriality
  lawOfTotalProbabilityClosed : G.lawOfTotalProbability

def GiryMonadClosed {M : MonadCategory} (G : GiryMonadPackage M) : Prop :=
  G.functoriality ∧ G.lawOfTotalProbability

theorem giry_monad_closed_from_evidence
    {M : MonadCategory} (G : GiryMonadPackage M) (E : GiryMonadEvidence G) :
    GiryMonadClosed G := by
  exact And.intro E.functorialityClosed E.lawOfTotalProbabilityClosed

end CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean
end HautevilleHouse