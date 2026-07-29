import canonicalLaneMathlib.AdmissibleClass
import EpistemologyEpistemicInjusticeCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyEpistemicInjusticeCanonicalLaneLean

structure HermeneuticalInjusticeContext (A : AdmissibleClass) where
  marginalizedGroup : String
  interpretiveResourceGap : Prop
  structuralSilence : Prop

structure HermeneuticalInjusticeEvidence (A : AdmissibleClass) (C : HermeneuticalInjusticeContext A) where
  interpretiveResourceGapClosed : C.interpretiveResourceGap
  structuralSilenceClosed : C.structuralSilence

def HermeneuticalInjusticeClosed (A : AdmissibleClass) (C : HermeneuticalInjusticeContext A) : Prop :=
  C.interpretiveResourceGap ∧ C.structuralSilence

theorem hermeneutical_injustice_closed_from_evidence (A : AdmissibleClass)
    (C : HermeneuticalInjusticeContext A) (E : HermeneuticalInjusticeEvidence A C) :
    HermeneuticalInjusticeClosed A C :=
  And.intro E.interpretiveResourceGapClosed E.structuralSilenceClosed

end EpistemologyEpistemicInjusticeCanonicalLaneLean
end HautevilleHouse
