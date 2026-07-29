import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean

structure GroupCocycle (S : TransformationGroupSystem) where
  cocycleMap : S.group → S.stateSpace → ℝ
  cocycleIdentity : ∀ x, cocycleMap 1 x = 0
  cocycleProperty : ∀ g h x, cocycleMap (g * h) x = cocycleMap g (S.action h x) + cocycleMap h x

theorem cocycle_identity_property (S : TransformationGroupSystem) (C : GroupCocycle S) :
  C.cocycleIdentity :=
  C.cocycleIdentity

theorem cocycle_property_holds (S : TransformationGroupSystem) (C : GroupCocycle S) :
  ∀ g h x, C.cocycleMap (g * h) x = C.cocycleMap g (S.action h x) + C.cocycleMap h x :=
  C.cocycleProperty

end DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean
end HautevilleHouse