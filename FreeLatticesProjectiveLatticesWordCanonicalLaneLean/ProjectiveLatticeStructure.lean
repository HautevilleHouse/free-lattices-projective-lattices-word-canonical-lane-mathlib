import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeLatticesProjectiveLatticesWordCanonicalLaneLean

structure ProjectiveLatticePackage where
  lattice : Type u
  latticeOperations : Type v
  isProjective : Prop
  freeObject : Type w
  liftingProperty : Prop
  latticeAxioms : Prop
  isProjectiveClosed : isProjective
  freeObjectClosed : freeObject
  liftingPropertyClosed : liftingProperty
  latticeAxiomsClosed : latticeAxioms

structure ProjectiveLatticeEvidence (P : ProjectiveLatticePackage) where
  isProjectiveClosed : P.isProjective
  liftingPropertyClosed : P.liftingProperty
  latticeAxiomsClosed : P.latticeAxioms

def ProjectiveLatticeClosed (P : ProjectiveLatticePackage) : Prop :=
  P.isProjective ∧ P.liftingProperty ∧ P.latticeAxioms

theorem projective_lattice_closed_from_evidence
    (P : ProjectiveLatticePackage) (E : ProjectiveLatticeEvidence P) :
    ProjectiveLatticeClosed P := by
  exact And.intro E.isProjectiveClosed
    (And.intro E.liftingPropertyClosed E.latticeAxiomsClosed)

end FreeLatticesProjectiveLatticesWordCanonicalLaneLean
end HautevilleHouse