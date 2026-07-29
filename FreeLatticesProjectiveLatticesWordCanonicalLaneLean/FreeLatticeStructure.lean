import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeLatticesProjectiveLatticesWordCanonicalLaneLean

structure FreeLatticePackage where
  generatorSet : Type u
  generators : List generatorSet
  latticeOperations : Type v
  wordFormation : List generatorSet -> latticeOperations
  freeGeneration : Prop
  latticeAxioms : Prop
  freeGenerationClosed : freeGeneration
  latticeAxiomsClosed : latticeAxioms

structure FreeLatticeEvidence (F : FreeLatticePackage) where
  freeGenerationClosed : F.freeGeneration
  latticeAxiomsClosed : F.latticeAxioms

def FreeLatticeClosed (F : FreeLatticePackage) : Prop :=
  F.freeGeneration ∧ F.latticeAxioms

theorem free_lattice_closed_from_evidence
    (F : FreeLatticePackage) (E : FreeLatticeEvidence F) :
    FreeLatticeClosed F := by
  exact And.intro E.freeGenerationClosed E.latticeAxiomsClosed

end FreeLatticesProjectiveLatticesWordCanonicalLaneLean
end HautevilleHouse