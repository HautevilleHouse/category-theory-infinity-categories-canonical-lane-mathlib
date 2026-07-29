import HautevilleHouse.CategoryTheoryInfinityCategoriesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInfinityCategoriesCanonicalLaneLean

structure InfinityCategoryObject where
  carrier : Type u
  morphism : carrier → carrier → Type v
  identity : (x : carrier) → morphism x x
  composition : {x y z : carrier} → morphism x y → morphism y z → morphism x z
  associativity : Prop
  unitality : Prop
  coherence : Prop

structure InfinityCategoryEvidence (C : InfinityCategoryObject) where
  associativityClosed : C.associativity
  unitalityClosed : C.unitality
  coherenceClosed : C.coherence

def InfinityCategoryClosed (C : InfinityCategoryObject) : Prop :=
  C.associativity ∧ C.unitality ∧ C.coherence

theorem infinity_category_closed_from_evidence (C : InfinityCategoryObject)
    (E : InfinityCategoryEvidence C) : InfinityCategoryClosed C := by
  exact And.intro E.associativityClosed
    (And.intro E.unitalityClosed E.coherenceClosed)

end CategoryTheoryInfinityCategoriesCanonicalLaneLean
end HautevilleHouse