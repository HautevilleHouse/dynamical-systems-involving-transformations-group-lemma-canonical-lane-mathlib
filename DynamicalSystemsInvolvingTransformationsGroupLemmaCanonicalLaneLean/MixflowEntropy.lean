import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean

structure MixingEntropyPackage {X : DynamicalSpace} {G : GroupAction X} (μ : InvariantMeasure X G) where
  kolmogorovSinaiEntropy : Prop
  topologicalEntropy : Prop
  variationalPrinciple : Prop

structure MixingEntropyEvidence {X : DynamicalSpace} {G : GroupAction X} {μ : InvariantMeasure X G} (E : MixingEntropyPackage μ) where
  kolmogorovSinaiEntropyClosed : E.kolmogorovSinaiEntropy
  topologicalEntropyClosed : E.topologicalEntropy
  variationalPrincipleClosed : E.variationalPrinciple

def MixingEntropyClosed {X : DynamicalSpace} {G : GroupAction X} {μ : InvariantMeasure X G} (E : MixingEntropyPackage μ) : Prop :=
  E.kolmogorovSinaiEntropy ∧ E.topologicalEntropy ∧ E.variationalPrinciple

theorem mixing_entropy_closed_from_evidence {X : DynamicalSpace} {G : GroupAction X} {μ : InvariantMeasure X G} (E : MixingEntropyPackage μ) (Ev : MixingEntropyEvidence E) : MixingEntropyClosed E :=
  And.intro Ev.kolmogorovSinaiEntropyClosed (And.intro Ev.topologicalEntropyClosed Ev.variationalPrincipleClosed)

end DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean
end HautevilleHouse