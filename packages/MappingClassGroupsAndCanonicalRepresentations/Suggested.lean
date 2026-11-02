import Mathlib

/-!
# Mapping class groups and canonical representations of surface groups: target signatures

The roadmap is `README.md`; this file is not the roadmap. It states the roadmap's headline
theorems against the pinned Mathlib, each with `sorry`, together with the few simple definitions
they need: the standard presentation of the fundamental group of a genus-`g` surface with `n`
punctures (`surfaceGroup`), its peripheral loops, the algebraic pure mapping class group
(`pureMappingClassAut`, the automorphisms sending each peripheral loop to a conjugate of itself),
finiteness of an orbit of conjugacy classes (`HasFiniteConjugacyOrbitUnder`), and, for the
Putman–Wieland theorem, the stabiliser of a finite quotient and the cohomology of the compactified
cover. The image of the topological pure mapping class group in the automorphism group of the
surface group lies in `pureMappingClassAut`, so each statement below is implied by the
corresponding topological statement of the README (README Layer 0, §0.2).

Stated here:

* `mcgFinite_finite_image`: an MCG-finite representation of rank `r` with `r² < g + 1` has finite
  image (Landesman–Litt, Theorem 1.2.1; README Layer 9).
* `freeGroup_finite_image`: the free-group form, for `N = 2g` or `2g + 1` (Landesman–Litt,
  Corollary 1.6.1; README Layer 9).
* `putmanWieland_of_card_lt`: the Putman–Wieland property for finite groups of order `< g²`, in its
  equivalent form "no nonzero class of the compactified cover is fixed by a finite-index subgroup
  of the stabiliser" (Landesman–Litt, Corollary 7.2.4; README Layer 6).

Headline theorems of the README that are not statable at the pins, with what each lacks:

* The rank bound for sub-local systems of `R¹π°_* V` on a punctured étale-versal family
  (Landesman–Litt, Theorem 1.7.1), the Artinian vanishing theorem (Theorem 6.2.1) and finite
  fibral monodromy on versal families (Corollary 1.3.1): Mathlib has no moduli stack of pointed
  curves, no families of curves over a complex variety and no higher direct images of local
  systems along such families.
* The higher Prym rank bound (Theorem 7.2.1) and its isotypic orbit form (Theorem 1.4.2): they
  need the cohomology of the covering surface as a representation of the deck group with the
  commuting action of the stabiliser, split into isotypic components; at the pins this exists
  only as an ad hoc encoding through type synonyms of the group algebra, so it is not stated.
* The algebraic isomonodromy criterion (Corollary 1.2.3): no isomonodromic deformations or
  logarithmic connections on families of curves.
* Arithmetic finite monodromy on the generic pointed curve (Theorem 9.1.2), its Hodge
  characterisation (Corollary 9.1.4) and residual non-lifting (Corollary 9.2.2): no étale
  fundamental groups of varieties over finitely generated fields, no moduli stack over `ℚ`, and no
  polarizable variations of Hodge structure.
-/

namespace TauCetiRoadmap.MappingClassGroupsAndCanonicalRepresentations

open Matrix

/-! ## Layer 0: surfaces with punctures, pure mapping class groups and point-pushing -/

/-- The relator `∏ᵢ [aᵢ, bᵢ] · ∏ⱼ cⱼ` of the standard presentation of the fundamental group of a
genus-`g` surface with `n` punctures, on the generators `aᵢ = of (inl i)`, `bᵢ = of (inr (inl i))`
and `cⱼ = of (inr (inr j))`, with the commutator `[x, y] = x * y * x⁻¹ * y⁻¹`. -/
def surfaceRelator (g n : ℕ) : FreeGroup (Fin g ⊕ Fin g ⊕ Fin n) :=
  ((List.finRange g).map fun i =>
      FreeGroup.of (Sum.inl i) * FreeGroup.of (Sum.inr (Sum.inl i)) *
        (FreeGroup.of (Sum.inl i))⁻¹ * (FreeGroup.of (Sum.inr (Sum.inl i)))⁻¹).prod *
    ((List.finRange n).map fun j => FreeGroup.of (Sum.inr (Sum.inr j))).prod

