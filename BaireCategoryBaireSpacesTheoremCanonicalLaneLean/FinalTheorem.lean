import BaireCategoryBaireSpacesTheoremCanonicalLaneLean.CategoryMeagerSetsEvidence

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesTheoremCanonicalLaneLean

def ConstrainedBaireClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_baire_endgame (A : AdmissibleClass) : ConstrainedBaireClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HautevilleHouse.BaireCategoryBaireSpacesTheoremCanonicalLaneLean
end HautevilleHouse