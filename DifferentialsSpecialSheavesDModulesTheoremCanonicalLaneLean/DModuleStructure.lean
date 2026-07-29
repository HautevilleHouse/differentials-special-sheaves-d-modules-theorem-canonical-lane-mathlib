import HautevilleHouse.DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean.DModuleDifferentialSheaf

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean

structure DModulePackage {D : DifferentialSheafPackage} where
  moduleStructure : Prop
  actionOfDifferentialOperators : Prop
  coherent : Prop
  quasiCoherent : Prop

structure DModuleEvidence {D : DifferentialSheafPackage} (M : DModulePackage D) where
  moduleStructureClosed : M.moduleStructure
  actionClosed : M.actionOfDifferentialOperators
  coherentClosed : M.coherent
  quasiCoherentClosed : M.quasiCoherent

def DModuleClosed {D : DifferentialSheafPackage} (M : DModulePackage D) : Prop :=
  M.moduleStructure ∧ M.actionOfDifferentialOperators ∧ M.coherent ∧ M.quasiCoherent

theorem d_module_closed_from_evidence {D : DifferentialSheafPackage}
    (M : DModulePackage D) (E : DModuleEvidence M) : DModuleClosed M := by
  exact And.intro E.moduleStructureClosed
    (And.intro E.actionClosed (And.intro E.coherentClosed E.quasiCoherentClosed))

end DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean
end HautevilleHouse