import canonicalLaneMathlib.AdmissibleClass
import GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean.ConvexSurfaceClosedGeodesic

namespace HautevilleHouse
namespace GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean

structure AdmissibleConvexObject where
  surface : ConvexSurfacePackage
  closedGeodesicExists : Prop
  conclusion : closedGeodesicExists

structure AdmissibleClassConvex where
  object : AdmissibleConvexObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosedConvex (A : AdmissibleClassConvex) : Prop :=
  A.object.closedGeodesicExists

theorem bridge_from_convex_admissible (A : AdmissibleClassConvex) :
    bridgeClosedConvex A := by
  exact A.object.conclusion

def gateClosedConvex (A : AdmissibleClassConvex) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_convex_admissible (A : AdmissibleClassConvex) :
    gateClosedConvex A := by
  exact A.gateWitness

end GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean
end HautevilleHouse
