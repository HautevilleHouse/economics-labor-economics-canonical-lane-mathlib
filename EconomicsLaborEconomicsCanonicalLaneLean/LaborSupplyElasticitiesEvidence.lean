import canonicalLaneMathlib.AdmissibleClass
import EconomicsLaborEconomicsCanonicalLaneLean.LaborSupplyElasticities

namespace HautevilleHouse
namespace EconomicsLaborEconomicsCanonicalLaneLean

theorem labor_supply_elasticities_closed_example :
    LaborSupplyElasticitiesClosed (⟨1.5, 0.8, -0.2, 0.1, by trivial, by trivial⟩ : LaborSupplyElasticitiesPackage) := by
  apply labor_supply_elasticities_closed_from_evidence
  exact {
    compensatedElasticityClosed := by norm_num
    uncompensatedElasticityClosed := by norm_num
    incomeEffectClosed := by norm_num
    substitutionEffectClosed := by norm_num
    elasticityEstimatesConsistentClosed := trivial
  }

end EconomicsLaborEconomicsCanonicalLaneLean
end HautevilleHouse