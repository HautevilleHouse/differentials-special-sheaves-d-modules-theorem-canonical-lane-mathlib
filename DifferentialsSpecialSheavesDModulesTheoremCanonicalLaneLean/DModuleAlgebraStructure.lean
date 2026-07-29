import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean

structure DModuleAlgebraStructurePackage where
  ringOfDifferentialOperators : Type u
  moduleStructure : Type v
  leftModuleAction : Prop
  rightModuleAction : Prop
  bimoduleCompatibility : Prop
  leftModuleActionTerm : leftModuleAction
  rightModuleActionTerm : rightModuleAction
  bimoduleCompatibilityTerm : bimoduleCompatibility

structure DModuleAlgebraStructureEvidence (P : DModuleAlgebraStructurePackage) where
  leftModuleActionClosed : P.leftModuleAction
  rightModuleActionClosed : P.rightModuleAction
  bimoduleCompatibilityClosed : P.bimoduleCompatibility

def DModuleAlgebraStructureClosed (P : DModuleAlgebraStructurePackage) : Prop :=
  P.leftModuleAction ∧ P.rightModuleAction ∧ P.bimoduleCompatibility

theorem d_module_algebra_structure_closed_from_evidence
    (P : DModuleAlgebraStructurePackage) (E : DModuleAlgebraStructureEvidence P) :
    DModuleAlgebraStructureClosed P := by
  exact And.intro E.leftModuleActionClosed (And.intro E.rightModuleActionClosed E.bimoduleCompatibilityClosed)

end DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean
end HautevilleHouse