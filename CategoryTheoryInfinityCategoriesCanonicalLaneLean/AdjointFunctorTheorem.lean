import HautevilleHouse.CategoryTheoryInfinityCategoriesCanonicalLaneLean.InfinityCategoryObject

namespace HautevilleHouse
namespace CategoryTheoryInfinityCategoriesCanonicalLaneLean

structure AdjointFunctorPackage (C D : InfinityCategoryObject) where
  leftAdjoint : C.carrier → D.carrier
  rightAdjoint : D.carrier → C.carrier
  adjunctionIso : Prop
  unitCounit : Prop
  triangleIdentities : Prop

structure AdjointFunctorEvidence {C D : InfinityCategoryObject}
    (A : AdjointFunctorPackage C D) where
  adjunctionIsoClosed : A.adjunctionIso
  unitCounitClosed : A.unitCounit
  triangleIdentitiesClosed : A.triangleIdentities

def AdjointFunctorClosed {C D : InfinityCategoryObject}
    (A : AdjointFunctorPackage C D) : Prop :=
  A.adjunctionIso ∧ A.unitCounit ∧ A.triangleIdentities

theorem adjoint_functor_closed_from_evidence {C D : InfinityCategoryObject}
    (A : AdjointFunctorPackage C D) (E : AdjointFunctorEvidence A) :
    AdjointFunctorClosed A := by
  exact And.intro E.adjunctionIsoClosed
    (And.intro E.unitCounitClosed E.triangleIdentitiesClosed)

end CategoryTheoryInfinityCategoriesCanonicalLaneLean
end HautevilleHouse