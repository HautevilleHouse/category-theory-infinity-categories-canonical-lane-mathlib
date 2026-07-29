import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInfinityCategoriesCanonicalLaneLean

structure LimitsPackage where
  limitExists : Prop
  limitUniversalProperty : Prop
  colimitExists : Prop
  colimitUniversalProperty : Prop

structure LimitsEvidence (L : LimitsPackage) where
  limitExistsClosed : L.limitExists
  limitUniversalPropertyClosed : L.limitUniversalProperty
  colimitExistsClosed : L.colimitExists
  colimitUniversalPropertyClosed : L.colimitUniversalProperty

def LimitsClosed (L : LimitsPackage) : Prop :=
  L.limitExists ∧ L.limitUniversalProperty ∧ L.colimitExists ∧ L.colimitUniversalProperty

theorem limits_closed_from_evidence (L : LimitsPackage) (E : LimitsEvidence L) :
    LimitsClosed L := by
  exact And.intro E.limitExistsClosed (And.intro E.limitUniversalPropertyClosed (And.intro E.colimitExistsClosed E.colimitUniversalPropertyClosed))

end CategoryTheoryInfinityCategoriesCanonicalLaneLean
end HautevilleHouse