import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeLatticesProjectiveLatticesWordCanonicalLaneLean

structure SublatticeStructure (L : Type u) [Lattice L] where
  generatingSet : Set L
  closureUnderJoins : Prop
  closureUnderMeets : Prop
  closureUnderJoinsClosed : closureUnderJoins
  closureUnderMeetsClosed : closureUnderMeets

structure SublatticeEvidence (L : Type u) [Lattice L] (S : SublatticeStructure L) where
  generatingSetClosed : S.generatingSet
  closureUnderJoinsClosed : S.closureUnderJoins
  closureUnderMeetsClosed : S.closureUnderMeets

def SublatticeClosed (L : Type u) [Lattice L] (S : SublatticeStructure L) : Prop :=
  S.closureUnderJoins ∧ S.closureUnderMeets

theorem sublattice_closed_from_evidence (L : Type u) [Lattice L] (S : SublatticeStructure L)
    (E : SublatticeEvidence L S) : SublatticeClosed L S :=
  And.intro E.closureUnderJoinsClosed E.closureUnderMeetsClosed

end FreeLatticesProjectiveLatticesWordCanonicalLaneLean
end HautevilleHouse