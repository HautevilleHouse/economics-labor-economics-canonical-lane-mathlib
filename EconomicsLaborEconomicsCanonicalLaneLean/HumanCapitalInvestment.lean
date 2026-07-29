import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborEconomicsCanonicalLaneLean

structure HumanCapitalInvestmentPackage where
  educationYears : ℝ
  onTheJobTraining : ℝ
  returnToEducation : ℝ
  returnToExperience : ℝ
  humanCapitalProductionFunction : Prop
  humanCapitalProductionFunctionTerm : humanCapitalProductionFunction

structure HumanCapitalInvestmentEvidence (H : HumanCapitalInvestmentPackage) where
  educationYearsClosed : H.educationYears ≥ 0
  onTheJobTrainingClosed : H.onTheJobTraining ≥ 0
  returnToEducationClosed : H.returnToEducation > 0
  returnToExperienceClosed : H.returnToExperience > 0
  humanCapitalProductionFunctionClosed : H.humanCapitalProductionFunction

def HumanCapitalInvestmentClosed (H : HumanCapitalInvestmentPackage) : Prop :=
  H.educationYears ≥ 0 ∧ H.onTheJobTraining ≥ 0 ∧
  H.returnToEducation > 0 ∧ H.returnToExperience > 0 ∧ H.humanCapitalProductionFunction

theorem human_capital_investment_closed_from_evidence (H : HumanCapitalInvestmentPackage)
    (E : HumanCapitalInvestmentEvidence H) : HumanCapitalInvestmentClosed H := by
  exact And.intro E.educationYearsClosed
    (And.intro E.onTheJobTrainingClosed
      (And.intro E.returnToEducationClosed
        (And.intro E.returnToExperienceClosed E.humanCapitalProductionFunctionClosed)))

end EconomicsLaborEconomicsCanonicalLaneLean
end HautevilleHouse