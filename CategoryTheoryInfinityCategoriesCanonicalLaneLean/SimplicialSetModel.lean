import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInfinityCategoriesCanonicalLaneLean

structure SimplicialSetModel where
  carrier : Type u
  faceMaps : Nat → (carrier → carrier)
  degeneracyMaps : Nat → (carrier → carrier)
  simplicialIdentities : Prop
  hornFillerCondition : Prop

structure SimplicialSetModelEvidence (S : SimplicialSetModel) where
  simplicialIdentitiesClosed : S.simplicialIdentities
  hornFillerConditionClosed : S.hornFillerCondition

def SimplicialSetModelClosed (S : SimplicialSetModel) : Prop :=
  S.simplicialIdentities ∧ S.hornFillerCondition

theorem simplicial_set_model_closed_from_evidence (S : SimplicialSetModel) (E : SimplicialSetModelEvidence S) :
    SimplicialSetModelClosed S := by
  exact And.intro E.simplicialIdentitiesClosed E.hornFillerConditionClosed

end CategoryTheoryInfinityCategoriesCanonicalLaneLean
end HautevilleHouse