import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyEpistemicInjusticeCanonicalLaneLean

structure HermeneuticalInjusticePackage where
  structuralInequality : Prop
  interpretiveResources : Prop
  epistemicEdge : Prop

structure HermeneuticalInjusticeEvidence (H : HermeneuticalInjusticePackage) where
  structuralInequalityClosed : H.structuralInequality
  interpretiveResourcesClosed : H.interpretiveResources
  epistemicEdgeClosed : H.epistemicEdge

def HermeneuticalInjusticeClosed (H : HermeneuticalInjusticePackage) : Prop :=
  H.structuralInequality ∧ H.interpretiveResources ∧ H.epistemicEdge

theorem hermeneutical_injustice_closed_from_evidence (H : HermeneuticalInjusticePackage)
    (E : HermeneuticalInjusticeEvidence H) : HermeneuticalInjusticeClosed H := by
  exact And.intro E.structuralInequalityClosed
    (And.intro E.interpretiveResourcesClosed E.epistemicEdgeClosed)

end EpistemologyEpistemicInjusticeCanonicalLaneLean
end HautevilleHouse