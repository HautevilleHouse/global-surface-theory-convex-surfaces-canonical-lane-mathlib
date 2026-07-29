import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean

structure MinkowskiSupportFunctionPackage where
  surfaceType : Type
  supportFunction : surfaceType → ℝ^3 → ℝ
  convexBody : Set ℝ^3
  supportDefinesBody : ∀ u : ℝ^3, supportFunction u = sup { ⟨x,u⟩ | x ∈ convexBody }
  bodyConvex : IsConvex convexBody
  bodyCompact : IsCompact convexBody

structure MinkowskiSupportFunctionEvidence (M : MinkowskiSupportFunctionPackage) where
  supportDefinesBodyClosed : M.supportDefinesBody
  bodyConvexClosed : M.bodyConvex
  bodyCompactClosed : M.bodyCompact

def MinkowskiSupportFunctionClosed (M : MinkowskiSupportFunctionPackage) : Prop :=
  M.supportDefinesBody ∧ M.bodyConvex ∧ M.bodyCompact

theorem minkowski_support_function_closed_from_evidence (M : MinkowskiSupportFunctionPackage) (E : MinkowskiSupportFunctionEvidence M) :
    MinkowskiSupportFunctionClosed M := by
  exact And.intro E.supportDefinesBodyClosed (And.intro E.bodyConvexClosed E.bodyCompactClosed)

end GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean
end HautevilleHouse