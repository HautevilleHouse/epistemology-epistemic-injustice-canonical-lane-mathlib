import EpistemologyEpistemicInjusticeCanonicalLaneLean.FinalTheorem
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyEpistemicInjusticeCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  epistemicConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceRepository : String := "epistemology-epistemic-injustice-canonical-lane"
def sourceDescription : String := "epistemic injustice canonical object"

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := sourceRepository
  , theoremName := sourceRepository
  , theoremObject := sourceDescription
  , classicalBoundary := "carried classical boundary"
  , epistemicConstrainedStatement := "epistemic-constrained theorem certificate internalized through bridge and gate"
  , certificateLane := "epistemic_constrained"
  , carriedRemainder := "classical source boundary carried by theoremBoundaryOpen"
  }

theorem theorem_statement_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

end EpistemologyEpistemicInjusticeCanonicalLaneLean
end HautevilleHouse