import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FreeLatticesProjectiveLatticesWordCanonicalLaneLean.FreeLatticeStructure

namespace HautevilleHouse
namespace FreeLatticesProjectiveLatticesWordCanonicalLaneLean

structure ProjectiveLatticePackage {F : FreeLatticePackage} where
  underlyingLattice : Type w
  latticeOperations : underlyingLattice → underlyingLattice → underlyingLattice
  projectiveProperty : Prop
  freeLatticeHomomorphism : F.wordSet → underlyingLattice

structure ProjectiveLatticeEvidence {F : FreeLatticePackage}
    (P : ProjectiveLatticePackage F) where
  projectivePropertyClosed : P.projectiveProperty
  freeLatticeHomomorphismCompatible : ∀ (a b : F.wordSet),
    P.freeLatticeHomomorphism (F.joinOperator a b) = P.latticeOperations (P.freeLatticeHomomorphism a) (P.freeLatticeHomomorphism b) ∧
    P.freeLatticeHomomorphism (F.meetOperator a b) = P.latticeOperations (P.freeLatticeHomomorphism a) (P.freeLatticeHomomorphism b)

def ProjectiveLatticeClosed {F : FreeLatticePackage} (P : ProjectiveLatticePackage F) : Prop :=
  P.projectiveProperty

theorem projective_lattice_closed_from_evidence {F : FreeLatticePackage}
    (P : ProjectiveLatticePackage F) (E : ProjectiveLatticeEvidence P) :
    ProjectiveLatticeClosed P := by
  exact E.projectivePropertyClosed

end FreeLatticesProjectiveLatticesWordCanonicalLaneLean
end HautevilleHouse