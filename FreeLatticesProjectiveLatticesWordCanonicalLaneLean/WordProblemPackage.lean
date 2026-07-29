import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeLatticesProjectiveLatticesWordCanonicalLaneLean

structure WordProblemPackage where
  freeLattice : FreeLattice
  wordEquivalenceDecidable : Prop
  wordEquivalenceAlgorithm : Prop
  algorithmCorrect : Prop
  decidableEvidence : wordEquivalenceDecidable
  algorithmEvidence : wordEquivalenceAlgorithm
  correctEvidence : algorithmCorrect

structure WordProblemEvidence (W : WordProblemPackage) where
  decidableClosed : W.wordEquivalenceDecidable
  algorithmClosed : W.wordEquivalenceAlgorithm
  correctClosed : W.algorithmCorrect

def WordProblemClosed (W : WordProblemPackage) : Prop :=
  W.wordEquivalenceDecidable ∧ W.wordEquivalenceAlgorithm ∧ W.algorithmCorrect

theorem word_problem_closed_from_evidence (W : WordProblemPackage)
    (E : WordProblemEvidence W) : WordProblemClosed W := by
  exact And.intro E.decidableClosed (And.intro E.algorithmClosed E.correctClosed)

end FreeLatticesProjectiveLatticesWordCanonicalLaneLean
end HautevilleHouse
