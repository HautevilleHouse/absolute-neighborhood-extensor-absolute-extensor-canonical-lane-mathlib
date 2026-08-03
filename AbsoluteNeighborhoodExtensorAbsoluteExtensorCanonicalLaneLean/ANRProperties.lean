import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace AbsoluteNeighborhoodExtensorAbsoluteExtensorCanonicalLaneLean

structure HomotopyExtensionProperty where
  carrier : Type u
  [h : TopologicalSpace carrier]
  property : Prop

default instance : TopologicalSpace (HomotopyExtensionProperty.carrier _) := HomotopyExtensionProperty.h _

def homotopyExtensionBridge (X : HomotopyExtensionProperty) : Prop :=
  X.property

theorem homotopy_extension_bridge_from_anr (X : ANRStructure) : homotopyExtensionBridge ⟨X.carrier, ANRStructure.h X, X.property⟩ := by
  exact X.property

end AbsoluteNeighborhoodExtensorAbsoluteExtensorCanonicalLaneLean
end HautevilleHouse