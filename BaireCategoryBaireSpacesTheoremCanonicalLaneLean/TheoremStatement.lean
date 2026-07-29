import HautevilleHouse.BaireCategoryBaireSpacesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BaireCategoryBaireSpacesTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def sourceRepository : String :=
  "baire-category-canonical-lane"

def sourceDescription : String :=
  "Baire Category Theorem: complete metric spaces are Baire spaces"

def baselineCertificateLane : String :=
  "baire_constrained"

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := sourceRepository,
    theoremName := sourceRepository,
    theoremObject := sourceDescription,
    classicalBoundary := "classical boundary carried by formalizationCertificate.theoremBoundaryOpen",
    manifoldConstrainedStatement := "Baire-constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
    certificateLane := baselineCertificateLane,
    carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary" }

end BaireCategoryBaireSpacesTheoremCanonicalLaneLean
end HautevilleHouse