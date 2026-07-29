import HautevilleHouse.EpistemologyEpistemicInjusticeCanonicalLaneLean.TestimonialInjusticePackage

namespace HautevilleHouse
namespace EpistemologyEpistemicInjusticeCanonicalLaneLean

structure HermeneuticalInjusticePackage {A : AdmissibleClass}
    (T : TestimonialInjusticePackage) where
  hermeneuticalGap : Prop
  structuralPrejudice : Prop
  collectiveInterpretiveDeficit : Prop
  marginalizationFeedback : Prop

structure HermeneuticalInjusticeEvidence {A : AdmissibleClass}
    {T : TestimonialInjusticePackage} (H : HermeneuticalInjusticePackage T) where
  hermeneuticalGapClosed : H.hermeneuticalGap
  structuralPrejudiceClosed : H.structuralPrejudice
  collectiveInterpretiveDeficitClosed : H.collectiveInterpretiveDeficit
  marginalizationFeedbackClosed : H.marginalizationFeedback

def HermeneuticalInjusticeClosed {A : AdmissibleClass}
    {T : TestimonialInjusticePackage} (H : HermeneuticalInjusticePackage T) : Prop :=
  H.hermeneuticalGap ∧ H.structuralPrejudice ∧ H.collectiveInterpretiveDeficit ∧ H.marginalizationFeedback

theorem hermeneutical_injustice_closed_from_evidence
    {A : AdmissibleClass} {T : TestimonialInjusticePackage}
    (H : HermeneuticalInjusticePackage T) (E : HermeneuticalInjusticeEvidence H) :
    HermeneuticalInjusticeClosed H := by
  exact And.intro E.hermeneuticalGapClosed
    (And.intro E.structuralPrejudiceClosed
      (And.intro E.collectiveInterpretiveDeficitClosed E.marginalizationFeedbackClosed))

end EpistemologyEpistemicInjusticeCanonicalLaneLean
end HautevilleHouse