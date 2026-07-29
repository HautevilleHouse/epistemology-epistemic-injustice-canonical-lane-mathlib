import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyEpistemicInjusticeCanonicalLaneLean

structure CredibilityDefaultPackage where
  credibilityScore : Prop
  deficitCondition : Prop
  surplusCondition : Prop
  testimonialJustification : Prop

structure CredibilityDefaultEvidence (C : CredibilityDefaultPackage) where
  credibilityScoreClosed : C.credibilityScore
  deficitConditionClosed : C.deficitCondition
  surplusConditionClosed : C.surplusCondition
  testimonialJustificationClosed : C.testimonialJustification

def CredibilityDefaultClosed (C : CredibilityDefaultPackage) : Prop :=
  C.credibilityScore ∧ C.deficitCondition ∧ C.surplusCondition ∧ C.testimonialJustification

theorem credibility_default_closed_from_evidence (C : CredibilityDefaultPackage)
    (E : CredibilityDefaultEvidence C) : CredibilityDefaultClosed C := by
  exact And.intro E.credibilityScoreClosed
    (And.intro E.deficitConditionClosed
      (And.intro E.surplusConditionClosed E.testimonialJustificationClosed))

end EpistemologyEpistemicInjusticeCanonicalLaneLean
end HautevilleHouse