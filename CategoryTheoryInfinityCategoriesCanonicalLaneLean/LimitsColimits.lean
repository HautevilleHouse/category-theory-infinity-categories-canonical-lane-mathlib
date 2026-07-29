import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInfinityCategoriesCanonicalLaneLean

structure Cone (F : InfinityFunctor J C) where
  apex : C.objects
  projections : ∀ (j : J.objects), C.morphisms apex (F.objectMap j)
  naturality : Prop

def Limit (F : InfinityFunctor J C) (L : Cone F) : Prop :=
  ∀ (other : Cone F), ∃! (u : C.morphisms other.apex L.apex),
    ∀ (j : J.objects), C.composition (L.projections j) u = other.projections j

structure Cocone (F : InfinityFunctor J C) where
  apex : C.objects
  injections : ∀ (j : J.objects), C.morphisms (F.objectMap j) apex
  naturality : Prop

def Colimit (F : InfinityFunctor J C) (L : Cocone F) : Prop :=
  ∀ (other : Cocone F), ∃! (u : C.morphisms L.apex other.apex),
    ∀ (j : J.objects), C.composition u (L.injections j) = other.injections j

structure LimitClosurePackage where
  diagram : InfinityFunctor J C
  limitExists : Prop
  colimitExists : Prop
  uniqueness : Prop

structure LimitEvidence (L : LimitClosurePackage) where
  limitExistsClosed : L.limitExists
  colimitExistsClosed : L.colimitExists
  uniquenessClosed : L.uniqueness

def LimitClosure (L : LimitClosurePackage) : Prop :=
  L.limitExists ∧ L.colimitExists ∧ L.uniqueness

theorem limit_closed_from_evidence (L : LimitClosurePackage) (E : LimitEvidence L) : LimitClosure L := by
  exact And.intro E.limitExistsClosed
    (And.intro E.colimitExistsClosed E.uniquenessClosed)

end CategoryTheoryInfinityCategoriesCanonicalLaneLean
end HautevilleHouse