import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryInfinityCategoriesCanonicalLaneLean.InfinityCategoryDefinitions

namespace HautevilleHouse
namespace CategoryTheoryInfinityCategoriesCanonicalLaneLean

structure AdjunctionPackage where
  leftFunctor : InfinityFunctor
  rightFunctor : InfinityFunctor
  unit : Prop
  counit : Prop
  triangleIdentities : Prop

structure AdjunctionEvidence (P : AdjunctionPackage) where
  unitClosed : P.unit
  counitClosed : P.counit
  triangleIdentitiesClosed : P.triangleIdentities

def AdjunctionClosed (P : AdjunctionPackage) : Prop :=
  P.unit ∧ P.counit ∧ P.triangleIdentities

theorem adjunction_closed_from_evidence (P : AdjunctionPackage) (E : AdjunctionEvidence P) :
    AdjunctionClosed P := by
  exact And.intro E.unitClosed (And.intro E.counitClosed E.triangleIdentitiesClosed)

end CategoryTheoryInfinityCategoriesCanonicalLaneLean
end HautevilleHouse