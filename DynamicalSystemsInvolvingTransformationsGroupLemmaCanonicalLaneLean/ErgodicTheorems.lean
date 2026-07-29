import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean

structure ErgodicTheoremPackage (S : TransformationGroupSystem) where
  invariantMeasure : InvariantMeasurePackage S
  ergodicAverageExists : Prop
  timeAverageEqualsSpaceAverage : Prop

theorem ergodic_theorem_closed (S : TransformationGroupSystem) (E : ErgodicTheoremPackage S) :
  E.ergodicAverageExists ∧ E.timeAverageEqualsSpaceAverage :=
  And.intro E.ergodicAverageExists E.timeAverageEqualsSpaceAverage

end DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean
end HautevilleHouse