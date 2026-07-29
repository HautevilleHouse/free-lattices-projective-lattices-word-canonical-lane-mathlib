import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeLatticesProjectiveLatticesWordCanonicalLaneLean

structure ProjectiveCoverPackage where
  lattice : ProjectiveLatticePackage
  freeObject : FreeLatticePackage
  epimorphism : LatticeHomomorphismPackage
  kernel : Type u
  kernelAxioms : Prop
  epimorphismClosed : epimorphism.preservesOperations ∧ epimorphism.homomorphismAxioms
  kernelAxiomsClosed : kernelAxioms
  coverProperty : Prop
  coverPropertyClosed : coverProperty

structure ProjectiveCoverEvidence (C : ProjectiveCoverPackage) where
  epimorphismClosed : C.epimorphismClosed
  kernelAxiomsClosed : C.kernelAxioms
  coverPropertyClosed : C.coverProperty

def ProjectiveCoverClosed (C : ProjectiveCoverPackage) : Prop :=
  C.epimorphismClosed ∧ C.kernelAxioms ∧ C.coverProperty

theorem projective_cover_closed_from_evidence
    (C : ProjectiveCoverPackage) (E : ProjectiveCoverEvidence C) :
    ProjectiveCoverClosed C := by
  exact And.intro E.epimorphismClosed
    (And.intro E.kernelAxiomsClosed E.coverPropertyClosed)

end FreeLatticesProjectiveLatticesWordCanonicalLaneLean
end HautevilleHouse