import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean

structure HolonomicDModulePackage where
  dModule : Type u
  characteristicVariety : Type v
  dimensionCondition : Prop
  involutiveCondition : Prop
  dimensionConditionTerm : dimensionCondition
  involutiveConditionTerm : involutiveCondition

structure HolonomicDModuleEvidence (P : HolonomicDModulePackage) where
  dimensionConditionClosed : P.dimensionCondition
  involutiveConditionClosed : P.involutiveCondition

def HolonomicDModuleClosed (P : HolonomicDModulePackage) : Prop :=
  P.dimensionCondition ∧ P.involutiveCondition

theorem holonomic_d_module_closed_from_evidence
    (P : HolonomicDModulePackage) (E : HolonomicDModuleEvidence P) :
    HolonomicDModuleClosed P := by
  exact And.intro E.dimensionConditionClosed E.involutiveConditionClosed

end DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean
end HautevilleHouse