import DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean.DynamicalSystemObject

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean

structure ErgodicDecompositionPackage (D : DynamicalAdmittedObject) where
  invariantSetsPartition : Prop
  ergodicComponentsExist : Prop
  decompositionMeasure : Prop

structure ErgodicDecompositionEvidence (D : DynamicalAdmittedObject) (E : ErgodicDecompositionPackage D) where
  invariantSetsPartitionClosed : E.invariantSetsPartition
  ergodicComponentsExistClosed : E.ergodicComponentsExist
  decompositionMeasureClosed : E.decompositionMeasure

def ErgodicDecompositionClosed (D : DynamicalAdmittedObject) (E : ErgodicDecompositionPackage D) : Prop :=
  E.invariantSetsPartition ∧ E.ergodicComponentsExist ∧ E.decompositionMeasure

theorem ergodic_decomposition_closed_from_evidence (D : DynamicalAdmittedObject) (E : ErgodicDecompositionPackage D) (Ev : ErgodicDecompositionEvidence D E) :
    ErgodicDecompositionClosed D E := by
  exact And.intro Ev.invariantSetsPartitionClosed (And.intro Ev.ergodicComponentsExistClosed Ev.decompositionMeasureClosed)

end DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean
end HautevilleHouse