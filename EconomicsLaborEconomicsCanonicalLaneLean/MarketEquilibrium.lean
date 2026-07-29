import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborEconomicsCanonicalLaneLean

struct MarketEquilibriumPackage where
  priceVector : Type u
  demandFunction : Type u
  supplyFunction : Type u
  equilibriumExistence : Prop
  uniqueness : Prop
  stability : Prop

def marketEquilibriumClosed (M : MarketEquilibriumPackage) : Prop :=
  M.equilibriumExistence ∧ M.uniqueness ∧ M.stability

structure MarketEquilibriumEvidence (M : MarketEquilibriumPackage) where
  equilibriumExistenceClosed : M.equilibriumExistence
  uniquenessClosed : M.uniqueness
  stabilityClosed : M.stability

theorem marketEquilibriumClosedFromEvidence (M : MarketEquilibriumPackage) (E : MarketEquilibriumEvidence M) :
    marketEquilibriumClosed M := by
  exact And.intro E.equilibriumExistenceClosed (And.intro E.uniquenessClosed E.stabilityClosed)

end EconomicsLaborEconomicsCanonicalLaneLean
end HautevilleHouse
