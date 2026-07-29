import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean

structure DModulePackage where
  baseSheaf : Type u
  dAlgebra : Type v
  moduleStructure : Prop
  connectionDefined : Prop
  integrabilityCondition : Prop
  baseSheafTerm : baseSheaf
  dAlgebraTerm : dAlgebra
  moduleStructureTerm : moduleStructure
  connectionDefinedTerm : connectionDefined
  integrabilityConditionTerm : integrabilityCondition

structure DModuleEvidence (D : DModulePackage) where
  moduleStructureClosed : D.moduleStructure
  connectionDefinedClosed : D.connectionDefined
  integrabilityConditionClosed : D.integrabilityCondition

def DModuleClosed (D : DModulePackage) : Prop :=
  D.moduleStructure ∧ D.connectionDefined ∧ D.integrabilityCondition

theorem dmodule_closed_from_evidence (D : DModulePackage) (E : DModuleEvidence D) : DModuleClosed D :=
  And.intro E.moduleStructureClosed (And.intro E.connectionDefinedClosed E.integrabilityConditionClosed)

end DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean
end HautevilleHouse