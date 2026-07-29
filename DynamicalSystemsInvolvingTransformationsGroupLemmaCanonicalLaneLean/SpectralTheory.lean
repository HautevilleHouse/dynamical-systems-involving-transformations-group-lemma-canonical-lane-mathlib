import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean

structure SpectralPackage {X : DynamicalSpace} {G : GroupAction X} (μ : InvariantMeasure X G) where
  unitaryOperator : Type
  spectralMeasure : Type
  spectralTheorem : Prop
  mixingSpectralCharacterization : Prop

structure SpectralEvidence {X : DynamicalSpace} {G : GroupAction X} {μ : InvariantMeasure X G} (S : SpectralPackage μ) where
  spectralTheoremClosed : S.spectralTheorem
  mixingSpectralCharacterizationClosed : S.mixingSpectralCharacterization

def SpectralClosed {X : DynamicalSpace} {G : GroupAction X} {μ : InvariantMeasure X G} (S : SpectralPackage μ) : Prop :=
  S.spectralTheorem ∧ S.mixingSpectralCharacterization

theorem spectral_closed_from_evidence {X : DynamicalSpace} {G : GroupAction X} {μ : InvariantMeasure X G} (S : SpectralPackage μ) (Ev : SpectralEvidence S) : SpectralClosed S :=
  And.intro Ev.spectralTheoremClosed Ev.mixingSpectralCharacterizationClosed

end DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean
end HautevilleHouse