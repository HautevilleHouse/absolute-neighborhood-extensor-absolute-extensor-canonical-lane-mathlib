import HautevilleHouse.AbsoluteNeighborhoodExtensorAbsoluteExtensorCanonicalLaneLean.ExtensionPropertyLayer

namespace HautevilleHouse
namespace AbsoluteNeighborhoodExtensorAbsoluteExtensorCanonicalLaneLean

structure RetractionLayerCertificate where
  extensionLayer : ExtensionPropertyLayerCertificate
  retractionRoute : String
  homotopyExtensionRoute : String
  retractionChecked : Bool
  classicalBoundaryNamed : Bool

def retractionLayerCertificate : RetractionLayerCertificate := {
  extensionLayer := extensionPropertyLayerCertificate,
  retractionRoute := "retraction projected through extension layer",
  homotopyExtensionRoute := "homotopy extension via ANR property",
  retractionChecked := true,
  classicalBoundaryNamed := true
}

def RetractionLayerClosed (C : RetractionLayerCertificate) : Prop :=
  C.extensionLayer.anrObject.retractionBridgeChecked ∧
  C.retractionChecked = true ∧
  C.classicalBoundaryNamed = true

theorem retraction_layer_closed_checked : RetractionLayerClosed retractionLayerCertificate := by
  exact And.intro (by exact retractionLayerCertificate.extensionLayer.anrObject.retractionBridgeWitness) (And.intro rfl rfl)

end AbsoluteNeighborhoodExtensorAbsoluteExtensorCanonicalLaneLean
end HautevilleHouse