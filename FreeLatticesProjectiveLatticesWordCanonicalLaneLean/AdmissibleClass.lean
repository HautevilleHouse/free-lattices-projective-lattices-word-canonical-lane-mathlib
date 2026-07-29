import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeLatticesProjectiveLatticesWordCanonicalLaneLean

structure FreeLatticeAdmittedObject where
  freeLattice : Type u
  projectiveLattice : Type v
  wordEquivalence : Prop
  conclusion : wordEquivalence

structure AdmissibleClass where
  object : FreeLatticeAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FreeLatticesProjectiveLatticesWordCanonicalLaneLean
end HautevilleHouse
