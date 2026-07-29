import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyEpistemicInjusticeCanonicalLaneLean

structure CredibilityDeficitPackage where
  socialIdentity : Type
  credibilityRating : Nat -> Prop
  systematicBias : Prop
  cumulativeEffect : Prop

structure CredibilityDeficitEvidence (C : CredibilityDeficitPackage) where
  systematicBiasClosed : C.systematicBias
  cumulativeEffectClosed : C.cumulativeEffect

def CredibilityDeficitClosed (C : CredibilityDeficitPackage) : Prop :=
  C.systematicBias ∧ C.cumulativeEffect

theorem credibility_deficit_closed_from_evidence (C : CredibilityDeficitPackage)
    (E : CredibilityDeficitEvidence C) : CredibilityDeficitClosed C := by
  exact And.intro E.systematicBiasClosed E.cumulativeEffectClosed

end EpistemologyEpistemicInjusticeCanonicalLaneLean
end HautevilleHouse