import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace AbsoluteNeighborhoodExtensorAbsoluteExtensorCanonicalLaneLean

structure ANRStructure where
  carrier : Type u
  [h : TopologicalSpace carrier]
  property : Prop

default instance : TopologicalSpace (ANRStructure.carrier _) := ANRStructure.h _

structure AEStructure where
  carrier : Type u
  [h : TopologicalSpace carrier]
  property : Prop

default instance : TopologicalSpace (AEStructure.carrier _) := AEStructure.h _

def anrAdmissibleClass (X : ANRStructure) : AdmissibleClass := {
  object := {
    sourceKey := "absolute_neighborhood_extensor",
    theoremObject := "ANR"
  },
  endpointSatisfied := X.property,
  remainderRecorded := False,
  gateWitness := Or.inl X.property
}

end AbsoluteNeighborhoodExtensorAbsoluteExtensorCanonicalLaneLean
end HautevilleHouse