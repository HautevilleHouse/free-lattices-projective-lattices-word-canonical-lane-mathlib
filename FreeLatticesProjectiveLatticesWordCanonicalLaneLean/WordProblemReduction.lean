import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FreeLatticesProjectiveLatticesWordCanonicalLaneLean.FreeLatticeStructure

namespace HautevilleHouse
namespace FreeLatticesProjectiveLatticesWordCanonicalLaneLean

structure WordProblemPackage (F : FreeLatticePackage) where
  wordEquivalence : F.wordSet → F.wordSet → Prop
  wordProblemDecidable : Prop
  wordProblemComplexity : ℕ
  reductionFunction : F.wordSet → F.wordSet

structure WordProblemEvidence {F : FreeLatticePackage} (W : WordProblemPackage F) where
  wordProblemDecidableClosed : W.wordProblemDecidable
  reductionIdempotent : ∀ (w : F.wordSet), W.reductionFunction (W.reductionFunction w) = W.reductionFunction w

def WordProblemClosed {F : FreeLatticePackage} (W : WordProblemPackage F) : Prop :=
  W.wordProblemDecidable

theorem word_problem_closed_from_evidence {F : FreeLatticePackage}
    (W : WordProblemPackage F) (E : WordProblemEvidence W) :
    WordProblemClosed W := by
  exact E.wordProblemDecidableClosed

end FreeLatticesProjectiveLatticesWordCanonicalLaneLean
end HautevilleHouse