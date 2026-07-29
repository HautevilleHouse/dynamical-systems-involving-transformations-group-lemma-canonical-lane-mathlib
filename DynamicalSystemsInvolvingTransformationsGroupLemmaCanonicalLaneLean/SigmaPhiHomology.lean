import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean

structure SigmaPhiHomologyPackage {G : TransformationsGroupPackage} where
  sigmaRepresentation : Type u
  phiAction : Type v
  homologyChain : List G.GroupElement
  boundaryOperatorDefined : Prop
  cyclesClosedUnderPhi : Prop
  boundariesClosedUnderPhi : Prop

structure SigmaPhiHomologyEvidence {G : TransformationsGroupPackage} (H : SigmaPhiHomologyPackage G) where
  boundaryOperatorDefinedClosed : H.boundaryOperatorDefined
  cyclesClosedUnderPhiClosed : H.cyclesClosedUnderPhi
  boundariesClosedUnderPhiClosed : H.boundariesClosedUnderPhi

def SigmaPhiHomologyClosed {G : TransformationsGroupPackage} (H : SigmaPhiHomologyPackage G) : Prop :=
  H.boundaryOperatorDefined ∧ H.cyclesClosedUnderPhi ∧ H.boundariesClosedUnderPhi

theorem sigma_phi_homology_closed_from_evidence
  {G : TransformationsGroupPackage} (H : SigmaPhiHomologyPackage G) (E : SigmaPhiHomologyEvidence H) :
  SigmaPhiHomologyClosed H := by
  exact And.intro E.boundaryOperatorDefinedClosed
    (And.intro E.cyclesClosedUnderPhiClosed E.boundariesClosedUnderPhiClosed)

end DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean
end HautevilleHouse