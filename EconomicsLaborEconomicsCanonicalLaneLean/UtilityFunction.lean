import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborEconomicsCanonicalLaneLean

structure UtilityFunctionPackage where
  preferenceRelation : Type u
  completeness : Prop
  transitivity : Prop
  continuity : Prop
  strongMonotonicity : Prop
  strictlyConcave : Prop

def utilityFunctionClosed (U : UtilityFunctionPackage) : Prop :=
  U.completeness ∧ U.transitivity ∧ U.continuity ∧ U.strongMonotonicity ∧ U.strictlyConcave

structure UtilityFunctionEvidence (U : UtilityFunctionPackage) where
  completenessClosed : U.completeness
  transitivityClosed : U.transitivity
  continuityClosed : U.continuity
  strongMonotonicityClosed : U.strongMonotonicity
  strictlyConcaveClosed : U.strictlyConcave

theorem utilityFunctionClosedFromEvidence (U : UtilityFunctionPackage) (E : UtilityFunctionEvidence U) :
    utilityFunctionClosed U := by
  exact And.intro E.completenessClosed (And.intro E.transitivityClosed (And.intro E.continuityClosed (And.intro E.strongMonotonicityClosed E.strictlyConcaveClosed)))

end EconomicsLaborEconomicsCanonicalLaneLean
end HautevilleHouse
