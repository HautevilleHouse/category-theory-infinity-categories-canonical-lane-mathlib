import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInfinityCategoriesCanonicalLaneLean

structure SimplicialSet where
  simpObj : ℕ → Type u
  faceMaps : (n : ℕ) → (i : Fin (n+2)) → simpObj (n+1) → simpObj n
  degeneracyMaps : (n : ℕ) → (i : Fin (n+1)) → simpObj n → simpObj (n+1)
  simplicialIdentities : Prop

structure SimplicialSetEvidence (S : SimplicialSet) where
  simplicialIdentitiesClosed : S.simplicialIdentities

def SimplicialSetClosed (S : SimplicialSet) : Prop := S.simplicialIdentities

theorem simplicial_set_closed_from_evidence (S : SimplicialSet) (E : SimplicialSetEvidence S) : SimplicialSetClosed S := by
  exact E.simplicialIdentitiesClosed

end CategoryTheoryInfinityCategoriesCanonicalLaneLean
end HautevilleHouse