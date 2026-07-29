import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyEpistemicInjusticeCanonicalLaneLean

structure HermeneuticalGapPackage where
  gapExistence : Prop
  interpretiveResource : Prop
  conceptualDeficit : Prop
  communicativeAgency : Prop

structure HermeneuticalGapEvidence (H : HermeneuticalGapPackage) where
  gapExistenceClosed : H.gapExistence
  interpretiveResourceClosed : H.interpretiveResource
  conceptualDeficitClosed : H.conceptualDeficit
  communicativeAgencyClosed : H.communicativeAgency

def HermeneuticalGapClosed (H : HermeneuticalGapPackage) : Prop :=
  H.gapExistence ∧ H.interpretiveResource ∧ H.conceptualDeficit ∧ H.communicativeAgency

theorem hermeneutical_gap_closed_from_evidence (H : HermeneuticalGapPackage)
    (E : HermeneuticalGapEvidence H) : HermeneuticalGapClosed H := by
  exact And.intro E.gapExistenceClosed
    (And.intro E.interpretiveResourceClosed
      (And.intro E.conceptualDeficitClosed E.communicativeAgencyClosed))

end EpistemologyEpistemicInjusticeCanonicalLaneLean
end HautevilleHouse