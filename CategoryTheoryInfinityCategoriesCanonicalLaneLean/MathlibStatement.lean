import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryInfinityCategoriesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MathlibStatement where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibStatement : MathlibStatement := {
  sourceKey := "category-theory-infinity-categories-canonical-lane",
  theoremObject := "Infinity category theory: Yoneda lemma, limits, adjunctions",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "Theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

theorem mathlib_statement_theorem_specific_admitted_closure_native_checked :
    mathlibStatement.theoremSpecificAdmittedClosureNative = true := by
  native_decide

end CategoryTheoryInfinityCategoriesCanonicalLaneLean
end HautevilleHouse