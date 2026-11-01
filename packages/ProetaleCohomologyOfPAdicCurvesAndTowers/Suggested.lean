import Mathlib

/-!
# Pro-étale cohomology of p-adic curves, Drinfeld half-spaces and the rank-two Drinfeld tower: target signatures

The roadmap is `README.md`; this file is not the roadmap. It states the roadmap's headline
theorems against the pinned Mathlib, each with `sorry`, together with the few definitions their
statements need.

Stated here: the irreducibility of the generalized Steinberg representations `Sp_J(A)` of
`GL_{d+1}(K)`, `K/ℚ_p` finite, over a coefficient field `A` of characteristic `0` or `p`
(README §0.4(a)). The representations are the quotients of the locally constant functions on
`GL_{d+1}(K)/P_J` by the functions pulled back from the larger flag varieties (README §0.3); the
file defines the standard parabolic subgroups, the translation representation, the relation
submodule and the quotient representation. These are the coefficients of every cohomology
computation of the Drinfeld half-spaces in Layer 6.

Not statable at the pins, by headline theorem and missing carrier:

* the fundamental diagrams of affinoid, proper, overconvergent and Stein curves (README §§3.5,
  4.1, 4.2, 4.7), the Kummer regulator `Symb_ℓ(Y) ≅ H¹_ét(Y, ℤ_ℓ(1))` (§2.4), the ℓ-adic,
  de Rham and Hyodo–Kato filtrations and the Weil–Deligne similarity (§§2.5, 3.2, 4.3, 4.6):
  Mathlib has no rigid analytic curves over `C`, no étale or pro-étale cohomology of adic spaces,
  no Hyodo–Kato cohomology and no `B_cris^+` or `B_st^+` (it has `BDeRhamPlus` only);
* the period isomorphism `Ĵ ≅ X^1_st(H¹_HK(X))` and its integration form (§§4.8–4.9): Jacobians
  of curves and universal vector extensions are missing;
* the `G_K`-equivariant fundamental diagram of a semistable Stein weak formal scheme (§5.5):
  weak formal schemes, dagger spaces and syntomic cohomology are missing;
* the cohomology of the Drinfeld half-space `Ω^d` as duals of generalized Steinberg
  representations in every coefficient theory, integral `p`-adic étale cohomology and Dat's
  compactly supported ℓ-adic complex (§§6.2, 6.4, 6.5, 6.9, 6.10): the rigid space `Ω^d` and its
  cohomology are missing;
* the connected components of the Lubin–Tate and Drinfeld towers, the equivariant semistable
  models of the rank-two Drinfeld levels, the Hyodo–Kato and de Rham multiplicities, the
  multiplicity diagram, the finite copresentation of mod `p^k` cohomology and the
  non-admissibility for `F ≠ ℚ_p` (§§7.1, 7.2, 7.4, 7.5, 7.7, 7.8): Lubin–Tate and Drinfeld
  spaces, their cohomology and the Jacquet–Langlands and Langlands correspondences are missing.
-/

namespace TauCetiRoadmap.ProetaleCohomologyOfPAdicCurvesAndTowers

open scoped Pointwise

/-! ## Layer 0: Graphs with legs and generalized Steinberg representations -/

/-- The `m`-th standard flag subspace of `Kⁿ`: the vectors whose coordinates of index `≥ m`
vanish, that is, the span of the first `m` standard basis vectors (README §0.3). -/
def flagSubspace (K : Type*) [Field K] (n m : ℕ) : Submodule K (Fin n → K) :=
  ⨅ (i : Fin n) (_ : m ≤ i.val), LinearMap.ker (LinearMap.proj i)

/-- The standard parabolic subgroup `P_J = B W_J B` of `GL_{d+1}(K)` attached to a set `J` of
simple reflections, the reflection `k : Fin d` exchanging the basis vectors of index `k` and
`k + 1`: the stabilizer of the standard flag subspaces of dimension `k + 1` for `k ∉ J`
(CDN-STEIN §5.2.1). For `J = ∅` it is the upper triangular Borel subgroup, for `J` everything
it is `GL_{d+1}(K)` (README §0.3). -/
def parabolic (K : Type*) [Field K] (d : ℕ) (J : Set (Fin d)) : Subgroup (GL (Fin (d + 1)) K) :=
  ⨅ (k : Fin d) (_ : k ∉ J),
    (MulAction.stabilizer (LinearMap.GeneralLinearGroup K (Fin (d + 1) → K))
      (flagSubspace K (d + 1) (k.val + 1))).comap
      (Matrix.GeneralLinearGroup.toLin (n := Fin (d + 1)) (R := K)).toMonoidHom

