import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInfinityCategoriesCanonicalLaneLean

structure InfinityCategoryObject where
  carrier : Type u
  morphismSet : carrier → carrier → Type v
  compositionLaw : ∀ {x y z : carrier}, morphismSet y z → morphismSet x y → morphismSet x z
  identityMorphism : ∀ (x : carrier), morphismSet x x
  associativityLaw : ∀ {w x y z : carrier} (f : morphismSet x y) (g : morphismSet y z) (h : morphismSet w x),
    compositionLaw (compositionLaw g f) h = compositionLaw g (compositionLaw f h)
  identityLawLeft : ∀ {x y : carrier} (f : morphismSet x y), compositionLaw (identityMorphism y) f = f
  identityLawRight : ∀ {x y : carrier} (f : morphismSet x y), compositionLaw f (identityMorphism x) = f

structure InfinityCategoryAdmittedObject where
  cat : InfinityCategoryObject
  isInfinityCategory : Prop
  conclusion : isInfinityCategory

def InfinityCategoryWitnessClosed (O : InfinityCategoryAdmittedObject) : Prop :=
  O.isInfinityCategory

end CategoryTheoryInfinityCategoriesCanonicalLaneLean
end HautevilleHouse