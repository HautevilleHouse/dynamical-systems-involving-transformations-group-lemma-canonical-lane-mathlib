import DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean

structure DynamicalSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  groupAction : carrier → carrier

structure DynamicalAdmittedObject where
  space : DynamicalSpace
  invariantMeasure : Prop
  ergodicComponent : Prop
  spectralGap : Prop
  conclusion : spectralGap

def DynamicalWitnessClosed (O : DynamicalAdmittedObject) : Prop :=
  O.spectralGap

end DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean
end HautevilleHouse