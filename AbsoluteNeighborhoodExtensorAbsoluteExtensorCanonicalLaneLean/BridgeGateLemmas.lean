import HautevilleHouse.AbsoluteNeighborhoodExtensorAbsoluteExtensorCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AbsoluteNeighborhoodExtensorAbsoluteExtensorCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ScopedClosure A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact ⟨A.object.sourceKeyChecked,
    A.object.theoremObjectChecked,
    A.object.anrPropertyChecked,
    A.object.extensionBridgeChecked,
    A.object.retractionBridgeChecked,
    A.object.classicalRemainderCarried⟩

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end AbsoluteNeighborhoodExtensorAbsoluteExtensorCanonicalLaneLean
end HautevilleHouse