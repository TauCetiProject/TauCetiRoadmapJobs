import Mathlib
import TauCeti.RepresentationTheory.Homological.ContCohomology.CohomologicalDimension.Basic
import TauCeti.Topology.Algebra.Group.Profinite.ProP.Basic

/-!
# Local fields and ramification, Part II: target signatures

The roadmap is `README.md`; this file is not the roadmap. It states the roadmap's headline
theorems against the pinned Mathlib and Tau Ceti, each with `sorry`, together with the few simple
definitions needed to state them.

A valued field is a field `K` with a Mathlib `ValuationSubring K`. Its residue characteristic
exponent is `ringExpChar` of the residue field. Tameness of a field is expressed through Mathlib's
`ValuationSubring.inertiaSubgroup` of finite Galois subextensions of `AlgebraicClosure K`: a field
is separably tame when every such inertia group has order prime to the residue characteristic
exponent, and tame when it is moreover perfect. Layer 2 of the README identifies these predicates
with Temkin's conditions `Kˢ = Kᵗ` and `Kᵃ = Kᵗ`.

Headline theorems stated below:

* Temkin's tameness theorem: a valued field without nontrivial finite extensions of degree a
  power of its residue characteristic exponent is tame (Layer 6);
* the separable export: a separably `P`-closed field is separably tame at every valuation whose
  residue characteristic lies in `P` (Layer 6);
* the Kuhlmann–Pank–Roquette splitting over a henselian valued field (Layer 3);
* the algebraic Abhyankar inequality and the resulting height bound (Layer 5);
* the two profinite inputs of the splitting theorem: `cd_p(G_F) ≤ 1` for a field of
  characteristic `p`, and continuous sections of surjections with pro-`p` kernel onto groups of
  `p`-cohomological dimension at most one (Layer 3).

Headline theorems not statable at the pins:

* the Pank splitting in height one without a henselian hypothesis (Temkin, Theorem 2.5.5), and
  every statement about the tame closure `Kᵗ` of a non-henselian field: they need the wild
  inertia subgroup of a prolongation to the separable closure and its fixed field, which neither
  library provides (Mathlib has decomposition and inertia subgroups only);
* the tensor decomposition `L ⊗_K Kʰ ≅ ∏ L_wʰ` and the height-one decompletion: they need the
  henselization of a valued field, which neither library provides;
* the composition criteria for unramified and tame extensions: they need the unramified and tame
  extension classes of a non-henselian field, defined through the henselization.
-/

namespace TauCetiRoadmap.LocalFieldsRamificationPartII

open IsLocalRing

/-! ## Layer 0: prime-supported extensions -/

/-- A natural number `n` is a `P`-number for a set `P` of natural numbers when it is positive and
every prime divisor of `n` lies in `P`. Zero is never a `P`-number, and for `P = ∅` the only
`P`-number is `1` (Temkin 2017, §2.1.1). -/
def IsPNumber (P : Set ℕ) (n : ℕ) : Prop :=
  0 < n ∧ ∀ q : ℕ, q.Prime → q ∣ n → q ∈ P

/-- A field `K` is `P`-closed when it has no nontrivial finite extension whose degree is a
`P`-number; purely inseparable extensions are included (Temkin 2017, §2.1.1). -/
def IsPClosed (P : Set ℕ) (K : Type*) [Field K] : Prop :=
  ∀ E : IntermediateField K (AlgebraicClosure K), FiniteDimensional K E →
    IsPNumber P (Module.finrank K E) → E = ⊥

/-- A field `K` is separably `P`-closed when it has no nontrivial finite separable extension
whose degree is a `P`-number. No perfection is imposed. -/
def IsSeparablyPClosed (P : Set ℕ) (K : Type*) [Field K] : Prop :=
  ∀ E : IntermediateField K (AlgebraicClosure K), FiniteDimensional K E →
    Algebra.IsSeparable K E → IsPNumber P (Module.finrank K E) → E = ⊥

/-! ## Layer 2: tame Galois extensions and tame fields -/

