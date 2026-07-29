import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInfinityCategoriesCanonicalLaneLean

structure LimitPackage where
  diagram : Type u
  cone : Type v
  universalProperty : Prop
  limitExists : Prop

structure LimitEvidence (L : LimitPackage) where
  universalPropertyClosed : L.universalProperty
  limitExistsClosed : L.limitExists

def LimitClosed (L : LimitPackage) : Prop :=
  L.universalProperty ∧ L.limitExists

theorem limit_closed_from_evidence (L : LimitPackage) (E : LimitEvidence L) : LimitClosed L := by
  exact And.intro E.universalPropertyClosed E.limitExistsClosed

structure ColimitPackage where
  diagram : Type u
  cocone : Type v
  universalProperty : Prop
  colimitExists : Prop

structure ColimitEvidence (C : ColimitPackage) where
  universalPropertyClosed : C.universalProperty
  colimitExistsClosed : C.colimitExists

def ColimitClosed (C : ColimitPackage) : Prop :=
  C.universalProperty ∧ C.colimitExists

theorem colimit_closed_from_evidence (C : ColimitPackage) (E : ColimitEvidence C) : ColimitClosed C := by
  exact And.intro E.universalPropertyClosed E.colimitExistsClosed

end CategoryTheoryInfinityCategoriesCanonicalLaneLean
end HautevilleHouse