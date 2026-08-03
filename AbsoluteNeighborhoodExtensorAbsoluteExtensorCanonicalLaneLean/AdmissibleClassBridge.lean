import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.BridgeLemmas

namespace HautevilleHouse
namespace AbsoluteNeighborhoodExtensorAbsoluteExtensorCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ScopedClosure A.object

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact ⟨A.object.sourceKeyChecked, A.object.theoremObjectChecked, A.object.operatorModelWitness, A.object.spectralPersistenceBridgeWitness, A.object.sourceBoundaryLedgerWitness, A.object.classicalRemainderCarried⟩

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end AbsoluteNeighborhoodExtensorAbsoluteExtensorCanonicalLaneLean
end HautevilleHouse