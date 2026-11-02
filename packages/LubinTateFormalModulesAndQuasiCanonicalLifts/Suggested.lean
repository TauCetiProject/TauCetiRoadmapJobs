import Mathlib
import TauCeti.AlgebraicGeometry.EllipticCurve.FormalGroup.Basic
import TauCeti.NumberTheory.ClassFieldTheory.Local.ArtinMap
import TauCeti.NumberTheory.LocalField.UnitFiltration.Basic

/-!
# Lubin–Tate formal modules and quasi-canonical lifts: target signatures

The roadmap is `README.md`; this file is not the roadmap. It states the roadmap's headline
theorems against the pinned Mathlib and Tau Ceti, each with `sorry`, together with the two
coefficient-level predicates they need.

Stated here:

* the Lubin–Tate theorem: a Lubin–Tate series is an endomorphism of a unique formal group law, which
  is commutative (§1.3), and the Lubin–Tate interpolation of homomorphisms (§1.2);
* the degree and splitting of the Lubin–Tate division fields of a Lubin–Tate polynomial (§2.3);
* the norm group of the Lubin–Tate division fields under Tau Ceti's arithmetic local Artin map
  (§2.5);
* the Lubin–Tate structure of the formal group of an elliptic curve over `W(𝔽_(p²))` whose
  reduction has trace of Frobenius `±2p` (§4.4).

Not statable at the pins, with what each lacks:

