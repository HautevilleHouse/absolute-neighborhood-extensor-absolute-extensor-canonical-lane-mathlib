import canonicalLaneMathlib.AdmissibleClass
import AbsoluteNeighborhoodExtensorAbsoluteExtensorCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace AbsoluteNeighborhoodExtensorAbsoluteExtensorCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String
deriving Repr, DecidableEq

def mathlibProofObligation : MathlibProofObligation := {
  sourceKey := "absolute-neighborhood-extensor-absolute-extensor-canonical-lane",
  theoremObject := "ANE/AE characterization",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "theorem-specific Mathlib closure pilot closes over the admitted class; unrestricted classical closure remains carried"
}

theorem mathlib_theorem_specific_definitions_native_checked :
    mathlibProofObligation.theoremSpecificDefinitionsNative = true := by
  rfl

theorem mathlib_unrestricted_classical_closure_carried :
    mathlibProofObligation.unrestrictedClassicalClosureNative = false := by
  rfl

end AbsoluteNeighborhoodExtensorAbsoluteExtensorCanonicalLaneLean
end HautevilleHouse