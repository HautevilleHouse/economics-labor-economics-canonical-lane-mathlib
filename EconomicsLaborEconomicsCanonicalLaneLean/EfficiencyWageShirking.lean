import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborEconomicsCanonicalLaneLean

structure EfficiencyWageModel where
  workerEffort : Prop
  monitoringIntensity : ℝ
  unemploymentBenefit : ℝ
  wagePremium : ℝ
  noShirkingCondition : Prop
  effortInduced : Prop

structure EfficiencyWageEvidence (E : EfficiencyWageModel) where
  workerEffortMeasurable : E.workerEffort
  monitoringIntensityPositive : E.monitoringIntensity > 0
  unemploymentBenefitPositive : E.unemploymentBenefit ≥ 0
  wagePremiumPositive : E.wagePremium > 0
  noShirkingConditionClosed : E.noShirkingCondition
  effortInducedClosed : E.effortInduced

def EfficiencyWageClosed (E : EfficiencyWageModel) : Prop :=
  E.noShirkingCondition ∧ E.effortInduced

theorem efficiency_wage_closed_from_evidence (E : EfficiencyWageModel)
    (Ev : EfficiencyWageEvidence E) : EfficiencyWageClosed E := by
  exact And.intro Ev.noShirkingConditionClosed Ev.effortInducedClosed

end HautevilleHouse
end EconomicsLaborEconomicsCanonicalLaneLean