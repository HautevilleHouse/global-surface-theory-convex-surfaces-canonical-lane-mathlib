import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean

def bridgeClosed (A : ConvexAdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : ConvexAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean
end HautevilleHouse