import BaireCategoryBaireSpacesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BaireWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BaireCategoryBaireSpacesTheoremCanonicalLaneLean
end HautevilleHouse