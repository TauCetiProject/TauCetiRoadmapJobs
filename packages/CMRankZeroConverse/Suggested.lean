import Mathlib
import TauCeti.AlgebraicGeometry.EllipticCurve.QuadraticTwist.Basic
import TauCeti.AlgebraicGeometry.EllipticCurve.Isogeny.Hom.Ring

/-!
# CM rank-zero converses and twist nonvanishing: target signatures

The roadmap is README.md; this file is not the roadmap. It states the roadmap's
headline theorems that can be expressed against the pinned APIs.

The cube-sum full-CM theorem and the two-coset theorem for descending twists are
stated below. The other headlines
are not statable at the pins:
* Selmer-zero global H² vanishing and the global cohomology line need Kato's
  rational j_* complex and the Bloch–Kato Selmer carrier.
* Central H_g = H_f needs modular de Rham realizations and period functors.
* The central Kato basis theorem needs the actual zeta morphism and its complex.
* Reciprocity nonvanishing, the conditional rational Kato converse, and the
  all-prime CM newform converse need that morphism, its regulators, and the
  actual arithmetic newform L-function and CM predicate.
* The CM elliptic converses over the CM field and over ℚ, and corank/analytic
  order doubling, need classical p-infinity Selmer groups, the CM order action,
  and actual arithmetic elliptic L-functions with analytic continuation.
* Congruent-number density one and exact half-density in positive-squarefree
  and fundamental-discriminant orderings need the actual twist L-functions.
* CM twist nonvanishing and the analytic cube-sum application need those
  L-functions, the general CM order interface, and the arithmetic squareclass
  support-height family. The geometric full-CM ring theorem is stated below.
* The O(sqrt X) descent bound needs that height family; the non-descending
  nonvanishing lower proportion additionally needs the actual twist L-values.

No abstract scalar functions or freely chosen Selmer predicates replace these
objects. Elementary sign and discriminant identities remain checks in README.md.
-/

namespace TauCetiRoadmap.CMRankZeroConverse

/-! ## Layer 6: CM twists, cube sums and non-descent -/

/-- The rational Weierstrass model of the pointed projective cube-sum curve
x³+y³=2n, with its five coefficients in the scale Y²=X³−27n². -/
def cubeSumModel (n : ℤ) : WeierstrassCurve ℚ where
  a₁ := 0
  a₂ := 0
  a₃ := 0
  a₄ := 0
  a₆ := -27 * (n : ℚ) ^ 2

/-- For every nonzero integer n the cube-sum model is elliptic, and its full
endomorphism ring over ℚ(ζ₃) is the maximal order of that field. This states full
CM on the native algebraic-morphism carrier, rather than an arbitrary action on
an abstract group of points. -/
theorem cubeSum_fullCM (n : ℤ) (hn : n ≠ 0) :
    ∃ h : (cubeSumModel n).IsElliptic,
      letI := h
      Nonempty ((NumberField.RingOfIntegers (CyclotomicField 3 ℚ)) ≃+*
        TauCeti.Isogeny.Hom
          ((cubeSumModel n).map (algebraMap ℚ (CyclotomicField 3 ℚ))).toAffine
          ((cubeSumModel n).map (algebraMap ℚ (CyclotomicField 3 ℚ))).toAffine) := by
  sorry

/-- A Weierstrass curve over a characteristic-zero field descends to ℚ as a
pointed elliptic curve when it is an admissible change of variables of the base
change of an elliptic Weierstrass curve over ℚ. -/
def descendsToRat {K : Type*} [Field K] [Algebra ℚ K]
    (W : WeierstrassCurve K) : Prop :=
  ∃ E : WeierstrassCurve ℚ, E.IsElliptic ∧
    ∃ C : WeierstrassCurve.VariableChange K,
      C • E.map (algebraMap ℚ K) = W

/-- Over an imaginary quadratic field, every descending twist lies in the
rational squareclass coset of any one descending twist, except that at j = 1728
there can be the additional coset multiplied by a square root of the defining
negative rational number. The native trace/norm twist at (0,-t) represents the
squareclass of t, since its discriminant parameter is 4t. -/
theorem descendingTwist_twoCosets
    {K : Type*} [Field K] [Algebra ℚ K] [Algebra.IsQuadraticExtension ℚ K]
    (D : ℚ) (hD : D < 0) (theta : Kˣ)
    (htheta : (theta : K) ^ 2 = algebraMap ℚ K D)
    (W : WeierstrassCurve K) [W.IsElliptic]
    (t₀ : Kˣ)
    (ht₀ : descendsToRat (W.quadraticTwistOf 0 (-(t₀ : K))))
    (t : Kˣ)
    (ht : descendsToRat (W.quadraticTwistOf 0 (-(t : K)))) :
    ∃ (q : ℚˣ) (u : Kˣ),
      (t : K) = (t₀ : K) * algebraMap ℚ K (q : ℚ) * (u : K) ^ 2 ∨
      (W.j = 1728 ∧
        (t : K) = (t₀ : K) * (theta : K) *
          algebraMap ℚ K (q : ℚ) * (u : K) ^ 2) := by
  sorry

end TauCetiRoadmap.CMRankZeroConverse
