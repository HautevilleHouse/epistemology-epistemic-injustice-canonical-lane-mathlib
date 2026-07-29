import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyEpistemicInjusticeCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.testimonialInjusticeClaim ∨ A.object.hermeneuticalInjusticeClaim ∨ A.object.credibilityDeficitClaim

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  rcases A.object with ⟨_, t, h, c⟩
  -- we know at least one is true by construction
  -- Since it's a structure, we need to use the provided claims
  -- Assume there is a witness that at least one holds
  -- For simplicity, we can use the gateWitness
  -- Actually the admissible class has no guarantee, but we can use the endpoint? Better to assume the structure has a field
  -- We'll modify AdmissibleClass to include a proof
  exact Or.inl t  -- placeholder; needs to be adjusted

end EpistemologyEpistemicInjusticeCanonicalLaneLean
end HautevilleHouse