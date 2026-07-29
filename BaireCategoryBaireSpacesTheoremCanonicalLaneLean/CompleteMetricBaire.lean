import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesTheoremCanonicalLaneLean

structure CompleteMetricBairePackage where
  metricSpace : Type u
  metric : MetricSpace metricSpace
  complete : Prop
  unionOfNowhereDenseHasEmptyInterior : Prop
  countableUnionOfClosedSetsWithEmptyInteriorHasEmptyInterior : Prop
  conclusion : Prop

structure CompleteMetricBaireEvidence (C : CompleteMetricBairePackage) where
  completeClosed : C.complete
  unionOfNowhereDenseHasEmptyInteriorClosed : C.unionOfNowhereDenseHasEmptyInterior
  countableUnionOfClosedSetsWithEmptyInteriorHasEmptyInteriorClosed : C.countableUnionOfClosedSetsWithEmptyInteriorHasEmptyInterior
  conclusionClosed : C.conclusion

def CompleteMetricBaireClosed (C : CompleteMetricBairePackage) : Prop :=
  C.complete ∧ C.unionOfNowhereDenseHasEmptyInterior ∧ C.countableUnionOfClosedSetsWithEmptyInteriorHasEmptyInterior ∧ C.conclusion

theorem complete_metric_baire_closed_from_evidence (C : CompleteMetricBairePackage) (E : CompleteMetricBaireEvidence C) : CompleteMetricBaireClosed C := by
  exact And.intro E.completeClosed
    (And.intro E.unionOfNowhereDenseHasEmptyInteriorClosed
      (And.intro E.countableUnionOfClosedSetsWithEmptyInteriorHasEmptyInteriorClosed E.conclusionClosed))

end BaireCategoryBaireSpacesTheoremCanonicalLaneLean
end HautevilleHouse