import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborEconomicsCanonicalLaneLean

structure WageBargainingModel where
  firmProductivity : Prop
  workerReservationWage : Prop
  bargainingPower : ℝ
  negotiatedWage : Prop
  wageDeterminationClosed : Prop

structure WageBargainingEvidence (W : WageBargainingModel) where
  firmProductivityClosed : W.firmProductivity
  workerReservationWageClosed : W.workerReservationWage
  bargainingPowerPositive : W.bargainingPower > 0
  bargainingPowerLessOne : W.bargainingPower < 1
  negotiatedWageClosed : W.negotiatedWage

def WageBargainingClosed (W : WageBargainingModel) : Prop :=
  W.firmProductivity ∧ W.workerReservationWage ∧
  W.negotiatedWage

theorem wage_bargaining_closed_from_evidence (W : WageBargainingModel)
    (E : WageBargainingEvidence W) : WageBargainingClosed W := by
  exact And.intro E.firmProductivityClosed
    (And.intro E.workerReservationWageClosed E.negotiatedWageClosed)

end HautevilleHouse
end EconomicsLaborEconomicsCanonicalLaneLean