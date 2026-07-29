import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeLatticesProjectiveLatticesWordCanonicalLaneLean

structure WordProblemPackage (S : Type) where
  freeLattice : FreeLatticePackage S
  wordEquivalence : freeLattice.words → freeLattice.words → Prop
  decidability : Prop

structure WordProblemEvidence (S : Type) (W : WordProblemPackage S) where
  decidabilityClosed : W.decidability

def WordProblemClosed (S : Type) (W : WordProblemPackage S) : Prop :=
  W.decidability

theorem word_problem_closed_from_evidence (S : Type) (W : WordProblemPackage S) (E : WordProblemEvidence S W) :
    WordProblemClosed S W := by
  exact E.decidabilityClosed

end FreeLatticesProjectiveLatticesWordCanonicalLaneLean
end HautevilleHouse