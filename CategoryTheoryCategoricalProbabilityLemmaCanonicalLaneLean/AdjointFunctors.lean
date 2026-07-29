import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean.CategoryObjects

namespace HautevilleHouse
namespace CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean

structure Functor (C D : CategoryObject) where
  objectMap : C.carrier → D.carrier
  morphismMap : (f : C.carrier) → D.carrier
  functoriality : Prop
  identityPreservation : Prop
  compositionPreservation : Prop
  functorialityTerm : functoriality
  identityPreservationTerm : identityPreservation
  compositionPreservationTerm : compositionPreservation

structure NaturalTransformation (C D : CategoryObject) (F G : Functor C D) where
  component : (x : C.carrier) → (F.objectMap x).carrier → (G.objectMap x).carrier
  naturality : Prop
  naturalityTerm : naturality

structure Adjunction (C D : CategoryObject) (F : Functor C D) (G : Functor D C) where
  unit : NaturalTransformation C C (Functor.id C) (Functor.comp F G)
  counit : NaturalTransformation D D (Functor.comp G F) (Functor.id D)
  triangleIdentities : Prop
  triangleIdentitiesTerm : triangleIdentities

end HautevilleHouse
end CategoryTheoryCategoricalProbabilityLemmaCanonicalLaneLean