import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean

structure ConvexSurfacePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  secondFundamentalForm : Type v
  shapeOperator : Type w
  gaussCurvature : Type x
  meanCurvature : Type y
  surfaceSmooth : Prop
  convexityCondition : Prop
  gaussCurvatureNonnegative : Prop
  shapeOperatorLawful : Prop

structure ConvexSurfaceEvidence (C : ConvexSurfacePackage) where
  surfaceSmoothClosed : C.surfaceSmooth
  convexityConditionClosed : C.convexityCondition
  gaussCurvatureNonnegativeClosed : C.gaussCurvatureNonnegative
  shapeOperatorLawfulClosed : C.shapeOperatorLawful

def ConvexSurfaceClosed (C : ConvexSurfacePackage) : Prop :=
  C.surfaceSmooth ∧ C.convexityCondition ∧ C.gaussCurvatureNonnegative ∧ C.shapeOperatorLawful

theorem convex_surface_closed_from_evidence (C : ConvexSurfacePackage) (E : ConvexSurfaceEvidence C) :
    ConvexSurfaceClosed C := by
  exact And.intro E.surfaceSmoothClosed
    (And.intro E.convexityConditionClosed
      (And.intro E.gaussCurvatureNonnegativeClosed E.shapeOperatorLawfulClosed))

end GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean
end HautevilleHouse