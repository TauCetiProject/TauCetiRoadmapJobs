/-
Copyright (c) 2026 The Tau Ceti contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Claude (Anthropic); Codex (OpenAI)
-/
import Mathlib

/-!
# ModularIwasawaMainConjectures: representative target signatures

The roadmap is `README.md`. This file records the definitions and theorem signatures of the
roadmap that can be stated against the pinned Mathlib and Tau Ceti APIs; it is not exhaustive.
The arithmetic objects of the roadmap (ordinary Selmer groups over the cyclotomic tower, p-adic
L-functions, Kato's zeta morphisms and fundamental lines, the p-adic period defect, the cyclotomic
p-adic height, the Tate parameter) have no carrier at the pins and are specified in the README
only.

Design choices made explicit here:

* residual hypotheses are predicates on a representation restricted to decomposition and inertia
  subgroups, computed with `Representation.invariants`, and stated over an arbitrary field and
  group, so that characteristic `2` and the trivial group are allowed in the definitions;
* the rank-one image condition is an integral statement about the coinvariants `T ⧸ (σ - 1)T`,
  stated over an arbitrary commutative ring, not a residual dimension count;
* the passage from a rational to an integral main conjecture is the algebraic statement that two
  power series over any discrete valuation ring which agree after inverting a uniformiser and
  have the same μ-invariant are associated.
-/

namespace TauCetiRoadmap.ModularIwasawaMainConjectures

open Module

/-! ## Layer 1: residual hypotheses and the rank-one quotient -/

section ResidualHypotheses

variable {F G W : Type*} [Field F] [Group G] [AddCommGroup W] [Module F W]

local instance : Fact (Nat.Prime 7) := ⟨by decide⟩

/-- `(SU_q)`, local part: some element of the inertia subgroup `I` acts nontrivially.
The arithmetic condition `q ∥ N` is a separate hypothesis on the level (README §1.1). -/
def IsRamifiedAt (ρ : Representation F G W) (I : Subgroup G) : Prop :=
  ∃ g ∈ I, ρ g ≠ LinearMap.id

/-- `(FW1.6_ℓ)` in Fouquet–Wan's cohomological normalisation: the inertia invariants form a line
and the decomposition-group invariants vanish (README §1.1). -/
def FWAuxiliaryCondition [FiniteDimensional F W] (ρ : Representation F G W)
    (D I : Subgroup G) : Prop :=
  finrank F (Representation.invariants (ρ.comp I.subtype)) = 1 ∧
    finrank F (Representation.invariants (ρ.comp D.subtype)) = 0

/-- `(dist)`: the two characters of the ordinary filtration differ. In the reducible case this
is also Fouquet–Wan's scalar exclusion (README §1.1). -/
def DistinctCharacters {H : Type*} [Group H] (χ₁ χ₂ : H →* Fˣ) : Prop :=
  χ₁ ≠ χ₂

/-- `(LocExc_p)`: the Jordan–Hölder characters `χ₁, χ₂` of a reducible local representation are
not the exceptional pair `{χ, χ ω}`, in either order, for the mod-`p` cyclotomic character `ω`
(README §1.1). -/
def LocalExclusion {H : Type*} [Group H] (χ₁ χ₂ ω : H →* Fˣ) : Prop :=
  ∀ χ : H →* Fˣ, ¬ ((χ₁ = χ ∧ χ₂ = χ * ω) ∨ (χ₁ = χ * ω ∧ χ₂ = χ))

/-- If every element of `I` acts trivially, the `I`-invariants are everything. -/
theorem invariants_comp_subtype_eq_top (ρ : Representation F G W) (I : Subgroup G)
    (h : ∀ g ∈ I, ρ g = LinearMap.id) :
    Representation.invariants (ρ.comp I.subtype) = ⊤ := by
  ext v
  simp only [Submodule.mem_top, iff_true, Representation.mem_invariants]
  intro g
  simp [h g.1 g.2]

/-- In dimension two, the Fouquet–Wan auxiliary condition forces ramification, i.e.
`(FW1.6_ℓ) → (SU_ℓ)` (README §1.1, `FWAuxiliaryCondition.isRamifiedAt`). The dimension
hypothesis cannot be dropped: in dimension one a trivial inertia group and a decomposition group
acting by a nontrivial character satisfy both dimension conditions. -/
theorem FWAuxiliaryCondition.isRamifiedAt [FiniteDimensional F W] (ρ : Representation F G W)
    (D I : Subgroup G) (hW : finrank F W = 2) (h : FWAuxiliaryCondition ρ D I) :
    IsRamifiedAt ρ I := by
  by_contra hr
  have hall : ∀ g ∈ I, ρ g = LinearMap.id := by
    intro g hg
    by_contra hne
    exact hr ⟨g, hg, hne⟩
  have h1 := h.1
  rw [invariants_comp_subtype_eq_top ρ I hall, finrank_top, hW] at h1
  exact absurd h1 (by norm_num)

