import HautevilleHouse.DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean.DModuleAdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean

structure DifferentialSheafPackage where
  baseManifold : Type u
  sheafOfRings : Type v
  connection : Prop
  curvature : Prop
  differentialOperator : Type w
  integrabilityCondition : Prop

structure DifferentialSheafEvidence (D : DifferentialSheafPackage) where
  connectionClosed : D.connection
  curvatureClosed : D.curvature
  integrabilityConditionClosed : D.integrabilityCondition

def DifferentialSheafClosed (D : DifferentialSheafPackage) : Prop :=
  D.connection ∧ D.curvature ∧ D.integrabilityCondition

theorem differential_sheaf_closed_from_evidence (D : DifferentialSheafPackage)
    (E : DifferentialSheafEvidence D) : DifferentialSheafClosed D := by
  exact And.intro E.connectionClosed (And.intro E.curvatureClosed E.integrabilityConditionClosed)

end DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean
end HautevilleHouse