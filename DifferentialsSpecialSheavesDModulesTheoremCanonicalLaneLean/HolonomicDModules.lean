import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean

structure HolonomicDModulePackage where
  dmodule : DModulePackage
  characteristicVariety : Type u
  lagrangianCondition : Prop
  finitenessCondition : Prop
  dualitySetup : Prop
  characteristicVarietyTerm : characteristicVariety
  lagrangianConditionTerm : lagrangianCondition
  finitenessConditionTerm : finitenessCondition
  dualitySetupTerm : dualitySetup

structure HolonomicDModuleEvidence (H : HolonomicDModulePackage) where
  lagrangianConditionClosed : H.lagrangianCondition
  finitenessConditionClosed : H.finitenessCondition
  dualitySetupClosed : H.dualitySetup

def HolonomicDModuleClosed (H : HolonomicDModulePackage) : Prop :=
  H.lagrangianCondition ∧ H.finitenessCondition ∧ H.dualitySetup

theorem holonomic_dmodule_closed_from_evidence (H : HolonomicDModulePackage) (E : HolonomicDModuleEvidence H) : HolonomicDModuleClosed H :=
  And.intro E.lagrangianConditionClosed (And.intro E.finitenessConditionClosed E.dualitySetupClosed)

end DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean
end HautevilleHouse