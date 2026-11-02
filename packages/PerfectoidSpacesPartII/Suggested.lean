import Mathlib
import TauCeti.RingTheory.Huber.Basic
import TauCeti.RingTheory.Huber.Bounded
import TauCeti.RingTheory.Huber.PowerBounded

/-!
# Perfectoid rings and spaces, Part II: target signatures

The roadmap is `README.md`; this file is not the roadmap. It states, against the pinned Mathlib
and Tau Ceti, the headline theorems of the roadmap that are statable there, each with `sorry`,
together with the few definitions their statements need.

Stated here:

* André's perfectoid Riemann extension theorem, in its complete-integral-closure form
  (README §3.6; André, *Le lemme d'Abhyankar perfectoïde*, Théorème 4.2.2 and Lemme 4.2.3):
  `riemann_extension_completeIntegralClosure`.
* Purity of the normalized Kummer extensions of `W(k)⟦T₁, …, Tₙ⟧` for all finite and infinite
  indices (README §5.9; André, *La conjecture du facteur direct*, Corollaire 2.6.1):
  `kummer_isPureHom`.
* André's flatness theorem for the Kummer tower (README §5.8; André, *La conjecture du facteur
  direct*, Théorème 2.5.2): `kummer_almost_faithfullyFlat`.

Headline theorems of the README that are not statable at the pins, and what each lacks:

* Bhatt's quantitative Riemann extension theorem, its derived form, its form without regularity
  and its limit form (README §1.2–§1.5). They are statements about the tower of rings
  `A⟨tⁿ/g⟩ = O⁺(X⟨tⁿ/g⟩)` with its restriction maps. Tau Ceti builds each `O⁺` of a rational
  subset only presentationwise (`TauCeti.Huber.PairOfDefinition.completedPlusSubring`), on a
  completion whose type depends on the presentation, with comparison morphisms between pairs of
  presentations but no functor on the rational subsets and no limit over them; the tower, its
  transition maps and its limit are missing.
* The first clause of André's Riemann extension theorem, `lim_j A{ϖʲ/g}° = g^{-1/p^∞}A°`, and the
  nested-systems theorem (README §3.6, §3.11): the uniform Banach localisations `A{λ/g}` with
  their transition maps, uniform limits, and the 2-limit category of perfectoid algebras on the
  annuli are missing.
* Ramified almost purity (README §4.5): the almost categories of a basic setup, almost
  perfectoid algebras and almost finite étale algebras are missing.
* André's perfectoid Abhyankar lemma (README §4.7): the largest perfectoid subalgebra of a
  finite étale `A[1/g]`-algebra needs topologies on intermediate algebras, almost finite étale
  algebras are missing, and Mathlib's `LinearMap.trace` is zero on finite projective modules that
  are not free, so the trace clause needs a trace that the pins lack.
* Ramified almost flatness modulo `pᵐ` for the Kummer tower (README §5.12): its carriers (the
  integral closure of the completed tower in `B ⊗_A Â_∞∞[1/g]` and almost purity in the setup of
  `K°_∞[T^{1/p^∞}]` acting through the roots of `g`) need the perfectoid completion as an algebra
  over that setup, which the pins lack.
-/

noncomputable section

namespace TauCetiRoadmap.PerfectoidSpacesPartII

open TensorProduct

universe u

/-! ## Layer 3: the perfectoid Riemann extension theorem -/

section Perfectoid

open TauCeti.Huber

variable (p : ℕ) [Fact p.Prime]

