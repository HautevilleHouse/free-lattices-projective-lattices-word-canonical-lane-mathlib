import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeLatticesProjectiveLatticesWordCanonicalLaneLean

structure WordConstructionPackage where
  alphabet : Type u
  generators : List alphabet
  freeLattice : FreeLatticePackage
  wordReduction : Type v
  reducedWord : Prop
  wordAxioms : Prop
  reducedWordClosed : reducedWord
  wordAxiomsClosed : wordAxioms

structure WordConstructionEvidence (W : WordConstructionPackage) where
  reducedWordClosed : W.reducedWord
  wordAxiomsClosed : W.wordAxioms

def WordConstructionClosed (W : WordConstructionPackage) : Prop :=
  W.reducedWord ∧ W.wordAxioms

theorem word_construction_closed_from_evidence
    (W : WordConstructionPackage) (E : WordConstructionEvidence W) :
    WordConstructionClosed W := by
  exact And.intro E.reducedWordClosed E.wordAxiomsClosed

end FreeLatticesProjectiveLatticesWordCanonicalLaneLean
end HautevilleHouse