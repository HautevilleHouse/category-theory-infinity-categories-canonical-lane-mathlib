import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInfinityCategoriesCanonicalLaneLean

structure KanComplexFibration (M : SimplicialSetModel) where
  base : M.carrier
  fiber : M.carrier
  projection : M.carrier → M.carrier
  liftingProperty : Prop
  rightLifting : Prop

structure KanComplexFibrationEvidence (M : SimplicialSetModel) (F : KanComplexFibration M) where
  liftingPropertyClosed : F.liftingProperty
  rightLiftingClosed : F.rightLifting

def KanComplexFibrationClosed (M : SimplicialSetModel) (F : KanComplexFibration M) : Prop :=
  F.liftingProperty ∧ F.rightLifting

theorem kan_complex_fibration_closed_from_evidence (M : SimplicialSetModel) (F : KanComplexFibration M) (E : KanComplexFibrationEvidence M F) :
    KanComplexFibrationClosed M F := by
  exact And.intro E.liftingPropertyClosed E.rightLiftingClosed

end CategoryTheoryInfinityCategoriesCanonicalLaneLean
end HautevilleHouse