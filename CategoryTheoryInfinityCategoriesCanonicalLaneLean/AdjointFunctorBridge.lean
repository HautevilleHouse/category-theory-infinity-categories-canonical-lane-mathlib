import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInfinityCategoriesCanonicalLaneLean

structure AdjointFunctorPackage where
  leftAdjoint : Type u
  rightAdjoint : Type v
  adjunctionCounit : Prop
  adjunctionUnit : Prop
  triangleIdentities : Prop

structure AdjointFunctorEvidence (A : AdjointFunctorPackage) where
  adjunctionCounitClosed : A.adjunctionCounit
  adjunctionUnitClosed : A.adjunctionUnit
  triangleIdentitiesClosed : A.triangleIdentities

def AdjointFunctorClosed (A : AdjointFunctorPackage) : Prop :=
  A.adjunctionCounit ∧ A.adjunctionUnit ∧ A.triangleIdentities

theorem adjoint_functor_closed_from_evidence (A : AdjointFunctorPackage) (E : AdjointFunctorEvidence A) :
    AdjointFunctorClosed A := by
  exact And.intro E.adjunctionCounitClosed (And.intro E.adjunctionUnitClosed E.triangleIdentitiesClosed)

end CategoryTheoryInfinityCategoriesCanonicalLaneLean
end HautevilleHouse