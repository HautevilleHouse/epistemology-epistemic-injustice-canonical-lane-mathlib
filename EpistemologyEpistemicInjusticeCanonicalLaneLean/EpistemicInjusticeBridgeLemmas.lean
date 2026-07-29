import EpistemologyEpistemicInjusticeCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyEpistemicInjusticeCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EpistemicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EpistemologyEpistemicInjusticeCanonicalLaneLean
end HautevilleHouse
