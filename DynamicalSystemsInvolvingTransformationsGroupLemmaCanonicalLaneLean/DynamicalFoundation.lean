import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean

structure DynamicalFoundation where
  ergodic : ErgodicTheoremPackage (μ := ?_) 
  entropy : MixingEntropyPackage (μ := ?_)
  spectral : SpectralPackage (μ := ?_)
  ergodicEvidence : ErgodicTheoremEvidence ergodic
  entropyEvidence : MixingEntropyEvidence entropy
  spectralEvidence : SpectralEvidence spectral

def DynamicalFoundationClosed (F : DynamicalFoundation) : Prop :=
  ErgodicTheoremClosed F.ergodic ∧ MixingEntropyClosed F.entropy ∧ SpectralClosed F.spectral

theorem dynamical_foundation_closed_from_evidence (F : DynamicalFoundation) : DynamicalFoundationClosed F :=
  And.intro (ergodic_theorem_closed_from_evidence F.ergodic F.ergodicEvidence)
    (And.intro (mixing_entropy_closed_from_evidence F.entropy F.entropyEvidence)
      (spectral_closed_from_evidence F.spectral F.spectralEvidence))

end DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean
end HautevilleHouse