import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeLatticesProjectiveLatticesWordCanonicalLaneLean

structure FreeLatticePackage where
  generators : Type u
  wordAlgebra : Type v
  relations : Prop
  freeLattice : Type w
  wordEquivalence : Prop

structure FreeLatticeEvidence (F : FreeLatticePackage) where
  generatorsClosed : F.generators
  wordAlgebraClosed : F.wordAlgebra
  relationsClosed : F.relations
  freeLatticeClosed : F.freeLattice
  wordEquivalenceClosed : F.wordEquivalence

def FreeLatticeClosed (F : FreeLatticePackage) : Prop :=
  F.generators ∧ F.wordAlgebra ∧ F.relations ∧ F.freeLattice ∧ F.wordEquivalence

theorem free_lattice_closed_from_evidence (F : FreeLatticePackage)
    (E : FreeLatticeEvidence F) : FreeLatticeClosed F := by
  exact And.intro E.generatorsClosed
    (And.intro E.wordAlgebraClosed
      (And.intro E.relationsClosed
        (And.intro E.freeLatticeClosed E.wordEquivalenceClosed)))

end FreeLatticesProjectiveLatticesWordCanonicalLaneLean
end HautevilleHouse
