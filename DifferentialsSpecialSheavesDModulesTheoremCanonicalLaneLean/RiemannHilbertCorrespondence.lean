import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean

structure RiemannHilbertPackage where
  regularHolonomicDModule : Prop
  perverseSheaf : Prop
  deRhamFunctor : Prop
  solutionFunctor : Prop
  riemannHilbertCorrespondence : Prop

structure RiemannHilbertEvidence (R : RiemannHilbertPackage) where
  regularHolonomicDModuleClosed : R.regularHolonomicDModule
  perverseSheafClosed : R.perverseSheaf
  deRhamFunctorClosed : R.deRhamFunctor
  solutionFunctorClosed : R.solutionFunctor
  riemannHilbertCorrespondenceClosed : R.riemannHilbertCorrespondence

def RiemannHilbertClosed (R : RiemannHilbertPackage) : Prop :=
  R.regularHolonomicDModule ∧ R.perverseSheaf ∧ R.deRhamFunctor ∧
  R.solutionFunctor ∧ R.riemannHilbertCorrespondence

theorem riemann_hilbert_closed_from_evidence (R : RiemannHilbertPackage) (E : RiemannHilbertEvidence R) :
    RiemannHilbertClosed R := by
  exact And.intro E.regularHolonomicDModuleClosed
    (And.intro E.perverseSheafClosed
      (And.intro E.deRhamFunctorClosed
        (And.intro E.solutionFunctorClosed E.riemannHilbertCorrespondenceClosed)))

end DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean
end HautevilleHouse