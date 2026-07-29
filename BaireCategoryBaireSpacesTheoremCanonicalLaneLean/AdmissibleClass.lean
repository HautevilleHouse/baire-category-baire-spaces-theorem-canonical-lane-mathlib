import BaireCategoryBaireSpacesTheoremCanonicalLaneLean.BaireCategoryCore

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : BaireAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BaireWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BaireCategoryBaireSpacesTheoremCanonicalLaneLean
end HautevilleHouse