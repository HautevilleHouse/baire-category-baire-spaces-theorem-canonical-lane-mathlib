import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesTheoremCanonicalLaneLean

open Set

structure MeagerSet (X : Type u) [TopologicalSpace X] where
  carrier : Set X
  meager : Prop

structure ResidualSet (X : Type u) [TopologicalSpace X] where
  carrier : Set X
  residual : Prop

theorem residual_complement_of_meager {X : Type u} [TopologicalSpace X] (M : Set X) (hM : MeagerSet X) :
    ResidualSet X where
  carrier := Mᶜ
  residual := by
    sorry

end BaireCategoryBaireSpacesTheoremCanonicalLaneLean
end HautevilleHouse