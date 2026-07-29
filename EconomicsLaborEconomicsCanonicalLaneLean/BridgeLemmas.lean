import EconomicsLaborEconomicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborEconomicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LaborEconomicsWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EconomicsLaborEconomicsCanonicalLaneLean
end HautevilleHouse
