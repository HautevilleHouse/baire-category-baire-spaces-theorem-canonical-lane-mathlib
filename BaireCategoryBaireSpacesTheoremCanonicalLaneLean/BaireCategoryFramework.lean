import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesTheoremCanonicalLaneLean

structure BaireSpacePackage where
  carrier : Type u
  topology : TopologicalSpace carrier
  isBaire : Prop

structure CompleteMetricPackage (B : BaireSpacePackage) where
  metric : Metric B.carrier
  complete : Prop
  metricCompatible : Prop

structure CategoryPackage (B : BaireSpacePackage) where
  objects : Type v
  morphisms : Type w
  composition : Prop

structure BaireCategoryPackage (B : BaireSpacePackage) (C : CategoryPackage B) where
  completenessCondition : CompleteMetricPackage B
  categoryStructure : C
  baireCategoryTheorem : Prop

end BaireCategoryBaireSpacesTheoremCanonicalLaneLean
end HautevilleHouse