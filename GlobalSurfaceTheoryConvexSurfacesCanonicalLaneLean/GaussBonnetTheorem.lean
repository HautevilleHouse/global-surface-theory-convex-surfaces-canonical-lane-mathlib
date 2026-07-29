import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean

structure GaussBonnetPackage where
  surface : ConvexSurfacePackage
  eulerCharacteristic : ℤ
  totalCurvature : ℝ
  gaussBonnetEquation : Prop
  eulerCharacteristicComputed : Prop
  totalCurvatureComputed : Prop

structure GaussBonnetEvidence (G : GaussBonnetPackage) where
  gaussBonnetEquationClosed : G.gaussBonnetEquation
  eulerCharacteristicComputedClosed : G.eulerCharacteristicComputed
  totalCurvatureComputedClosed : G.totalCurvatureComputed

def GaussBonnetClosed (G : GaussBonnetPackage) : Prop :=
  G.gaussBonnetEquation ∧ G.eulerCharacteristicComputed ∧ G.totalCurvatureComputed

theorem gauss_bonnet_closed_from_evidence (G : GaussBonnetPackage) (E : GaussBonnetEvidence G) :
    GaussBonnetClosed G := by
  exact And.intro E.gaussBonnetEquationClosed
    (And.intro E.eulerCharacteristicComputedClosed E.totalCurvatureComputedClosed)

end GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean
end HautevilleHouse