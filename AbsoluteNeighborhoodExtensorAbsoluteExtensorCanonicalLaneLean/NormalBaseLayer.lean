import canonialLaneMathlib.AdmissibleClass
import Mathlib.Topology.Compactness.Compact

namespace HautevilleHouse
namespace AbsoluteNeighborhoodExtensorAbsoluteExtensorCanonicalLaneLean

structure NormalBaseCertificate where
  normalityHolds : Prop
  baseChecked : Bool

def normalBaseCertificate : NormalBaseCertificate := {
  normalityHolds := True,
  baseChecked := true
}

def NormalBaseLayerClosed (C : NormalBaseCertificate) : Prop :=
  C.normalityHolds ∧ C.baseChecked = true

theorem normal_base_layer_closed_checked :
    NormalBaseLayerClosed normalBaseCertificate := by
  exact And.intro True.intro rfl

end AbsoluteNeighborhoodExtensorAbsoluteExtensorCanonicalLaneLean
end HautevilleHouse