/-- Boundary case (README §1.1): trivial inertia in dimension two has a two-dimensional space of
invariants, so the line condition of `(FW1.6_ℓ)` fails for every decomposition subgroup. -/
theorem not_fwAuxiliary_bot [FiniteDimensional F W] (ρ : Representation F G W) (D : Subgroup G)
    (hW : finrank F W = 2) : ¬ FWAuxiliaryCondition ρ D ⊥ := by
  rintro ⟨h1, -⟩
  have htop : Representation.invariants (ρ.comp (⊥ : Subgroup G).subtype) = ⊤ :=
    invariants_comp_subtype_eq_top ρ ⊥ (fun g hg => by
      rw [Subgroup.mem_bot] at hg
      subst hg
      rw [map_one]; rfl)
  rw [htop, finrank_top, hW] at h1
  exact absurd h1 (by norm_num)

/-- Positive boundary case (README §1.1): on `𝔽₇²`, let `D = 𝔽₇ˣ × 𝔽₇ˣ` act by the two
tautological characters and let `I` be the kernel of the first projection. Then the
`I`-invariants are a line and the `D`-invariants vanish. -/
theorem fwAuxiliary_independentCharacters : FWAuxiliaryCondition (F := ZMod 7)
    (Representation.prod
      ((Representation.ofDistribMulAction (ZMod 7) (ZMod 7)ˣ (ZMod 7)).comp
        (MonoidHom.fst (ZMod 7)ˣ (ZMod 7)ˣ))
      ((Representation.ofDistribMulAction (ZMod 7) (ZMod 7)ˣ (ZMod 7)).comp
        (MonoidHom.snd (ZMod 7)ˣ (ZMod 7)ˣ)))
    ⊤ (MonoidHom.fst (ZMod 7)ˣ (ZMod 7)ˣ).ker := by
  sorry

/-- With `ω = 1` the exceptional-pair exclusion is exactly `(dist)` (README §1.1,
`localExclusion_one_iff`). -/
theorem localExclusion_one_iff {H : Type*} [Group H] (χ₁ χ₂ : H →* Fˣ) :
    LocalExclusion χ₁ χ₂ 1 ↔ DistinctCharacters χ₁ χ₂ := by
  constructor
  · intro h heq
    exact h χ₁ (Or.inl ⟨rfl, by rw [heq]; ext; simp⟩)
  · intro h χ hχ
    rcases hχ with ⟨h₁, h₂⟩ | ⟨h₁, h₂⟩
    · exact h (by rw [h₁, h₂]; ext; simp)
    · exact h (by rw [h₁, h₂]; ext; simp)

/-- Positive test: the scalar action of `𝔽₇ˣ` on `𝔽₇` is ramified on the whole group;
`-1` acts by `-1 ≠ 1`. -/
example : IsRamifiedAt (F := ZMod 7)
    (Representation.ofDistribMulAction (ZMod 7) (ZMod 7)ˣ (ZMod 7)) ⊤ := by
  refine ⟨-1, Subgroup.mem_top _, fun h => ?_⟩
  have h1 := LinearMap.congr_fun h 1
  simp only [Representation.ofDistribMulAction_apply_apply, LinearMap.id_apply] at h1
  exact absurd h1 (by decide)

/-- Degenerate test: every representation is unramified on the trivial subgroup, so the
definition looks only at elements of the given inertia group. -/
example (ρ : Representation F G W) : ¬ IsRamifiedAt ρ ⊥ := by
  rintro ⟨g, hg, hne⟩
  rw [Subgroup.mem_bot] at hg
  subst hg
  exact hne (by rw [map_one]; rfl)

/-- Non-example: a decomposition group equal to inertia cannot have invariant dimensions `1`
and `0` at once, so omitting the second condition would be detected. -/
example [FiniteDimensional F W] (ρ : Representation F G W) (I : Subgroup G) :
    ¬ FWAuxiliaryCondition ρ I I := by
  rintro ⟨h1, h0⟩
  omega

/-- Non-example: an equal pair of characters, for instance two trivial characters, is not
distinct. -/
example {H : Type*} [Group H] (χ : H →* Fˣ) : ¬ DistinctCharacters χ χ :=
  fun h => h rfl

