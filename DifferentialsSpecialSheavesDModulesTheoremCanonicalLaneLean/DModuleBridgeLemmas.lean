import HautevilleHouse.DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean.DModuleAdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DModuleWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean
end HautevilleHouse