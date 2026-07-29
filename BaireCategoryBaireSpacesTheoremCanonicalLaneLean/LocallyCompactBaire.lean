import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Baire

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesTheoremCanonicalLaneLean

structure LocallyCompactBairePackage (X : Type u) [TopologicalSpace X] [LocallyCompactSpace X] [T2Space X] where
  isBaire : BaireSpace X

theorem locally_compact_baire_closed (X : Type u) [TopologicalSpace X] [LocallyCompactSpace X] [T2Space X] :
    LocallyCompactBairePackage X := by
  exact { isBaire := by infer_instance }

end BaireCategoryBaireSpacesTheoremCanonicalLaneLean
end HautevilleHouse