import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborEconomicsCanonicalLaneLean

struct WelfareTheoremPackage where
  competitiveEquilibrium : Prop
  paretoOptimality : Prop
  firstFundamentalTheorem : Prop
  secondFundamentalTheorem : Prop

def welfareTheoremClosed (W : WelfareTheoremPackage) : Prop :=
  W.firstFundamentalTheorem ∧ W.secondFundamentalTheorem

struct WelfareTheoremEvidence (W : WelfareTheoremPackage) where
  firstFundamentalTheoremClosed : W.firstFundamentalTheorem
  secondFundamentalTheoremClosed : W.secondFundamentalTheorem

theorem welfareTheoremClosedFromEvidence (W : WelfareTheoremPackage) (E : WelfareTheoremEvidence W) :
    welfareTheoremClosed W := by
  exact And.intro E.firstFundamentalTheoremClosed E.secondFundamentalTheoremClosed

end EconomicsLaborEconomicsCanonicalLaneLean
end HautevilleHouse
