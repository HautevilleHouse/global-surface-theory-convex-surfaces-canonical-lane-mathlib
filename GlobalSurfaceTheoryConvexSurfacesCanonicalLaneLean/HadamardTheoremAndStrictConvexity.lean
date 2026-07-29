import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean

structure HadamardTheoremPackage where
  immersedSurface : Type u
  complete : Prop
  gaussKroneckerPositive : Prop
  convexGlobal : Prop
  strictlyConvexGlobal : Prop
  hadamardConclusion : Prop
  firstFundamentalForm : Type v
  secondFundamentalForm : Type w

structure HadamardTheoremEvidence (H : HadamardTheoremPackage) where
  completeClosed : H.complete
  gaussKroneckerPositiveClosed : H.gaussKroneckerPositive
  convexGlobalClosed : H.convexGlobal
  strictlyConvexGlobalClosed : H.strictlyConvexGlobal
  hadamardConclusionClosed : H.hadamardConclusion

def HadamardTheoremClosed (H : HadamardTheoremPackage) : Prop :=
  H.complete ∧ H.gaussKroneckerPositive ∧
  H.convexGlobal ∧ H.strictlyConvexGlobal ∧ H.hadamardConclusion

theorem hadamard_theorem_closed_from_evidence (H : HadamardTheoremPackage)
    (E : HadamardTheoremEvidence H) : HadamardTheoremClosed H := by
  exact And.intro E.completeClosed
    (And.intro E.gaussKroneckerPositiveClosed
      (And.intro E.convexGlobalClosed
        (And.intro E.strictlyConvexGlobalClosed E.hadamardConclusionClosed)))

end GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean
end HautevilleHouse