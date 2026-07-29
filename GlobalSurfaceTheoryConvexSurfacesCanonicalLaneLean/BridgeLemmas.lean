import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ConvexSurfaceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean
end HautevilleHouse