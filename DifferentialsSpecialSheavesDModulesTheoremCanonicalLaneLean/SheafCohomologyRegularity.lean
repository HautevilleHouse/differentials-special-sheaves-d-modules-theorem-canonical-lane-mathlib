import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean

structure SheafCohomologyRegularityPackage where
  sheafComplex : Type u
  cohomologyDegree : Nat
  vanishingCondition : Prop
  analyticContinuation : Prop
  purityProperty : Prop
  vanishingConditionTerm : vanishingCondition
  analyticContinuationTerm : analyticContinuation
  purityPropertyTerm : purityProperty

structure SheafCohomologyRegularityEvidence (S : SheafCohomologyRegularityPackage) where
  vanishingConditionClosed : S.vanishingCondition
  analyticContinuationClosed : S.analyticContinuation
  purityPropertyClosed : S.purityProperty

def SheafCohomologyRegularityClosed (S : SheafCohomologyRegularityPackage) : Prop :=
  S.vanishingCondition ∧ S.analyticContinuation ∧ S.purityProperty

theorem sheaf_cohomology_regularity_closed_from_evidence
    (S : SheafCohomologyRegularityPackage) (E : SheafCohomologyRegularityEvidence S) :
    SheafCohomologyRegularityClosed S := by
  exact And.intro E.vanishingConditionClosed
    (And.intro E.analyticContinuationClosed E.purityPropertyClosed)

end DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean
end HautevilleHouse