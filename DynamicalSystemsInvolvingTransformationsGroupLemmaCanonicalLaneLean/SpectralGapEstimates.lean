import DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean.ErgodicDecomposition

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean

structure SpectralGapEstimatesPackage (D : DynamicalAdmittedObject) where
  spectrumDiscrete : Prop
  gapPositive : Prop
  rateOfMixing : Prop

structure SpectralGapEstimatesEvidence (D : DynamicalAdmittedObject) (S : SpectralGapEstimatesPackage D) where
  spectrumDiscreteClosed : S.spectrumDiscrete
  gapPositiveClosed : S.gapPositive
  rateOfMixingClosed : S.rateOfMixing

def SpectralGapEstimatesClosed (D : DynamicalAdmittedObject) (S : SpectralGapEstimatesPackage D) : Prop :=
  S.spectrumDiscrete ∧ S.gapPositive ∧ S.rateOfMixing

theorem spectral_gap_estimates_closed_from_evidence (D : DynamicalAdmittedObject) (S : SpectralGapEstimatesPackage D) (Ev : SpectralGapEstimatesEvidence D S) :
    SpectralGapEstimatesClosed D S := by
  exact And.intro Ev.spectrumDiscreteClosed (And.intro Ev.gapPositiveClosed Ev.rateOfMixingClosed)

end DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean
end HautevilleHouse