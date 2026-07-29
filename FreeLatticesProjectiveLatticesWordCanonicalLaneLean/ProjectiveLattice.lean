import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeLatticesProjectiveLatticesWordCanonicalLaneLean

structure ProjectiveLatticeObject (L : Type u) [Lattice L] where
  isProjective : Prop
  mappingProperty : Prop
  mappingPropertyClosed : mappingProperty

structure ProjectiveLatticeEvidence (L : Type u) [Lattice L] (P : ProjectiveLatticeObject L) where
  isProjectiveClosed : P.isProjective
  mappingPropertyClosed : P.mappingProperty

def ProjectiveLatticeClosed (L : Type u) [Lattice L] (P : ProjectiveLatticeObject L) : Prop :=
  P.isProjective ∧ P.mappingProperty

theorem projective_lattice_closed_from_evidence (L : Type u) [Lattice L] (P : ProjectiveLatticeObject L)
    (E : ProjectiveLatticeEvidence L P) : ProjectiveLatticeClosed L P :=
  And.intro E.isProjectiveClosed E.mappingPropertyClosed

end FreeLatticesProjectiveLatticesWordCanonicalLaneLean
end HautevilleHouse