import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeLatticesProjectiveLatticesWordCanonicalLaneLean

def ConstrainedFreeLatticeClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_free_lattice_endgame (A : AdmissibleClass) :
    ConstrainedFreeLatticeClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FreeLatticesProjectiveLatticesWordCanonicalLaneLean
end HautevilleHouse