/-- Positive test: the trivial and the tautological character of `𝔽₇ˣ` differ at `-1`. -/
example : DistinctCharacters (F := ZMod 7) (1 : (ZMod 7)ˣ →* (ZMod 7)ˣ) (MonoidHom.id _) := by
  intro h
  have h1 := DFunLike.congr_fun h (-1)
  simp only [MonoidHom.one_apply, MonoidHom.id_apply] at h1
  exact absurd h1 (by decide)

/-- The exceptional pair fails the exclusion in both orders. -/
example {H : Type*} [Group H] (ω : H →* Fˣ) :
    ¬ LocalExclusion 1 ω ω ∧ ¬ LocalExclusion ω 1 ω :=
  ⟨fun h => h 1 (Or.inl ⟨rfl, by ext; simp⟩), fun h => h 1 (Or.inr ⟨by ext; simp, rfl⟩)⟩

/-- Positive test: on `𝔽₇ˣ` with `ω` tautological, the pair `(1, ω²)` passes, as `ω` has order
six. Evaluation at `3`, of order six, separates the characters; `2` has order three and would
not reject the reversed comparison. -/
example : LocalExclusion (F := ZMod 7) (1 : (ZMod 7)ˣ →* (ZMod 7)ˣ)
    ((MonoidHom.id _) ^ 2) (MonoidHom.id _) := by
  intro χ h
  rcases h with ⟨rfl, h⟩ | ⟨h, rfl⟩
  · have h2 := congrArg (fun ψ => ((ψ (Units.mk0 (3 : ZMod 7) (by decide))) : ZMod 7)) h
    norm_num at h2
    revert h2
    decide
  · have h2 := congrArg (fun ψ => ((ψ (Units.mk0 (3 : ZMod 7) (by decide))) : ZMod 7)) h
    norm_num at h2
    revert h2
    decide

end ResidualHypotheses

section RankOneImage

variable {O T : Type*} [CommRing O] [AddCommGroup T] [Module O T]

/-- `(Im)` for one endomorphism: the coinvariants `T ⧸ (σ - 1)T` are free of rank one
(README §1.1, `HasRankOneCoinvariants`). -/
def HasRankOneCoinvariants (σ : T →ₗ[O] T) : Prop :=
  Nonempty ((T ⧸ LinearMap.range (σ - LinearMap.id)) ≃ₗ[O] O)

/-- `(Im)` for a representation and a subgroup (in the application, the image of
`G_{ℚ(μ_{p^∞})}`): some element has free rank-one coinvariants (README §1.1). -/
def HasRankOneImage {G : Type*} [Group G] (ρ : Representation O G T) (H : Subgroup G) : Prop :=
  ∃ h ∈ H, HasRankOneCoinvariants (ρ h)

/-- Layer 1 milestone (README §1.2): a unipotent endomorphism of `O²` over a discrete valuation
ring that is nontrivial modulo the maximal ideal has free rank-one coinvariants. Actual
unipotence (`(u - 1)² = 0`) is essential; residual unipotence is not enough. -/
theorem hasRankOneCoinvariants_of_unipotent [IsDomain O] [IsDiscreteValuationRing O]
    (u : (Fin 2 → O) →ₗ[O] (Fin 2 → O))
    (hu : (u - LinearMap.id) ∘ₗ (u - LinearMap.id) = 0)
    (hnt : ¬ LinearMap.range (u - LinearMap.id) ≤
      (IsLocalRing.maximalIdeal O) • (⊤ : Submodule O (Fin 2 → O))) :
    HasRankOneCoinvariants u := by
  sorry

