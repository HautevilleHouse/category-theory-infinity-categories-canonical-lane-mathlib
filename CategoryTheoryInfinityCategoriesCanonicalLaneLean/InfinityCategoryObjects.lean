import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInfinityCategoriesCanonicalLaneLean

structure InfinityCategory where
  carrier : Type
  simplicialSet : Type
  isQuasiCategory : Prop
  nerve : Type

structure InfinityCategoryAdmittedObject where
  cat : InfinityCategory
  isQuasiCategoryProp : cat.isQuasiCategory
  nerveHomotopyEquivalence : Prop
  conclusion : nerveHomotopyEquivalence

def InfinityCategoryWitnessClosed (O : InfinityCategoryAdmittedObject) : Prop :=
  O.nerveHomotopyEquivalence

end CategoryTheoryInfinityCategoriesCanonicalLaneLean
end HautevilleHouse