import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EpistemologyEpistemicInjusticeCanonicalLaneLean

structure EpistemicSourceDependency where
  sourceName : String
  dependencyKind : String
  module : String
  alias : String
  level : Nat

deriving Repr, DecidableEq

structure EpistemicPathDependency where
  sourceName : String
  path : String
  role : String
  line : Nat

deriving Repr, DecidableEq

def sourceImportDependencies : List EpistemicSourceDependency :=
  [{ sourceName := "TestimonialInjusticeTheory", dependencyKind := "import", module := "CredibilityDefaultPackage", alias := "", level := 0 },
   { sourceName := "HermeneuticalGapTheory", dependencyKind := "import", module := "HermeneuticalGapPackage", alias := "", level := 0 },
   { sourceName := "SystemicBiasTheory", dependencyKind := "from_import", module := "EpistemicInjusticeModelPackage", alias := "", level := 1 }]

def sourcePathDependencies : List EpistemicPathDependency :=
  [{ sourceName := "CredibilityDefaultPackage", path := "credibility_default_inputs.json", role := "artifact", line := 10 },
   { sourceName := "HermeneuticalGapPackage", path := "hermeneutical_gap_inputs.json", role := "artifact", line := 15 },
   { sourceName := "EpistemicInjusticeModelPackage", path := "epistemic_injustice_model_inputs.json", role := "artifact", line := 20 }]

def sourceImportDependencyCount : Nat := 3
def sourcePathDependencyCount : Nat := 3

theorem source_import_dependency_count_checked : sourceImportDependencies.length = 3 := by
  native_dec_trivial

theorem source_path_dependency_count_checked : sourcePathDependencies.length = 3 := by
  native_dec_trivial

end EpistemologyEpistemicInjusticeCanonicalLaneLean
end HautevilleHouse