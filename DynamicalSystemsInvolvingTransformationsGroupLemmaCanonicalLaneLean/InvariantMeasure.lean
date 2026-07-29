import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean

structure InvariantMeasurePackage where
  transformationGroup : Type u
  groupAction : transformationGroup → Type v → Type v
  invariantMeasure : Type v → ℝ
  ergodicComponents : List (Type v → Prop)
  measurePreservation : Prop
  ergodicDecomposition : Prop

structure InvariantMeasureEvidence (P : InvariantMeasurePackage) where
  measurePreservationClosed : P.measurePreservation
  ergodicDecompositionClosed : P.ergodicDecomposition

def InvariantMeasureClosed (P : InvariantMeasurePackage) : Prop :=
  P.measurePreservation ∧ P.ergodicDecomposition

theorem invariant_measure_closed_from_evidence (P : InvariantMeasurePackage) (E : InvariantMeasureEvidence P) : InvariantMeasureClosed P := by
  exact And.intro E.measurePreservationClosed E.ergodicDecompositionClosed

end DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean
end HautevilleHouse