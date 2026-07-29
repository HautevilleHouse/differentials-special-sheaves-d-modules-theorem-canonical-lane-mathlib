import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean

structure DModuleAdmittedObject where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  dxSheaf : Type v
  dModuleStructure : Prop
  differentialOperator : Type w
  conclusion : dModuleStructure

structure AdmissibleClass where
  object : DModuleAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DModuleWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean
end HautevilleHouse