import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborEconomicsCanonicalLaneLean

structure SearchAndMatchingPackage where
  jobFindingRate : ℝ
  vacancyFillingRate : ℝ
  marketTightness : ℝ
  matchingFunctionCobbDouglas : Prop
  beveridgeCurveRelation : Prop
  matchingFunctionCobbDouglasTerm : matchingFunctionCobbDouglas
  beveridgeCurveRelationTerm : beveridgeCurveRelation

structure SearchAndMatchingEvidence (S : SearchAndMatchingPackage) where
  jobFindingRateClosed : S.jobFindingRate > 0
  vacancyFillingRateClosed : S.vacancyFillingRate > 0
  marketTightnessClosed : S.marketTightness > 0
  matchingFunctionCobbDouglasClosed : S.matchingFunctionCobbDouglas
  beveridgeCurveRelationClosed : S.beveridgeCurveRelation

def SearchAndMatchingClosed (S : SearchAndMatchingPackage) : Prop :=
  S.jobFindingRate > 0 ∧ S.vacancyFillingRate > 0 ∧
  S.marketTightness > 0 ∧ S.matchingFunctionCobbDouglas ∧ S.beveridgeCurveRelation

theorem search_and_matching_closed_from_evidence (S : SearchAndMatchingPackage)
    (E : SearchAndMatchingEvidence S) : SearchAndMatchingClosed S := by
  exact And.intro E.jobFindingRateClosed
    (And.intro E.vacancyFillingRateClosed
      (And.intro E.marketTightnessClosed
        (And.intro E.matchingFunctionCobbDouglasClosed E.beveridgeCurveRelationClosed)))

end EconomicsLaborEconomicsCanonicalLaneLean
end HautevilleHouse