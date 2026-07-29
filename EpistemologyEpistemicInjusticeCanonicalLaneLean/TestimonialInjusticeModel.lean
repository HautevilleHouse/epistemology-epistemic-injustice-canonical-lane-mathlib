import canonicalLaneMathlib.AdmissibleClass
import EpistemologyEpistemicInjusticeCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyEpistemicInjusticeCanonicalLaneLean

structure TestimonialInjusticeContext (A : AdmissibleClass) where
  dominantCulture : String
  credibilityDeficit : Float
  systematicPattern : Prop

structure TestimonialInjusticeEvidence (A : AdmissibleClass) (C : TestimonialInjusticeContext A) where
  credibilityDeficitClosed : C.credibilityDeficit > 0.5
  systematicPatternClosed : C.systematicPattern

def TestimonialInjusticeClosed (A : AdmissibleClass) (C : TestimonialInjusticeContext A) : Prop :=
  C.credibilityDeficit > 0.5 ∧ C.systematicPattern

theorem testimonial_injustice_closed_from_evidence (A : AdmissibleClass) (C : TestimonialInjusticeContext A)
    (E : TestimonialInjusticeEvidence A C) : TestimonialInjusticeClosed A C :=
  And.intro E.credibilityDeficitClosed E.systematicPatternClosed

end EpistemologyEpistemicInjusticeCanonicalLaneLean
end HautevilleHouse
