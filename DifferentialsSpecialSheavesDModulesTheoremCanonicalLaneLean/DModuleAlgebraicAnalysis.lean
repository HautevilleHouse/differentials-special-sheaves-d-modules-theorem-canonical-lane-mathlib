import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean

structure DModuleAlgebraicAnalysisPackage where
  differentialOperator : Type u
  moduleStructure : Type v
  integrabilityCondition : Prop
  solutionSpaceRegularity : Prop
  holonomicRank : Nat
  integrabilityConditionTerm : integrabilityCondition
  solutionSpaceRegularityTerm : solutionSpaceRegularity

structure DModuleAlgebraicAnalysisEvidence (P : DModuleAlgebraicAnalysisPackage) where
  integrabilityConditionClosed : P.integrabilityCondition
  solutionSpaceRegularityClosed : P.solutionSpaceRegularity

def DModuleAlgebraicAnalysisClosed (P : DModuleAlgebraicAnalysisPackage) : Prop :=
  P.integrabilityCondition ∧ P.solutionSpaceRegularity

theorem dmodule_algebraic_analysis_closed_from_evidence
    (P : DModuleAlgebraicAnalysisPackage) (E : DModuleAlgebraicAnalysisEvidence P) :
    DModuleAlgebraicAnalysisClosed P := by
  exact And.intro E.integrabilityConditionClosed E.solutionSpaceRegularityClosed

end DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean
end HautevilleHouse