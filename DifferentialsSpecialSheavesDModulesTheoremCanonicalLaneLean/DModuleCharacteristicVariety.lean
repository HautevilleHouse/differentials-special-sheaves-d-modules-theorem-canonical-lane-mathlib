import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean

structure DModuleCharacteristicVarietyPackage where
  characteristicVariety : Type u
  dimensionCondition : Nat
  involutivity : Prop
  lagrangianProperty : Prop
  singularSupport : Prop
  involutivityTerm : involutivity
  lagrangianPropertyTerm : lagrangianProperty
  singularSupportTerm : singularSupport

structure DModuleCharacteristicVarietyEvidence (D : DModuleCharacteristicVarietyPackage) where
  involutivityClosed : D.involutivity
  lagrangianPropertyClosed : D.lagrangianProperty
  singularSupportClosed : D.singularSupport

def DModuleCharacteristicVarietyClosed (D : DModuleCharacteristicVarietyPackage) : Prop :=
  D.involutivity ∧ D.lagrangianProperty ∧ D.singularSupport

theorem dmodule_characteristic_variety_closed_from_evidence
    (D : DModuleCharacteristicVarietyPackage) (E : DModuleCharacteristicVarietyEvidence D) :
    DModuleCharacteristicVarietyClosed D := by
  exact And.intro E.involutivityClosed
    (And.intro E.lagrangianPropertyClosed E.singularSupportClosed)

end DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean
end HautevilleHouse