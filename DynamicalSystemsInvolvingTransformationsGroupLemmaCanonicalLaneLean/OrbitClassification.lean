import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean

structure OrbitClassificationPackage where
  transformationGroup : Type u
  groupAction : transformationGroup → Type v → Type v
  orbitTypes : List (Type v → Prop)
  denseOrbitCondition : Prop
  minimalSetCondition : Prop
  orbitClosureDescription : Prop

structure OrbitClassificationEvidence (P : OrbitClassificationPackage) where
  denseOrbitConditionClosed : P.denseOrbitCondition
  minimalSetConditionClosed : P.minimalSetCondition
  orbitClosureDescriptionClosed : P.orbitClosureDescription

def OrbitClassificationClosed (P : OrbitClassificationPackage) : Prop :=
  P.denseOrbitCondition ∧ P.minimalSetCondition ∧ P.orbitClosureDescription

theorem orbit_classification_closed_from_evidence (P : OrbitClassificationPackage) (E : OrbitClassificationEvidence P) : OrbitClassificationClosed P := by
  exact And.intro E.denseOrbitConditionClosed (And.intro E.minimalSetConditionClosed E.orbitClosureDescriptionClosed)

end DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean
end HautevilleHouse