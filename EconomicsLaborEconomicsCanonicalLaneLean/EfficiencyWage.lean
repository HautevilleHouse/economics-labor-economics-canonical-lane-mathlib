import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborEconomicsCanonicalLaneLean

structure EfficiencyWagePackage where
  wageRate : ℝ
  effortFunction : ℝ → ℝ
  productivity : ℝ
  shirkingProbability : ℝ
  noShirkingCondition : Prop

structure EfficiencyWageEvidence (E : EfficiencyWagePackage) where
  effortFunctionClosed : E.effortFunction E.wageRate > 0
  productivityClosed : E.productivity > 0
  noShirkingConditionClosed : E.noShirkingCondition

def EfficiencyWageClosed (E : EfficiencyWagePackage) : Prop :=
  E.effortFunction E.wageRate > 0 ∧ E.productivity > 0 ∧ E.noShirkingCondition

theorem efficiency_wage_closed_from_evidence (E : EfficiencyWagePackage) (Ev : EfficiencyWageEvidence E) :
    EfficiencyWageClosed E := by
  exact And.intro Ev.effortFunctionClosed (And.intro Ev.productivityClosed Ev.noShirkingConditionClosed)

end EconomicsLaborEconomicsCanonicalLaneLean
end HautevilleHouse