theorem parabolic_mono (K : Type*) [Field K] (d : ℕ) {J J' : Set (Fin d)} (h : J ⊆ J') :
    parabolic K d J ≤ parabolic K d J' :=
  iInf_mono fun _ => iInf_mono' fun hk => ⟨fun hJ => hk (h hJ), le_rfl⟩

/-- The left translation representation of a topological group `G` on the `A`-valued locally
constant functions on `G ⧸ H`: `(g · f)(x) = f(g⁻¹ x)` (README §0.3). -/
noncomputable def translation (G : Type*) [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
    (H : Subgroup G) (A : Type*) [CommRing A] :
    Representation A G (LocallyConstant (G ⧸ H) A) where
  toFun g := LocallyConstant.comapₗ A ⟨fun x => g⁻¹ • x, continuous_const_smul _⟩
  map_one' := by
    ext f x
    simp
  map_mul' g g' := by
    ext f x
    simp [mul_smul]

/-- The relation submodule of `LC(G/P_J, A)`: the sum, over the simple reflections `i ∉ J`, of
the functions pulled back along `G/P_J → G/P_{J ∪ {i}}` (CDN-STEIN §5.2.1, README §0.3). -/
noncomputable def steinbergRelations (K : Type*) [Field K] [TopologicalSpace K]
    [IsTopologicalRing K] (A : Type*) [CommRing A] (d : ℕ) (J : Set (Fin d)) :
    Submodule A (LocallyConstant (GL (Fin (d + 1)) K ⧸ parabolic K d J) A) :=
  ⨆ (i : Fin d) (_ : i ∉ J), LinearMap.range (LocallyConstant.comapₗ A
    ⟨Subgroup.quotientMapOfLE (parabolic_mono K d (Set.subset_insert i J)),
      (QuotientGroup.isQuotientMap_mk _).continuous_iff.2 QuotientGroup.continuous_mk⟩)

theorem steinbergRelations_le_comap (K : Type*) [Field K] [TopologicalSpace K]
    [IsTopologicalRing K] (A : Type*) [CommRing A] (d : ℕ) (J : Set (Fin d))
    (g : GL (Fin (d + 1)) K) :
    steinbergRelations K A d J ≤ (steinbergRelations K A d J).comap
      (translation (GL (Fin (d + 1)) K) (parabolic K d J) A g) := by
  refine iSup₂_le fun i hi => ?_
  rintro _ ⟨f, rfl⟩
  refine Submodule.mem_comap.2 (Submodule.mem_iSup_of_mem i (Submodule.mem_iSup_of_mem hi
    ⟨translation (GL (Fin (d + 1)) K) (parabolic K d (insert i J)) A g f, ?_⟩))
  ext x
  induction x using QuotientGroup.induction_on
  simp [translation, Subgroup.quotientMapOfLE_apply_mk, MulAction.Quotient.smul_mk]

/-- The generalized Steinberg representation `Sp_J(A) = LC(G/P_J, A) / Σ_{i ∉ J} LC(G/P_{J∪{i}}, A)`
of `G = GL_{d+1}(K)` with coefficients in `A`, `G` acting by left translation (CDN-STEIN §5.2.1,
README §0.3). For `J = ∅` it is the Steinberg representation, for `J` everything it is `A`. -/
noncomputable def generalizedSteinberg (K : Type*) [Field K] [TopologicalSpace K]
    [IsTopologicalRing K] (A : Type*) [CommRing A] (d : ℕ) (J : Set (Fin d)) :
    Representation A (GL (Fin (d + 1)) K)
      (LocallyConstant (GL (Fin (d + 1)) K ⧸ parabolic K d J) A ⧸ steinbergRelations K A d J) :=
  (translation (GL (Fin (d + 1)) K) (parabolic K d J) A).quotient
    (steinbergRelations K A d J) (steinbergRelations_le_comap K A d J)

/-- **Irreducibility of the generalized Steinberg representations** (README §0.4(a);
CDN-STEIN Proposition 5.1, after Casselman in characteristic `0` and Grosse-Klönne, GK14
Corollaries 4.3–4.4, in characteristic `p`). Let `K` be a finite extension of `ℚ_p` with its
absolute value and `A` a field of characteristic `0` or `p`. Then for every `d` and every set `J`
of simple reflections, `Sp_J(A)` is an irreducible representation of `GL_{d+1}(K)`. -/
theorem generalizedSteinberg_isIrreducible (p : ℕ) [Fact p.Prime] (K : Type*)
    [NontriviallyNormedField K] [NormedAlgebra ℚ_[p] K] [FiniteDimensional ℚ_[p] K]
    (A : Type*) [Field A] (hA : CharZero A ∨ CharP A p) (d : ℕ) (J : Set (Fin d)) :
    (generalizedSteinberg K A d J).IsIrreducible := by
  sorry

end TauCetiRoadmap.ProetaleCohomologyOfPAdicCurvesAndTowers
