import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeLatticesProjectiveLatticesWordCanonicalLaneLean

structure TheoremStatement where
  freeLatticeConstructed : Prop
  projectiveLatticeCharacterized : Prop
  wordProblemDecidable : Prop
  bridgeCondition : Prop
  gateCondition : Prop
  carriedRemainder : Prop

structure TheoremStatementEvidence (T : TheoremStatement) where
  freeLatticeConstructedClosed : T.freeLatticeConstructed
  projectiveLatticeCharacterizedClosed : T.projectiveLatticeCharacterized
  wordProblemDecidableClosed : T.wordProblemDecidable
  bridgeConditionClosed : T.bridgeCondition
  gateConditionClosed : T.gateCondition
  carriedRemainderClosed : T.carriedRemainder

def TheoremStatementClosed (T : TheoremStatement) : Prop :=
  T.freeLatticeConstructed ∧ T.projectiveLatticeCharacterized ∧ T.wordProblemDecidable ∧
  T.bridgeCondition ∧ T.gateCondition ∧ T.carriedRemainder

theorem theorem_statement_closed_from_evidence (T : TheoremStatement)
    (E : TheoremStatementEvidence T) : TheoremStatementClosed T := by
  exact And.intro E.freeLatticeConstructedClosed
    (And.intro E.projectiveLatticeCharacterizedClosed
      (And.intro E.wordProblemDecidableClosed
        (And.intro E.bridgeConditionClosed
          (And.intro E.gateConditionClosed E.carriedRemainderClosed))))

end FreeLatticesProjectiveLatticesWordCanonicalLaneLean
end HautevilleHouse