/-- The fundamental group of an oriented genus-`g` surface with `n` punctures, in its standard
presentation `⟨a₁, b₁, …, a_g, b_g, c₁, …, c_n | ∏ᵢ [aᵢ, bᵢ] ∏ⱼ cⱼ⟩` (Hatcher, §1.2, p. 51;
Landesman–Litt 2022, proof of Lemma 7.5.1). For `n ≥ 1` it is free of rank `2g + n − 1`. -/
def surfaceGroup (g n : ℕ) : Type :=
  PresentedGroup ({surfaceRelator g n} : Set (FreeGroup (Fin g ⊕ Fin g ⊕ Fin n)))

instance (g n : ℕ) : Group (surfaceGroup g n) :=
  inferInstanceAs (Group (PresentedGroup _))

/-- The `j`-th peripheral loop `cⱼ`, a loop around the `j`-th puncture. -/
def peripheralLoop {g n : ℕ} (j : Fin n) : surfaceGroup g n :=
  PresentedGroup.of (Sum.inr (Sum.inr j))

/-- The algebraic pure mapping class group: automorphisms of the surface group sending every
peripheral loop to a conjugate of itself. Every orientation-preserving homeomorphism fixing a base
point and each puncture induces such an automorphism, so the based action of the pure mapping
class group `PMod(g, n + 1)` lands here; by the Dehn–Nielsen–Baer theorem the image is all of it
up to orientation (Farb–Margalit, §8.2). For `n = 0` this is the whole automorphism group. -/
def pureMappingClassAut (g n : ℕ) : Subgroup (MulAut (surfaceGroup g n)) where
  carrier := {φ | ∀ j : Fin n, ∃ h : surfaceGroup g n,
    φ (peripheralLoop j) = h * peripheralLoop j * h⁻¹}
  one_mem' := fun j => ⟨1, by simp⟩
  mul_mem' := by
    intro φ ψ hφ hψ j
    obtain ⟨h, hh⟩ := hψ j
    obtain ⟨k, hk⟩ := hφ j
    refine ⟨φ h * k, ?_⟩
    simp only [MulAut.mul_apply, hh, map_mul, map_inv, hk]
    group
  inv_mem' := by
    intro φ hφ j
    obtain ⟨h, hh⟩ := hφ j
    refine ⟨(φ⁻¹ h)⁻¹, ?_⟩
    have h2 : peripheralLoop j = φ⁻¹ h * φ⁻¹ (peripheralLoop j) * (φ⁻¹ h)⁻¹ := by
      have := congrArg (fun x => φ⁻¹ x) hh
      simpa [map_mul, map_inv] using this
    generalize φ⁻¹ (peripheralLoop j) = x at h2 ⊢
    generalize φ⁻¹ h = y at h2 ⊢
    rw [h2]
    group

/-! ## Layer 2: finite orbits and surface monodromy -/

/-- A homomorphism `ρ : G → GL_r(ℂ)` has finite orbit of conjugacy classes under a group `H` of
automorphisms of `G`: finitely many homomorphisms represent, up to actual `GL_r(ℂ)`-conjugation,
every pullback `ρ ∘ φ` with `φ ∈ H`. No semisimplification is taken. Inner automorphisms change
`ρ` only by conjugation, so for `H` containing them this is finiteness of the orbit under the
outer action (Landesman–Litt, Definition 1.1.1). -/
def HasFiniteConjugacyOrbitUnder {G : Type*} [Group G] {r : ℕ} (H : Subgroup (MulAut G))
    (ρ : G →* GL (Fin r) ℂ) : Prop :=
  ∃ S : Set (G →* GL (Fin r) ℂ), S.Finite ∧
    ∀ φ ∈ H, ∃ σ ∈ S, ∃ A : GL (Fin r) ℂ, ∀ x : G, ρ (φ x) = A * σ x * A⁻¹

/-! ## Layer 6: higher Prym representations and the Putman–Wieland property -/

/-- The stabiliser of a finite quotient `ϕ : π₁(Σ_{g,n}) → H` up to conjugacy in `H`: the elements
of the algebraic pure mapping class group with `ϕ ∘ φ = c_h ∘ ϕ` for some `h ∈ H`
(Landesman–Litt, Notation 7.1.1). -/
def prymStabilizer {g n : ℕ} {H : Type*} [Group H] (ϕ : surfaceGroup g n →* H) :
    Subgroup (MulAut (surfaceGroup g n)) :=
  pureMappingClassAut g n ⊓
    { carrier := {φ | ∃ h : H, ∀ x, ϕ (φ x) = h * ϕ x * h⁻¹}
      one_mem' := ⟨1, by simp⟩
      mul_mem' := by
        rintro φ ψ ⟨h, hh⟩ ⟨k, hk⟩
        exact ⟨h * k, fun x => by simp only [MulAut.mul_apply, hh, hk]; group⟩
      inv_mem' := by
        rintro φ ⟨h, hh⟩
        refine ⟨h⁻¹, fun x => ?_⟩
        have := hh (φ⁻¹ x)
        simp only [MulAut.apply_inv_self] at this
        rw [this]
        group }

