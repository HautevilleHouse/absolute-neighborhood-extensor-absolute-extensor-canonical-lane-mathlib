import HautevilleHouse.AbsoluteNeighborhoodExtensorAbsoluteExtensorCanonicalLaneLean.BridgeGateLemmas

namespace HautevilleHouse
namespace AbsoluteNeighborhoodExtensorAbsoluteExtensorCanonicalLaneLean

def ConstrainedANRClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ True

def NativeClosureTheorem (A : AdmissibleClass) : Prop :=
  ConstrainedANRClosure A

def ConditionalRouteClosure (A : AdmissibleClass) : Prop :=
  ConstrainedANRClosure A ∧ True

theorem constrained_anr_closure (A : AdmissibleClass) : ConstrainedANRClosure A := by
  exact And.intro (bridge_from_admissible_class A) (And.intro (gate_from_admissible_class A) trivial)

theorem native_closure_theorem_checked (A : AdmissibleClass) : NativeClosureTheorem A := by
  exact constrained_anr_closure A

theorem conditional_route_closure_checked (A : AdmissibleClass) : ConditionalRouteClosure A := by
  exact And.intro (constrained_anr_closure A) trivial

theorem conditional_route_source_boundary_carried (A : AdmissibleClass) : ConditionalRouteClosure A → True := by
  intro h
  exact h.2

end AbsoluteNeighborhoodExtensorAbsoluteExtensorCanonicalLaneLean
end HautevilleHouse