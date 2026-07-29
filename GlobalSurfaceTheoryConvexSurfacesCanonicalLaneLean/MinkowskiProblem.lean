import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean

structure MinkowskiProblemPackage where
  surface : ConvexSurfacePackage
  prescribedCurvature : surface.manifold → ℝ
  solutionExists : Prop
  solutionUnique : Prop
  prescribedCurvaturePositive : Prop

structure MinkowskiProblemEvidence (M : MinkowskiProblemPackage) where
  solutionExistsClosed : M.solutionExists
  solutionUniqueClosed : M.solutionUnique
  prescribedCurvaturePositiveClosed : M.prescribedCurvaturePositive

def MinkowskiProblemClosed (M : MinkowskiProblemPackage) : Prop :=
  M.solutionExists ∧ M.solutionUnique ∧ M.prescribedCurvaturePositive

theorem minkowski_problem_closed_from_evidence (M : MinkowskiProblemPackage) (E : MinkowskiProblemEvidence M) :
    MinkowskiProblemClosed M := by
  exact And.intro E.solutionExistsClosed
    (And.intro E.solutionUniqueClosed E.prescribedCurvaturePositiveClosed)

end GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean
end HautevilleHouse