import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborEconomicsCanonicalLaneLean

structure LaborSupplyElasticityPackage where
  wageElasticity : ℝ
  substitutionEffect : Prop
  incomeEffect : Prop
  aggregateLaborSupply : Prop

structure LaborSupplyElasticityEvidence (L : LaborSupplyElasticityPackage) where
  wageElasticityClosed : L.wageElasticity > 0
  substitutionEffectClosed : L.substitutionEffect
  incomeEffectClosed : L.incomeEffect
  aggregateLaborSupplyClosed : L.aggregateLaborSupply

def LaborSupplyElasticityClosed (L : LaborSupplyElasticityPackage) : Prop :=
  L.wageElasticity > 0 ∧ L.substitutionEffect ∧ L.incomeEffect ∧ L.aggregateLaborSupply

theorem labor_supply_elasticity_closed_from_evidence (L : LaborSupplyElasticityPackage)
    (E : LaborSupplyElasticityEvidence L) : LaborSupplyElasticityClosed L := by
  exact And.intro E.wageElasticityClosed (And.intro E.substitutionEffectClosed (And.intro E.incomeEffectClosed E.aggregateLaborSupplyClosed))

end EconomicsLaborEconomicsCanonicalLaneLean
end HautevilleHouse
