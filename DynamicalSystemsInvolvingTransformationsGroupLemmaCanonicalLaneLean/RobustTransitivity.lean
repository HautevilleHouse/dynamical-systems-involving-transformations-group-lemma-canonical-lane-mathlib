import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean

structure RobustTransitivityPackage (S : TransformationGroupSystem) where
  topologicallyTransitive : Prop
  denseOrbitExists : Prop
  robustUnderPerturbation : Prop

theorem robust_transitivity_closed (S : TransformationGroupSystem) (R : RobustTransitivityPackage S) :
  R.topologicallyTransitive ∧ R.denseOrbitExists ∧ R.robustUnderPerturbation :=
  And.intro R.topologicallyTransitive (And.intro R.denseOrbitExists R.robustUnderPerturbation)

end DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean
end HautevilleHouse