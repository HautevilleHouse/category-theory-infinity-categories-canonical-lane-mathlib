import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInfinityCategoriesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  InfinityCategoryWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CategoryTheoryInfinityCategoriesCanonicalLaneLean
end HautevilleHouse