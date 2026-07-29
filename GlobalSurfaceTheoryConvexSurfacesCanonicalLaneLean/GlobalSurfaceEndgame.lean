import canonicalLaneMathlib.AdmissibleClass
import GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean.GlobalSurfaceBridge

namespace HautevilleHouse
namespace GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean

def ConstrainedSurfaceClosure (A : AdmissibleClassConvex) : Prop :=
  bridgeClosedConvex A ∧ gateClosedConvex A

theorem constrained_surface_endgame (A : AdmissibleClassConvex) :
    ConstrainedSurfaceClosure A := by
  exact And.intro (bridge_from_convex_admissible A) (gate_from_convex_admissible A)

end GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean
end HautevilleHouse
