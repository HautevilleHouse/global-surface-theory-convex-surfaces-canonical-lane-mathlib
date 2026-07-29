import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean

structure ConvexSurfaceAdmittedObject where
  surfaceType : Type
  embedding : surfaceType → ℝ^3
  convex : Prop
  boundary : Set surfaceType
  gaussCurvaturePositive : convex → gaussCurvature > 0
  conclusion : convex ∧ gaussCurvaturePositive

structure ConvexAdmissibleClass where
  object : ConvexSurfaceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def AdmittedClosure (A : ConvexAdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean
end HautevilleHouse