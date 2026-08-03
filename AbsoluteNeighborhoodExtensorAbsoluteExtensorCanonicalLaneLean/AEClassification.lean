import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace AbsoluteNeighborhoodExtensorAbsoluteExtensorCanonicalLaneLean

structure MetrizableSpace (X : Type u) where
  [h : TopologicalSpace X]
  metric : MetricSpace X

default instance : TopologicalSpace (MetrizableSpace.carrier _) := MetrizableSpace.h _

theorem anr_iff_ae_normal (X : Type u) [TopologicalSpace X] [MetrizableSpace X] :
    (∃ (A : ANRStructure) (hA : A.carrier = X), A.property) ↔ (∃ (B : AEStructure) (hB : B.carrier = X), B.property) := by
  constructor
  · intro h
    rcases h with ⟨A, hA⟩
    have : AEStructure := { carrier := X, property := A.property }
    exact ⟨this, rfl⟩
  · intro h
    rcases h with ⟨B, hB⟩
    have : ANRStructure := { carrier := X, property := B.property }
    exact ⟨this, rfl⟩

end AbsoluteNeighborhoodExtensorAbsoluteExtensorCanonicalLaneLean
end HautevilleHouse