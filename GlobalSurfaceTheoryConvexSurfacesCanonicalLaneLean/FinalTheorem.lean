import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean

def ConstrainedSurfaceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_surface_endgame (A : AdmissibleClass) :
    ConstrainedSurfaceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean
end HautevilleHouse