import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborEconomicsCanonicalLaneLean

structure MinimumWagePolicyPackage where
  minimumWage : ℝ
  employmentLevel : ℕ
  wageBill : ℝ
  laborDemandElasticity : ℝ

structure MinimumWagePolicyEvidence (M : MinimumWagePolicyPackage) where
  minimumWageClosed : M.minimumWage > 0
  employmentLevelClosed : M.employmentLevel ≥ 0
  wageBillClosed : M.wageBill ≥ 0
  laborDemandElasticityClosed : M.laborDemandElasticity < 0

def MinimumWagePolicyClosed (M : MinimumWagePolicyPackage) : Prop :=
  M.minimumWage > 0 ∧ M.employmentLevel ≥ 0 ∧ M.wageBill ≥ 0 ∧ M.laborDemandElasticity < 0

theorem minimum_wage_policy_closed_from_evidence (M : MinimumWagePolicyPackage)
    (E : MinimumWagePolicyEvidence M) : MinimumWagePolicyClosed M := by
  exact And.intro E.minimumWageClosed (And.intro E.employmentLevelClosed (And.intro E.wageBillClosed E.laborDemandElasticityClosed))

end EconomicsLaborEconomicsCanonicalLaneLean
end HautevilleHouse
