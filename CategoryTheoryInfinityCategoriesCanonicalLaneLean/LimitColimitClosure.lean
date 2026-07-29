import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryInfinityCategoriesCanonicalLaneLean.InfinityCategoryDefinitions

namespace HautevilleHouse
namespace CategoryTheoryInfinityCategoriesCanonicalLaneLean

structure LimitColimitPackage where
  diagramCategory : InfinityCategory
  targetCategory : InfinityCategory
  limitObject : CatAdmittedObject
  colimitObject : CatAdmittedObject
  universalProperty : Prop
  existence : Prop

structure LimitColimitEvidence (P : LimitColimitPackage) where
  universalPropertyClosed : P.universalProperty
  existenceClosed : P.existence

def LimitColimitClosed (P : LimitColimitPackage) : Prop :=
  P.universalProperty ∧ P.existence

theorem limit_colimit_closed_from_evidence (P : LimitColimitPackage) (E : LimitColimitEvidence P) :
    LimitColimitClosed P := by
  exact And.intro E.universalPropertyClosed E.existenceClosed

end CategoryTheoryInfinityCategoriesCanonicalLaneLean
end HautevilleHouse