import DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DModuleMorphismClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean
end HautevilleHouse
