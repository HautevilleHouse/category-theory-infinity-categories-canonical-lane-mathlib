namespace HautevilleHouse
namespace CategoryTheoryInfinityCategoriesCanonicalLaneLean

structure QuasicategoryPackage where
  simplicialSet : Type u
  hornFillingCondition : Prop
  innerHornsHaveFillers : Prop
  compositionLaw : Prop
  associativityCondition : Prop

structure QuasicategoryEvidence (P : QuasicategoryPackage) where
  hornFillingConditionClosed : P.hornFillingCondition
  innerHornsHaveFillersClosed : P.innerHornsHaveFillers
  compositionLawClosed : P.compositionLaw
  associativityConditionClosed : P.associativityCondition

def QuasicategoryClosed (P : QuasicategoryPackage) : Prop :=
  P.hornFillingCondition ∧ P.innerHornsHaveFillers ∧ P.compositionLaw ∧ P.associativityCondition

theorem quasicategory_closed_from_evidence (P : QuasicategoryPackage) (E : QuasicategoryEvidence P) : QuasicategoryClosed P := by
  exact And.intro E.hornFillingConditionClosed
    (And.intro E.innerHornsHaveFillersClosed
      (And.intro E.compositionLawClosed E.associativityConditionClosed))

end CategoryTheoryInfinityCategoriesCanonicalLaneLean
end HautevilleHouse