/-- A subextension `L` of `AlgebraicClosure K` is a tame Galois extension for the valuation
subring `V` of `K` when `L/K` is finite Galois and, for every valuation subring `A` of `L` lying
over `V`, the inertia subgroup of `A` in `Gal(L/K)` has order prime to the residue characteristic
exponent of `V`. -/
def IsTameGaloisExtension {K : Type*} [Field K] (V : ValuationSubring K)
    (L : IntermediateField K (AlgebraicClosure K)) : Prop :=
  FiniteDimensional K L ∧ IsGalois K L ∧
    ∀ A : ValuationSubring L, A.comap (algebraMap K L) = V →
      Nat.Coprime (Nat.card (ValuationSubring.inertiaSubgroup K A))
        (ringExpChar (ResidueField V))

/-- A valued field `(K, V)` is separably tame when every finite Galois subextension of
`AlgebraicClosure K` is a tame Galois extension; equivalently `Kˢ = Kᵗ` (Temkin 2017, §2.3.9). -/
def IsSeparablyTameField {K : Type*} [Field K] (V : ValuationSubring K) : Prop :=
  ∀ L : IntermediateField K (AlgebraicClosure K), FiniteDimensional K L → IsGalois K L →
    IsTameGaloisExtension V L

/-- A valued field `(K, V)` is tame when it is perfect and separably tame; equivalently
`Kᵃ = Kᵗ`, that is, every algebraic extension is tame at every prolongation (Temkin 2017,
§2.3.9). No henselian hypothesis is part of the definition. -/
def IsTameField {K : Type*} [Field K] (V : ValuationSubring K) : Prop :=
  PerfectField K ∧ IsSeparablyTameField V

/-- The compositum in `AlgebraicClosure K` of the tame Galois extensions of `(K, V)`. When `V` is
henselian it is the tame closure `Kᵗ`; in general it is the largest subextension of `Kᵗ` that is
Galois over `K`. -/
noncomputable def galoisTamePart {K : Type*} [Field K] (V : ValuationSubring K) :
    IntermediateField K (AlgebraicClosure K) :=
  ⨆ (L : IntermediateField K (AlgebraicClosure K)) (_ : IsTameGaloisExtension V L), L

/-! ## Layer 3: the splitting theorem over a henselian field and its profinite inputs -/

/-- **`cd_p(G_F) ≤ 1` in characteristic `p`.** For every field `F` of characteristic `p`, the
absolute Galois group of `F` has `p`-cohomological dimension at most one (Serre, *Galois
Cohomology*, II §2.2, Proposition 3; the Artin–Schreier sequence). -/
theorem cohomologicalDimensionAt_absoluteGaloisGroup_le_one (p : ℕ) [Fact p.Prime]
    (F : Type*) [Field F] [CharP F p] :
    TauCeti.cohomologicalDimensionAt p (Field.absoluteGaloisGroup F) ≤ 1 := by
  sorry

/-- **Sections through pro-`p` kernels.** Let `f : E → G` be a continuous surjective homomorphism
of profinite groups whose kernel is pro-`p`. If `cd_p G ≤ 1`, then `f` has a continuous
homomorphic section (Serre, *Galois Cohomology*, I §3.4, Proposition 16). -/
theorem exists_continuous_section_of_isProP_ker {p : ℕ} [Fact p.Prime] {E G : Type*}
    [Group E] [TopologicalSpace E] [IsTopologicalGroup E] [CompactSpace E]
    [TotallyDisconnectedSpace E]
    [Group G] [TopologicalSpace G] [IsTopologicalGroup G] [CompactSpace G]
    [TotallyDisconnectedSpace G]
    (f : E →* G) (hf : Continuous f) (hsurj : Function.Surjective f)
    (hker : TauCeti.IsProP p f.ker) (hG : TauCeti.cohomologicalDimensionAt p G ≤ 1) :
    ∃ s : G →* E, Continuous s ∧ ∀ g, f (s g) = g := by
  sorry

/-- **The Kuhlmann–Pank–Roquette splitting theorem.** Let `(K, V)` be a henselian valued field
and `E` a maximal purely wild extension of `K` in `AlgebraicClosure K`, that is, maximal among
the subextensions linearly disjoint from the tame closure `Kᵗ`. Then `E` and `Kᵗ` generate the
whole algebraic closure, so that multiplication `Kᵗ ⊗_K E → Kᵃ` is an isomorphism (Kuhlmann,
Pank and Roquette 1986, Theorems 2.1–2.2; Temkin 2017, Theorem 2.4.9). -/
theorem sup_galoisTamePart_eq_top_of_henselian {K : Type*} [Field K] (V : ValuationSubring K)
    [HenselianLocalRing V] (E : IntermediateField K (AlgebraicClosure K))
    (hE : E.LinearDisjoint (galoisTamePart V))
    (hmax : ∀ E' : IntermediateField K (AlgebraicClosure K), E ≤ E' →
      E'.LinearDisjoint (galoisTamePart V) → E' = E) :
    E ⊔ galoisTamePart V = ⊤ := by
  sorry

