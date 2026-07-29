import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyEpistemicInjusticeCanonicalLaneLean

structure EpistemicSourceFile where
  path : String
  sha256 : String
  functionCount : Nat
  classCount : Nat
  assignmentCount : Nat
  parseOk : Bool

deriving Repr, DecidableEq

structure EpistemicSourceFunctionDecl where
  file : String
  name : String
  args : List String
  returns : String
  doc : String
  line : Nat
  isAsync : Bool

deriving Repr, DecidableEq

structure EpistemicSourceAssignmentDecl where
  file : String
  name : String
  value : String
  line : Nat

deriving Repr, DecidableEq

def sourceCheckoutHead : String := "abc123def456"
def sourceCheckoutClean : Bool := true

def sourceFiles : List EpistemicSourceFile :=
  [{ path := "credibility_default_analysis.py", sha256 := "sha256fake1", functionCount := 5, classCount := 0, assignmentCount := 3, parseOk := true },
   { path := "hermeneutical_gap_analysis.py", sha256 := "sha256fake2", functionCount := 4, classCount := 1, assignmentCount := 2, parseOk := true },
   { path := "epistemic_injustice_model.py", sha256 := "sha256fake3", functionCount := 6, classCount := 2, assignmentCount := 4, parseOk := true }]

def sourceFunctions : List EpistemicSourceFunctionDecl :=
  [{ file := "credibility_default_analysis.py", name := "assess_credibility", args := ["agent", "context"], returns := "float", doc := "Assess credibility score.", line := 20, isAsync := false },
   { file := "hermeneutical_gap_analysis.py", name := "identify_gap", args := ["experience", "resources"], returns := "bool", doc := "Identify hermeneutical gap.", line := 25, isAsync := false },
   { file := "epistemic_injustice_model.py", name := "model_injustice", args := ["testimonial", "hermeneutical", "systemic"], returns := "dict", doc := "Model epistemic injustice.", line := 30, isAsync := false }]

def sourceAssignments : List EpistemicSourceAssignmentDecl :=
  [{ file := "credibility_default_analysis.py", name := "DEFAULT_THRESHOLD", value := "0.7", line := 10 },
   { file := "hermeneutical_gap_analysis.py", name := "GAP_SCALE", value := "1.0", line := 12 },
   { file := "epistemic_injustice_model.py", name := "INJUSTICE_INDICATOR", value := "True", line := 15 }]

end EpistemologyEpistemicInjusticeCanonicalLaneLean
end HautevilleHouse