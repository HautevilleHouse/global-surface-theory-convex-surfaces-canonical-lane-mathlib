import GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "global-surface-theory-convex-surfaces-canonicallane",
  theoremName := "Global Surface Theory Convex Surfaces",
  theoremObject := "Classification of convex surfaces in 3-space via sphere diffeomorphism",
  classicalBoundary := "Classical differential geometry boundary carried by convex embedding and sphere recognition",
  manifoldConstrainedStatement := "manifold-constrained theorem certificate internalized through convex surface geometry, bridge, and gate closure",
  certificateLane := "manifold_constrained",
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen"
}

end GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean
end HautevilleHouse