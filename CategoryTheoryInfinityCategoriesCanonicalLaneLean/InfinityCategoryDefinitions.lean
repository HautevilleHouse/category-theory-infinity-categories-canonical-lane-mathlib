import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInfinityCategoriesCanonicalLaneLean

structure SimplexCategory where
  objects : ℕ → Type
  morphisms : (n m : ℕ) → objects n → objects m → Type
  composition : Prop
  identity : Prop

structure InfinityCategory where
  simplicialSet : SimplexCategory → Set
  hornFillingCondition : (n : ℕ) → (k : Fin (n+1)) → Prop
  innerHornFilled : Prop

structure InfinityFunctor (C D : InfinityCategory) where
  onObjects : C.simplicialSet 0 → D.simplicialSet 0
  onMorphisms : (n : ℕ) → C.simplicialSet n → D.simplicialSet n
  preservesComposition : Prop

structure CatWitnessClosed (O : CatAdmittedObject) : Prop where
  isInfinityCategory : InfinityCategory
  isInfinityFunctor : InfinityFunctor (someInfinityCategory) (someInfinityCategory)
  conclusion : Prop

end CategoryTheoryInfinityCategoriesCanonicalLaneLean
end HautevilleHouse