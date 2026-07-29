import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean

structure SpecialSheavesPackage where
  sheafOfOxModules : Type u
  coherentSheaf : Prop
  locallyFree : Prop
  twistedDeRhamComplex : Prop
  resolutionProperty : Prop

structure SpecialSheavesEvidence (S : SpecialSheavesPackage) where
  coherentSheafClosed : S.coherentSheaf
  locallyFreeClosed : S.locallyFree
  twistedDeRhamComplexClosed : S.twistedDeRhamComplex
  resolutionPropertyClosed : S.resolutionProperty

def SpecialSheavesClosed (S : SpecialSheavesPackage) : Prop :=
  S.coherentSheaf ∧ S.locallyFree ∧ S.twistedDeRhamComplex ∧ S.resolutionProperty

theorem special_sheaves_closed_from_evidence (S : SpecialSheavesPackage) (E : SpecialSheavesEvidence S) :
    SpecialSheavesClosed S := by
  exact And.intro E.coherentSheafClosed
    (And.intro E.locallyFreeClosed
      (And.intro E.twistedDeRhamComplexClosed E.resolutionPropertyClosed))

end DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean
end HautevilleHouse