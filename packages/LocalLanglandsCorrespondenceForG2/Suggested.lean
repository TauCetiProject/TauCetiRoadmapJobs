import Mathlib

/-!
# The local Langlands correspondence for G₂: target signatures

The roadmap is `README.md`; this file is not the roadmap. It states, against the pinned Mathlib and
Tau Ceti, the headline theorems of the roadmap that are statable at the pins, each with `sorry`.

Statable and stated here:

* the unacceptability of `Spin₇(ℂ)` (README §0.8): there are two homomorphisms from a finite
  group to `Spin₇(ℂ)` that are conjugate element by element but not by one element. This is the
  reason the PGSp₆ correspondence of Layer 10 takes values in weak parameter classes.

Not statable at the pins, with what each lacks:

* the local Langlands correspondence for split `G₂` (README §7.1: a surjective finite-to-one map
  `Irr(G₂(F)) → Φ(G₂)` with the discrete, tempered and Langlands-quotient properties, the two
  theta diagrams, the two characterizations and the enhanced fibres): neither library has the
  local Weil group `W_F` of a `p`-adic field, Weil–Deligne or `L`-parameters, the category of
  smooth representations of `G₂(F)` or the group `G₂(F)` of a `p`-adic field as a topological
  group;
* the generic supercuspidal correspondence (README §7.2): the same carriers, and genericity
  (Whittaker functionals) for `G₂(F)`;
* the characterization by `G₂ × GL_r` gamma factors (README §§3.12–3.13): local gamma factors of
  smooth representations and of Weil–Deligne representations;
* the exceptional spin identity for generic discrete series (README §5.6) and the partial
  enhanced `PGSp₆` correspondence on diamond orbits (README §7.3): smooth representations of
  `PGSp₆(F)` and `GL₈(F)`, the classical theta correspondence and Xu's packets;
* the weak local Langlands correspondence for `PGSp₆` (README §10.1) and the description of its
  fibres as unions of Xu packets (README §10.9): the same carriers and the Spin₇-valued
  parameters of `W_F × SL₂(ℂ)`;
* the all-places global–local compatibility (README §3.15): automorphic representations of `G₂`
  over a number field and the Galois representations attached to them;
* standard injectivity and quadratic-twist rigidity for `G₂`-valued parameters (README §§0.4–0.5):
  the parameters, and the embedding `G₂(ℂ) → Spin₇(ℂ)` as a stabilizer of a nonisotropic spinor
  (Mathlib has `spinGroup` and Tau Ceti has the octonions, but no comparison between them).
-/

namespace TauCetiRoadmap.LocalLanglandsCorrespondenceForG2

/-- The standard nondegenerate quadratic form `x₁² + ⋯ + x₇²` on `ℂ⁷`. Its spin group
`spinGroup sumSquaresSeven` is the complex group `Spin₇(ℂ)`, the dual group of `PGSp₆`. -/
noncomputable abbrev sumSquaresSeven : QuadraticForm ℂ (Fin 7 → ℂ) :=
  QuadraticMap.weightedSumSquares ℂ (fun _ : Fin 7 => (1 : ℂ))

/-! ## Layer 0: Parameters of G₂ and Spin₇ -/

/-- **`Spin₇` is unacceptable** (Chenevier–Gan, *Spin(7) is unacceptable*, Example 1 and
Corollary 4.8). There are a finite group `Γ` and two group homomorphisms `r r' : Γ → Spin₇(ℂ)`
such that `r γ` and `r' γ` are conjugate in `Spin₇(ℂ)` for every `γ`, while no single element of
`Spin₇(ℂ)` conjugates `r` to `r'`. The source proves it for the compact form; conjugacy of
compact-valued homomorphisms under the complexification implies conjugacy under the compact form,
and element conjugacy passes from the compact form to `Spin₇(ℂ)`. -/
theorem spin7_not_acceptable :
    ∃ (Γ : Type) (_ : Group Γ) (_ : Finite Γ) (r r' : Γ →* spinGroup sumSquaresSeven),
      (∀ γ, IsConj (r γ) (r' γ)) ∧
        ¬ ∃ g : spinGroup sumSquaresSeven, ∀ γ, r' γ = g * r γ * g⁻¹ := by
  sorry

end TauCetiRoadmap.LocalLanglandsCorrespondenceForG2
