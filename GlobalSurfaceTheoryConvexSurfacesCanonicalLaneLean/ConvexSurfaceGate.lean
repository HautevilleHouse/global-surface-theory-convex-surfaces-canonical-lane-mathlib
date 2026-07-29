import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean

def gateClosed (A : ConvexAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : ConvexAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean
end HautevilleHouse