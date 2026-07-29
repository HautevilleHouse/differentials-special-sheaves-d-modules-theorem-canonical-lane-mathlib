import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean

structure SheafOfDifferentialOperators (X : Type u) [TopologicalSpace X] [Sch X] where
  sheaf : Type v
  sectionsOpen : (U : Set X) → IsOpen U → sheaf
  restriction : (U V : Set X) → IsOpen U → IsOpen V → V ⊆ U → sectionsOpen U hU → sectionsOpen V hV
  opAlgebra : Algebra (O_X X) sheaf
  filtration : Nat → sheaf → Prop
  symbolMap : sheaf → O_X X
  principalSymbol : sheaf → O_X X
  symbolExact : Prop

end DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean
end HautevilleHouse