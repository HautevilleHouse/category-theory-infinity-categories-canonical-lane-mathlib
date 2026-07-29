import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInfinityCategoriesCanonicalLaneLean

structure YonedaFunctorPackage where
  sourceCategory : Type u
  targetCategory : Type v
  functorMapping : Type w
  naturalIsomorphism : Prop
  yonedaEmbeddingFullyFaithful : Prop

structure YonedaLemmaEvidence (Y : YonedaFunctorPackage) where
  functorMappingClosed : Y.functorMapping
  naturalIsomorphismClosed : Y.naturalIsomorphism
  yonedaEmbeddingFullyFaithfulClosed : Y.yonedaEmbeddingFullyFaithful

def YonedaLemmaClosed (Y : YonedaFunctorPackage) : Prop :=
  Y.functorMapping ∧ Y.naturalIsomorphism ∧ Y.yonedaEmbeddingFullyFaithful

theorem yoneda_lemma_closed_from_evidence (Y : YonedaFunctorPackage) (E : YonedaLemmaEvidence Y) :
    YonedaLemmaClosed Y := by
  exact And.intro E.functorMappingClosed
    (And.intro E.naturalIsomorphismClosed E.yonedaEmbeddingFullyFaithfulClosed)

end CategoryTheoryInfinityCategoriesCanonicalLaneLean
end HautevilleHouse