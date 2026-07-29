import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean

structure DModulePackage where
  baseManifold : Type u
  structureSheaf : Type v
  dModule : Type w
  integrableConnection : Prop
  regularSingularity : Prop
  holonomic : Prop
  derivedCategoryObject : Prop
  deRhamComplex : Prop

structure DModuleEvidence (D : DModulePackage) where
  integrableConnectionClosed : D.integrableConnection
  regularSingularityClosed : D.regularSingularity
  holonomicClosed : D.holonomic
  derivedCategoryObjectClosed : D.derivedCategoryObject
  deRhamComplexClosed : D.deRhamComplex

def DModuleClosed (D : DModulePackage) : Prop :=
  D.integrableConnection ∧ D.regularSingularity ∧ D.holonomic ∧
  D.derivedCategoryObject ∧ D.deRhamComplex

theorem d_module_closed_from_evidence (D : DModulePackage) (E : DModuleEvidence D) :
    DModuleClosed D := by
  exact And.intro E.integrableConnectionClosed
    (And.intro E.regularSingularityClosed
      (And.intro E.holonomicClosed
        (And.intro E.derivedCategoryObjectClosed E.deRhamComplexClosed)))

end DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean
end HautevilleHouse