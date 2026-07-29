import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ConvexSurfaceSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ConvexSurfaceAdmittedObject where
  space : ConvexSurfaceSpace
  closedSurface : Prop
  convexEmbedding : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure ConvexSurfaceEndgameState where
  object : ConvexSurfaceAdmittedObject

def ConvexSurfaceWitnessClosed (O : ConvexSurfaceAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean
end HautevilleHouse