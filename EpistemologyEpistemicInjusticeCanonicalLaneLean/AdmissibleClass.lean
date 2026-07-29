import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyEpistemicInjusticeCanonicalLaneLean

structure EpistemicInjusticeAdmittedObject where
  socialContext : Type
  testimonialInjusticeClaim : Prop
  hermeneuticalInjusticeClaim : Prop
  credibilityDeficitClaim : Prop

structure AdmissibleClass where
  object : EpistemicInjusticeAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.testimonialInjusticeClaim ∨ A.object.hermeneuticalInjusticeClaim ∨ A.object.credibilityDeficitClaim) ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end EpistemologyEpistemicInjusticeCanonicalLaneLean
end HautevilleHouse