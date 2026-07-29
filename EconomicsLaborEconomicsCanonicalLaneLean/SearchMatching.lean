import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborEconomicsCanonicalLaneLean

structure SearchMatchingPackage where
  jobVacancies : ℕ
  unemployedWorkers : ℕ
  matchingFunction : ℕ → ℕ → ℕ
  marketTightness : ℝ
  beveridgeCurveShift : Prop

structure SearchMatchingEvidence (S : SearchMatchingPackage) where
  matchingFunctionClosed : S.matchingFunction S.jobVacancies S.unemployedWorkers ≥ 0
  marketTightnessClosed : S.marketTightness ≥ 0
  beveridgeCurveShiftClosed : S.beveridgeCurveShift

def SearchMatchingClosed (S : SearchMatchingPackage) : Prop :=
  S.matchingFunction S.jobVacancies S.unemployedWorkers ≥ 0 ∧ S.marketTightness ≥ 0 ∧ S.beveridgeCurveShift

theorem search_matching_closed_from_evidence (S : SearchMatchingPackage) (E : SearchMatchingEvidence S) :
    SearchMatchingClosed S := by
  exact And.intro E.matchingFunctionClosed (And.intro E.marketTightnessClosed E.beveridgeCurveShiftClosed)

end EconomicsLaborEconomicsCanonicalLaneLean
end HautevilleHouse