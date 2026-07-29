import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean

structure ConvexEmbeddingPackage where
  ambientSpace : Type u
  ambientTopology : TopologicalSpace ambientSpace
  riemannianMetric : Type v
  embeddedSurface : Type w
  embeddingMap : embeddedSurface → ambientSpace
  convexCondition : Prop
  embeddingClosed : Prop

structure ConvexEmbeddingEvidence (E : ConvexEmbeddingPackage) where
  convexConditionClosed : E.convexCondition
  embeddingClosedClosed : E.embeddingClosed

def ConvexEmbeddingClosed (E : ConvexEmbeddingPackage) : Prop :=
  E.convexCondition ∧ E.embeddingClosed

theorem convex_embedding_closed_from_evidence (E : ConvexEmbeddingPackage) (Ev : ConvexEmbeddingEvidence E) :
    ConvexEmbeddingClosed E := by
  exact And.intro Ev.convexConditionClosed Ev.embeddingClosedClosed

end GlobalSurfaceTheoryConvexSurfacesCanonicalLaneLean
end HautevilleHouse