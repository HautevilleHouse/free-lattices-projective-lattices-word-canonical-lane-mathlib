import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeLatticesProjectiveLatticesWordCanonicalLaneLean

structure ProjectiveLatticePackage where
  L : FreeLattice
  projectiveObject : Prop
  freeObject : Prop
  projectionExists : Prop
  freeLift : Prop
  projectiveEvidence : projectiveObject
  freeEvidence : freeObject
  projectionEvidence : projectionExists
  liftEvidence : freeLift

structure ProjectiveLatticeEvidence (P : ProjectiveLatticePackage) where
  projectiveClosed : P.projectiveObject
  freeClosed : P.freeObject
  projectionClosed : P.projectionExists
  liftClosed : P.freeLift

def ProjectiveLatticeClosed (P : ProjectiveLatticePackage) : Prop :=
  P.projectiveObject ∧ P.freeObject ∧ P.projectionExists ∧ P.freeLift

theorem projective_lattice_closed_from_evidence (P : ProjectiveLatticePackage)
    (E : ProjectiveLatticeEvidence P) : ProjectiveLatticeClosed P := by
  exact And.intro E.projectiveClosed (And.intro E.freeClosed (And.intro E.projectionClosed E.liftClosed))

end FreeLatticesProjectiveLatticesWordCanonicalLaneLean
end HautevilleHouse