/-! ## Layer 5: the Abhyankar inequality and the height bound -/

/-- **The algebraic Abhyankar inequality, elementwise.** Let `vL` be a valuation of `L`
extending the valuation `vK` of `K`. If the values of `x i` are independent modulo the value
group of `K` (no nontrivial integral monomial in them is a value of an element of `K`), and the
`y j` lie in the valuation ring of `vL` with residues algebraically independent over the residue
field of `vK`, then the family `x, y` is algebraically independent over `K`. Hence the rational
rank of `Γ_L/Γ_K` plus the residue transcendence degree is at most `trdeg(L/K)` (Kuhlmann,
Kuhlmann and Vişan 2016, Lemma 2.1). -/
theorem algebraicIndependent_of_valuation_independent {K L ΓK ΓL : Type*} [Field K] [Field L]
    [Algebra K L] [LinearOrderedCommGroupWithZero ΓK] [LinearOrderedCommGroupWithZero ΓL]
    (vK : Valuation K ΓK) (vL : Valuation L ΓL) [vK.HasExtension vL]
    {ι κ : Type*} (x : ι → L) (y : κ → vL.valuationSubring)
    (hx : ∀ n : ι →₀ ℤ, (n.prod fun i k => vL (x i) ^ k) ∈
      Set.range (fun a : K => vL (algebraMap K L a)) → n = 0)
    (hy : AlgebraicIndependent (ResidueField vK.valuationSubring)
      (fun j => residue vL.valuationSubring (y j))) :
    AlgebraicIndependent K (Sum.elim x (fun j => (y j : L))) := by
  sorry

/-- **The height bound.** If `L/K` has finite transcendence degree `n` and `W` is a valuation
subring of `L`, then the height (Krull dimension) of `W` is at most the height of its
restriction to `K` plus `n`. In particular every valuation on a field of finite transcendence
degree over its prime field has finite height (Temkin 2017, proof of Theorem 2.6.6). -/
theorem ringKrullDim_le_ringKrullDim_comap_add {K L : Type*} [Field K] [Field L] [Algebra K L]
    (W : ValuationSubring L) (n : ℕ) (hn : Algebra.trdeg K L = n) :
    ringKrullDim W ≤ ringKrullDim (W.comap (algebraMap K L)) + n := by
  sorry

/-! ## Layer 6: the tameness theorem -/

/-- **Temkin's tameness theorem.** Let `(K, V)` be a valued field, with a valuation of arbitrary
height, and `p` the characteristic exponent of its residue field. If `K` has no nontrivial finite
extension of degree a power of `p`, then `K` is tame: every algebraic extension of `K` is tame
at every prolongation. For `p = 1` the hypothesis is empty (Temkin 2017, Theorem 2.6.6). -/
theorem isTameField_of_isPClosed {K : Type*} [Field K] (V : ValuationSubring K)
    (h : IsPClosed {q | q.Prime ∧ q = ringExpChar (ResidueField V)} K) :
    IsTameField V := by
  sorry

/-- **The separable export.** Let `P` be a set of primes and `K` a field without nontrivial
finite separable extension of `P`-number degree. Then `K` is separably tame at every valuation
subring whose residue characteristic exponent lies in `P`. The field `K` need not be perfect, and
nothing is claimed for residue characteristics outside `P` (Temkin 2017, Lemma 3.2.5 and
Remark 2.4.7, through the perfection of `K`). -/
theorem isSeparablyTameField_of_isSeparablyPClosed {K : Type*} [Field K] (P : Set ℕ)
    (hP : IsSeparablyPClosed P K) (V : ValuationSubring K)
    (hp : ringExpChar (ResidueField V) ∈ P) :
    IsSeparablyTameField V := by
  sorry

end TauCetiRoadmap.LocalFieldsRamificationPartII
