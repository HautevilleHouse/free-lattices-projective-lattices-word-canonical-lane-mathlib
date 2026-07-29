import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeLatticesProjectiveLatticesWordCanonicalLaneLean

structure LatticeHomomorphismPackage where
  source : ProjectiveLatticePackage
  target : ProjectiveLatticePackage
  map : Type u
  preservesOperations : Prop
  homomorphismAxioms : Prop
  preservesOperationsClosed : preservesOperations
  homomorphismAxiomsClosed : homomorphismAxioms

structure LatticeHomomorphismEvidence (H : LatticeHomomorphismPackage) where
  preservesOperationsClosed : H.preservesOperations
  homomorphismAxiomsClosed : H.homomorphismAxioms

def LatticeHomomorphismClosed (H : LatticeHomomorphismPackage) : Prop :=
  H.preservesOperations ∧ H.homomorphismAxioms

theorem lattice_homomorphism_closed_from_evidence
    (H : LatticeHomomorphismPackage) (E : LatticeHomomorphismEvidence H) :
    LatticeHomomorphismClosed H := by
  exact And.intro E.preservesOperationsClosed E.homomorphismAxiomsClosed

end FreeLatticesProjectiveLatticesWordCanonicalLaneLean
end HautevilleHouse