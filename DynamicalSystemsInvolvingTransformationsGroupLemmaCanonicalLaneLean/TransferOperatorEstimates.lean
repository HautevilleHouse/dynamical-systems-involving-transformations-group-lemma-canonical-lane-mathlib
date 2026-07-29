import DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean.SpectralGapEstimates

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean

structure TransferOperatorEstimatesPackage (D : DynamicalAdmittedObject) where
  operatorNorm : Prop
  spectralRadius : Prop
  invariantDensity : Prop

structure TransferOperatorEstimatesEvidence (D : DynamicalAdmittedObject) (T : TransferOperatorEstimatesPackage D) where
  operatorNormClosed : T.operatorNorm
  spectralRadiusClosed : T.spectralRadius
  invariantDensityClosed : T.invariantDensity

def TransferOperatorEstimatesClosed (D : DynamicalAdmittedObject) (T : TransferOperatorEstimatesPackage D) : Prop :=
  T.operatorNorm ∧ T.spectralRadius ∧ T.invariantDensity

theorem transfer_operator_estimates_closed_from_evidence (D : DynamicalAdmittedObject) (T : TransferOperatorEstimatesPackage D) (Ev : TransferOperatorEstimatesEvidence D T) :
    TransferOperatorEstimatesClosed D T := by
  exact And.intro Ev.operatorNormClosed (And.intro Ev.spectralRadiusClosed Ev.invariantDensityClosed)

end DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean
end HautevilleHouse