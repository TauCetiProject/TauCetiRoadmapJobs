import Mathlib
import TauCeti.Algebra.GroupAction.Trivial
import TauCeti.GroupTheory.GroupExtension.Of.FactorSet
import TauCeti.LinearAlgebra.BilinearForm.Isometry

/-!
# Metaplectic automorphic forms, Part II (finite Weil–Heisenberg representations): target signatures

**This file is not the roadmap.** The roadmap is `README.md`; this file states the roadmap's
headline theorems against the pinned Mathlib and Tau Ceti, each with `sorry`, together with the
few definitions they need.

Stated here:

* Layer 1: the finite Stone–von Neumann theorem for the Heisenberg group of a nondegenerate
  alternating space over a finite field of odd characteristic (existence, dimension, vanishing of
  the character off the centre, uniqueness), and the fully ramified theorem for a finite group
  `J`, a normal subgroup `H` with abelian quotient and a `J`-invariant character `θ` of `H` whose
  commutator pairing is nondegenerate (existence, `dim² = [J : H]`, character, uniqueness).
* Layer 2: existence and uniqueness of the normalized finite Weil representation in the
  Schrödinger model of a full polarization `X × X*`, characterized by Egorov covariance and the
  parity-determinant identity `det ω(g) = (det ω(g)|S⁺)²`; this includes `Sp₂(𝔽₃)`.
* Layer 3: the isotropic-invariants theorem for fully ramified characters: the `U`-invariants of
  the unique representation form an irreducible representation of the orthogonal `Q` of
  dimension `√[Q : HU]`.
* Layer 4: on the line fixed by a Lagrangian `L`, an element of `Sp` stabilizing `L` acts through
  the quadratic character of its determinant on `L`.

Not statable at the pins:

* Layer 3, the corrected Gérardin induction formula
  `ω_V|_{P ⋉ H(V)} ≅ Ind_{P ⋉ H(I^⊥)}^{P ⋉ H(V)} ((χ ∘ det_I) ⊗ Ω_{I^⊥/I})`: it needs the
  normalized Weil–Heisenberg representation as a constructed object (the roadmap's Layer 2
  construction), the quotient symplectic space `I^⊥/I` with its induced form and Heisenberg
  group, and induction from the semidirect product `P ⋉ H(I^⊥)`; none of these is a carrier at
  the pins.
* Layer 4, tensor compatibility of normalized Weil representations along orthogonal sums: it
  needs the same constructed Weil–Heisenberg representation and the Heisenberg map
  `∏ H(Vᵢ) → H(⊕ Vᵢ)`, which is not a carrier at the pins.
-/

namespace TauCetiRoadmap.MetaplecticAutomorphicFormsPartII

open Multiplicative

/-! ## Layer 1: Finite Heisenberg representations -/

section Heisenberg

attribute [local instance] TauCeti.trivialMulDistribMulAction

variable {k V : Type*} [Field k] [AddCommGroup V] [Module k V]

/-- The half-form factor set `(v, w) ↦ ω(v, w)/2` of an alternating form, for the trivial action
of `V` on `k`. Its Tau Ceti extension is the Heisenberg group `H(V)` with law
`(t, v)(s, w) = (t + s + ω(v, w)/2, v + w)` and commutator `(ω(v, w), 0)` (README §1.1). -/
def heisenbergFactorSet (ω : LinearMap.BilinForm k V) :
    TauCeti.FactorSet (Multiplicative V) (Multiplicative k) where
  toFun p := ofAdd (ω p.1.toAdd p.2.toAdd / 2)
  isMulCocycle₂' g h j := by
    apply toAdd.injective
    simp only [TauCeti.trivialMulDistribMulAction_smul, toAdd_mul, toAdd_ofAdd, map_add,
      LinearMap.add_apply]
    ring
  map_one_one' := by simp

/-- The Heisenberg group `H(V)` of `(V, ω)`: coefficient-first coordinates `(t, v)`. -/
abbrev Heisenberg (ω : LinearMap.BilinForm k V) : Type _ :=
  (heisenbergFactorSet ω).Extension

