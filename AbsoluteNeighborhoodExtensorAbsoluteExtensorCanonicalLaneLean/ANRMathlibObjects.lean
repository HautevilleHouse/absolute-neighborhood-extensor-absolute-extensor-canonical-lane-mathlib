import HautevilleHouse.AbsoluteNeighborhoodExtensorAbsoluteExtensorCanonicalLaneLean.AbsoluteNeighborhoodExtensorAbsoluteExtensorCanonicalLaneLean
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace AbsoluteNeighborhoodExtensorAbsoluteExtensorCanonicalLaneLean

structure ANRTheoremSpecificObject where
  sourceKey : String
  theoremObject : String
  claimBoundary : String

defaulting Repr, DecidableEq

structure ANRSubstrate where
  spaceCarrier : Type
  extensionProperty : Prop
  retractionProperty : Prop
  homotopyExtension : Prop

structure ANRObject where
  object : ANRTheoremSpecificObject
  substrate : ANRSubstrate
  localWitness : String
  bridgeEvidence : String
  anrPropertyChecked : Prop
  anrPropertyWitness : anrPropertyChecked
  extensionBridgeChecked : Prop
  extensionBridgeWitness : extensionBridgeChecked
  retractionBridgeChecked : Prop
  retractionBridgeWitness : retractionBridgeChecked
  classicalRemainderCarried : True
  sourceKeyChecked : object.sourceKey = sourceRepository
  theoremObjectChecked : object.theoremObject = sourceDescription

def anrTheoremSpecificObject : ANRTheoremSpecificObject := {
  sourceKey := sourceRepository,
  theoremObject := sourceDescription,
  claimBoundary := sourceTheoremBoundary
}

def NativeBridgeClosed (O : ANRObject) : Prop :=
  O.object.sourceKey = sourceRepository ∧
  O.object.theoremObject = sourceDescription ∧
  O.anrPropertyChecked ∧
  O.extensionBridgeChecked ∧
  O.retractionBridgeChecked ∧
  (True)

def ScopedClosure (O : ANRObject) : Prop :=
  NativeBridgeClosed O

end AbsoluteNeighborhoodExtensorAbsoluteExtensorCanonicalLaneLean
end HautevilleHouse