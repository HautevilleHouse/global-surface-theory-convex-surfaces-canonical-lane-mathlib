import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean

structure SupportFunctionPackage where
  supportFunction : Type u
  radialFunction : Type v
  gaussMap : Type w
  supportFunctionDefined : Prop
  radialFunctionDefined : Prop
  gaussMapBijective : Prop
  supportFunctionSmooth : Prop
  radialFunctionPositive : Prop

structure SupportFunctionEvidence (S : SupportFunctionPackage) where
  supportFunctionDefinedClosed : S.supportFunctionDefined
  radialFunctionDefinedClosed : S.radialFunctionDefined
  gaussMapBijectiveClosed : S.gaussMapBijective
  supportFunctionSmoothClosed : S.supportFunctionSmooth
  radialFunctionPositiveClosed : S.radialFunctionPositive

def SupportFunctionClosed (S : SupportFunctionPackage) : Prop :=
  S.supportFunctionDefined ∧ S.radialFunctionDefined ∧
  S.gaussMapBijective ∧ S.supportFunctionSmooth ∧ S.radialFunctionPositive

theorem support_function_closed_from_evidence (S : SupportFunctionPackage)
    (E : SupportFunctionEvidence S) : SupportFunctionClosed S := by
  exact And.intro E.supportFunctionDefinedClosed
    (And.intro E.radialFunctionDefinedClosed
      (And.intro E.gaussMapBijectiveClosed
        (And.intro E.supportFunctionSmoothClosed E.radialFunctionPositiveClosed)))

end GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean
end HautevilleHouse