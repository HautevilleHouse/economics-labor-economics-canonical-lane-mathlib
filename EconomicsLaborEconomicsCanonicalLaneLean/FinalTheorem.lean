import EconomicsLaborEconomicsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EconomicsLaborEconomicsCanonicalLaneLean

def ConstrainedLaborEconomicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_labor_economics_endgame (A : AdmissibleClass) :
    ConstrainedLaborEconomicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EconomicsLaborEconomicsCanonicalLaneLean
end HautevilleHouse