* the unit formula `χ_π(Art_K(π^r u)) = u⁻¹` and the isomorphism `Gal(K_π/K) ≅ O_K^×` given by
  `σ(t) = [χ_π(σ)]_f(t)` (§§2.4–2.5), and the freeness of rank `h` of the `π`-adic Tate module of a
  formal `O_K`-module of height `h` (§2.2): there is no carrier of points of a general formal group
  over maximal ideals of finite extensions (Mathlib's `FormalGroup.Point` is power-series valued,
  and Tau Ceti's evaluated formal points are those of a Weierstrass curve), so `[a]_f(t)` cannot be
  formed;
* the universal deformation of a formal `O_K`-module of finite height over `B[[t₁,…,t_(h−1)]]`
  (§3.6): there are no homomorphisms or isomorphisms of formal group laws at the pins, hence no
  marked deformation functor;
* Honda's functional-equation integrality and the unramified type `p − sT²` (§§4.2–4.3): the
  Frobenius-skew power-series ring `O_σ[[T]]` is absent;
* the classification of quasi-canonical lifts, their fields of moduli as ring class fields with
  degrees `q₀^(s−1)(q₀+1)` and `q₀^s`, and the uniformizer property of their moduli (§§6.3–7.2):
  lattice quotients of formal modules, their markings and fields of moduli are not available;
* the BKO tower comparisons and the trace-compatible square of formal traces (§§8.4–9.3): they need
  the quasi-canonical fields and formal traces on evaluated points.
-/

namespace TauCetiRoadmap.LubinTateFormalModulesAndQuasiCanonicalLifts

open PowerSeries ValuativeRel

/-! ## Layer 1: The Lubin–Tate construction -/

section Predicates

variable {O : Type*} [CommRing O] [IsLocalRing O]

/-- A *Lubin–Tate series* for `π` and `q` (LT65, §1, condition (1)): a power series with zero
constant term, linear coefficient `π`, and reduction `X ^ q` modulo the maximal ideal. -/
def IsLubinTateSeries (π : O) (q : ℕ) (f : PowerSeries O) : Prop :=
  constantCoeff f = 0 ∧ coeff 1 f = π ∧ PowerSeries.map (IsLocalRing.residue O) f = X ^ q

/-- A *Lubin–Tate polynomial* for `π` and `q`: a monic polynomial of degree `q` with zero constant
term, linear coefficient `π`, and reduction `X ^ q` modulo the maximal ideal; for example
`π X + X ^ q`. -/
def IsLubinTatePolynomial (π : O) (q : ℕ) (f : Polynomial O) : Prop :=
  f.Monic ∧ f.natDegree = q ∧ f.coeff 0 = 0 ∧ f.coeff 1 = π ∧
    f.map (IsLocalRing.residue O) = Polynomial.X ^ q

end Predicates

section Construction

variable {O : Type*} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
  [Finite (IsLocalRing.ResidueField O)]

/-- **The Lubin–Tate theorem** (LT65, Theorem 1, pp.382–383). Let `O` be a discrete valuation ring
with finite residue field of cardinality `q` and `π` a uniformizer. A Lubin–Tate series `f` for
`π` is an endomorphism, `f(F(X,Y)) = F(f(X), f(Y))`, of a commutative formal group law `F` over
`O`, and `F` is the only formal group law over `O` of which `f` is an endomorphism. -/
theorem exists_formalGroup_of_isLubinTateSeries {π : O} (hπ : Irreducible π)
    {f : PowerSeries O} (hf : IsLubinTateSeries π (Nat.card (IsLocalRing.ResidueField O)) f) :
    ∃ F : FormalGroup O, F.IsComm ∧
      PowerSeries.subst F.toPowerSeries f =
        MvPowerSeries.subst ![PowerSeries.subst (MvPowerSeries.X 0) f,
          PowerSeries.subst (MvPowerSeries.X 1) f] F.toPowerSeries ∧
      ∀ G : FormalGroup O, PowerSeries.subst G.toPowerSeries f =
          MvPowerSeries.subst ![PowerSeries.subst (MvPowerSeries.X 0) f,
            PowerSeries.subst (MvPowerSeries.X 1) f] G.toPowerSeries → G = F := by
  sorry

/-- **Lubin–Tate interpolation of homomorphisms** (LT65, Lemma 1, pp.381–382, in arity one). For
Lubin–Tate series `f` and `g` for the same uniformizer `π` and every `a ∈ O` there is a unique power
series `φ = a X + ⋯` over `O` with `f ∘ φ = φ ∘ g`; it is the homomorphism `[a]_(f,g)`. -/
theorem existsUnique_lubinTate_intertwiner {π : O} (hπ : Irreducible π)
    {f g : PowerSeries O}
    (hf : IsLubinTateSeries π (Nat.card (IsLocalRing.ResidueField O)) f)
    (hg : IsLubinTateSeries π (Nat.card (IsLocalRing.ResidueField O)) g) (a : O) :
    ∃! φ : PowerSeries O, constantCoeff φ = 0 ∧ coeff 1 φ = a ∧
      PowerSeries.subst φ f = PowerSeries.subst g φ := by
  sorry

end Construction

/-! ## Layer 2: Torsion, Tate modules and the Artin comparison -/

section DivisionFields

variable {K : Type} [Field K] [ValuativeRel K] [TopologicalSpace K]
  [IsNonarchimedeanLocalField K]

/-- **Lubin–Tate division fields** (LT65, Theorem 2, pp.383–384). Let `K` be a nonarchimedean local
field of characteristic zero with residue cardinality `q`, `π` a uniformizer and `f` a Lubin–Tate
polynomial for `π`. If `t ∈ K̄` is a root of the iterate `f^{∘m}`, `m ≥ 1`, but not of `f^{∘(m−1)}`,
then `[K(t) : K] = (q − 1) q ^ (m − 1)` and every root of `f^{∘m}` lies in `K(t)`. -/
theorem finrank_adjoin_primitive_lubinTate_root [CharZero K] {π : 𝒪[K]} (hπ : Irreducible π)
    {f : Polynomial 𝒪[K]} (hf : IsLubinTatePolynomial π (Nat.card 𝓀[K]) f)
    {m : ℕ} (hm : 1 ≤ m) {t : AlgebraicClosure K}
    (ht : Polynomial.aeval t ((f.comp)^[m] Polynomial.X) = 0)
    (ht' : Polynomial.aeval t ((f.comp)^[m - 1] Polynomial.X) ≠ 0) :
    Module.finrank K (IntermediateField.adjoin K {t}) =
        (Nat.card 𝓀[K] - 1) * Nat.card 𝓀[K] ^ (m - 1) ∧
      ∀ s : AlgebraicClosure K, Polynomial.aeval s ((f.comp)^[m] Polynomial.X) = 0 →
        s ∈ IntermediateField.adjoin K {t} := by
  sorry

/-- **The norm group of the Lubin–Tate division fields** (LT65, §2, Theorem 3 and its corollary,
pp.385–387). With `K`, `π` and `f` as above, `ϖ ∈ Kˣ` equal to `π`, and `m ≥ 0`: every lift to the
absolute Galois group of the arithmetic Artin symbol `Art_K(x)` fixes every root of `f^{∘m}` if and
only if `x ∈ ⟨ϖ⟩ · U(K, m)`, that is, the norm group of `K(f^{∘m} = 0)/K` is `π^ℤ × (1 + 𝔪_K^m)`. -/
theorem artinMap_fixes_lubinTate_roots_iff [CharZero K] {π : 𝒪[K]} (hπ : Irreducible π)
    {f : Polynomial 𝒪[K]} (hf : IsLubinTatePolynomial π (Nat.card 𝓀[K]) f)
    (ϖ : Kˣ) (hϖ : (ϖ : K) = π) (m : ℕ) (x : Kˣ) :
    (∀ σ : Field.absoluteGaloisGroup K,
        (σ : Field.absoluteGaloisGroupAbelianization K) = TauCeti.ClassFieldTheory.artinMap K x →
        ∀ t : AlgebraicClosure K, Polynomial.aeval t ((f.comp)^[m] Polynomial.X) = 0 →
          (show AlgebraicClosure K ≃ₐ[K] AlgebraicClosure K from σ) t = t) ↔
      x ∈ Subgroup.zpowers ϖ ⊔ TauCeti.unitFiltration K m := by
  sorry

end DivisionFields

/-! ## Layer 4: Honda theory and the elliptic comparisons -/

section Elliptic

/-- **The supersingular elliptic formal group is Lubin–Tate** (H70, Theorem 9 and Lemma 4.2;
BKO21, Lemma 5.1, with the sign `p − sT²` of README §4.3). Let `p` be prime, `O = W(𝔽_(p²))` and `W`
a Weierstrass curve over `O` with unit discriminant whose reduction has `p² + 1 − 2sp` points over
`𝔽_(p²)`, `s = ±1`. Then the formal group law of `W` has an endomorphism which is a Lubin–Tate
series for `s p` (namely `[s p]`, whose reduction is the `p²`-power Frobenius), so by the Lubin–Tate
theorem it is the Lubin–Tate formal `O`-module for `s p`. -/
theorem exists_lubinTate_endomorphism_formalGroup (p : ℕ) [Fact p.Prime] (s : ℤ)
    (hs : s = 1 ∨ s = -1) (W : WeierstrassCurve (WittVector p (GaloisField p 2)))
    (hΔ : IsUnit W.Δ)
    (ha : (Nat.card (W.map (IsLocalRing.residue (WittVector p (GaloisField p 2)))).toAffine.Point
      : ℤ) = p ^ 2 + 1 - 2 * s * p) :
    ∃ f : PowerSeries (WittVector p (GaloisField p 2)),
      IsLubinTateSeries ((s * p : ℤ) : WittVector p (GaloisField p 2)) (p ^ 2) f ∧
      PowerSeries.subst W.formalGroup.toPowerSeries f =
        MvPowerSeries.subst ![PowerSeries.subst (MvPowerSeries.X 0) f,
          PowerSeries.subst (MvPowerSeries.X 1) f] W.formalGroup.toPowerSeries := by
  sorry

end Elliptic

end TauCetiRoadmap.LubinTateFormalModulesAndQuasiCanonicalLifts
