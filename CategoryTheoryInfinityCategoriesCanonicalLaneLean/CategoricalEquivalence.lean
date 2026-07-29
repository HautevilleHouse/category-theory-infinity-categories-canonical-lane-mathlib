import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInfinityCategoriesCanonicalLaneLean

structure CategoricalEquivalencePackage where
  categoryA : Type u
  categoryB : Type v
  functorForward : Type w
  functorBackward : Type x
  naturalIsomorphisms : Prop
  equivalenceCondition : Prop

structure CategoricalEquivalenceEvidence (E : CategoricalEquivalencePackage) where
  naturalIsomorphismsClosed : E.naturalIsomorphisms
  equivalenceConditionClosed : E.equivalenceCondition

def CategoricalEquivalenceClosed (E : CategoricalEquivalencePackage) : Prop :=
  E.naturalIsomorphisms ∧ E.equivalenceCondition

theorem categorical_equivalence_closed_from_evidence (E : CategoricalEquivalencePackage) (Ev : CategoricalEquivalenceEvidence E) :
    CategoricalEquivalenceClosed E := by
  exact And.intro Ev.naturalIsomorphismsClosed Ev.equivalenceConditionClosed

end CategoryTheoryInfinityCategoriesCanonicalLaneLean
end HautevilleHouse