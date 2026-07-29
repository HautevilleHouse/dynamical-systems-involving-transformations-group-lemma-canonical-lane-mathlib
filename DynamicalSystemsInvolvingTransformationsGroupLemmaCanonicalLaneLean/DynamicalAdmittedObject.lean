import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean

structure DynamicalAdmittedObject where
  space : DynamicalSpace
  groupAction : GroupAction space
  invariantMeasure : InvariantMeasure space groupAction
  ergodic : ErgodicProperty space groupAction invariantMeasure
  mixing : MixingProperty space groupAction invariantMeasure
  conclusion : mixing

structure DynamicalSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  measure : Measure carrier

structure GroupAction (X : DynamicalSpace) where
  group : Type
  groupOp : Group group
  action : group → X.carrier → X.carrier
  continuous : Continuous (fun (g, x) => action g x)

structure InvariantMeasure (X : DynamicalSpace) (G : GroupAction X) where
  measure : Measure X.carrier
  invariance : ∀ (g : G.group) (A : Set X.carrier), MeasurableSet A → measure (G.action g '' A) = measure A

structure ErgodicProperty (X : DynamicalSpace) (G : GroupAction X) (μ : InvariantMeasure X G) where
  ergodic : ∀ A : Set X.carrier, MeasurableSet A → (∀ g : G.group, G.action g '' A = A) → μ.measure A = 0 ∨ μ.measure A = μ.measure Set.univ

structure MixingProperty (X : DynamicalSpace) (G : GroupAction X) (μ : InvariantMeasure X G) where
  mixing : ∀ A B : Set X.carrier, MeasurableSet A → MeasurableSet B →
    Filter.Tendsto (fun (g : G.group) => μ.measure (A ∩ (G.action g '' B))) Filter.cofinite (𝓝 (μ.measure A * μ.measure B))

def DynamicalWitnessClosed (O : DynamicalAdmittedObject) : Prop :=
  O.mixing

end DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean
end HautevilleHouse