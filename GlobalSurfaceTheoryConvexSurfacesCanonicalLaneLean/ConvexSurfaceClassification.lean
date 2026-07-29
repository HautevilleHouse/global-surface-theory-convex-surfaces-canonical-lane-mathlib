import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean

structure ConvexSurfaceClassificationPackage where
  targetSurface : Type u
  targetTopology : TopologicalSpace targetSurface
  closedConvexSurface : Prop
  diffeomorphicToSphere : Prop
  classificationComplete : Prop

structure ConvexSurfaceClassificationEvidence (P : ConvexSurfaceClassificationPackage) where
  closedConvexSurfaceClosed : P.closedConvexSurface
  diffeomorphicToSphereClosed : P.diffeomorphicToSphere
  classificationCompleteClosed : P.classificationComplete

def ConvexSurfaceClassificationClosed (P : ConvexSurfaceClassificationPackage) : Prop :=
  P.closedConvexSurface ∧ P.diffeomorphicToSphere ∧ P.classificationComplete

theorem convex_surface_classification_closed_from_evidence
    (P : ConvexSurfaceClassificationPackage) (E : ConvexSurfaceClassificationEvidence P) :
    ConvexSurfaceClassificationClosed P := by
  exact And.intro E.closedConvexSurfaceClosed
    (And.intro E.diffeomorphicToSphereClosed E.classificationCompleteClosed)

end GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean
end HautevilleHouse