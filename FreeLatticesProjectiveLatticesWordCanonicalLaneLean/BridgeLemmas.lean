import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeLatticesProjectiveLatticesWordCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FreeLatticesProjectiveLatticesWordCanonicalLaneLean
end HautevilleHouse