/-- A complete Hausdorff Tate ring `R` is a *perfectoid Tate ring* if `R°` is bounded and some
pseudouniformizer `ϖ ∈ R°` has `ϖ ^ p ∣ p` in `R°` with Frobenius `R°/ϖ → R°/ϖ ^ p` bijective,
written elementwise. This is the predicate of PerfectoidSpaces P1.1, restated with the same fields so
that the headline below can be stated. -/
class IsPerfectoidTateRing (R : Type*) [CommRing R] [UniformSpace R] [IsUniformAddGroup R]
    [IsTopologicalRing R] [IsTateRing R] [CompleteSpace R] [T2Space R] : Prop where
  /-- `R` is uniform: the power-bounded subring `R°` is bounded. -/
  isBounded_powerBoundedSubring : IsBounded (powerBoundedSubring R : Set R)
  /-- A pseudouniformizer `ϖ ∈ R°` with `ϖ ^ p ∣ p` in `R°` and bijective Frobenius. -/
  exists_pseudoUniformizer : ∃ ϖ : powerBoundedSubring R, IsPseudoUniformizer (ϖ : R) ∧
    ϖ ^ p ∣ (p : powerBoundedSubring R) ∧
    (∀ x : powerBoundedSubring R, ∃ y, ϖ ^ p ∣ x - y ^ p) ∧
    ∀ y : powerBoundedSubring R, ϖ ^ p ∣ y ^ p → ϖ ∣ y

/-- **André's perfectoid Riemann extension theorem**, complete-integral-closure form (André,
*Le lemme d'Abhyankar perfectoïde*, Théorème 4.2.2 and Lemme 4.2.3, pp. 55–56).

Let `K` be a perfectoid field (given by the criterion: its norms accumulate at `1`, `‖p‖ < 1` and
Frobenius is surjective on `K°/p`), `R` a perfectoid Tate ring which is a topological
`K`-algebra, and `g ∈ R°` a nonzerodivisor of `R` with a compatible system of `p`-power roots
`g m` (`g 0 = g`, `g (m + 1) ^ p = g m`). In `R[1/g]`, the root saturation
`g^{-1/p^∞} R° = {b | g^{1/p^m} b ∈ R° for all m}` equals the complete integral closure of `R°`,
the set of `b` whose powers all lie in one finitely generated `R°`-submodule. -/
theorem riemann_extension_completeIntegralClosure
    (K : Type u) [NontriviallyNormedField K] [IsUltrametricDist K] [CompleteSpace K]
    (hK : ∀ ε : ℝ, 1 < ε → ∃ x : K, 1 < ‖x‖ ∧ ‖x‖ < ε) (hKp : ‖(p : K)‖ < 1)
    (hKF : Function.Surjective
      (fun x : ModP (NormedField.valuation (K := K)).integer p ↦ x ^ p))
    (R : Type u) [CommRing R] [UniformSpace R] [IsUniformAddGroup R] [IsTopologicalRing R]
    [IsTateRing R] [CompleteSpace R] [T2Space R] [IsPerfectoidTateRing p R]
    [Algebra K R] (hKR : Continuous (algebraMap K R))
    (g : ℕ → powerBoundedSubring R) (hg : ∀ m, g (m + 1) ^ p = g m)
    (hreg : ((g 0 : powerBoundedSubring R) : R) ∈ nonZeroDivisors R) :
    {b : Localization.Away ((g 0 : powerBoundedSubring R) : R) |
        ∀ m, ∃ a : powerBoundedSubring R,
          algebraMap R _ (a : R) = algebraMap R _ (g m : R) * b} =
      {b | ∃ M : Submodule (powerBoundedSubring R)
          (Localization.Away ((g 0 : powerBoundedSubring R) : R)), M.FG ∧ ∀ n : ℕ, b ^ n ∈ M} :=
  sorry

end Perfectoid

/-! ## Layer 5: purity and André's flatness theorem for Kummer towers -/

section Kummer

/-- The variables of the Kummer tower: the `p ^ j`-th roots of unity `ζ_j`, the roots
`T_i^{1/p^j}` of the coordinates and the roots `g^{1/p^l}`. -/
inductive KummerVar (n : ℕ) : Type
  /-- `ζ_j`, a primitive `p ^ j`-th root of unity. -/
  | zeta (j : ℕ) : KummerVar n
  /-- `T_i^{1/p^j}`. -/
  | coord (i : Fin n) (j : ℕ) : KummerVar n
  /-- `g^{1/p^l}`. -/
  | root (l : ℕ) : KummerVar n

variable (p : ℕ) [Fact p.Prime] (k : Type u) [Field k] (n : ℕ)

/-- The base `A = W(k)⟦T₁, …, Tₙ⟧`. -/
def KummerBase : Type u := MvPowerSeries (Fin n) (WittVector p k)

