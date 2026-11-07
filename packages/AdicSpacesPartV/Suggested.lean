import Mathlib
import TauCeti.AlgebraicGeometry.AdicSpace.Spa.Polydisc.Basic

/-!
# Rigid-analytic Zariski geometry: target signatures

The roadmap is README.md; this file is not the roadmap. It states the roadmap's headline
results against the pinned APIs.

The proper-image and nowhere-density theorems, finite normalization and global component
theorems, Riemann extension and connectedness, regular/smooth loci and smooth stratification,
Shilov and weakly Shilov characterizations and avoidance, rigid blowups and functorial rigid
resolution, polydisc neighbourhoods and rational-point manifolds and submersions are not
statable at the pins: the shared rigid-space, affinoid-algebra, coherent-ideal and analytic
morphism carriers are roadmap targets.

Connectedness of the resolution of an irreducible space and the group form of subfield
detection on G(C) are not statable: they need the rigid-space and rational-point-manifold
carriers, respectively. The general algebraic-point atlas and its field-extension comparison
require canonical analytic manifold structures on algebraic field-valued point sets, which
are also not supplied by the pinned APIs.

Gauss-point closure, constant rank on native finite-dimensional analytic manifolds and subfield
detection of analytic germs use native carriers below. The rigid-space application of constant
rank needs the missing rational-point atlas.
-/

namespace TauCetiRoadmap.AdicSpacesPartV

open Filter
open scoped Topology ContDiff Manifold

/-! ## Layer 3: classical points and Gauss points -/

/-- The unit Gauss point on the native closed polydisc is specified by comparison of the
unit-radius Gauss norms of its restricted series. This fixes the valuation class itself. -/
def IsUnitGaussPoint (K : Type*) [NontriviallyNormedField K] [IsUltrametricDist K]
    [NonarchimedeanRing K] (n : ℕ)
    (η : TauCeti.ValuationSpectrum.closedPolydisc n K) : Prop :=
  ∀ f g : TauCeti.Huber.weightedRestrictedSubring
      (fun _ : Fin n ↦ ({1} : Set K)) TauCeti.Huber.isWeightFamily_one_weight,
    η.1.toValuativeRel.vle f g ↔
      MvPowerSeries.gaussNorm norm (fun _ : Fin n ↦ (1 : ℝ))
        (f : MvPowerSeries (Fin n) K) ≤
      MvPowerSeries.gaussNorm norm (fun _ : Fin n ↦ (1 : ℝ))
        (g : MvPowerSeries (Fin n) K)

/-- Over a complete nontrivially valued nonarchimedean field with infinite residue field,
the unit Gauss point exists on every finite-dimensional closed polydisc and belongs to the
closure of its rational evaluation points. -/
theorem gaussPoint_mem_closure_rationalPoints
    (K : Type*) [NontriviallyNormedField K] [IsUltrametricDist K]
    [NonarchimedeanRing K] [CompleteSpace K]
    [Infinite (TauCeti.Huber.powerBoundedSubring K ⧸
      TauCeti.Huber.topologicallyNilpotentIdeal K)]
    (n : ℕ) (x : TauCeti.ValuationSpectrum.spa (TauCeti.Huber.powerBoundedSubring K)) :
    ∃ η : TauCeti.ValuationSpectrum.closedPolydisc n K,
      IsUnitGaussPoint K n η ∧ η ∈ closure (Set.range
        (fun a : {a : Fin n → K // ∀ i, TauCeti.Huber.IsPowerBounded (a i)} ↦
          TauCeti.ValuationSpectrum.classicalPoint x a.1 a.2)) := by
  sorry

/-! ## Layer 6: analytic manifolds and constant rank -/

/-- A characteristic-zero analytic map of finite-dimensional analytic manifolds with locally
constant tangent rank admits centred analytic coordinates in which it is the standard rank-k
projection followed by inclusion. No global separation axiom is required of the manifolds. -/
theorem analytic_constantRank
    (F : Type*) [NontriviallyNormedField F] [CompleteSpace F] [CharZero F]
    (m n k : ℕ) (hkm : k ≤ m) (hkn : k ≤ n)
    (M N : Type*) [TopologicalSpace M] [TopologicalSpace N]
    [ChartedSpace (Fin m → F) M] [ChartedSpace (Fin n → F) N]
    [IsManifold (modelWithCornersSelf F (Fin m → F)) ω M]
    [IsManifold (modelWithCornersSelf F (Fin n → F)) ω N]
    (f : M → N) (a : M)
    (ha : ContMDiffAt (modelWithCornersSelf F (Fin m → F))
      (modelWithCornersSelf F (Fin n → F)) ω f a)
    (hrank : ∀ᶠ x in 𝓝 a, Module.finrank F (LinearMap.range
      (mfderiv (modelWithCornersSelf F (Fin m → F))
        (modelWithCornersSelf F (Fin n → F)) f x).toLinearMap) = k) :
    ∃ (φ : OpenPartialHomeomorph M (Fin m → F))
      (ψ : OpenPartialHomeomorph N (Fin n → F)),
      a ∈ φ.source ∧ f a ∈ ψ.source ∧ φ a = 0 ∧ ψ (f a) = 0 ∧
      ContMDiffOn (modelWithCornersSelf F (Fin m → F))
        (modelWithCornersSelf F (Fin m → F)) ω φ φ.source ∧
      ContMDiffOn (modelWithCornersSelf F (Fin m → F))
        (modelWithCornersSelf F (Fin m → F)) ω φ.symm φ.target ∧
      ContMDiffOn (modelWithCornersSelf F (Fin n → F))
        (modelWithCornersSelf F (Fin n → F)) ω ψ ψ.source ∧
      ContMDiffOn (modelWithCornersSelf F (Fin n → F))
        (modelWithCornersSelf F (Fin n → F)) ω ψ.symm ψ.target ∧
      Set.MapsTo f φ.source ψ.source ∧
      ∀ x ∈ φ.source, ∀ j : Fin n,
        ψ (f x) j = if h : j.val < k then φ x ⟨j.val, lt_of_lt_of_le h hkm⟩ else 0 := by
  sorry

/-- An analytic scalar germ on C^m is zero when its restriction to E^m is zero near zero,
where E and C are complete characteristic-zero normed fields and C is a normed E-algebra.
The embedding and its norm are fixed by the normed-algebra structure. -/
theorem analytic_germ_eq_zero_of_subfield
    (E C : Type*) [NontriviallyNormedField E] [CompleteSpace E] [CharZero E]
    [NontriviallyNormedField C] [CompleteSpace C] [CharZero C] [NormedAlgebra E C]
    (m : ℕ) (f : (Fin m → C) → C) (hf : AnalyticAt C f 0)
    (hzero : ∀ᶠ x : Fin m → E in 𝓝 0, f (fun i ↦ algebraMap E C (x i)) = 0) :
    ∀ᶠ z in 𝓝 (0 : Fin m → C), f z = 0 := by
  sorry

end TauCetiRoadmap.AdicSpacesPartV
