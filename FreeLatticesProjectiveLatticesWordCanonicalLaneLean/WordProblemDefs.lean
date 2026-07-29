import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeLatticesProjectiveLatticesWordCanonicalLaneLean

structure WordProblemPackage where
  alphabet : Type u
  wordEquality : Prop
  latticeTermEquality : Prop
  decisionProcedure : Prop
  wordReduction : Prop

structure WordProblemEvidence (W : WordProblemPackage) where
  alphabetClosed : W.alphabet
  wordEqualityClosed : W.wordEquality
  latticeTermEqualityClosed : W.latticeTermEquality
  decisionProcedureClosed : W.decisionProcedure
  wordReductionClosed : W.wordReduction

def WordProblemClosed (W : WordProblemPackage) : Prop :=
  W.alphabet ∧ W.wordEquality ∧ W.latticeTermEquality ∧ W.decisionProcedure ∧ W.wordReduction

theorem word_problem_closed_from_evidence (W : WordProblemPackage)
    (E : WordProblemEvidence W) : WordProblemClosed W := by
  exact And.intro E.alphabetClosed
    (And.intro E.wordEqualityClosed
      (And.intro E.latticeTermEqualityClosed
        (And.intro E.decisionProcedureClosed E.wordReductionClosed)))

end FreeLatticesProjectiveLatticesWordCanonicalLaneLean
end HautevilleHouse
