import HautevilleHouse.AbsoluteNeighborhoodExtensorAbsoluteExtensorCanonicalLaneLean.ANRMathlibObjects

namespace HautevilleHouse
namespace AbsoluteNeighborhoodExtensorAbsoluteExtensorCanonicalLaneLean

structure AdmissibleClass where
  object : ANRObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AbsoluteNeighborhoodExtensorAbsoluteExtensorCanonicalLaneLean
end HautevilleHouse