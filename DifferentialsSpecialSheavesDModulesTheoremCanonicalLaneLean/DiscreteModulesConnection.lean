import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean

structure DiscreteModulesConnectionPackage where
  baseManifold : Type u
  moduleSheaf : Type v
  connection : Type w
  integrableConnection : Prop
  curvatureZero : Prop
  integrableConnectionTerm : integrableConnection
  curvatureZeroTerm : curvatureZero

structure DiscreteModulesConnectionEvidence (P : DiscreteModulesConnectionPackage) where
  integrableConnectionClosed : P.integrableConnection
  curvatureZeroClosed : P.curvatureZero

def DiscreteModulesConnectionClosed (P : DiscreteModulesConnectionPackage) : Prop :=
  P.integrableConnection ∧ P.curvatureZero

theorem discrete_modules_connection_closed_from_evidence
    (P : DiscreteModulesConnectionPackage) (E : DiscreteModulesConnectionEvidence P) :
    DiscreteModulesConnectionClosed P := by
  exact And.intro E.integrableConnectionClosed E.curvatureZeroClosed

end DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean
end HautevilleHouse