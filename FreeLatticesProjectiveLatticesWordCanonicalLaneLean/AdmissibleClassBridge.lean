import canonicalLaneMathlib.AdmissibleClass
import FreeLatticesProjectiveLatticesWordCanonicalLaneLean.FreeLatticeStructure
import FreeLatticesProjectiveLatticesWordCanonicalLaneLean.ProjectiveLattice
import FreeLatticesProjectiveLatticesWordCanonicalLaneLean.WordProblem

namespace HautevilleHouse
namespace FreeLatticesProjectiveLatticesWordCanonicalLaneLean

structure LatticeAdmittedObject where
  freeLatticePackage : FreeLatticePackage ℕ
  projectiveLatticePackage : ProjectiveLatticePackage ℕ
  wordProblemPackage : WordProblemPackage ℕ
  projectiveClosed : ProjectiveLatticeClosed ℕ projectiveLatticePackage
  wordProblemClosed : WordProblemClosed ℕ wordProblemPackage

structure LatticeAdmissibleClass where
  object : LatticeAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def latticeBridgeClosed (A : LatticeAdmissibleClass) : Prop :=
  A.object.projectiveClosed ∧ A.object.wordProblemClosed

theorem bridge_from_lattice_admissible_class (A : LatticeAdmissibleClass) :
    latticeBridgeClosed A := by
  exact And.intro A.object.projectiveClosed A.object.wordProblemClosed

def latticeGateClosed (A : LatticeAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_lattice_admissible_class (A : LatticeAdmissibleClass) :
    latticeGateClosed A := by
  exact A.gateWitness

end FreeLatticesProjectiveLatticesWordCanonicalLaneLean
end HautevilleHouse