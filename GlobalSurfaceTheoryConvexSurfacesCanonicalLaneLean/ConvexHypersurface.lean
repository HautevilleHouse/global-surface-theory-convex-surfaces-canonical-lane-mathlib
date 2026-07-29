import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean.ConvexSurfaceStructure

namespace HautevilleHouse
namespace GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean

structure ConvexHypersurfacePackage (C : ConvexSurfaceStructure) where
  supportFunction : Type u
  radialFunction : Type v
  principalCurvatures : Type w
  principalDirections : Type x
  positiveCurvatureCondition : Prop
  strictConvexity : Prop
  analyticSupportFunction : Prop

structure ConvexHypersurfaceEvidence {C : ConvexSurfaceStructure} (H : ConvexHypersurfacePackage C) where
  positiveCurvatureConditionClosed : H.positiveCurvatureCondition
  strictConvexityClosed : H.strictConvexity
  analyticSupportFunctionClosed : H.analyticSupportFunction

def ConvexHypersurfaceClosed {C : ConvexSurfaceStructure} (H : ConvexHypersurfacePackage C) : Prop :=
  H.positiveCurvatureCondition ∧ H.strictConvexity ∧ H.analyticSupportFunction

theorem convex_hypersurface_closed_from_evidence {C : ConvexSurfaceStructure}
    (H : ConvexHypersurfacePackage C) (E : ConvexHypersurfaceEvidence H) :
    ConvexHypersurfaceClosed H := by
  exact And.intro E.positiveCurvatureConditionClosed
    (And.intro E.strictConvexityClosed E.analyticSupportFunctionClosed)

end GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean
end HautevilleHouse