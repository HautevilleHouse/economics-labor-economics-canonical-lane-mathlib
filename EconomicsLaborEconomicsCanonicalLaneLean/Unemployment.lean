import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborEconomicsCanonicalLaneLean

struct UnemploymentPackage where
  naturalRate : Type u
  cyclicalUnemployment : Prop
  structuralUnemployment : Prop
  frictionalUnemployment : Prop
  phillipsCurve : Prop

def unemploymentClosed (U : UnemploymentPackage) : Prop :=
  U.cyclicalUnemployment ∧ U.structuralUnemployment ∧ U.frictionalUnemployment ∧ U.phillipsCurve

struct UnemploymentEvidence (U : UnemploymentPackage) where
  cyclicalUnemploymentClosed : U.cyclicalUnemployment
  structuralUnemploymentClosed : U.structuralUnemployment
  frictionalUnemploymentClosed : U.frictionalUnemployment
  phillipsCurveClosed : U.phillipsCurve

theorem unemploymentClosedFromEvidence (U : UnemploymentPackage) (E : UnemploymentEvidence U) :
    unemploymentClosed U := by
  exact And.intro E.cyclicalUnemploymentClosed (And.intro E.structuralUnemploymentClosed (And.intro E.frictionalUnemploymentClosed E.phillipsCurveClosed))

end EconomicsLaborEconomicsCanonicalLaneLean
end HautevilleHouse
