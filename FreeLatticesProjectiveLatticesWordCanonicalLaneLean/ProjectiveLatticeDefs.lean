import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeLatticesProjectiveLatticesWordCanonicalLaneLean

structure ProjectiveLatticePackage where
  baseLattice : Type u
  mappingProperty : Prop
  projectiveObjects : Prop
  freeLatticeProjection : Prop
  wordPreservation : Prop

structure ProjectiveLatticeEvidence (P : ProjectiveLatticePackage) where
  baseLatticeClosed : P.baseLattice
  mappingPropertyClosed : P.mappingProperty
  projectiveObjectsClosed : P.projectiveObjects
  freeLatticeProjectionClosed : P.freeLatticeProjection
  wordPreservationClosed : P.wordPreservation

def ProjectiveLatticeClosed (P : ProjectiveLatticePackage) : Prop :=
  P.baseLattice ∧ P.mappingProperty ∧ P.projectiveObjects ∧ P.freeLatticeProjection ∧ P.wordPreservation

theorem projective_lattice_closed_from_evidence (P : ProjectiveLatticePackage)
    (E : ProjectiveLatticeEvidence P) : ProjectiveLatticeClosed P := by
  exact And.intro E.baseLatticeClosed
    (And.intro E.mappingPropertyClosed
      (And.intro E.projectiveObjectsClosed
        (And.intro E.freeLatticeProjectionClosed E.wordPreservationClosed)))

end FreeLatticesProjectiveLatticesWordCanonicalLaneLean
end HautevilleHouse
