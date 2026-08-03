import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace AbsoluteNeighborhoodExtensorAbsoluteExtensorCanonicalLaneLean

structure ANEObject where
  sourceSpace : String
  targetSpace : String
  extensionProperty : Prop
  neighborhoodExtension : Prop
  globalExtension : Prop

default ANEObject

default ANEObject := {
  sourceSpace := "Normal",
  targetSpace := "ANE",
  extensionProperty := True,
  neighborhoodExtension := True,
  globalExtension := False
}

structure AEObject where
  sourceSpace : String
  targetSpace : String
  extensionProperty : Prop
  globalExtension : Prop

default AEObject := {
  sourceSpace := "Normal",
  targetSpace := "AE",
  extensionProperty := True,
  globalExtension := True
}

structure AdmittedTheoremObject where
  object : String
  substrate : String
  localWitness : String
  bridgeEvidence : String
  operatorModelChecked : Prop
  operatorModelWitness : operatorModelChecked
  spectralPersistenceBridgeChecked : Prop
  spectralPersistenceBridgeWitness : spectralPersistenceBridgeChecked
  sourceBoundaryLedgerChecked : Prop
  sourceBoundaryLedgerWitness : sourceBoundaryLedgerChecked
  classicalRemainderCarried : formalizationCertificate.sourceConjectureClosureClaimed = false
  sourceKeyChecked : object = sourceRepository
  theoremObjectChecked : object = "ANE/AE characterization"

def NativeBridgeClosed (O : AdmittedTheoremObject) : Prop :=
  O.object = "ANE/AE characterization" ∧
  O.operatorModelChecked ∧
  O.spectralPersistenceBridgeChecked ∧
  O.sourceBoundaryLedgerChecked ∧
  (formalizationCertificate.sourceConjectureClosureClaimed = false)

def ScopedClosure (O : AdmittedTheoremObject) : Prop :=
  NativeBridgeClosed O

end AbsoluteNeighborhoodExtensorAbsoluteExtensorCanonicalLaneLean
end HautevilleHouse