import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean

structure DynamicalObject where
  carrier : Type u
  dynamics : carrier → carrier
  transformationGroup : Type v
  groupAction : transformationGroup → carrier → carrier
  lemmaConclusion : Prop

structure AdmissibleDynamicalObject where
  object : DynamicalObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def DynamicalWitnessClosed (O : DynamicalObject) : Prop :=
  O.lemmaConclusion

end DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean
end HautevilleHouse