import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyEpistemicInjusticeCanonicalLaneLean

structure EpistemicInjusticeModelPackage where
  testimonialInjustice : Prop
  hermeneuticalInjustice : Prop
  systemicBias : Prop
  epistemicTrust : Prop

structure EpistemicInjusticeModelEvidence (M : EpistemicInjusticeModelPackage) where
  testimonialInjusticeClosed : M.testimonialInjustice
  hermeneuticalInjusticeClosed : M.hermeneuticalInjustice
  systemicBiasClosed : M.systemicBias
  epistemicTrustClosed : M.epistemicTrust

def EpistemicInjusticeModelClosed (M : EpistemicInjusticeModelPackage) : Prop :=
  M.testimonialInjustice ∧ M.hermeneuticalInjustice ∧ M.systemicBias ∧ M.epistemicTrust

theorem epistemic_injustice_model_closed_from_evidence (M : EpistemicInjusticeModelPackage)
    (E : EpistemicInjusticeModelEvidence M) : EpistemicInjusticeModelClosed M := by
  exact And.intro E.testimonialInjusticeClosed
    (And.intro E.hermeneuticalInjusticeClosed
      (And.intro E.systemicBiasClosed E.epistemicTrustClosed))

end EpistemologyEpistemicInjusticeCanonicalLaneLean
end HautevilleHouse