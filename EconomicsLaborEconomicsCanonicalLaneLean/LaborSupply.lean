import EconomicsLaborEconomicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborEconomicsCanonicalLaneLean

structure LaborSupplyPackage where
  reservationWage : ℝ
  laborSupplyElasticity : ℝ
  utilityMaximization : Prop
  interiorSolution : Prop

structure LaborSupplyEvidence (L : LaborSupplyPackage) where
  reservationWagePositive : L.reservationWage > 0
  elasticityPositive : L.laborSupplyElasticity > 0
  utilityMaximizationClosed : L.utilityMaximization
  interiorSolutionClosed : L.interiorSolution

def LaborSupplyClosed (L : LaborSupplyPackage) : Prop :=
  L.reservationWage > 0 ∧ L.laborSupplyElasticity > 0 ∧ L.utilityMaximization ∧ L.interiorSolution

theorem labor_supply_closed_from_evidence (L : LaborSupplyPackage) (E : LaborSupplyEvidence L) :
    LaborSupplyClosed L := by
  exact And.intro E.reservationWagePositive (And.intro E.elasticityPositive (And.intro E.utilityMaximizationClosed E.interiorSolutionClosed))

end EconomicsLaborEconomicsCanonicalLaneLean
end HautevilleHouse
