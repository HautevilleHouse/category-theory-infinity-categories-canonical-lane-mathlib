import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInfinityCategoriesCanonicalLaneLean

structure InfinityAdmittedObject where
  categoryObject : Type u
  yonedaSatisfied : Prop
  adjointCondition : Prop
  limitColimitCondition : Prop
  infinityCategoryCondition : Prop
  equivalenceCondition : Prop
  conclusion : yonedaSatisfied ∧ adjointCondition ∧ limitColimitCondition ∧ infinityCategoryCondition ∧ equivalenceCondition

structure AdmissibleClass where
  object : InfinityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.yonedaSatisfied ∧ A.object.adjointCondition ∧ A.object.limitColimitCondition ∧ A.object.infinityCategoryCondition ∧ A.object.equivalenceCondition) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoryTheoryInfinityCategoriesCanonicalLaneLean
end HautevilleHouse