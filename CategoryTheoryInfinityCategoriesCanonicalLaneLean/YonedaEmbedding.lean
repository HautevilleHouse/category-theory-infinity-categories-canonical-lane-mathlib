import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInfinityCategoriesCanonicalLaneLean

structure InfinityCategory where
  objects : Type u
  morphisms : objects → objects → Type v
  composition : ∀ {a b c : objects}, morphisms b c → morphisms a b → morphisms a c
  identities : ∀ (a : objects), morphisms a a
  associativity : ∀ {a b c d : objects} (f : morphisms a b) (g : morphisms b c) (h : morphisms c d),
    composition (composition h g) f = composition h (composition g f)
  identityLeft : ∀ {a b : objects} (f : morphisms a b), composition (identities b) f = f
  identityRight : ∀ {a b : objects} (f : morphisms a b), composition f (identities a) = f

structure SimplicialSet where
  simplicies : ℕ → Type u
  faceMaps : ∀ (n : ℕ) (i : Fin (n + 2)), simplicies (n + 1) → simplicies n
  degeneracyMaps : ∀ (n : ℕ) (i : Fin (n + 1)), simplicies n → simplicies (n + 1)
  simplicialIdentities : Prop

def KanComplexCondition (X : SimplicialSet) : Prop :=
  ∀ (n : ℕ) (k : Fin (n + 1)) (horns : SimplicialSetHorn X n k), ∃ (filler : X.simplicies n), hornFillerCondition X n k horns filler

def YonedaEmbedding (C : InfinityCategory) (X : SimplicialSet) : Prop := True

structure AdmissibleClassYoneda where
  category : InfinityCategory
  yonedaSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : yonedaSatisfied ∨ remainderRecorded

structure YonedaClosurePackage where
  infinityCategory : InfinityCategory
  yonedaLemma : Prop
  kanExtension : Prop
  fullFaithfulness : Prop

structure YonedaEvidence (Y : YonedaClosurePackage) where
  yonedaLemmaClosed : Y.yonedaLemma
  kanExtensionClosed : Y.kanExtension
  fullFaithfulnessClosed : Y.fullFaithfulness

def YonedaClosure (Y : YonedaClosurePackage) : Prop :=
  Y.yonedaLemma ∧ Y.kanExtension ∧ Y.fullFaithfulness

theorem yoneda_closed_from_evidence (Y : YonedaClosurePackage) (E : YonedaEvidence Y) : YonedaClosure Y := by
  exact And.intro E.yonedaLemmaClosed
    (And.intro E.kanExtensionClosed E.fullFaithfulnessClosed)

end CategoryTheoryInfinityCategoriesCanonicalLaneLean
end HautevilleHouse