/-- The ring structure of `A = W(k)⟦T₁, …, Tₙ⟧`. -/
instance : CommRing (KummerBase p k n) :=
  inferInstanceAs (CommRing (MvPowerSeries (Fin n) (WittVector p k)))

/-- The coordinate `T_i` of `A`. -/
def kummerCoord (i : Fin n) : KummerBase p k n :=
  (MvPowerSeries.X i : MvPowerSeries (Fin n) (WittVector p k))

open MvPolynomial in
/-- The relations of the Kummer tower over `A`: `ζ_j ^ (p ^ j) = 1`, `ζ_(j+1) ^ p = ζ_j` and
`Φ_p(ζ_1) = 0`; `(T_i^{1/p^j}) ^ (p ^ j) = T_i` and `(T_i^{1/p^(j+1)}) ^ p = T_i^{1/p^j}`;
`(g^{1/p^l}) ^ (p ^ l) = g` and `(g^{1/p^(l+1)}) ^ p = g^{1/p^l}`. All branches of the roots are
retained: no root is chosen in a field. -/
def kummerRelations (g : KummerBase p k n) :
    Set (MvPolynomial (KummerVar n) (KummerBase p k n)) :=
  Set.range (fun j : ℕ ↦ X (KummerVar.zeta j) ^ (p ^ j) - 1) ∪
  Set.range (fun j : ℕ ↦ X (KummerVar.zeta (j + 1)) ^ p - X (KummerVar.zeta j)) ∪
  {∑ i ∈ Finset.range p, X (KummerVar.zeta 1) ^ i} ∪
  Set.range (fun ij : Fin n × ℕ ↦
    X (KummerVar.coord ij.1 ij.2) ^ (p ^ ij.2) - C (kummerCoord p k n ij.1)) ∪
  Set.range (fun ij : Fin n × ℕ ↦
    X (KummerVar.coord ij.1 (ij.2 + 1)) ^ p - X (KummerVar.coord ij.1 ij.2)) ∪
  Set.range (fun l : ℕ ↦ X (KummerVar.root l) ^ (p ^ l) - C g) ∪
  Set.range (fun l : ℕ ↦ X (KummerVar.root (l + 1)) ^ p - X (KummerVar.root l))

/-- The algebraic Kummer tower before inverting `p`: the quotient of the polynomial ring over `A`
in the Kummer variables by the Kummer relations. -/
abbrev KummerQuotient (g : KummerBase p k n) : Type u :=
  MvPolynomial (KummerVar n) (KummerBase p k n) ⧸ Ideal.span (kummerRelations p k n g)

/-- The `K₀`-algebra `A_∞∞ = ⋃_{j,l} A_jl`, with `A_jl = K_j°⟦T^{1/p^j}⟧[g^{1/p^l}][1/p]`
(André, *La conjecture du facteur direct*, §2.2, formula (7)). -/
abbrev KummerAlgebra (g : KummerBase p k n) : Type u :=
  Localization.Away (p : KummerQuotient p k n g)

/-- The image in `A_∞∞` of a Kummer variable. -/
def kummerVar (g : KummerBase p k n) (v : KummerVar n) : KummerAlgebra p k n g :=
  algebraMap (KummerQuotient p k n g) (KummerAlgebra p k n g)
    (Ideal.Quotient.mk _ (MvPolynomial.X v))

