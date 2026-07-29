import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean

structure AlgebraicCriterionPackage where
  transformationGroup : Type u
  groupAction : transformationGroup → Type v → Type v
  invariantPolynomials : List (Type v → ℝ)
  orbitClosureCondition : Prop
  fixedPointCriterion : Prop

structure AlgebraicCriterionEvidence (P : AlgebraicCriterionPackage) where
  orbitClosureConditionClosed : P.orbitClosureCondition
  fixedPointCriterionClosed : P.fixedPointCriterion

def AlgebraicCriterionClosed (P : AlgebraicCriterionPackage) : Prop :=
  P.orbitClosureCondition ∧ P.fixedPointCriterion

theorem algebraic_criterion_closed_from_evidence (P : AlgebraicCriterionPackage) (E : AlgebraicCriterionEvidence P) : AlgebraicCriterionClosed P := by
  exact And.intro E.orbitClosureConditionClosed E.fixedPointCriterionClosed

end DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean
end HautevilleHouse