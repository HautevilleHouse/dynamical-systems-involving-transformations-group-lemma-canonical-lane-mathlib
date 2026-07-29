import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean

structure SpectralDecompositionPackage {G : TransformationsGroupPackage} (F : DynamicalSystemPackage G) where
  partitionIntoChainRecurrent : Prop
  spectrumDecomposed : Prop
  periodicOrbitsClassified : Prop
  gradientFlowDecomposition : Prop

structure SpectralDecompositionEvidence {G : TransformationsGroupPackage}
  {F : DynamicalSystemPackage G} (D : SpectralDecompositionPackage F) where
  partitionIntoChainRecurrentClosed : D.partitionIntoChainRecurrent
  spectrumDecomposedClosed : D.spectrumDecomposed
  periodicOrbitsClassifiedClosed : D.periodicOrbitsClassified
  gradientFlowDecompositionClosed : D.gradientFlowDecomposition

def SpectralDecompositionClosed {G : TransformationsGroupPackage}
  {F : DynamicalSystemPackage G} (D : SpectralDecompositionPackage F) : Prop :=
  D.partitionIntoChainRecurrent ∧ D.spectrumDecomposed ∧
  D.periodicOrbitsClassified ∧ D.gradientFlowDecomposition

theorem spectral_decomposition_closed_from_evidence
  {G : TransformationsGroupPackage} {F : DynamicalSystemPackage G}
  (D : SpectralDecompositionPackage F) (E : SpectralDecompositionEvidence D) :
  SpectralDecompositionClosed D := by
  exact And.intro E.partitionIntoChainRecurrentClosed
    (And.intro E.spectrumDecomposedClosed
      (And.intro E.periodicOrbitsClassifiedClosed E.gradientFlowDecompositionClosed))

end DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean
end HautevilleHouse