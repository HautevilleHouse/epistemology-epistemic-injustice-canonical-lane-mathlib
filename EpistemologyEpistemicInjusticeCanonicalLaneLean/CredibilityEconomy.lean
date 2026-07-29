import HautevilleHouse.EpistemologyEpistemicInjusticeCanonicalLaneLean.HermeneuticalInjusticePackage

namespace HautevilleHouse
namespace EpistemologyEpistemicInjusticeCanonicalLaneLean

structure CredibilityEconomyPackage {A : AdmissibleClass}
    {T : TestimonialInjusticePackage} {H : HermeneuticalInjusticePackage T} where
  credibilitySurplus : Prop
  credibilityDeficit : Prop
  identityPower : Prop
  structuralBias : Prop

structure CredibilityEconomyEvidence {A : AdmissibleClass}
    {T : TestimonialInjusticePackage} {H : HermeneuticalInjusticePackage T}
    (C : CredibilityEconomyPackage H) where
  credibilitySurplusClosed : C.credibilitySurplus
  credibilityDeficitClosed : C.credibilityDeficit
  identityPowerClosed : C.identityPower
  structuralBiasClosed : C.structuralBias

def CredibilityEconomyClosed {A : AdmissibleClass}
    {T : TestimonialInjusticePackage} {H : HermeneuticalInjusticePackage T}
    (C : CredibilityEconomyPackage H) : Prop :=
  C.credibilitySurplus ∧ C.credibilityDeficit ∧ C.identityPower ∧ C.structuralBias

theorem credibility_economy_closed_from_evidence
    {A : AdmissibleClass} {T : TestimonialInjusticePackage} {H : HermeneuticalInjusticePackage T}
    (C : CredibilityEconomyPackage H) (E : CredibilityEconomyEvidence C) :
    CredibilityEconomyClosed C := by
  exact And.intro E.credibilitySurplusClosed
    (And.intro E.credibilityDeficitClosed
      (And.intro E.identityPowerClosed E.structuralBiasClosed))

end EpistemologyEpistemicInjusticeCanonicalLaneLean
end HautevilleHouse