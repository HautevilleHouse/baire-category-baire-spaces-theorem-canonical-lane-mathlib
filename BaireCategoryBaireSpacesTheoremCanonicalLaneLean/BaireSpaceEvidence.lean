import HautevilleHouse.BaireCategoryBaireSpacesTheoremCanonicalLaneLean.BaireCategoryFramework

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesTheoremCanonicalLaneLean

structure BaireSpaceEvidence (B : BaireSpacePackage) where
  isBaireClosed : B.isBaire

structure CompleteMetricEvidence {B : BaireSpacePackage} (M : CompleteMetricPackage B) where
  completeClosed : M.complete
  metricCompatibleClosed : M.metricCompatible

structure CategoryEvidence {B : BaireSpacePackage} (C : CategoryPackage B) where
  compositionClosed : C.composition

structure BaireCategoryEvidence {B : BaireSpacePackage} {C : CategoryPackage B} (P : BaireCategoryPackage B C) where
  completenessClosed : CompleteMetricEvidence P.completenessCondition
  categoryClosed : CategoryEvidence P.categoryStructure
  baireCategoryTheoremClosed : P.baireCategoryTheorem

def BaireSpaceClosed (B : BaireSpacePackage) : Prop :=
  B.isBaire

def CompleteMetricClosed {B : BaireSpacePackage} (M : CompleteMetricPackage B) : Prop :=
  M.complete ∧ M.metricCompatible

def CategoryClosed {B : BaireSpacePackage} (C : CategoryPackage B) : Prop :=
  C.composition

def BaireCategoryClosed {B : BaireSpacePackage} {C : CategoryPackage B} (P : BaireCategoryPackage B C) : Prop :=
  CompleteMetricClosed P.completenessCondition ∧ CategoryClosed P.categoryStructure ∧ P.baireCategoryTheorem

theorem baire_space_closed_from_evidence (B : BaireSpacePackage) (E : BaireSpaceEvidence B) : BaireSpaceClosed B :=
  E.isBaireClosed

theorem complete_metric_closed_from_evidence {B : BaireSpacePackage} (M : CompleteMetricPackage B) (E : CompleteMetricEvidence M) : CompleteMetricClosed M :=
  And.intro E.completeClosed E.metricCompatibleClosed

theorem category_closed_from_evidence {B : BaireSpacePackage} (C : CategoryPackage B) (E : CategoryEvidence C) : CategoryClosed C :=
  E.compositionClosed

theorem baire_category_closed_from_evidence {B : BaireSpacePackage} {C : CategoryPackage B} (P : BaireCategoryPackage B C) (E : BaireCategoryEvidence P) : BaireCategoryClosed P :=
  And.intro (complete_metric_closed_from_evidence P.completenessCondition E.completenessClosed)
    (And.intro (category_closed_from_evidence P.categoryStructure E.categoryClosed) E.baireCategoryTheoremClosed)

end BaireCategoryBaireSpacesTheoremCanonicalLaneLean
end HautevilleHouse