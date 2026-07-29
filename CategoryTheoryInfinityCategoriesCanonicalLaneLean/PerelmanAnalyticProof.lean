import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInfinityCategoriesCanonicalLaneLean

structure LimitColimitCertificate where
  limitExists : Prop
  colimitExists : Prop
  limitUniversalProperty : Prop
  colimitUniversalProperty : Prop
  limitExistsClosed : limitExists
  colimitExistsClosed : colimitExists
  limitUniversalPropertyClosed : limitUniversalProperty
  colimitUniversalPropertyClosed : colimitUniversalProperty
  evidence : LimitColimitEvidence

def LimitColimitCertificateClosed (C : LimitColimitCertificate) : Prop :=
  C.limitExists ∧ C.colimitExists ∧ C.limitUniversalProperty ∧ C.colimitUniversalProperty

theorem limit_colimit_certificate_closed (C : LimitColimitCertificate) :
    LimitColimitCertificateClosed C := by
  exact And.intro C.limitExistsClosed
    (And.intro C.colimitExistsClosed
      (And.intro C.limitUniversalPropertyClosed C.colimitUniversalPropertyClosed))

structure LimitColimitEvidence where
  limitExistsClosed : Prop
  colimitExistsClosed : Prop
  limitUniversalPropertyClosed : Prop
  colimitUniversalPropertyClosed : Prop

end CategoryTheoryInfinityCategoriesCanonicalLaneLean
end HautevilleHouse