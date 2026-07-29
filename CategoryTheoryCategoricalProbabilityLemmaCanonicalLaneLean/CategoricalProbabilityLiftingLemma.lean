import CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean.KleisliCategoryCofree

namespace HautevilleHouse
namespace CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean

structure LiftingLemmaPackage {M : MonadCategory} {G : GiryMonadPackage M}
    (K : KleisliCategoryPackage G) where
  liftingCondition : Prop
  probabilityPreservingLift : Prop
  uniquenessOfLift : Prop

structure LiftingLemmaEvidence {M : MonadCategory} {G : GiryMonadPackage M}
    {K : KleisliCategoryPackage G} (L : LiftingLemmaPackage K) where
  liftingConditionClosed : L.liftingCondition
  probabilityPreservingLiftClosed : L.probabilityPreservingLift
  uniquenessOfLiftClosed : L.uniquenessOfLift

def LiftingLemmaClosed {M : MonadCategory} {G : GiryMonadPackage M}
    {K : KleisliCategoryPackage G} (L : LiftingLemmaPackage K) : Prop :=
  L.liftingCondition ∧ L.probabilityPreservingLift ∧ L.uniquenessOfLift

theorem lifting_lemma_closed_from_evidence
    {M : MonadCategory} {G : GiryMonadPackage M}
    {K : KleisliCategoryPackage G} (L : LiftingLemmaPackage K)
    (E : LiftingLemmaEvidence L) : LiftingLemmaClosed L := by
  exact And.intro E.liftingConditionClosed
    (And.intro E.probabilityPreservingLiftClosed E.uniquenessOfLiftClosed)

end CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean
end HautevilleHouse