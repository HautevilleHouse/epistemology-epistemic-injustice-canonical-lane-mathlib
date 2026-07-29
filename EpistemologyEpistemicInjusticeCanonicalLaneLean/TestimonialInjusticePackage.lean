import HautevilleHouse.EpistemologyEpistemicInjusticeCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyEpistemicInjusticeCanonicalLaneLean

structure TestimonialInjusticePackage {A : AdmissibleClass} where
  identityPrejudice : Prop
  credibilityDeficit : Prop
  systematicPattern : Prop
  socialPowerImbalance : Prop

structure TestimonialInjusticeEvidence {A : AdmissibleClass} (T : TestimonialInjusticePackage) where
  identityPrejudiceClosed : T.identityPrejudice
  credibilityDeficitClosed : T.credibilityDeficit
  systematicPatternClosed : T.systematicPattern
  socialPowerImbalanceClosed : T.socialPowerImbalance

def TestimonialInjusticeClosed {A : AdmissibleClass} (T : TestimonialInjusticePackage) : Prop :=
  T.identityPrejudice ∧ T.credibilityDeficit ∧ T.systematicPattern ∧ T.socialPowerImbalance

theorem testimonial_injustice_closed_from_evidence
    {A : AdmissibleClass} (T : TestimonialInjusticePackage) (E : TestimonialInjusticeEvidence T) :
    TestimonialInjusticeClosed T := by
  exact And.intro E.identityPrejudiceClosed
    (And.intro E.credibilityDeficitClosed
      (And.intro E.systematicPatternClosed E.socialPowerImbalanceClosed))

end EpistemologyEpistemicInjusticeCanonicalLaneLean
end HautevilleHouse