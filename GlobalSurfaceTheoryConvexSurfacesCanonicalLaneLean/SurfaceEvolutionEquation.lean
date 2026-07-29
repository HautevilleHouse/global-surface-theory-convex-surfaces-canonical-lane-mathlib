import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean

structure SurfaceEvolutionPackage where
  surfaceType : Type
  embedding : surfaceType → ℝ → ℝ^3
  evolutionEquation : (∂/∂t) embedding = meanCurvature * normalVector
  initialSurfaceConvex : Prop
  solutionExists : Prop

structure SurfaceEvolutionEvidence (S : SurfaceEvolutionPackage) where
  evolutionEquationClosed : S.evolutionEquation
  initialSurfaceConvexClosed : S.initialSurfaceConvex
  solutionExistsClosed : S.solutionExists

def SurfaceEvolutionClosed (S : SurfaceEvolutionPackage) : Prop :=
  S.evolutionEquation ∧ S.initialSurfaceConvex ∧ S.solutionExists

theorem surface_evolution_closed_from_evidence (S : SurfaceEvolutionPackage) (E : SurfaceEvolutionEvidence S) :
    SurfaceEvolutionClosed S := by
  exact And.intro E.evolutionEquationClosed (And.intro E.initialSurfaceConvexClosed E.solutionExistsClosed)

end GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean
end HautevilleHouse