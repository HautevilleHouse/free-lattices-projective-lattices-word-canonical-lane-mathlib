import canonicalLaneMathlib.AdmissibleClass
import FreeLatticesProjectiveLatticesWordCanonicalLaneLean.ProjectiveLatticePackage

namespace HautevilleHouse
namespace FreeLatticesProjectiveLatticesWordCanonicalLaneLean

structure ProjectivityCharacterizationPackage where
  L : FreeLattice
  projective : Prop
  equivalentToRetractOfFree : Prop
  projectiveImpliesRetract : projective → equivalentToRetractOfFree
  retractImpliesProjective : equivalentToRetractOfFree → projective
  projectiveRetractEquivalence : projective ↔ equivalentToRetractOfFree

structure ProjectivityCharacterizationEvidence
    (P : ProjectivityCharacterizationPackage) where
  projectiveImpliesRetractClosed : ∀ h : P.projective, P.equivalentToRetractOfFree
  retractImpliesProjectiveClosed : ∀ h : P.equivalentToRetractOfFree, P.projective

def ProjectivityCharacterizationClosed (P : ProjectivityCharacterizationPackage) : Prop :=
  (∀ h : P.projective, P.equivalentToRetractOfFree) ∧
  (∀ h : P.equivalentToRetractOfFree, P.projective)

theorem projectivity_characterization_closed_from_evidence
    (P : ProjectivityCharacterizationPackage)
    (E : ProjectivityCharacterizationEvidence P) :
    ProjectivityCharacterizationClosed P := by
  exact And.intro E.projectiveImpliesRetractClosed E.retractImpliesProjectiveClosed

end FreeLatticesProjectiveLatticesWordCanonicalLaneLean
end HautevilleHouse
