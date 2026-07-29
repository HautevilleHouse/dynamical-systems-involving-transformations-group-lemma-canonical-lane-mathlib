import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean

structure InvariantMeasurePackage (S : TransformationGroupSystem) where
  measure : S.stateSpace → ℝ
  sigmaAlgebra : Set (Set S.stateSpace)
  invariantUnderAction : ∀ g, ∀ A ∈ sigmaAlgebra, measure (S.action g '' A) = measure A
  finiteMeasure : measure S.stateSpace < ∞

theorem invariant_measure_property (S : TransformationGroupSystem) (I : InvariantMeasurePackage S) :
  ∀ g, ∀ A ∈ I.sigmaAlgebra, I.measure (S.action g '' A) = I.measure A :=
  I.invariantUnderAction

end DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean
end HautevilleHouse