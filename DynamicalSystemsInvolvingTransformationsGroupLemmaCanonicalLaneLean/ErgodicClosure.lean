import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean

structure ErgodicClosureEvidence where
  ergodicityEstablished : Prop
  mixingProperties : Prop
  spectralGap : Prop

def ergodicClosureCheck (E : ErgodicClosureEvidence) : Prop := E.ergodicityEstablished ∧ E.mixingProperties ∧ E.spectralGap

end DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean
end HautevilleHouse
