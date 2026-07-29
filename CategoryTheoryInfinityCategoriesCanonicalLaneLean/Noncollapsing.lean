import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInfinityCategoriesCanonicalLaneLean

structure NoncollapsingPackage where
  hornFillerUniqueness : Prop
  kaniFibrationProperty : Prop
  compositionSelectionConsistent : Prop

structure NoncollapsingEvidence (N : NoncollapsingPackage) where
  hornFillerUniquenessClosed : N.hornFillerUniqueness
  kaniFibrationPropertyClosed : N.kaniFibrationProperty
  compositionSelectionConsistentClosed : N.compositionSelectionConsistent

def NoncollapsingClosed (N : NoncollapsingPackage) : Prop :=
  N.hornFillerUniqueness ∧ N.kaniFibrationProperty ∧ N.compositionSelectionConsistent

theorem noncollapsing_closed_from_evidence
    (N : NoncollapsingPackage) (E : NoncollapsingEvidence N) :
    NoncollapsingClosed N := by
  exact And.intro E.hornFillerUniquenessClosed
    (And.intro E.kaniFibrationPropertyClosed E.compositionSelectionConsistentClosed)

end CategoryTheoryInfinityCategoriesCanonicalLaneLean
end HautevilleHouse