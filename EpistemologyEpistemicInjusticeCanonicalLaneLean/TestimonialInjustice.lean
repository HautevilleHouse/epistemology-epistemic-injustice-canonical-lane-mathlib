import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyEpistemicInjusticeCanonicalLaneLean

structure TestimonialInjusticePackage where
  speakerIdentity : Type
  credibilityDeficit : Prop
  identityPrejudice : Prop
  silencing : Prop

structure TestimonialInjusticeEvidence (T : TestimonialInjusticePackage) where
  credibilityDeficitClosed : T.credibilityDeficit
  identityPrejudiceClosed : T.identityPrejudice
  silencingClosed : T.silencing

def TestimonialInjusticeClosed (T : TestimonialInjusticePackage) : Prop :=
  T.credibilityDeficit ∧ T.identityPrejudice ∧ T.silencing

theorem testimonial_injustice_closed_from_evidence (T : TestimonialInjusticePackage)
    (E : TestimonialInjusticeEvidence T) : TestimonialInjusticeClosed T := by
  exact And.intro E.credibilityDeficitClosed
    (And.intro E.identityPrejudiceClosed E.silencingClosed)

end EpistemologyEpistemicInjusticeCanonicalLaneLean
end HautevilleHouse