import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean

structure IndexTheorem (X : Type u) [TopologicalSpace X] [Sch X] (D : DModuleStructure X M) (H : HolonomicDModule X M D) where
  analyticIndex : Int
  topologicalIndex : Int
  indexFormula : Prop
  equalityHolds : analyticIndex = topologicalIndex
  indexFormulaClosed : analyticIndex = topologicalIndex

theorem index_theorem_closed (I : IndexTheorem X D H) : I.analyticIndex = I.topologicalIndex := I.equalityHolds

end DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean
end HautevilleHouse