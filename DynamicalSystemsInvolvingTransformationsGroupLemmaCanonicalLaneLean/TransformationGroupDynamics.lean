import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean

structure TransformationGroupSystem where
  stateSpace : Type u
  group : Type v
  action : group → stateSpace → stateSpace
  groupOperations : Mul group ∧ Inv group ∧ Group group
  actionRespectsGroup : ∀ g h x, action (g * h) x = action g (action h x)
  continuity : Prop

structure TransformationGroupEvidence (S : TransformationGroupSystem) where
  groupLawValid : S.groupOperations.1 ∧ S.groupOperations.2.1 ∧ S.groupOperations.2.2
  actionCompatible : S.actionRespectsGroup
  continuousAction : S.continuity

def TransformationGroupClosed (S : TransformationGroupSystem) : Prop :=
  (S.groupOperations.1 ∧ S.groupOperations.2.1 ∧ S.groupOperations.2.2) ∧
  S.actionRespectsGroup ∧ S.continuity

theorem transformation_group_closed_from_evidence (S : TransformationGroupSystem)
    (E : TransformationGroupEvidence S) : TransformationGroupClosed S := by
  exact And.intro (And.intro (And.intro E.groupLawValid.1 E.groupLawValid.2.1) E.groupLawValid.2.2)
    (And.intro E.actionCompatible E.continuousAction)

end DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean
end HautevilleHouse