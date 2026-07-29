import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyEpistemicInjusticeCanonicalLaneLean

structure EpistemicSituation where
  testifier : Type
  audience : Type
  credibilityDeficit : Prop
  hermeneuticalMarginalization : Prop
  identityPrejudice : Prop

structure EpistemicAdmittedObject where
  situation : EpistemicSituation
  injusticeClaimed : Prop
  resourcesAvailable : Prop
  conclusion : injusticeClaimed ∧ resourcesAvailable

structure AdmissibleClass where
  object : EpistemicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def EpistemicWitnessClosed (O : EpistemicAdmittedObject) : Prop :=
  O.conclusion

end EpistemologyEpistemicInjusticeCanonicalLaneLean
end HautevilleHouse
