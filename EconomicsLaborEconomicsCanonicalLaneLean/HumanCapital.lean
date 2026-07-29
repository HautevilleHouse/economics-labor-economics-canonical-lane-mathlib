import EconomicsLaborEconomicsCanonicalLaneLean.LaborSupply

namespace HautevilleHouse
namespace EconomicsLaborEconomicsCanonicalLaneLean

structure HumanCapitalPackage where
  educationYears : ℕ
  experienceYears : ℕ
  earningsFunction : ℝ → ℝ → ℝ
  returnsToSchooling : Prop
  returnsToExperience : Prop

structure HumanCapitalEvidence (H : HumanCapitalPackage) where
  returnsToSchoolingClosed : H.returnsToSchooling
  returnsToExperienceClosed : H.returnsToExperience
  earningsFunctionClosed : H.earningsFunction H.educationYears H.experienceYears > 0

def HumanCapitalClosed (H : HumanCapitalPackage) : Prop :=
  H.returnsToSchooling ∧ H.returnsToExperience ∧ H.earningsFunction H.educationYears H.experienceYears > 0

theorem human_capital_closed_from_evidence (H : HumanCapitalPackage) (E : HumanCapitalEvidence H) :
    HumanCapitalClosed H := by
  exact And.intro E.returnsToSchoolingClosed (And.intro E.returnsToExperienceClosed E.earningsFunctionClosed)

end EconomicsLaborEconomicsCanonicalLaneLean
end HautevilleHouse
