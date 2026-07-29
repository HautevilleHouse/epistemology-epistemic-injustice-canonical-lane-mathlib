import canonicalLaneMathlib.EpistemicResistance

namespace HautevilleHouse
namespace EpistemologyEpistemicInjusticeCanonicalLaneLean

structure EpistemicResistancePackage (A : AdmissibleClass) where
  counterNarrative : Prop
  epistemicActivism : Prop
  solidarity : Prop
  transformativePractice : Prop

structure EpistemicResistanceEvidence (A : AdmissibleClass) (R : EpistemicResistancePackage A) where
  counterNarrativeClosed : R.counterNarrative
  epistemicActivismClosed : R.epistemicActivism
  solidarityClosed : R.solidarity
  transformativePracticeClosed : R.transformativePractice

def EpistemicResistanceClosed (A : AdmissibleClass) (R : EpistemicResistancePackage A) : Prop :=
  R.counterNarrative ∧ R.epistemicActivism ∧ R.solidarity ∧ R.transformativePractice

theorem epistemic_resistance_closed_from_evidence
    (A : AdmissibleClass) (R : EpistemicResistancePackage A)
    (E : EpistemicResistanceEvidence A R) : EpistemicResistanceClosed A R := by
  exact And.intro E.counterNarrativeClosed
    (And.intro E.epistemicActivismClosed
      (And.intro E.solidarityClosed E.transformativePracticeClosed))

end EpistemologyEpistemicInjusticeCanonicalLaneLean
end HautevilleHouse