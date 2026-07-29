import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean

structure AleksandrovFenchelPackage where
  surface : ConvexSurfacePackage
  mixedVolumes : List ℝ
  inequalityHolds : Prop
  normalizedValues : Prop
  equalityCaseCharacterized : Prop

structure AleksandrovFenchelEvidence (A : AleksandrovFenchelPackage) where
  inequalityHoldsClosed : A.inequalityHolds
  normalizedValuesClosed : A.normalizedValues
  equalityCaseCharacterizedClosed : A.equalityCaseCharacterized

def AleksandrovFenchelClosed (A : AleksandrovFenchelPackage) : Prop :=
  A.inequalityHolds ∧ A.normalizedValues ∧ A.equalityCaseCharacterized

theorem aleksandrov_fenchel_closed_from_evidence (A : AleksandrovFenchelPackage) (E : AleksandrovFenchelEvidence A) :
    AleksandrovFenchelClosed A := by
  exact And.intro E.inequalityHoldsClosed
    (And.intro E.normalizedValuesClosed E.equalityCaseCharacterizedClosed)

end GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean
end HautevilleHouse