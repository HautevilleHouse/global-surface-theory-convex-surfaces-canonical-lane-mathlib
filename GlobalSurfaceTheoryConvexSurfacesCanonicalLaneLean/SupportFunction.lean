import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean

structure SupportFunctionPackage where
  surface : ConvexSurfacePackage
  supportFunction : surface.manifold → ℝ
  differential : surface.manifold → surface.manifold → ℝ
  hessian : surface.manifold → surface.manifold → surface.manifold → ℝ
  supportFunctionContinuous : Prop
  differentialExists : Prop
  hessianExists : Prop
  supportFunctionRecoversShape : Prop

structure SupportFunctionEvidence (S : SupportFunctionPackage) where
  supportFunctionContinuousClosed : S.supportFunctionContinuous
  differentialExistsClosed : S.differentialExists
  hessianExistsClosed : S.hessianExists
  supportFunctionRecoversShapeClosed : S.supportFunctionRecoversShape

def SupportFunctionClosed (S : SupportFunctionPackage) : Prop :=
  S.supportFunctionContinuous ∧ S.differentialExists ∧ S.hessianExists ∧ S.supportFunctionRecoversShape

theorem support_function_closed_from_evidence (S : SupportFunctionPackage) (E : SupportFunctionEvidence S) :
    SupportFunctionClosed S := by
  exact And.intro E.supportFunctionContinuousClosed
    (And.intro E.differentialExistsClosed
      (And.intro E.hessianExistsClosed E.supportFunctionRecoversShapeClosed))

end GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean
end HautevilleHouse