import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean

structure ConvexSurfacePackage where
  surfaceType : Type u
  embeddingType : Type v
  gaussCurvatureNonnegative : Prop
  totalCurvatureBounded : Prop
  embeddedInR3 : Prop
  closedSurface : Prop

structure ConvexSurfaceEvidence (C : ConvexSurfacePackage) where
  gaussCurvatureNonnegativeClosed : C.gaussCurvatureNonnegative
  totalCurvatureBoundedClosed : C.totalCurvatureBounded
  embeddedInR3Closed : C.embeddedInR3
  closedSurfaceClosed : C.closedSurface

def ConvexSurfaceClosed (C : ConvexSurfacePackage) : Prop :=
  C.gaussCurvatureNonnegative ∧ C.totalCurvatureBounded ∧
  C.embeddedInR3 ∧ C.closedSurface

theorem convex_surface_closed_from_evidence (C : ConvexSurfacePackage)
    (E : ConvexSurfaceEvidence C) : ConvexSurfaceClosed C := by
  exact And.intro E.gaussCurvatureNonnegativeClosed
    (And.intro E.totalCurvatureBoundedClosed
      (And.intro E.embeddedInR3Closed E.closedSurfaceClosed))

end GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean
end HautevilleHouse
