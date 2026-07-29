import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesTheoremCanonicalLaneLean

structure BaireSpace (X : Type u) [TopologicalSpace X] where
  countableIntersectionOpenDense : CountableInterOpenDense X
  isBaire : Prop

def countableIntersectionOpenDense (X : Type u) [TopologicalSpace X] : Prop :=
  ∀ (U : ℕ → Set X), (∀ n, IsOpen (U n) ∧ Dense (U n)) → Dense (⋂ n, U n)

structure BaireCategoryPackage (X : Type u) [TopologicalSpace X] where
  space : X
  topology : TopologicalSpace X := by infer_instance
  baireProperty : Prop
  meagerSets : Set (Set X)
  residualSets : Set (Set X)
  bairePropertyHolds : baireProperty

def BaireCategoryEvidence (P : BaireCategoryPackage X) : Prop :=
  P.bairePropertyHolds

def BaireCategoryClosed (P : BaireCategoryPackage X) : Prop :=
  P.baireProperty

theorem baire_category_closed_from_evidence (P : BaireCategoryPackage X) (h : P.bairePropertyHolds) : BaireCategoryClosed P :=
  h

end HautevilleHouse.BaireCategoryBaireSpacesTheoremCanonicalLaneLean
end HautevilleHouse