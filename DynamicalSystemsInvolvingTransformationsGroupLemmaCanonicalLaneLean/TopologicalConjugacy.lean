import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean

structure TopologicalConjugacyPackage {G : TransformationsGroupPackage} (F1 F2 : DynamicalSystemPackage G) where
  homeomorphism : Type u
  conjugacyEquationSatisfied : Prop
  invariantStructurePreserved : Prop
  spectralCorrespondence : Prop

structure TopologicalConjugacyEvidence {G : TransformationsGroupPackage}
  {F1 F2 : DynamicalSystemPackage G} (C : TopologicalConjugacyPackage F1 F2) where
  conjugacyEquationSatisfiedClosed : C.conjugacyEquationSatisfied
  invariantStructurePreservedClosed : C.invariantStructurePreserved
  spectralCorrespondenceClosed : C.spectralCorrespondence

def TopologicalConjugacyClosed {G : TransformationsGroupPackage}
  {F1 F2 : DynamicalSystemPackage G} (C : TopologicalConjugacyPackage F1 F2) : Prop :=
  C.conjugacyEquationSatisfied ∧ C.invariantStructurePreserved ∧ C.spectralCorrespondence

theorem topological_conjugacy_closed_from_evidence
  {G : TransformationsGroupPackage} {F1 F2 : DynamicalSystemPackage G}
  (C : TopologicalConjugacyPackage F1 F2) (E : TopologicalConjugacyEvidence C) :
  TopologicalConjugacyClosed C := by
  exact And.intro E.conjugacyEquationSatisfiedClosed
    (And.intro E.invariantStructurePreservedClosed E.spectralCorrespondenceClosed)

end DynamicalSystemsInvolvingTransformationsGroupLemmaCanonicalLaneLean
end HautevilleHouse