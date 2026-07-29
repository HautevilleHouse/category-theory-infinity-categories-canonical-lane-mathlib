import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInfinityCategoriesCanonicalLaneLean

structure InfinityFunctor (C D : InfinityCategory) where
  objectMap : C.objects → D.objects
  morphismMap : ∀ {a b : C.objects}, C.morphisms a b → D.morphisms (objectMap a) (objectMap b)
  respectsComposition : Prop
  respectsIdentities : Prop

def NaturalTransformation (F G : InfinityFunctor C D) : Type u :=
  { η : ∀ (x : C.objects), D.morphisms (F.objectMap x) (G.objectMap x)
  | ∀ (a b : C.objects) (f : C.morphisms a b),
    D.comp (D.comp (D.associator) (G.morphismMap f)) (η a) = D.comp (D.comp (D.associator) (η b)) (F.morphismMap f) }

structure Adjunction (C D : InfinityCategory) where
  leftAdjoint : InfinityFunctor C D
  rightAdjoint : InfinityFunctor D C
  unit : NaturalTransformation (comp rightAdjoint leftAdjoint) (identityFunctor C)
  counit : NaturalTransformation (identityFunctor D) (comp leftAdjoint rightAdjoint)
  triangleIdentities : Prop

def AdjointEquivalence (adj : Adjunction C D) : Prop :=
  IsIso (adj.unit) ∧ IsIso (adj.counit)

structure AdjointClosurePackage where
  categoryC : InfinityCategory
  categoryD : InfinityCategory
  adjunction : Adjunction categoryC categoryD
  adjointExists : Prop
  limitPreserved : Prop
  colimitPreserved : Prop

structure AdjointEvidence (A : AdjointClosurePackage) where
  adjointExistsClosed : A.adjointExists
  limitPreservedClosed : A.limitPreserved
  colimitPreservedClosed : A.colimitPreserved

def AdjointClosure (A : AdjointClosurePackage) : Prop :=
  A.adjointExists ∧ A.limitPreserved ∧ A.colimitPreserved

theorem adjoint_closed_from_evidence (A : AdjointClosurePackage) (E : AdjointEvidence A) : AdjointClosure A := by
  refine ⟨E.adjointExistsClosed, ?_⟩
  exact ⟨E.limitPreservedClosed, E.colimitPreservedClosed⟩

end CategoryTheoryInfinityCategoriesCanonicalLaneLean
end HautevilleHouse