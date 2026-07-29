import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean

structure FundamentalFormPackage where
  firstFundamentalForm : Type u
  secondFundamentalForm : Type v
  meanCurvature : Type w
  gaussCurvature : Type x
  shapeOperator : Type y
  positiveGaussCurvature : Prop
  shapeOperatorSelfAdjoint : Prop
  gaussEquationHolds : Prop
  codazziEquationHolds : Prop

structure FundamentalFormEvidence (F : FundamentalFormPackage) where
  positiveGaussCurvatureClosed : F.positiveGaussCurvature
  shapeOperatorSelfAdjointClosed : F.shapeOperatorSelfAdjoint
  gaussEquationHoldsClosed : F.gaussEquationHolds
  codazziEquationHoldsClosed : F.codazziEquationHolds

def FundamentalFormClosed (F : FundamentalFormPackage) : Prop :=
  F.positiveGaussCurvature ∧ F.shapeOperatorSelfAdjoint ∧
  F.gaussEquationHolds ∧ F.codazziEquationHolds

theorem fundamental_form_closed_from_evidence (F : FundamentalFormPackage)
    (E : FundamentalFormEvidence F) : FundamentalFormClosed F := by
  exact And.intro E.positiveGaussCurvatureClosed
    (And.intro E.shapeOperatorSelfAdjointClosed
      (And.intro E.gaussEquationHoldsClosed E.codazziEquationHoldsClosed))

end GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean
end HautevilleHouse