/-- Boundary case (README §1.1): the unipotent matrix with upper-right entry a uniformiser has
coinvariants `O ⧸ (ϖ) ⊕ O`, which is not free of rank one. -/
theorem not_hasRankOneCoinvariants_upper_uniformizer [IsDomain O] [IsDiscreteValuationRing O]
    (ϖ : O) (hϖ : Irreducible ϖ) :
    ¬ HasRankOneCoinvariants (Matrix.toLin' !![(1 : O), ϖ; 0, 1]) := by
  sorry

/-- Degenerate case (README §1.1): the identity has coinvariants `O²`, never free of rank one
over a nontrivial commutative ring. -/
theorem not_hasRankOneCoinvariants_id [Nontrivial O] :
    ¬ HasRankOneCoinvariants (LinearMap.id : (Fin 2 → O) →ₗ[O] (Fin 2 → O)) := by
  rintro ⟨e⟩
  have h0 : LinearMap.range
      ((LinearMap.id : (Fin 2 → O) →ₗ[O] (Fin 2 → O)) - LinearMap.id) = ⊥ := by
    simp
  have h := ((Submodule.quotEquivOfEqBot _ h0).symm.trans e).finrank_eq
  simp at h

/-- Positive boundary case (README §1.1): the natural action of the full linear automorphism
group of `O²` satisfies `(Im)` on the full subgroup, witnessed by the standard unipotent. -/
theorem hasRankOneImage_fullAutomorphismGroup [IsDomain O] [IsDiscreteValuationRing O] :
    HasRankOneImage (Representation.ofDistribMulAction O
      ((Fin 2 → O) ≃ₗ[O] (Fin 2 → O)) (Fin 2 → O)) ⊤ := by
  sorry

/-- Positive test: the standard unipotent has coinvariants given by the second coordinate, over
any commutative ring. This checks freeness rather than only the residual dimension. -/
example : HasRankOneCoinvariants (Matrix.toLin' !![(1 : O), 1; 0, 1]) := by
  let q : (Fin 2 → O) →ₗ[O] O := LinearMap.proj 1
  have hr : LinearMap.range (Matrix.toLin' !![(1 : O), 1; 0, 1] - LinearMap.id) =
      LinearMap.ker q := by
    ext x
    constructor
    · rintro ⟨y, rfl⟩
      simp [q, Matrix.toLin'_apply, dotProduct, Fin.sum_univ_two, Matrix.vecHead, Matrix.vecTail]
    · intro hx
      have hx1 : x 1 = 0 := hx
      refine ⟨![0, x 0], ?_⟩
      ext i
      fin_cases i <;>
        simp [Matrix.toLin'_apply, hx1]
  refine ⟨(Submodule.quotEquivOfEq _ _ hr).trans (q.quotKerEquivOfSurjective ?_)⟩
  intro a
  exact ⟨![0, a], rfl⟩

/-- The identity subgroup supplies no witness of `(Im)` in a rank-two representation. -/
example [Nontrivial O] {G : Type*} [Group G] (ρ : Representation O G (Fin 2 → O)) :
    ¬ HasRankOneImage ρ ⊥ := by
  rintro ⟨h, hh, hr⟩
  rw [Subgroup.mem_bot] at hh
  subst hh
  rw [map_one] at hr
  exact not_hasRankOneCoinvariants_id hr

/-- A trivial representation on a rank-two lattice has no witness of `(Im)` on any subgroup. -/
example [Nontrivial O] {G : Type*} [Group G] (H : Subgroup G) :
    ¬ HasRankOneImage (Representation.trivial O G (Fin 2 → O)) H := by
  rintro ⟨h, -, hr⟩
  exact not_hasRankOneCoinvariants_id hr

end RankOneImage

/-! ## Layer 3: the rank-two lifting lemma -/

section LiftingLemma

/-- Layer 3 milestone (README §3.6, `sl2Zp_closedSubgroup_eq_top`, Serre's lemma): for `p ≥ 5`,
a closed subgroup of `SL₂(ℤ_p)` whose reduction modulo `p` is all of `SL₂(𝔽_p)` is all of
`SL₂(ℤ_p)`. Residual surjectivity of an elliptic curve's mod-`p` representation then gives full
`p`-adic image and the rank-one image condition. The bound on `p` is sharp: for `p = 3` the
binary tetrahedral group of Hurwitz units is a closed subgroup of `SL₂(ℤ_3)` mapping onto
`SL₂(𝔽_3)`. -/
theorem sl2Zp_closedSubgroup_eq_top (p : ℕ) [Fact p.Prime] (hp : 5 ≤ p)
    (H : Subgroup (Matrix.SpecialLinearGroup (Fin 2) ℤ_[p]))
    (hH : IsClosed (H : Set (Matrix.SpecialLinearGroup (Fin 2) ℤ_[p])))
    (hsurj : H.map (Matrix.SpecialLinearGroup.map (PadicInt.toZMod (p := p))) = ⊤) :
    H = ⊤ := by
  sorry

end LiftingLemma

/-! ## Layer 5: μ-invariants and the passage from rational to integral equalities -/

section MuLambda

/-- Layer 5 milestone (README §5.3): two nonzero power series over a discrete valuation ring
that generate the same ideal after inverting `ϖ` (encoded as `ϖ^m f = ϖ^n u g` for a unit `u`)
and have the same `μ`-invariant are associated. This is how a rational main conjecture together
with equality of `μ`-invariants gives the integral one. Completeness of `O` is not needed here;
it enters only through Weierstrass preparation in the arithmetic applications. -/
theorem associated_of_eq_away_of_mu_eq {O : Type*} [CommRing O] [IsDomain O]
    [IsDiscreteValuationRing O] (ϖ : O) (hϖ : Irreducible ϖ) (f g : PowerSeries O)
    (hf : f ≠ 0) (hg : g ≠ 0)
    (haway : ∃ (m n : ℕ) (u : (PowerSeries O)ˣ),
      PowerSeries.C ϖ ^ m * f = PowerSeries.C ϖ ^ n * g * u)
    (hmu : ∀ k : ℕ, PowerSeries.C ϖ ^ k ∣ f ↔ PowerSeries.C ϖ ^ k ∣ g) :
    Associated f g := by
  sorry

/-- The `μ`-hypothesis is necessary: `ϖ` and `1` agree after inverting `ϖ` but are not
associated, since `ϖ` is not a unit. -/
example {O : Type*} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (ϖ : O)
    (hϖ : Irreducible ϖ) : ¬ Associated (PowerSeries.C ϖ) (1 : PowerSeries O) := by
  intro h
  have hu : IsUnit (PowerSeries.C ϖ) := h.isUnit_iff.mpr isUnit_one
  rw [PowerSeries.isUnit_iff_constantCoeff, PowerSeries.constantCoeff_C] at hu
  exact hϖ.not_isUnit hu

end MuLambda

/-
README targets whose carriers are not available at the pins, by layer:

* Layer 0: `ModularIwasawaDatum` and its lattice; `OrdinarySelmer` and its scalar dual;
  `ordinaryPadicL`; `IMC`, `IMC_rational`; `iwasawaH1`, `iwasawaH2`, `fundamentalLine` and its
  zeta trivialisation; `KMC`, `KMC_rational`; Kato's p-adic zeta function with
  `katoPadicZeta_scale`, `katoPadicZeta_canonical`, `katoPeriodDefect`,
  `katoPadicZeta_homothety`, `katoPadicZeta_goodPair`, `KatoPeriodDefectUnit`;
  `kmc_iff_char_eq_defect_mul`, `katoPeriodDefectUnit_of_IMC_KMC`, `kmc_iff_ordinary_two`;
  `SignedSelmer`, `SMC`, `SMC_rational`.
* Layer 1: residual irreducibility, `ScalarExclusion`, the twisted-Steinberg extension predicate;
  `tateParameter_exists` and `ResidualHyp.ramified_iff_not_pth_power`;
  `hidaApproximant` and its lattice, residual and p-adic L-function congruences; the
  Skinner–Urban, Fouquet–Wan and multiplicative main conjectures.
* Layer 2: the Fouquet–Wan pointwise theorem and its ordinary and signed consequences.
* Layer 3: `mazurSwinnertonDyerL`, `katoPeriodDefect_elliptic`, `MazurMC`; the
  Burungale–Castella–Skinner endpoints; `canonicalSigma`, `cyclotomicHeight`,
  `cyclotomicHeightPairing`, `padicRegulator`, `normalizedRegulator`, `HeightNondegenerate`,
  `tateParameter_transcendental`, `tateParameter_log_ne_zero`;
  `schneiderHeight_sign`, `schneiderHeight_eq`, `leadingTerm_T_to_s`;
  `schneider_leading_term_abelianVariety`, `schneider_order_ge_rank`, `schneider_order_eq_iff`,
  `schneider_leading_term`, `schneider_leading_term_split`, `greenberg_rank_zero`. The lifting
  lemma `sl2Zp_closedSubgroup_eq_top` of §3.6 is stated above.
* Layer 4: the universal-family trivialisation over the regular subring, its specialisation,
  the signed theorems, `pollackMultiplierUnit` and `kobayashi_corrected_iff_signed`.
* Layer 5: Euler-factor and coefficient change, the rank-zero converse, `tateLInvariant`,
  `tateLInvariant_ne_zero`, `MTT`, `MTT_p`, `greenbergStevens_derivative`, the trivial-zero
  comparison, the p-adic BSD consequence of the main conjecture, the modular Greenberg and
  Coates–Perrin-Riou instances, `etaProduct_residualRamifiedAtFive` and the other examples.
* Layer 6: `anticyclotomicFormulationInputs`, `eisensteinFormulation` with its transfers,
  `kobayashiFormulation_iff_signed`, `multiplicativeLocalConditions`.
-/

end TauCetiRoadmap.ModularIwasawaMainConjectures
