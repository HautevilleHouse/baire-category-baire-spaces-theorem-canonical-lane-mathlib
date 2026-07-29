import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesTheoremCanonicalLaneLean

structure BaireSpacePackage where
  space : Type u
  topology : TopologicalSpace space
  countableIntersectionDenseOpen : Prop
  denseOpenCountableIntersectionNonempty : Prop
  meagerSetCoveredByCountableUnion : Prop

structure BaireSpaceEvidence (B : BaireSpacePackage) where
  countableIntersectionDenseOpenClosed : B.countableIntersectionDenseOpen
  denseOpenCountableIntersectionNonemptyClosed : B.denseOpenCountableIntersectionNonempty
  meagerSetCoveredByCountableUnionClosed : B.meagerSetCoveredByCountableUnion

def BaireSpaceClosed (B : BaireSpacePackage) : Prop :=
  B.countableIntersectionDenseOpen ∧ B.denseOpenCountableIntersectionNonempty ∧ B.meagerSetCoveredByCountableUnion

theorem baire_space_closed_from_evidence (B : BaireSpacePackage) (E : BaireSpaceEvidence B) : BaireSpaceClosed B := by
  exact And.intro E.countableIntersectionDenseOpenClosed
    (And.intro E.denseOpenCountableIntersectionNonemptyClosed E.meagerSetCoveredByCountableUnionClosed)

end BaireCategoryBaireSpacesTheoremCanonicalLaneLean
end HautevilleHouse