/-- The generators of the stage `A_jl` inside `A_∞∞`, for `j, l ∈ ℕ ∪ {∞}`: the `ζ_j'`, the
`T_i^{1/p^j'}` with `j' ≤ j`, the `g^{1/p^l'}` with `l' ≤ l`, and `1/p`. -/
def kummerGenerators (g : KummerBase p k n) (j l : ℕ∞) : Set (KummerAlgebra p k n g) :=
  {x | ∃ j' : ℕ, (j' : ℕ∞) ≤ j ∧ x = kummerVar p k n g (KummerVar.zeta j')} ∪
  {x | ∃ (i : Fin n) (j' : ℕ), (j' : ℕ∞) ≤ j ∧ x = kummerVar p k n g (KummerVar.coord i j')} ∪
  {x | ∃ l' : ℕ, (l' : ℕ∞) ≤ l ∧ x = kummerVar p k n g (KummerVar.root l')} ∪
  {IsLocalization.Away.invSelf (p : KummerQuotient p k n g)}

/-- The stage `A_jl ⊆ A_∞∞` of the Kummer tower, for `j, l ∈ ℕ ∪ {∞}`; infinite indices give
directed unions. -/
def kummerStage (g : KummerBase p k n) (j l : ℕ∞) :
    Subalgebra (KummerBase p k n) (KummerAlgebra p k n g) :=
  Algebra.adjoin (KummerBase p k n) (kummerGenerators p k n g j l)

/-- The normalized stage `A°_jl`: the integral closure of `A` in `A_jl` (André, *La conjecture du
facteur direct*, §2.3, formula (8)). -/
def kummerIntegralStage (g : KummerBase p k n) (j l : ℕ∞) :
    Subalgebra (KummerBase p k n) (KummerAlgebra p k n g) :=
  integralClosure (KummerBase p k n) (KummerAlgebra p k n g) ⊓ kummerStage p k n g j l

/-- The normalized stages increase with both indices. -/
theorem kummerIntegralStage_mono (g : KummerBase p k n) {j j' l l' : ℕ∞} (hj : j ≤ j')
    (hl : l ≤ l') : kummerIntegralStage p k n g j l ≤ kummerIntegralStage p k n g j' l' := by
  refine inf_le_inf_left _ (Algebra.adjoin_mono ?_)
  rintro x (((⟨a, ha, rfl⟩ | ⟨i, a, ha, rfl⟩) | ⟨a, ha, rfl⟩) | hx)
  · exact Or.inl (Or.inl (Or.inl ⟨a, ha.trans hj, rfl⟩))
  · exact Or.inl (Or.inl (Or.inr ⟨i, a, ha.trans hj, rfl⟩))
  · exact Or.inl (Or.inr ⟨a, ha.trans hl, rfl⟩)
  · exact Or.inr hx

/-- A ring map `f : R → S` is *pure* (universally injective) if `P → P ⊗_R S` is injective for
every `R`-module `P` (André, *La conjecture du facteur direct*, Annexe A.2). -/
def IsPureHom {R S : Type u} [CommRing R] [CommRing S] (f : R →+* S) : Prop :=
  letI := f.toAlgebra
  ∀ (P : Type u) [AddCommGroup P] [Module R P],
    Function.Injective ((Algebra.linearMap R S).lTensor P)

/-- **Purity of the normalized Kummer extensions** (André, *La conjecture du facteur direct*,
Corollaire 2.6.1, p. 82). For `A = W(k)⟦T₁, …, Tₙ⟧`, `0 ≠ g ∈ A` and all `j, l ∈ ℕ ∪ {∞}`, the
inclusion `A°_j0 ⊆ A°_jl` of normalized Kummer stages is pure. -/
theorem kummer_isPureHom [CharP k p] [PerfectRing k p] (g : KummerBase p k n) (hg : g ≠ 0)
    (j l : ℕ∞) :
    IsPureHom (Subalgebra.inclusion
      (kummerIntegralStage_mono p k n g (le_refl j) (zero_le : (0 : ℕ∞) ≤ l))).toRingHom :=
  sorry

/-- A module `N` over `V` is *almost zero* for an ideal `m` of `V` if `m · N = 0`. -/
def IsAlmostZero {V : Type u} [CommRing V] (m : Ideal V) (N : Type*) [AddCommGroup N]
    [Module V N] : Prop :=
  ∀ ε ∈ m, ∀ x : N, ε • x = 0

/-- A `V`-module `M` is *almost flat* for `m` if tensoring with `M` turns injective maps of
`V`-modules into maps with almost zero kernel: `M^a ⊗ −` is exact on almost modules (Gabber–Ramero,
*Almost ring theory*, Definition 2.4.4(i)). -/
def IsAlmostFlat {V : Type u} [CommRing V] (m : Ideal V) (M : Type u) [AddCommGroup M]
    [Module V M] : Prop :=
  ∀ ⦃N N' : Type u⦄ [AddCommGroup N] [Module V N] [AddCommGroup N'] [Module V N']
    (f : N →ₗ[V] N'), Function.Injective f → IsAlmostZero m (LinearMap.ker (f.lTensor M))

/-- A `V`-module `M` is *almost faithfully flat* for `m` if it is almost flat and `M ⊗_V N`
almost zero forces `N` almost zero: `M^a ⊗ −` is exact and faithful on almost modules (Gabber–Ramero,
*Almost ring theory*, Definition 2.4.4(i)). -/
def IsAlmostFaithfullyFlat {V : Type u} [CommRing V] (m : Ideal V) (M : Type u)
    [AddCommGroup M] [Module V M] : Prop :=
  IsAlmostFlat m M ∧ ∀ (N : Type u) [AddCommGroup N] [Module V N],
    IsAlmostZero m (M ⊗[V] N) → IsAlmostZero m N

/-- `ζ_j` is integral over `A`. -/
theorem isIntegral_kummerVar_zeta (g : KummerBase p k n) (j : ℕ) :
    IsIntegral (KummerBase p k n) (kummerVar p k n g (KummerVar.zeta j)) := by
  refine IsIntegral.map (IsScalarTower.toAlgHom (KummerBase p k n) (KummerQuotient p k n g)
    (KummerAlgebra p k n g)) ?_
  refine ⟨Polynomial.X ^ (p ^ j) - 1, Polynomial.monic_X_pow_sub_C 1
    (pow_ne_zero _ (Fact.out : p.Prime).ne_zero), ?_⟩
  rw [Polynomial.eval₂_sub, Polynomial.eval₂_X_pow, Polynomial.eval₂_one, ← map_pow, ← map_one
    (Ideal.Quotient.mk _), ← map_sub, Ideal.Quotient.eq_zero_iff_mem]
  exact Ideal.subset_span (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl ⟨j, rfl⟩))))))

/-- The element `ζ_j - 1` of the normalized coordinate tower `A°_∞0`. -/
def kummerZetaSubOne (g : KummerBase p k n) (j : ℕ) : kummerIntegralStage p k n g ⊤ 0 :=
  ⟨kummerVar p k n g (KummerVar.zeta j) - 1,
    ⟨(isIntegral_kummerVar_zeta p k n g j).sub isIntegral_one,
      Subalgebra.sub_mem _
        (Algebra.subset_adjoin (Or.inl (Or.inl (Or.inl ⟨j, le_top, rfl⟩))))
        (Subalgebra.one_mem _)⟩⟩

/-- The ideal `K°°_∞ · A°_∞0` of the normalized coordinate tower, generated by the `ζ_j - 1`; it
is the extension of the maximal ideal of `K°_∞`, since the valuations of the `ζ_j - 1` tend
to `0`. -/
def kummerAlmostIdeal (g : KummerBase p k n) : Ideal (kummerIntegralStage p k n g ⊤ 0) :=
  Ideal.span (Set.range (kummerZetaSubOne p k n g))

/-- **André's flatness theorem** (André, *La conjecture du facteur direct*, Théorème 2.5.2,
pp. 79–82). For `A = W(k)⟦T₁, …, Tₙ⟧` and `0 ≠ g ∈ A`, the `p`-adic completion `Â°_∞∞` of the
normalized Kummer tower is almost faithfully flat over the normalized coordinate tower
`A°_∞0`, for the ideal `K°°_∞ · A°_∞0`. -/
theorem kummer_almost_faithfullyFlat [CharP k p] [PerfectRing k p] (g : KummerBase p k n)
    (hg : g ≠ 0) :
    letI : Module (kummerIntegralStage p k n g ⊤ 0) (kummerIntegralStage p k n g ⊤ ⊤) :=
      (Subalgebra.inclusion (kummerIntegralStage_mono p k n g (le_refl ⊤)
        (zero_le : (0 : ℕ∞) ≤ ⊤))).toRingHom.toModule
    IsAlmostFaithfullyFlat (kummerAlmostIdeal p k n g)
      (AdicCompletion (Ideal.span {(p : kummerIntegralStage p k n g ⊤ 0)})
        (kummerIntegralStage p k n g ⊤ ⊤)) :=
  sorry

end Kummer

end TauCetiRoadmap.PerfectoidSpacesPartII
