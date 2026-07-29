import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean

structure DifferentialOperatorPackage where
  baseRing : Type u
  operatorsDefined : Type v
  compositionLaw : Prop
  orderFiltration : Prop
  symbolMap : Prop
  baseRingTerm : baseRing
  operatorsDefinedTerm : operatorsDefined
  compositionLawTerm : compositionLaw
  orderFiltrationTerm : orderFiltration
  symbolMapTerm : symbolMap

structure DifferentialOperatorEvidence (O : DifferentialOperatorPackage) where
  compositionLawClosed : O.compositionLaw
  orderFiltrationClosed : O.orderFiltration
  symbolMapClosed : O.symbolMap

def DifferentialOperatorClosed (O : DifferentialOperatorPackage) : Prop :=
  O.compositionLaw ∧ O.orderFiltration ∧ O.symbolMap

theorem differential_operator_closed_from_evidence (O : DifferentialOperatorPackage) (E : DifferentialOperatorEvidence O) : DifferentialOperatorClosed O :=
  And.intro E.compositionLawClosed (And.intro E.orderFiltrationClosed E.symbolMapClosed)

end DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean
end HautevilleHouse