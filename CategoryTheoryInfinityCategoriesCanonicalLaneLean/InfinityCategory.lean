import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInfinityCategoriesCanonicalLaneLean

structure InfinityCategory (S : SimplicialSetModel) where
  objects : S.carrier
  morphisms : S.carrier
  source : S.carrier → S.carrier
  target : S.carrier → S.carrier
  composition : S.carrier → S.carrier → S.carrier
  identityMorphism : S.carrier → S.carrier
  associativity : Prop
  unitLaws : Prop

structure InfinityCategoryEvidence (S : SimplicialSetModel) (C : InfinityCategory S) where
  associativityClosed : C.associativity
  unitLawsClosed : C.unitLaws

def InfinityCategoryClosed (S : SimplicialSetModel) (C : InfinityCategory S) : Prop :=
  C.associativity ∧ C.unitLaws

theorem infinity_category_closed_from_evidence (S : SimplicialSetModel) (C : InfinityCategory S) (E : InfinityCategoryEvidence S C) :
    InfinityCategoryClosed S C := by
  exact And.intro E.associativityClosed E.unitLawsClosed

end CategoryTheoryInfinityCategoriesCanonicalLaneLean
end HautevilleHouse