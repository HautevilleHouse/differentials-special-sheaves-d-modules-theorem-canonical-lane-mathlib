import HautevilleHouse.DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean.DModuleBridgeLemmas

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean
end HautevilleHouse