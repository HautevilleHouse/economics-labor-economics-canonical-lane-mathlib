import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborEconomicsCanonicalLaneLean

structure CompensatingDifferentialsPackage where
  riskPremium : ℝ
  jobAmenities : ℝ
  hedonicWageFunction : Prop
  willingnessToPay : Prop
  hedonicWageFunctionTerm : hedonicWageFunction
  willingnessToPayTerm : willingnessToPay

structure CompensatingDifferentialsEvidence (C : CompensatingDifferentialsPackage) where
  riskPremiumClosed : C.riskPremium > 0
  jobAmenitiesClosed : C.jobAmenities > 0
  hedonicWageFunctionClosed : C.hedonicWageFunction
  willingnessToPayClosed : C.willingnessToPay

def CompensatingDifferentialsClosed (C : CompensatingDifferentialsPackage) : Prop :=
  C.riskPremium > 0 ∧ C.jobAmenities > 0 ∧ C.hedonicWageFunction ∧ C.willingnessToPay

theorem compensating_differentials_closed_from_evidence (C : CompensatingDifferentialsPackage)
    (E : CompensatingDifferentialsEvidence C) : CompensatingDifferentialsClosed C := by
  exact And.intro E.riskPremiumClosed
    (And.intro E.jobAmenitiesClosed
      (And.intro E.hedonicWageFunctionClosed E.willingnessToPayClosed))

end EconomicsLaborEconomicsCanonicalLaneLean
end HautevilleHouse