/-- The first cohomology `H¹(Σ_{g'}, ℂ)` of the compactified cover attached to `ϕ`, inside
`H¹(Σ_{g',n'}, ℂ) = Hom(ker ϕ, ℂ)`: the homomorphisms vanishing on every element of `ker ϕ`
conjugate in the surface group to a power of a peripheral loop, that is on every loop around a
puncture of the cover. -/
def compactPrymCohomology {g n : ℕ} {H : Type*} [Group H] (ϕ : surfaceGroup g n →* H) :
    Submodule ℂ (Additive ϕ.ker →+ ℂ) where
  carrier := {f | ∀ (k : ϕ.ker) (h : surfaceGroup g n) (j : Fin n) (m : ℤ),
    (k : surfaceGroup g n) = h * peripheralLoop j ^ m * h⁻¹ → f (Additive.ofMul k) = 0}
  add_mem' := by
    intro f₁ f₂ h₁ h₂ k h j m hk
    simp [h₁ k h j m hk, h₂ k h j m hk]
  zero_mem' := by
    intro k h j m _
    simp
  smul_mem' := by
    intro c f hf k h j m hk
    simp [hf k h j m hk]

/-- **Putman–Wieland for small groups** (Landesman–Litt, Corollary 7.2.4 and Theorem 1.4.1).
If `#H < g²` and `ϕ : π₁(Σ_{g,n}) → H` is surjective, no nonzero class in the cohomology of the
compactified cover is fixed by a finite-index subgroup of the stabiliser of `ϕ`. Equivalently,
every nonzero vector of the higher Prym representation has infinite orbit. -/
theorem putmanWieland_of_card_lt (g n : ℕ) {H : Type*} [Group H] [Fintype H]
    (hH : Fintype.card H < g ^ 2) (ϕ : surfaceGroup g n →* H) (hϕ : Function.Surjective ϕ)
    (Γ' : Subgroup (MulAut (surfaceGroup g n))) (hΓ' : Γ' ≤ prymStabilizer ϕ)
    (hfin : Γ'.relIndex (prymStabilizer ϕ) ≠ 0) (f : compactPrymCohomology ϕ)
    (hf : ∀ γ ∈ Γ', ∀ k k' : ϕ.ker, (k' : surfaceGroup g n) = γ k →
      (f : Additive ϕ.ker →+ ℂ) (Additive.ofMul k') = (f : Additive ϕ.ker →+ ℂ) (Additive.ofMul k)) :
    f = 0 := by
  sorry

/-! ## Layer 9: the general finiteness theorem and its corollaries -/

/-- **Canonical representations of low rank are finite** (Landesman–Litt, Theorem 1.2.1).
A representation of the fundamental group of a genus-`g` surface with `n` punctures whose
conjugacy class has finite orbit under the pure mapping class group, and whose rank `r` satisfies
`r² < g + 1`, has finite image. No semisimplicity is assumed. -/
theorem mcgFinite_finite_image (g n r : ℕ) (ρ : surfaceGroup g n →* GL (Fin r) ℂ)
    (hρ : HasFiniteConjugacyOrbitUnder (pureMappingClassAut g n) ρ) (hr : r ^ 2 < g + 1) :
    (Set.range ρ).Finite := by
  sorry

/-- **The free-group form** (Landesman–Litt, Corollary 1.6.1). For `N = 2g` or `N = 2g + 1`, a
representation of the free group of rank `N` whose conjugacy class has finite orbit under
`Aut(F_N)` (equivalently under `Out(F_N)`), and whose rank `r` satisfies `r² < g + 1`, has finite
image. -/
theorem freeGroup_finite_image (N g r : ℕ) (hN : N = 2 * g ∨ N = 2 * g + 1)
    (ρ : FreeGroup (Fin N) →* GL (Fin r) ℂ) (hρ : HasFiniteConjugacyOrbitUnder ⊤ ρ)
    (hr : r ^ 2 < g + 1) :
    (Set.range ρ).Finite := by
  sorry

end TauCetiRoadmap.MappingClassGroupsAndCanonicalRepresentations
