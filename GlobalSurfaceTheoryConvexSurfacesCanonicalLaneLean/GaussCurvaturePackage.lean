import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean

structure GaussCurvaturePackage where
  surfaceType : Type
  metric : surfaceType → ℝ → ℝ → ℝ
  gaussCurvature : surfaceType → ℝ
  intrinsicMetric : Prop
  curvatureDefined : ∀ p : surfaceType, gaussCurvature p = GaussianCurvature (metric p)
  positiveCurvature : ∀ p : surfaceType, gaussCurvature p > 0

structure GaussCurvatureEvidence (G : GaussCurvaturePackage) where
  intrinsicMetricClosed : G.intrinsicMetric
  curvatureDefinedClosed : G.curvatureDefined
  positiveCurvatureClosed : G.positiveCurvature

def GaussCurvatureClosed (G : GaussCurvaturePackage) : Prop :=
  G.intrinsicMetric ∧ G.curvatureDefined ∧ G.positiveCurvature

theorem gauss_curvature_closed_from_evidence (G : GaussCurvaturePackage) (E : GaussCurvatureEvidence G) :
    GaussCurvatureClosed G := by
  exact And.intro E.intrinsicMetricClosed (And.intro E.curvatureDefinedClosed E.positiveCurvatureClosed)

end GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean
end HautevilleHouse