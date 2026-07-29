import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborEconomicsCanonicalLaneLean

structure SearchMatchingModel where
  laborMarketTightness : Prop
  matchingFunctionConstant : Prop
  jobFindingRate : Prop
  vacancyFillingRate : Prop
  tightnessDetermined : Prop

structure SearchMatchingEvidence (S : SearchMatchingModel) where
  laborMarketTightnessClosed : S.laborMarketTightness
  matchingFunctionConstantPositive : S.matchingFunctionConstant
  jobFindingRateClosed : S.jobFindingRate
  vacancyFillingRateClosed : S.vacancyFillingRate
  tightnessDeterminedClosed : S.tightnessDetermined

def SearchMatchingClosed (S : SearchMatchingModel) : Prop :=
  S.laborMarketTightness ∧ S.matchingFunctionConstant ∧
  S.jobFindingRate ∧ S.vacancyFillingRate ∧ S.tightnessDetermined

theorem search_matching_closed_from_evidence (S : SearchMatchingModel)
    (E : SearchMatchingEvidence S) : SearchMatchingClosed S := by
  exact And.intro E.laborMarketTightnessClosed
    (And.intro E.matchingFunctionConstantPositive
      (And.intro E.jobFindingRateClosed
        (And.intro E.vacancyFillingRateClosed E.tightnessDeterminedClosed)))

end HautevilleHouse
end EconomicsLaborEconomicsCanonicalLaneLean