import canonicalLaneMathlib.AdmissibleClass
import EpistemologyEpistemicInjusticeCanonicalLaneLean.BridgeLemmas
import EpistemologyEpistemicInjusticeCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EpistemologyEpistemicInjusticeCanonicalLaneLean

def ConstrainedEpistemicInjusticeClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_epistemic_injustice_endgame (A : AdmissibleClass) :
    ConstrainedEpistemicInjusticeClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EpistemologyEpistemicInjusticeCanonicalLaneLean
end HautevilleHouse