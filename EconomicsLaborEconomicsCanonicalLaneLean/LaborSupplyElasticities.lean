import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborEconomicsCanonicalLaneLean

structure LaborSupplyElasticitiesPackage where
  compensatedElasticity : ℝ
  uncompensatedElasticity : ℝ
  incomeEffect : ℝ
  substitutionEffect : ℝ
  elasticityEstimatesConsistent : Prop
  elasticityEstimatesConsistentTerm : elasticityEstimatesConsistent

structure LaborSupplyElasticitiesEvidence (L : LaborSupplyElasticitiesPackage) where
  compensatedElasticityClosed : L.compensatedElasticity > 0
  uncompensatedElasticityClosed : L.uncompensatedElasticity > 0
  incomeEffectClosed : L.incomeEffect < 0
  substitutionEffectClosed : L.substitutionEffect > 0
  elasticityEstimatesConsistentClosed : L.elasticityEstimatesConsistent

def LaborSupplyElasticitiesClosed (L : LaborSupplyElasticitiesPackage) : Prop :=
  L.compensatedElasticity > 0 ∧ L.uncompensatedElasticity > 0 ∧
  L.incomeEffect < 0 ∧ L.substitutionEffect > 0 ∧ L.elasticityEstimatesConsistent

theorem labor_supply_elasticities_closed_from_evidence (L : LaborSupplyElasticitiesPackage)
    (E : LaborSupplyElasticitiesEvidence L) : LaborSupplyElasticitiesClosed L := by
  exact And.intro E.compensatedElasticityClosed
    (And.intro E.uncompensatedElasticityClosed
      (And.intro E.incomeEffectClosed
        (And.intro E.substitutionEffectClosed E.elasticityEstimatesConsistentClosed)))

end EconomicsLaborEconomicsCanonicalLaneLean
end HautevilleHouse