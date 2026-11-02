import Mathlib
import TauCeti.NumberTheory.ModularForms.Newforms.Satake

/-!
# Modularity and Langlands extensions, part II: target signatures

**This file is not the roadmap.** The roadmap is `README.md`; this file states, against the
pinned Mathlib and Tau Ceti, the headline theorems of the roadmap that are statable there.

## Stated

* `symPowerEulerProduct_levelOne_entire`: for a normalised Hecke eigenform `f` of level one and
  every `n ≥ 1`, the Euler product `∏_p ∏_{j=0}^{n} (1 − α_p^j β_p^{n−j} p^{−s})^{−1}` of
  `L(s, Sym^n f)` converges for `Re s > n(k − 1)/2 + 1` to a function that extends to an entire
  function (README §14.4). It is the consequence of symmetric power functoriality in level one
  that is visible on the classical newforms and Satake parameters of Tau Ceti.

## Not statable at the pins

The other headline theorems need carriers that neither Mathlib nor Tau Ceti has: cuspidal
automorphic representations of `GL_n` over number fields and of definite unitary groups, their
`p`-adic Galois representations and the automorphy predicate, rigid-analytic eigenvarieties and
spaces of pseudocharacters, Hilbert modular forms, local Langlands parameters and Arthur packets
of unitary groups, and Galois deformation and pseudodeformation rings. Hence:

* Theorem 2.33 of Newton–Thorne I (§2.4) and Theorem D (§3.8) lack the eigencurve, the unitary
  eigenvariety and the automorphy predicate for `Sym^{n−1} r_{π,ι}`.
* Level raising to types and to Steinberg (§§5.4, 5.10, 6.4, 6.7–6.9) lacks automorphic
  representations of definite unitary groups, depth-zero types and their Galois representations.
* Theorem E and Theorem 7.1 (§§7.5, 7.6, 14.1), the Clozel–Thorne powers `Sym^6`, `Sym^8`
  (§7.7) and Theorem B (§§8.3, 14.2) lack the automorphy predicate for `GL_n` over `ℚ` and over
  CM fields.
* Automorphy lifting for symmetric powers (§9.8), tensor functoriality lifting (§12.7), the
  untwisted tensor (§11.10) and the residual twisted-tensor witnesses (§§13.5, 13.6) lack
  Galois representations of automorphic representations, deformation rings and patching.
* `SP_n` over totally real fields (§13.10) lacks Hilbert modular forms and automorphic
  representations of `GL_n` over totally real fields.
* Symmetric power functoriality for every non-CM newform (§14.3) lacks the local Langlands
  correspondence at the ramified primes, which is needed even to write the Euler factors of
  `L(s, Sym^n f)` there; the Satake parameters of Tau Ceti at a prime dividing the level do not
  determine them.
-/

namespace TauCetiRoadmap.ModularityAndLanglandsExtensionsPartII

open HeckeRing.GL2

/-- The Euler factor of the `n`-th symmetric power at a prime with Satake parameters `α`, `β`,
as a function of `x = p^{−s}`: `∏_{j=0}^{n} (1 − α^j β^{n−j} x)`. It is symmetric in `α` and `β`
(reindex `j ↦ n − j`), so it depends only on the unordered pair of Satake parameters. -/
noncomputable def symPowerEulerFactor (n : ℕ) (α β x : ℂ) : ℂ :=
  ∏ j ∈ Finset.range (n + 1), (1 - α ^ j * β ^ (n - j) * x)

/-- The Euler factor depends only on the unordered pair `{α, β}`: exchanging the Satake
parameters reindexes the product by `j ↦ n − j`. This is what makes the statement below
independent of the ordering chosen in `hαβ`. -/
example (n : ℕ) (α β x : ℂ) : symPowerEulerFactor n α β x = symPowerEulerFactor n β α x := by
  unfold symPowerEulerFactor
  rw [← Finset.prod_range_reflect]
  refine Finset.prod_congr rfl fun j hj => ?_
  have hj' : j ≤ n := Nat.lt_succ_iff.mp (Finset.mem_range.mp hj)
  rw [show n + 1 - 1 - j = n - j by omega, show n - (n - j) = j by omega]
  ring

/-- **Holomorphy of symmetric power `L`-functions in level one** (README §14.4; Newton–Thorne I,
Theorem A and its consequence for `Δ`, nt21 p. 2). Let `f` be a normalised Hecke eigenform of
level one and weight `k`, with Satake parameters `{α_p, β_p}` at every prime `p`, and let
`n ≥ 1`. Then the Euler product `∏_p symPowerEulerFactor n α_p β_p (p^{−s})⁻¹` converges for
`Re s > n(k − 1)/2 + 1` to a function which extends to an entire function on `ℂ`. The route:
`Sym^n π_f` is a cuspidal automorphic representation of `GL_{n+1}(𝔸_ℚ)` unramified everywhere
(§14.2), whose finite `L`-function, shifted by `n(k − 1)/2`, is this Euler product and is entire
by Godement–Jacquet. The hypothesis `1 ≤ n` is needed: for `n = 0` the product is `ζ(s)`. -/
theorem symPowerEulerProduct_levelOne_entire {k : ℤ} (f : Newform 1 k) (n : ℕ) (hn : 1 ≤ n)
    (α β : ℕ → ℂ) (hαβ : ∀ p : ℕ, p.Prime → f.satakeParameters p = {α p, β p}) :
    ∃ L : ℂ → ℂ, Differentiable ℂ L ∧
      ∀ s : ℂ, (n : ℝ) * ((k : ℝ) - 1) / 2 + 1 < s.re →
        HasProd (fun p : Nat.Primes =>
          (symPowerEulerFactor n (α p) (β p) ((p : ℂ) ^ (-s)))⁻¹) (L s) := by
  sorry

end TauCetiRoadmap.ModularityAndLanglandsExtensionsPartII
