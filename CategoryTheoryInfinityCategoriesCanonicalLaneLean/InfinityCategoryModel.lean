import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInfinityCategoriesCanonicalLaneLean

structure SimplicialSetPackage where
  simplexCategory : Type u
  hornFillerCondition : Prop
  innerHornCondition : Prop
  quasicategoryModel : Prop

structure InfinityCategoryEvidence (S : SimplicialSetPackage) where
  hornFillerConditionClosed : S.hornFillerCondition
  innerHornConditionClosed : S.innerHornCondition
  quasicategoryModelClosed : S.quasicategoryModel

def InfinityCategoryClosed (S : SimplicialSetPackage) : Prop :=
  S.hornFillerCondition ∧ S.innerHornCondition ∧ S.quasicategoryModel

theorem infinity_category_closed_from_evidence (S : SimplicialSetPackage) (E : InfinityCategoryEvidence S) :
    InfinityCategoryClosed S := by
  exact And.intro E.hornFillerConditionClosed
    (And.intro E.innerHornConditionClosed E.quasicategoryModelClosed)

end CategoryTheoryInfinityCategoriesCanonicalLaneLean
end HautevilleHouse