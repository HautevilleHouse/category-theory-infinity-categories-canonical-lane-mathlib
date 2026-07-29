import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInfinityCategoriesCanonicalLaneLean

structure InfinityCategoryAdmittedObject where
  simplicialSet : Type u
  isQuasicategory : Prop
  homotopyCategory : Type v
  yonedaEmbedding : Prop
  conclusion : yonedaEmbedding
  derivation : conclusion

end CategoryTheoryInfinityCategoriesCanonicalLaneLean
end HautevilleHouse