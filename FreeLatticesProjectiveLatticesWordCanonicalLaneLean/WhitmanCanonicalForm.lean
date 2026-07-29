import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FreeLatticesProjectiveLatticesWordCanonicalLaneLean.WordProblemReduction

namespace HautevilleHouse
namespace FreeLatticesProjectiveLatticesWordCanonicalLaneLean

structure WhitmanCanonicalFormPackage {F : FreeLatticePackage}
    (W : WordProblemPackage F) where
  canonicalFormMap : F.wordSet → F.wordSet
  canonicalFormProperties : Prop
  whitmanAlgorithmTerminates : Prop

structure WhitmanCanonicalFormEvidence {F : FreeLatticePackage}
    {W : WordProblemPackage F} (C : WhitmanCanonicalFormPackage W) where
  canonicalFormPropertiesClosed : C.canonicalFormProperties
  whitmanAlgorithmTerminatesClosed : C.whitmanAlgorithmTerminates

def WhitmanCanonicalFormClosed {F : FreeLatticePackage}
    {W : WordProblemPackage F} (C : WhitmanCanonicalFormPackage W) : Prop :=
  C.canonicalFormProperties ∧ C.whitmanAlgorithmTerminates

theorem whitman_canonical_form_closed_from_evidence {F : FreeLatticePackage}
    {W : WordProblemPackage F} (C : WhitmanCanonicalFormPackage W)
    (E : WhitmanCanonicalFormEvidence C) : WhitmanCanonicalFormClosed C := by
  exact And.intro E.canonicalFormPropertiesClosed E.whitmanAlgorithmTerminatesClosed

end FreeLatticesProjectiveLatticesWordCanonicalLaneLean
end HautevilleHouse