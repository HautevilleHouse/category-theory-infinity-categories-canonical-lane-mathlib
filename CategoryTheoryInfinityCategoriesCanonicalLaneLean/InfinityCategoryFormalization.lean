import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInfinityCategoriesCanonicalLaneLean

structure InfinityCategoryAdmittedObject where
  carrier : Type u
  simplicialSet : Type v
  hornFillCondition : Prop
  conclusion : hornFillCondition

def InfinityCategoryWitnessClosed (O : InfinityCategoryAdmittedObject) : Prop :=
  O.hornFillCondition

end CategoryTheoryInfinityCategoriesCanonicalLaneLean
end HautevilleHouse