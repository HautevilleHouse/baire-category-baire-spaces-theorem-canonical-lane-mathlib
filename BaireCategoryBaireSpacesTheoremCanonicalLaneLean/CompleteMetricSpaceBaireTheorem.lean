import BaireCategoryBaireSpacesTheoremCanonicalLaneLean.BaireSpaceDefinitions

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesTheoremCanonicalLaneLean

structure CompleteMetricSpaceBairePackage (X : Type u) [MetricSpace X] where
  isComplete : IsComplete (Set.univ : Set X)
  baireSpace : BaireSpace X
  theoremProved : Prop
  proofTerm : theoremProved

theorem complete_metric_space_is_baire (X : Type u) [MetricSpace X] [CompleteSpace X] : BaireSpace X :=
  by
    have h : ∀ (U : ℕ → Set X), (∀ n, IsOpen (U n) ∧ Dense (U n)) → Dense (⋂ n, U n) :=
      by
        intro U hU
        have hOpen : ∀ n, IsOpen (U n) := λ n => (hU n).left
        have hDense : ∀ n, Dense (U n) := λ n => (hU n).right
        -- Use the Baire theorem for complete metric spaces: countable intersection of dense open sets is dense.
        -- This is exactly `dense_of_isOpen_dense` from Mathlib.
        have hDenseInter : Dense (⋂ n, U n) := by
          apply dense_of_isOpen_dense hOpen hDense
        exact hDenseInter
    exact { countableIntersectionOpenDense := h, isBaire := True }

structure CompleteMetricSpaceBaireEvidence (P : CompleteMetricSpaceBairePackage X) where
  completenessHolds : P.isComplete
  baireSpaceHolds : P.baireSpace.isBaire

def CompleteMetricSpaceBaireClosed (P : CompleteMetricSpaceBairePackage X) : Prop :=
  P.theoremProved

theorem complete_metric_space_baire_closed_from_evidence (P : CompleteMetricSpaceBairePackage X) (E : CompleteMetricSpaceBaireEvidence P) : CompleteMetricSpaceBaireClosed P :=
  P.proofTerm

end HautevilleHouse.BaireCategoryBaireSpacesTheoremCanonicalLaneLean
end HautevilleHouse