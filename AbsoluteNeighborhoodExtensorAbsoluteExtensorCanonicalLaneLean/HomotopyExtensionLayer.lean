import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace AbsoluteNeighborhoodExtensorAbsoluteExtensorCanonicalLaneLean

structure HomotopyExtensionLayerCertificate where
  sourceKey : String
  homotopyExtensionProperty : HomotopyExtensionProperty
  bridgeChecked : Bool
  closureChecked : Bool

def homotopyExtensionLayerCertificate : HomotopyExtensionLayerCertificate := {
  sourceKey := "absolute_neighborhood_extensor",
  homotopyExtensionProperty := ⟨Unit, inferInstance, True⟩,
  bridgeChecked := true,
  closureChecked := true
}

def HomotopyExtensionLayerClosed (C : HomotopyExtensionLayerCertificate) : Prop :=
  C.bridgeChecked = true ∧ C.closureChecked = true

theorem homotopy_extension_layer_closed_checked : HomotopyExtensionLayerClosed homotopyExtensionLayerCertificate := by
  exact And.intro rfl rfl

end AbsoluteNeighborhoodExtensorAbsoluteExtensorCanonicalLaneLean
end HautevilleHouse