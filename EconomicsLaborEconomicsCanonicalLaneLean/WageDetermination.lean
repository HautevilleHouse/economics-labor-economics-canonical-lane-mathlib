import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborEconomicsCanonicalLaneLean

structure WageDeterminationPackage where
  marginalProductivity : ℝ
  wageRate : ℝ
  laborMarketEquilibrium : Prop
  efficiencyWages : Prop
  wageStickiness : Prop
  laborMarketEquilibriumTerm : laborMarketEquilibrium
  efficiencyWagesTerm : efficiencyWages
  wageStickinessTerm : wageStickiness

structure WageDeterminationEvidence (W : WageDeterminationPackage) where
  marginalProductivityClosed : W.marginalProductivity > 0
  wageRateClosed : W.wageRate > 0
  laborMarketEquilibriumClosed : W.laborMarketEquilibrium
  efficiencyWagesClosed : W.efficiencyWages
  wageStickinessClosed : W.wageStickiness

def WageDeterminationClosed (W : WageDeterminationPackage) : Prop :=
  W.marginalProductivity > 0 ∧ W.wageRate > 0 ∧
  W.laborMarketEquilibrium ∧ W.efficiencyWages ∧ W.wageStickiness

theorem wage_determination_closed_from_evidence (W : WageDeterminationPackage)
    (E : WageDeterminationEvidence W) : WageDeterminationClosed W := by
  exact And.intro E.marginalProductivityClosed
    (And.intro E.wageRateClosed
      (And.intro E.laborMarketEquilibriumClosed
        (And.intro E.efficiencyWagesClosed E.wageStickinessClosed)))

end EconomicsLaborEconomicsCanonicalLaneLean
end HautevilleHouse