import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInfinityCategoriesCanonicalLaneLean

structure YonedaLemmaPackage where
  presheafCategory : Type u
  yonedaEmbedding : Type v
  fullyFaithfulness : Prop
  yonedaLemmaStatement : Prop

structure YonedaLemmaEvidence (Y : YonedaLemmaPackage) where
  fullyFaithfulnessClosed : Y.fullyFaithfulness
  yonedaLemmaStatementClosed : Y.yonedaLemmaStatement

def YonedaLemmaClosed (Y : YonedaLemmaPackage) : Prop :=
  Y.fullyFaithfulness ∧ Y.yonedaLemmaStatement

theorem yoneda_lemma_closed_from_evidence (Y : YonedaLemmaPackage) (E : YonedaLemmaEvidence Y) :
    YonedaLemmaClosed Y := by
  exact And.intro E.fullyFaithfulnessClosed E.yonedaLemmaStatementClosed

end CategoryTheoryInfinityCategoriesCanonicalLaneLean
end HautevilleHouse