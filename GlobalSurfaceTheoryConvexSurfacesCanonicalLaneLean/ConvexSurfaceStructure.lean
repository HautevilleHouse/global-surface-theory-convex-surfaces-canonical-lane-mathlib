import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean

structure ConvexSurfaceStructure where
  manifold : Type u
  topology : TopologicalSpace manifold
  metric : Type v
  secondFundamentalForm : Type w
  shapeOperator : Type x
  gaussCurvature : Type y
  meanCurvature : Type z
  surfaceSmooth : Prop
  embeddedInR3 : Prop
  secondFundamentalFormSymmetric : Prop
  shapeOperatorSelfAdjoint : Prop
  gaussCurvatureDefined : Prop
  meanCurvatureDefined : Prop

structure ConvexSurfaceEvidence (C : ConvexSurfaceStructure) where
  surfaceSmoothClosed : C.surfaceSmooth
  embeddedInR3Closed : C.embeddedInR3
  secondFundamentalFormSymmetricClosed : C.secondFundamentalFormSymmetric
  shapeOperatorSelfAdjointClosed : C.shapeOperatorSelfAdjoint
  gaussCurvatureDefinedClosed : C.gaussCurvatureDefined
  meanCurvatureDefinedClosed : C.meanCurvatureDefined

def ConvexSurfaceClosed (C : ConvexSurfaceStructure) : Prop :=
  C.surfaceSmooth ∧ C.embeddedInR3 ∧ C.secondFundamentalFormSymmetric ∧
  C.shapeOperatorSelfAdjoint ∧ C.gaussCurvatureDefined ∧ C.meanCurvatureDefined

theorem convex_surface_closed_from_evidence (C : ConvexSurfaceStructure) (E : ConvexSurfaceEvidence C) :
    ConvexSurfaceClosed C := by
  exact And.intro E.surfaceSmoothClosed
    (And.intro E.embeddedInR3Closed
      (And.intro E.secondFundamentalFormSymmetricClosed
        (And.intro E.shapeOperatorSelfAdjointClosed
          (And.intro E.gaussCurvatureDefinedClosed E.meanCurvatureDefinedClosed))))

end GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean
end HautevilleHouse