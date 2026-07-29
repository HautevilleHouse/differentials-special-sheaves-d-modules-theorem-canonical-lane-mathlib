import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean

structure KashiwaraEquivalencePackage where
  closedSubmanifold : Type u
  directImageFunctor : Type v
  inverseImageFunctor : Type w
  equivalenceProperty : Prop
  tExactness : Prop
  equivalencePropertyTerm : equivalenceProperty
  tExactnessTerm : tExactness

structure KashiwaraEquivalenceEvidence (K : KashiwaraEquivalencePackage) where
  equivalencePropertyClosed : K.equivalenceProperty
  tExactnessClosed : K.tExactness

def KashiwaraEquivalenceClosed (K : KashiwaraEquivalencePackage) : Prop :=
  K.equivalenceProperty ∧ K.tExactness

theorem kashiwara_equivalence_closed_from_evidence
    (K : KashiwaraEquivalencePackage) (E : KashiwaraEquivalenceEvidence K) :
    KashiwaraEquivalenceClosed K := by
  exact And.intro E.equivalencePropertyClosed E.tExactnessClosed

end DifferentialsSpecialSheavesDModulesTheoremCanonicalLaneLean
end HautevilleHouse