import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborEconomicsCanonicalLaneLean

structure LaborSupplyDemandModel where
  laborSupplyCurve : ℝ → ℝ
  laborDemandCurve : ℝ → ℝ
  equilibriumWage : ℝ
  equilibriumEmployment : ℕ
  marketClearingCondition : Prop
  comparativeStatics : Prop

structure LaborSupplyDemandEvidence (L : LaborSupplyDemandModel) where
  supplyCurveValid : ∀ w, L.laborSupplyCurve w ≥ 0
  demandCurveValid : ∀ w, L.laborDemandCurve w ≥ 0
  equilibriumWagePositive : L.equilibriumWage > 0
  equilibriumEmploymentPositive : L.equilibriumEmployment > 0
  marketClearingConditionClosed : L.marketClearingCondition
  comparativeStaticsClosed : L.comparativeStatics

def LaborSupplyDemandClosed (L : LaborSupplyDemandModel) : Prop :=
  L.marketClearingCondition ∧ L.comparativeStatics

theorem labor_supply_demand_closed_from_evidence (L : LaborSupplyDemandModel)
    (E : LaborSupplyDemandEvidence L) : LaborSupplyDemandClosed L := by
  exact And.intro E.marketClearingConditionClosed E.comparativeStaticsClosed

end HautevilleHouse
end EconomicsLaborEconomicsCanonicalLaneLean