import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Dynamics.Flow

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean

structure MorseSmaleChainPackage {G : TransformationsGroupPackage} where
  chainComponents : List G.GroupElement
  dynamicsPreservingRelations : Prop
  boundaryLinking : Prop
  connectednessUnderIteration : Prop

structure MorseSmaleChainEvidence {G : TransformationsGroupPackage} (C : MorseSmaleChainPackage G) where
  dynamicsPreservingRelationsClosed : C.dynamicsPreservingRelations
  boundaryLinkingClosed : C.boundaryLinking
  connectednessUnderIterationClosed : C.connectednessUnderIteration

def MorseSmaleChainClosed {G : TransformationsGroupPackage} (C : MorseSmaleChainPackage G) : Prop :=
  C.dynamicsPreservingRelations ∧ C.boundaryLinking ∧ C.connectednessUnderIteration

theorem morse_smale_chain_closed_from_evidence
  {G : TransformationsGroupPackage} (C : MorseSmaleChainPackage G) (E : MorseSmaleChainEvidence C) :
  MorseSmaleChainClosed C := by
  exact And.intro E.dynamicsPreservingRelationsClosed
    (And.intro E.boundaryLinkingClosed E.connectednessUnderIterationClosed)

end DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean
end HautevilleHouse