import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace EconomicsLaborEconomicsCanonicalLaneLean

structure LaborMarket where
  agents : Type
  endowments : agents → ℝ
  preferences : agents → ℝ → ℝ
  technology : ℝ → ℝ

structure LaborEconomicsAdmittedObject where
  market : LaborMarket
  equilibriumExists : Prop
  wageDetermination : Prop
  allocationEfficiency : Prop
  conclusion : equilibriumExists ∧ wageDetermination ∧ allocationEfficiency

structure LaborEconomicsEndgameState where
  object : LaborEconomicsAdmittedObject

def LaborEconomicsWitnessClosed (O : LaborEconomicsAdmittedObject) : Prop :=
  O.conclusion

end EconomicsLaborEconomicsCanonicalLaneLean
end HautevilleHouse
