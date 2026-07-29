import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean

structure AdmissibleClass where
  object : ConvexSurfaceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ConvexSurfaceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean
end HautevilleHouse