/-- **Finite Stone–von Neumann theorem, existence** (README §1.3). Over a finite field of odd
characteristic, a nondegenerate alternating space has an irreducible complex representation of
its Heisenberg group on which the centre acts through a given nontrivial additive character `ψ`
(the Schrödinger model). (N02, Lemma 2.1, p. 16; FS25, Lemma 3.3.1, p. 14.) -/
theorem finite_stoneVonNeumann_exists [Fintype k] [FiniteDimensional k V] (hk : ringChar k ≠ 2)
    (ω : LinearMap.BilinForm k V) (hω : ω.IsAlt) (hnd : ω.Nondegenerate)
    (ψ : AddChar k ℂ) (hψ : ψ ≠ 1) :
    ∃ (E : Type) (_ : AddCommGroup E) (_ : Module ℂ E) (_ : FiniteDimensional ℂ E)
      (ρ : Representation ℂ (Heisenberg ω) E), ρ.IsIrreducible ∧
        ∀ (t : k) (ξ : E), ρ ((heisenbergFactorSet ω).inl (ofAdd t)) ξ = ψ t • ξ := by
  sorry

/-- **Finite Stone–von Neumann theorem** (README §1.3). Every irreducible complex representation
of `H(V)` with central character `ψ` has dimension `√|V|`, its character vanishes off the
centre, and any two such representations are equivalent. (N02, Lemma 2.1 and the remark after
it, pp. 16–17; FS25, Lemma 3.3.1, p. 14.) -/
theorem finite_stoneVonNeumann [Fintype k] [FiniteDimensional k V] (hk : ringChar k ≠ 2)
    (ω : LinearMap.BilinForm k V) (hω : ω.IsAlt) (hnd : ω.Nondegenerate)
    (ψ : AddChar k ℂ) (hψ : ψ ≠ 1)
    {E E' : Type*} [AddCommGroup E] [Module ℂ E] [FiniteDimensional ℂ E]
    [AddCommGroup E'] [Module ℂ E'] [FiniteDimensional ℂ E']
    (ρ : Representation ℂ (Heisenberg ω) E) [ρ.IsIrreducible]
    (hρ : ∀ (t : k) (ξ : E), ρ ((heisenbergFactorSet ω).inl (ofAdd t)) ξ = ψ t • ξ)
    (σ : Representation ℂ (Heisenberg ω) E') [σ.IsIrreducible]
    (hσ : ∀ (t : k) (ξ : E'), σ ((heisenbergFactorSet ω).inl (ofAdd t)) ξ = ψ t • ξ) :
    Module.finrank ℂ E ^ 2 = Nat.card V ∧
      (∀ g : Heisenberg ω, g.right ≠ 1 → ρ.character g = 0) ∧
      Nonempty (ρ.Equiv σ) := by
  sorry

end Heisenberg

section FullyRamified

variable {J : Type*} [Group J] [Finite J]

/-- **Fully ramified characters, existence** (README §1.4). Let `H` be normal in the finite group
`J` with `J/H` abelian, and `θ` a `J`-invariant character of `H` such that every `g ∉ H` has a
commutator `[g, x]` on which `θ` is nontrivial. Then some irreducible complex representation of
`J` restricts to `H` as the scalar character `θ`. (S08, Proposition 3.5, p. 14; F21, Lemma 7.8,
p. 31.) -/
theorem fullyRamified_exists (H : Subgroup J) [hH : H.Normal]
    (hcomm : ∀ g x : J, g * x * g⁻¹ * x⁻¹ ∈ H) (θ : H →* ℂˣ)
    (hinv : ∀ (g : J) (h : H), θ ⟨g * h * g⁻¹, hH.conj_mem h h.2 g⟩ = θ h)
    (hnd : ∀ g : J, g ∉ H → ∃ x : J, θ ⟨g * x * g⁻¹ * x⁻¹, hcomm g x⟩ ≠ 1) :
    ∃ (E : Type) (_ : AddCommGroup E) (_ : Module ℂ E) (_ : FiniteDimensional ℂ E)
      (ρ : Representation ℂ J E), ρ.IsIrreducible ∧
        ∀ (h : H) (ξ : E), ρ h ξ = (θ h : ℂ) • ξ := by
  sorry

/-- **Fully ramified characters** (README §1.4). In the situation of `fullyRamified_exists`, an
irreducible representation on which `H` acts by `θ` has dimension `d` with `d² = [J : H]`, its
character vanishes off `H`, and any two such representations are equivalent. No exponent-`p`
or special-isomorphism hypothesis is made: the centre `H / ker θ` may be cyclic of any order.
(S08, Proposition 3.5, p. 14; F21, Lemma 7.8, p. 31.) -/
theorem fullyRamified_unique (H : Subgroup J) [hH : H.Normal]
    (hcomm : ∀ g x : J, g * x * g⁻¹ * x⁻¹ ∈ H) (θ : H →* ℂˣ)
    (hinv : ∀ (g : J) (h : H), θ ⟨g * h * g⁻¹, hH.conj_mem h h.2 g⟩ = θ h)
    (hnd : ∀ g : J, g ∉ H → ∃ x : J, θ ⟨g * x * g⁻¹ * x⁻¹, hcomm g x⟩ ≠ 1)
    {E E' : Type*} [AddCommGroup E] [Module ℂ E] [FiniteDimensional ℂ E]
    [AddCommGroup E'] [Module ℂ E'] [FiniteDimensional ℂ E']
    (ρ : Representation ℂ J E) [ρ.IsIrreducible] (hρ : ∀ (h : H) (ξ : E), ρ h ξ = (θ h : ℂ) • ξ)
    (σ : Representation ℂ J E') [σ.IsIrreducible]
    (hσ : ∀ (h : H) (ξ : E'), σ h ξ = (θ h : ℂ) • ξ) :
    Module.finrank ℂ E ^ 2 = H.index ∧ (∀ g : J, g ∉ H → ρ.character g = 0) ∧
      Nonempty (ρ.Equiv σ) := by
  sorry

end FullyRamified

/-! ## Layer 2: Genuine finite Weil representations -/

section Weil

variable (k X : Type*) [Field k] [AddCommGroup X] [Module k X]

/-- The standard symplectic form on `X × X*`: `((x, y), (x', y')) ↦ y'(x) − y(x')`
(README, Conventions). -/
def polarizationForm : LinearMap.BilinForm k (X × Module.Dual k X) :=
  LinearMap.mk₂ k (fun p q => q.2 p.1 - p.2 q.1)
    (fun m₁ m₂ n => by simp only [Prod.fst_add, Prod.snd_add, map_add, LinearMap.add_apply]; ring)
    (fun c m n => by
      simp only [Prod.smul_fst, Prod.smul_snd, map_smul, LinearMap.smul_apply, smul_eq_mul]; ring)
    (fun m n₁ n₂ => by simp only [Prod.fst_add, Prod.snd_add, map_add, LinearMap.add_apply]; ring)
    (fun c m n => by
      simp only [Prod.smul_fst, Prod.smul_snd, map_smul, LinearMap.smul_apply, smul_eq_mul]; ring)

variable {k X}

/-- The Schrödinger operator `π(t, x, y)` on `X → ℂ`:
`(π(t, x, y) f)(z) = ψ(t + y(z) + y(x)/2) f(z + x)` (README §1.2). -/
noncomputable def schrodingerOp (ψ : AddChar k ℂ) (t : k) (v : X × Module.Dual k X) :
    (X → ℂ) →ₗ[ℂ] (X → ℂ) where
  toFun f z := ψ (t + v.2 z + v.2 v.1 / 2) * f (z + v.1)
  map_add' f g := by ext z; simp [mul_add]
  map_smul' c f := by ext z; simp only [Pi.smul_apply, smul_eq_mul, RingHom.id_apply]; ring

variable (X) in
/-- The projector `f ↦ (f + f ∘ (−1))/2` onto the even functions `S⁺` (README §2.2). -/
noncomputable def evenPart : (X → ℂ) →ₗ[ℂ] (X → ℂ) where
  toFun f z := (f z + f (-z)) / 2
  map_add' f g := by ext z; simp only [Pi.add_apply]; ring
  map_smul' c f := by ext z; simp only [Pi.smul_apply, smul_eq_mul, RingHom.id_apply]; ring

/-- A homomorphism `W : Sp(X × X*) → GL(X → ℂ)` is a **normalized Weil representation** for `ψ`
if it satisfies Egorov covariance `W(g) π(t, v) W(g)⁻¹ = π(t, g v)` and the parity-determinant
identity `det W(g) = (det W(g)|S⁺)²`. The restricted determinant is written as the determinant of
`W(g) ∘ e + (1 − e)` for the even projector `e`, which equals `det(W(g)|S⁺)` because Egorov
covariance makes `W(g)` commute with parity (README §2.2). -/
def IsNormalizedWeil (ψ : AddChar k ℂ)
    (W : TauCeti.BilinForm.isometryGroup (polarizationForm k X) →* ((X → ℂ) ≃ₗ[ℂ] (X → ℂ))) :
    Prop :=
  (∀ (g : TauCeti.BilinForm.isometryGroup (polarizationForm k X)) (t : k)
      (v : X × Module.Dual k X),
      (W g).toLinearMap ∘ₗ schrodingerOp ψ t v =
        schrodingerOp ψ t ((g : (X × Module.Dual k X) ≃ₗ[k] (X × Module.Dual k X)) v) ∘ₗ
          (W g).toLinearMap) ∧
    ∀ g : TauCeti.BilinForm.isometryGroup (polarizationForm k X),
      LinearMap.det (W g).toLinearMap =
        LinearMap.det ((W g).toLinearMap ∘ₗ evenPart X + (LinearMap.id - evenPart X)) ^ 2

/-- **The normalized finite Weil representation** (README §2.2). Over a finite field of odd
characteristic and for nontrivial `ψ`, there is exactly one normalized Weil representation of
`Sp(X × X*)` on `X → ℂ`; this holds also for `Sp₂(𝔽₃)`, where linearizations of the projective
Weil representation are not unique. (N02, Theorems 4.2–4.3, pp. 20–22; FS25, Construction 3.4.2,
p. 17.) -/
theorem existsUnique_isNormalizedWeil [Fintype k] [FiniteDimensional k X] (hk : ringChar k ≠ 2)
    (ψ : AddChar k ℂ) (hψ : ψ ≠ 1) :
    ∃! W : TauCeti.BilinForm.isometryGroup (polarizationForm k X) →* ((X → ℂ) ≃ₗ[ℂ] (X → ℂ)),
      IsNormalizedWeil ψ W := by
  sorry

end Weil

/-! ## Layer 3: Parabolic restriction and isotropic induction -/

section IsotropicInvariants

variable {J : Type*} [Group J] [Finite J]

/-- **Isotropic invariants of a fully ramified representation** (README §3.4). In the situation
of `fullyRamified_unique`, let `U ≤ J` be a subgroup with `θ` trivial on `U ∩ H`, and let `Q` be
the set of `q ∈ J` with `θ([q, u]) = 1` for all `u ∈ U` (the inverse image of the orthogonal of
the image of `U`). Then the `U`-invariants `E^U` of the irreducible representation `ρ` are stable
under `Q`, irreducible under `Q`, and `(dim E^U)² · |HU| = |Q|`. Together with the dimension
count this identifies `E^U` with the fully ramified representation of `Q` attached to
`θ_U(hu) = θ(h)`, whose induction to `J` is `ρ`. (S08, Lemma 5.6, Corollary 5.7, pp. 29–30, and
Lemma 5.12, p. 33; FS25, Lemma 3.3.4, p. 15.) -/
theorem fullyRamified_isotropicInvariants (H : Subgroup J) [hH : H.Normal]
    (hcomm : ∀ g x : J, g * x * g⁻¹ * x⁻¹ ∈ H) (θ : H →* ℂˣ)
    (hinv : ∀ (g : J) (h : H), θ ⟨g * h * g⁻¹, hH.conj_mem h h.2 g⟩ = θ h)
    (hnd : ∀ g : J, g ∉ H → ∃ x : J, θ ⟨g * x * g⁻¹ * x⁻¹, hcomm g x⟩ ≠ 1)
    (U : Subgroup J) (hU : ∀ (u : J) (hu : u ∈ H), u ∈ U → θ ⟨u, hu⟩ = 1)
    {E : Type*} [AddCommGroup E] [Module ℂ E] [FiniteDimensional ℂ E]
    (ρ : Representation ℂ J E) [ρ.IsIrreducible] (hρ : ∀ (h : H) (ξ : E), ρ h ξ = (θ h : ℂ) • ξ) :
    (∀ q : J, (∀ u ∈ U, θ ⟨q * u * q⁻¹ * u⁻¹, hcomm q u⟩ = 1) →
        ∀ ξ ∈ Representation.invariants (ρ.comp U.subtype),
          ρ q ξ ∈ Representation.invariants (ρ.comp U.subtype)) ∧
      (∀ S : Submodule ℂ E, S ≤ Representation.invariants (ρ.comp U.subtype) →
        (∀ q : J, (∀ u ∈ U, θ ⟨q * u * q⁻¹ * u⁻¹, hcomm q u⟩ = 1) → ∀ ξ ∈ S, ρ q ξ ∈ S) →
          S = ⊥ ∨ S = Representation.invariants (ρ.comp U.subtype)) ∧
      Module.finrank ℂ (Representation.invariants (ρ.comp U.subtype)) ^ 2 *
          Nat.card (H ⊔ U : Subgroup J) =
        Nat.card {q : J // ∀ u ∈ U, θ ⟨q * u * q⁻¹ * u⁻¹, hcomm q u⟩ = 1} := by
  sorry

end IsotropicInvariants

/-! ## Layer 4: Fixed vectors and tensor products -/

section FixedLine

variable {k X : Type*} [Field k] [AddCommGroup X] [Module k X]

/-- **The Lagrangian fixed line carries the quadratic determinant character** (README §4.1). Let
`W` be the normalized Weil representation, `L ≤ X × X*` a Lagrangian (`L^⊥ = L`) and `g ∈ Sp`
with `g L ⊆ L`. On every function fixed by the Schrödinger operators `π(0, l)`, `l ∈ L`, the
operator `W(g)` is multiplication by `χ(det(g|_L))`, where `χ` is the quadratic character of `k`.
For `L` the inverse image of a Lagrangian `L₀` of `I^⊥/I`, `det(g|_L) = det(g|_I) det(g|_{L₀})`,
which is the form used for unipotent actions in Fintzen's types. (F21, proof of Lemma 7.10 and
footnote 3, pp. 32–34; N02, Theorem 4.3 and the computation after it, pp. 22–23.) -/
theorem isNormalizedWeil_lagrangian_fixed [Fintype k] [DecidableEq k] [FiniteDimensional k X]
    (hk : ringChar k ≠ 2) (ψ : AddChar k ℂ) (hψ : ψ ≠ 1)
    (W : TauCeti.BilinForm.isometryGroup (polarizationForm k X) →* ((X → ℂ) ≃ₗ[ℂ] (X → ℂ)))
    (hW : IsNormalizedWeil ψ W)
    (L : Submodule k (X × Module.Dual k X)) (hL : (polarizationForm k X).orthogonal L = L)
    (g : TauCeti.BilinForm.isometryGroup (polarizationForm k X))
    (hg : ∀ v ∈ L, (g : (X × Module.Dual k X) ≃ₗ[k] (X × Module.Dual k X)) v ∈ L)
    (f : X → ℂ) (hf : ∀ l ∈ L, schrodingerOp ψ 0 l f = f) :
    W g f = ((quadraticChar k (LinearMap.det (M := L) (A := k)
      (((g : (X × Module.Dual k X) ≃ₗ[k] (X × Module.Dual k X)) :
        (X × Module.Dual k X) →ₗ[k] (X × Module.Dual k X)).restrict hg)) : ℤ) : ℂ) •
      f := by
  sorry

end FixedLine

end TauCetiRoadmap.MetaplecticAutomorphicFormsPartII
