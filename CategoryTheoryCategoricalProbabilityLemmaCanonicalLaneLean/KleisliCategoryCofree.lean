import CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean.GiryMonadConstruction

namespace HautevilleHouse
namespace CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean

structure KleisliCategoryPackage {M : MonadCategory} (G : GiryMonadPackage M) where
  kleisliObj : Category
  cofreeFunctor : Functor (coDomain G) kleisliObj
  adjunction : Adjunction (cofreeFunctor) (forgetfulFunctor kleisliObj (coDomain G))

structure KleisliCategoryEvidence {M : MonadCategory} {G : GiryMonadPackage M}
    (K : KleisliCategoryPackage G) where
  adjunctionClosed : K.adjunction

def KleisliCategoryClosed {M : MonadCategory} {G : GiryMonadPackage M}
    (K : KleisliCategoryPackage G) : Prop :=
  K.adjunction

theorem kleisli_category_closed_from_evidence
    {M : MonadCategory} {G : GiryMonadPackage M}
    (K : KleisliCategoryPackage G) (E : KleisliCategoryEvidence K) :
    KleisliCategoryClosed K := by
  exact E.adjunctionClosed

end CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean
end HautevilleHouse