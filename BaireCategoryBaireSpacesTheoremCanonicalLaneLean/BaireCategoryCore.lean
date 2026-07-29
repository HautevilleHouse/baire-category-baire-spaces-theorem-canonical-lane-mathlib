import Mathlib.Topology.Basic
import Mathlib.Data.Set.Basic

/-!
# Core definitions for Baire Category and Baire Spaces
-/

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesTheoremCanonicalLaneLean

structure BaireSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  isBaire : Prop
  completeMetric : Prop

structure BaireAdmittedObject where
  space : BaireSpace
  baireProperty : Prop
  denseGDeltaIntersection : Prop
  conclusion : denseGDeltaIntersection

def BaireWitnessClosed (O : BaireAdmittedObject) : Prop :=
  O.denseGDeltaIntersection

end BaireCategoryBaireSpacesTheoremCanonicalLaneLean
end HautevilleHouse