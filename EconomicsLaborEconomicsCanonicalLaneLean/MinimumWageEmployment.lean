import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborEconomicsCanonicalLaneLean

structure MinimumWageModel where
  statutoryWage : ℝ
  marketClearingWage : ℝ
  laborDemandElasticity : ℝ
  employmentLevel : ℕ
  fullEmployment : Prop
  disemploymentEffect : Prop

structure MinimumWageEvidence (M : MinimumWageModel) where
  statutoryWagePositive : M.statutoryWage > 0
  marketClearingWagePositive : M.marketClearingWage > 0
  laborDemandElasticityNegative : M.laborDemandElasticity < 0
  employmentLevelFinite : True
  fullEmploymentClosed : M.fullEmployment
  disemploymentEffectClosed : M.disemploymentEffect

def MinimumWageClosed (M : MinimumWageModel) : Prop :=
  M.fullEmployment ∧ M.disemploymentEffect

theorem minimum_wage_closed_from_evidence (M : MinimumWageModel)
    (E : MinimumWageEvidence M) : MinimumWageClosed M := by
  exact And.intro E.fullEmploymentClosed E.disemploymentEffectClosed

end HautevilleHouse
end EconomicsLaborEconomicsCanonicalLaneLean