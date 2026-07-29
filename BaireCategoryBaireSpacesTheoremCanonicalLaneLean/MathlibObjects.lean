import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesTheoremCanonicalLaneLean

structure BaireSpaceData where
  carrier : Type u
  topology : TopologicalSpace carrier
  baireProperty : Prop

def baireWitnessClosed (O : BaireAdmittedObject) : Prop :=
  O.baireProperty

end BaireCategoryBaireSpacesTheoremCanonicalLaneLean
end HautevilleHouse