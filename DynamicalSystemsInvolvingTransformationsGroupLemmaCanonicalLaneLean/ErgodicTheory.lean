import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean

structure ErgodicTheoremPackage {X : DynamicalSpace} {G : GroupAction X} (μ : InvariantMeasure X G) where
  poincareRecurrence : Prop
  birkhoffErgodic : Prop
  meanErgodic : Prop

structure ErgodicTheoremEvidence {X : DynamicalSpace} {G : GroupAction X} {μ : InvariantMeasure X G} (E : ErgodicTheoremPackage μ) where
  poincareRecurrenceClosed : E.poincareRecurrence
  birkhoffErgodicClosed : E.birkhoffErgodic
  meanErgodicClosed : E.meanErgodic

def ErgodicTheoremClosed {X : DynamicalSpace} {G : GroupAction X} {μ : InvariantMeasure X G} (E : ErgodicTheoremPackage μ) : Prop :=
  E.poincareRecurrence ∧ E.birkhoffErgodic ∧ E.meanErgodic

theorem ergodic_theorem_closed_from_evidence {X : DynamicalSpace} {G : GroupAction X} {μ : InvariantMeasure X G} (E : ErgodicTheoremPackage μ) (Ev : ErgodicTheoremEvidence E) : ErgodicTheoremClosed E :=
  And.intro Ev.poincareRecurrenceClosed (And.intro Ev.birkhoffErgodicClosed Ev.meanErgodicClosed)

end DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean
end HautevilleHouse