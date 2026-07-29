import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean

structure ChristoffelRiemannPackage where
  christoffelSymbols : Type u
  riemannCurvatureTensor : Type v
  ricciCurvature : Type w
  scalarCurvature : Type x
  symmetryChristoffel : Prop
  compatibilityMetric : Prop
  riemannSymmetries : Prop
  firstBianchi : Prop
  ricciPositive : Prop
  scalarPositive : Prop

structure ChristoffelRiemannEvidence (C : ChristoffelRiemannPackage) where
  symmetryChristoffelClosed : C.symmetryChristoffel
  compatibilityMetricClosed : C.compatibilityMetric
  riemannSymmetriesClosed : C.riemannSymmetries
  firstBianchiClosed : C.firstBianchi
  ricciPositiveClosed : C.ricciPositive
  scalarPositiveClosed : C.scalarPositive

def ChristoffelRiemannClosed (C : ChristoffelRiemannPackage) : Prop :=
  C.symmetryChristoffel ∧ C.compatibilityMetric ∧
  C.riemannSymmetries ∧ C.firstBianchi ∧
  C.ricciPositive ∧ C.scalarPositive

theorem christoffel_riemann_closed_from_evidence (C : ChristoffelRiemannPackage)
    (E : ChristoffelRiemannEvidence C) : ChristoffelRiemannClosed C := by
  exact And.intro E.symmetryChristoffelClosed
    (And.intro E.compatibilityMetricClosed
      (And.intro E.riemannSymmetriesClosed
        (And.intro E.firstBianchiClosed
          (And.intro E.ricciPositiveClosed E.scalarPositiveClosed))))

end GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean
end HautevilleHouse