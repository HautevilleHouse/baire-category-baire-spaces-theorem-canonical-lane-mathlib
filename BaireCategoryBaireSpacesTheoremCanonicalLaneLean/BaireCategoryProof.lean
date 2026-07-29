import HautevilleHouse.BaireCategoryBaireSpacesTheoremCanonicalLaneLean.BaireSpaceEvidence

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesTheoremCanonicalLaneLean

structure BaireCategoryProofPackage {B : BaireSpacePackage} {C : CategoryPackage B}
    (P : BaireCategoryPackage B C) where
  countableIntersectionOfOpenDense : Prop
  countableUnionOfNowhereDense : Prop
  proofComplete : Prop

structure BaireCategoryProofEvidence {B : BaireSpacePackage} {C : CategoryPackage B}
    {P : BaireCategoryPackage B C} (Pr : BaireCategoryProofPackage P) where
  countableIntersectionOfOpenDenseClosed : Pr.countableIntersectionOfOpenDense
  countableUnionOfNowhereDenseClosed : Pr.countableUnionOfNowhereDense
  proofCompleteClosed : Pr.proofComplete

def BaireCategoryProofClosed {B : BaireSpacePackage} {C : CategoryPackage B}
    {P : BaireCategoryPackage B C} (Pr : BaireCategoryProofPackage P) : Prop :=
  Pr.countableIntersectionOfOpenDense ∧ Pr.countableUnionOfNowhereDense ∧ Pr.proofComplete

theorem baire_category_proof_closed_from_evidence {B : BaireSpacePackage} {C : CategoryPackage B}
    {P : BaireCategoryPackage B C} (Pr : BaireCategoryProofPackage P) (E : BaireCategoryProofEvidence Pr) :
    BaireCategoryProofClosed Pr :=
  And.intro E.countableIntersectionOfOpenDenseClosed
    (And.intro E.countableUnionOfNowhereDenseClosed E.proofCompleteClosed)

end BaireCategoryBaireSpacesTheoremCanonicalLaneLean
end HautevilleHouse