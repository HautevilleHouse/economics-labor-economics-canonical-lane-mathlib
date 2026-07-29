import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborEconomicsCanonicalLaneLean

structure HumanCapitalModelPackage where
  educationYears : ℕ
  experienceYears : ℕ
  earningsFunction : ℝ → ℝ
  returnsToEducation : ℝ
  returnsToExperience : ℝ

structure HumanCapitalModelEvidence (H : HumanCapitalModelPackage) where
  educationYearsClosed : H.educationYears ≥ 0
  experienceYearsClosed : H.experienceYears ≥ 0
  earningsFunctionClosed : H.earningsFunction (H.experienceYears : ℝ) > 0
  returnsToEducationClosed : H.returnsToEducation > 0
  returnsToExperienceClosed : H.returnsToExperience > 0

def HumanCapitalModelClosed (H : HumanCapitalModelPackage) : Prop :=
  H.educationYears ≥ 0 ∧ H.experienceYears ≥ 0 ∧
  H.earningsFunction (H.experienceYears : ℝ) > 0 ∧
  H.returnsToEducation > 0 ∧ H.returnsToExperience > 0

theorem human_capital_model_closed_from_evidence (H : HumanCapitalModelPackage)
    (E : HumanCapitalModelEvidence H) : HumanCapitalModelClosed H := by
  exact And.intro E.educationYearsClosed (And.intro E.experienceYearsClosed
    (And.intro E.earningsFunctionClosed (And.intro E.returnsToEducationClosed E.returnsToExperienceClosed)))

end EconomicsLaborEconomicsCanonicalLaneLean
end HautevilleHouse
