import Mathlib

/-!
# TropicalAndBerkovichArithmetic: representative target signatures

The roadmap is `README.md`. This file records definitions and theorem signatures
statable against the pinned APIs and is not exhaustive. Its points are actual
Mathlib multiplicative seminorms dominated by the specified ring norm. The
topology tests every ring element. Compactness does not assert nonemptiness;
the latter uses completeness and nontriviality. Analytic spaces, metric graphs,
model measures and integration comparisons retain their full statements in the
README because their carriers require further mathematics.
-/

noncomputable section

namespace TauCetiRoadmap.TropicalAndBerkovichArithmetic

open Filter Topology

variable (A : Type*) [NormedCommRing A]

/-! ## Layer 0: Berkovich spectra and analytic comparison -/

/-- Norm-dominated, normalized real-valued multiplicative seminorms.
The ambient norm need not be multiplicative, and the ring may be zero. -/
def Spectrum := {p : MulRingSeminorm A // ∀ a, p a ≤ ‖a‖}

namespace Spectrum

variable {A} {B : Type*} [NormedCommRing B]

/-- Forget only the domination proof. -/
abbrev toSeminorm (x : Spectrum A) : MulRingSeminorm A := x.val

/-- Evaluation at any ring element, including elements outside a generating set. -/
abbrev eval (x : Spectrum A) (a : A) : ℝ := x.toSeminorm a

/-- Attach a pointwise norm bound to the native seminorm without changing it. -/
def ofSeminorm (p : MulRingSeminorm A) (hp : ∀ a, p a ≤ ‖a‖) : Spectrum A := ⟨p, hp⟩

/-- The evaluation topology is induced from the whole product of real lines. -/
instance topology : TopologicalSpace (Spectrum A) :=
  TopologicalSpace.induced (fun x : Spectrum A => x.eval) inferInstance

/-- The specified field norm is a point, without a completeness hypothesis. -/
def normPoint (K : Type*) [NormedField K] : Spectrum K :=
  ⟨{ (normRingSeminorm K).toAddGroupSeminorm with
      map_one' := norm_one
      map_mul' := norm_mul }, fun _ => le_rfl⟩

/-- Temkin, Fact 2.2.2.3(i): compactness also holds for an empty spectrum. -/
theorem compactSpace : CompactSpace (Spectrum A) := sorry

/-- All evaluations together separate points in the evaluation topology. -/
theorem t2Space : T2Space (Spectrum A) := sorry

/-- Berkovich, Theorem 1.2.1: a complete nonzero normed ring has a point. -/
theorem nonempty [CompleteSpace A] [NormOneClass A] [Nontrivial A] :
    Nonempty (Spectrum A) := sorry

/-- Berkovich, Corollary 1.2.4, including the zero ring: detect units by positivity. -/
theorem isUnit_iff [CompleteSpace A] (h_one : ‖(1 : A)‖ ≤ 1) (a : A) :
    IsUnit a ↔ ∀ x : Spectrum A, 0 < x.eval a := sorry

/-- Berkovich, Theorem 1.3.1: a spectral maximum realizes the root-norm limit. -/
theorem spectral_maximum [CompleteSpace A] [NormOneClass A] [Nontrivial A] (a : A) :
    ∃ x : Spectrum A, (∀ y : Spectrum A, y.eval a ≤ x.eval a) ∧
      Tendsto (fun n : ℕ => ‖a ^ (n + 1)‖ ^ ((n + 1 : ℝ)⁻¹))
        atTop (𝓝 (x.eval a)) := sorry

/-- A bounded ring map induces continuous pullback of points by composition. -/
theorem exists_comap (f : A →+* B) (hf : f.IsBounded) :
    ∃ g : C(Spectrum B, Spectrum A), ∀ (x : Spectrum B) (a : A),
      (g x).eval a = x.eval (f a) := sorry

/-- Inverse bounds force the spectrum of every normed field to be a singleton. -/
theorem eq_normPoint (K : Type*) [NormedField K] (x : Spectrum K) :
    x = normPoint K := sorry

/-- The zero ring is excluded by the incompatible values at zero and one. -/
example [Subsingleton A] : IsEmpty (Spectrum A) := by
  refine ⟨fun x => ?_⟩
  have h : (0 : ℝ) = 1 := by
    calc
      0 = x.toSeminorm 0 := (map_zero x.toSeminorm).symm
      _ = x.toSeminorm 1 := congrArg x.toSeminorm (Subsingleton.elim 0 1)
      _ = 1 := map_one x.toSeminorm
  exact zero_ne_one h

/-- Forgetting domination and evaluating recover the native point exactly. -/
example (p : MulRingSeminorm A) (hp : ∀ a, p a ≤ ‖a‖) :
    (ofSeminorm p hp).toSeminorm = p ∧
      ∀ a, (ofSeminorm p hp).eval a = p a := by
  exact ⟨rfl, fun _ => rfl⟩

/-- Coordinatewise continuity is precisely continuity for this topology. -/
example {Z : Type*} [TopologicalSpace Z] (f : Z → Spectrum A) :
    Continuous f ↔ ∀ a, Continuous (fun z => (f z).eval a) := by
  exact continuous_induced_rng.trans continuous_pi_iff

/-- Reciprocal evaluation calibrates the specified norm point. -/
example : (normPoint ℝ).eval (2 : ℝ)⁻¹ = 1 / 2 := by
  change ‖(2 : ℝ)⁻¹‖ = 1 / 2
  norm_num

end Spectrum

/-
Definitions and constructions specified in the README beyond the spectrum interface:
Layer 0: banach_ring_category, completed_residue_fields, affinoid_algebras,
affinoid_domains, analytic_sheaf, analytic_spaces, analytification,
hybrid_analytic_space, uniform_unit_hierarchy.
Layer 1: gauss_line_and_discs, tree_hyperbolic_metric, annular_skeleton,
virtual_annuli_descent.
Layer 2: semistable_vertex_sets_and_skeleta, skeleton,
retraction_to_the_skeleton, marked_extended_skeleton, noncompact_triangulations.
Layer 3: metric_graphs, graph_divisors, graph_laplacian, graph_jacobian,
divisor_specialization, metrized_complexes.
Layer 4: torus_tropicalization, initial_degenerations, weighted_tropical_cycles,
relative_tropical_multiplicity.
Layer 5: faithful_embedding_predicate.
Layer 6: formal_model_metrics, model_measures, semipositive_integrable_metrics,
hsia_potentials_and_energy, graph_green_and_admissible_measure.
Layer 7: tate_analytic_quotient, schottky_data, berkovich_coleman_path_integral.
The continuous comap is specified by exists_comap above; its construction is in
the README. No later-layer carrier is replaced by an ad hoc encoding here.
-/

end TauCetiRoadmap.TropicalAndBerkovichArithmetic
