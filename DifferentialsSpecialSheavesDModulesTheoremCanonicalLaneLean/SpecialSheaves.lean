import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean

structure SpecialSheafPackage where
  baseSpace : Type u
  structureSheaf : Type v
  sectionsLocal : Prop
  gluingCondition : Prop
  localityCondition : Prop
  baseSpaceTerm : baseSpace
  structureSheafTerm : structureSheaf
  sectionsLocalTerm : sectionsLocal
  gluingConditionTerm : gluingCondition
  localityConditionTerm : localityCondition

structure SpecialSheafEvidence (S : SpecialSheafPackage) where
  sectionsLocalClosed : S.sectionsLocal
  gluingConditionClosed : S.gluingCondition
  localityConditionClosed : S.localityCondition

def SpecialSheafClosed (S : SpecialSheafPackage) : Prop :=
  S.sectionsLocal ∧ S.gluingCondition ∧ S.localityCondition

theorem special_sheaf_closed_from_evidence (S : SpecialSheafPackage) (E : SpecialSheafEvidence S) : SpecialSheafClosed S :=
  And.intro E.sectionsLocalClosed (And.intro E.gluingConditionClosed E.localityConditionClosed)

end DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean
end HautevilleHouse