# FIX-PKG-LieHighestWeightPartII~6

Round 6 repair of the LieHighestWeightPartII package against the review `REV-PKG-LieHighestWeightPartII~5`, which raised two findings. Both were checked against the mathematics, the later roadmap's text at its open head and the pinned libraries, and both were applied. Only `packages/LieHighestWeightPartII/README.md` changed. `Suggested.lean`, `metadata.toml`, `sources.toml` and `design/plan.json` are unchanged, and no supplier gap was needed.

## REV-PKG-LieHighestWeightPartII~5/F01 (P2) — applied

Old: the Scope listed "weight patterns, positive real parts and their recognition" with no ownership boundary, and Downstream consumers named only Ciubotaru–Harris. New:
- A Scope paragraph says that §§5.3–5.5 and their laws are owned here, and that GlobalShtukasAndFunctionFieldLanglandsPartII §8.0 is a consumer that keeps only the residue-cardinality normalization, the relative Weyl refinement and the Aubert identity.
- A Downstream-consumers paragraph gives the bridge from that section's invariant to the one here.
- §5.3 gains a Check at `q = 4` and `q = 16`.

**Verification.**
- I read GlobalShtukasAndFunctionFieldLanglandsPartII at its open head:
  - §8.0 (`TauCetiRoadmap/GlobalShtukasAndFunctionFieldLanglandsPartII/README.md`, the paragraph under "### 8.0") defines `n_(ν,τ)(i)` as `#{μ : 2⟨μ,ν⟩ = i}` and proves recognition by evaluating characters at `q^ν`.
  - Its *Needs* line cites ReductiveGroups §§10A–10B and LieHighestWeight Layer 6, but not this package.
  - Its Scope paragraph keeps "the recognition of real Satake classes by weight multiplicities".
- The two invariants are the same. The eigenvalues of `τ(q^ν)` are the positive reals `q^⟨μ,ν⟩`, so `n_(ν,τ)(i) = weightPattern q (τ(q^ν)) i` for every `q > 1`.
  - That section's "geometric `ν`" is exactly `IsGeometricPoint q (q^ν)`.
  - `q^ν` is its own positive real part.
  - So `exists_conj_positiveRealPart_of_weightPattern_eq` gives `G(ℂ)`-conjugacy of `q^ν` and `q^ν′`. From that follows Weyl conjugacy in the torus, and then of `ν` and `ν′`, because `ν ↦ q^ν` is injective and `W`-equivariant.
  - What that roadmap adds is the normalization across places, the passage to `W^Fr` on `(t̂_ℝ)^Fr`, and `L_F(AZ(π)) = L_F(π)`.
- This roadmap is the right owner. It is at position 241 in `merge-order/ORDER.txt`; the later roadmap is at 367.
- I did not add GlobalShtukasAndFunctionFieldLanglandsPartII as a supplier anywhere. It appears only in Scope (as a consumer) and in Downstream consumers. The depcheck shows no new edge and no problem.

**What this package cannot settle.** Importing §§5.3–5.5 by name into GlobalShtukasAndFunctionFieldLanglandsPartII §8.0 and its *Needs* line is an edit to that roadmap. The review itself says this is not an instruction to this package. It is listed for the maintainer below.

**Same pattern elsewhere.** I searched the open heads and main for the same objects (`roadmaps grep -i 'weight pattern|positive real part|Proposition 10\.2'`):
- SmoothRepresentationsOfLocalGroupsPartII already consumes the §5.4 positive real part and the §5.2 test from this package and does not plan them again. It is now named in Downstream consumers.
- AdelicAlgebraicGroups' "positive real part" is `A_G(ℝ)^0`, a different object.
- No third owner was found.

## REV-PKG-LieHighestWeightPartII~5/F02 (P3) — applied

Old: "Strengthening the hypothesis to `ν(ω_i) ∈ ½ℤ` … would make both sides of the equivalence always true". New: the strengthened hypothesis makes both sides true when `λ` lies in the integral weight lattice, in particular for finite-dimensional `M`. A Verma control over `ℚ` is added: `ν(aω) = a/2` and `λ = −ω/2`, irreducible, with every weight satisfying `ν = −¼ − k ∉ ½ℤ`, so both sides fail.

**Verification.**
- **Counterexample.** For `sl₂` over `ℚ`, with `ν(aω) = a/2` (additive) and `ν(α) = ν(2ω) = 1 ∈ ½ℤ`, the hypothesis of `forall_weight_halfIntegral_iff_highestWeight` holds.
  - The Verma module `M(λ)` with `λ(H) = −½` has `E F^k v = k(λ(H) − k + 1) F^(k−1) v = −k(k − ½) F^(k−1) v`, with coefficients `−½, −3, −15/2` at `k = 1, 2, 3`. All are nonzero, and since `λ(H) ∉ ℕ` the module is irreducible.
  - Its weights are `λ − kα = (−½ − 2k)ω`, with `ν = −¼ − k` and `2ν = −½ − 2k ∉ ℤ`. Since `ν(λ) = −¼`, both sides are false. The old Check's "always true" is wrong; the Lean theorem is not affected.
- **The qualified claim.** If `λ ∈ P = ⊕ ℤω_i`, every weight `λ − Σ n_i α_i` lies in `P` (the weight-cone theorem, with `α_i ∈ P`), and `ν(P) ⊆ ½ℤ`. A finite-dimensional `M` has dominant integral `λ` (`TauCeti.IsHighestWeightVector.isDominantIntegral`), so `λ ∈ P`.
- **Same pattern elsewhere.** I re-read every finite-dimensional claim of §5.2. The proof paragraph's "For finite-dimensional `M` these lie in the integral weight lattice" is already qualified. The PGL₂ and `G_m` Checks concern algebraic (finite-dimensional) representations. The `Suggested.lean` docstring already says that finite-dimensionality is not assumed. No other occurrence was found.

## Adversarial pass on the changed text

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| Bridge `n_(ν,τ)(i) = weightPattern q (τ(q^ν)) i` | `ν = 0`, any `τ` | Both sides: `dim τ` at `0`, zero elsewhere. `q^0 = 1` and all eigenvalues equal `1 = q^0`. | Holds |
| Same | SL₂, `ν = (½,−½)`, std, `q = 4` and `16` | Their `n`: pairings `±½`, so degrees `±1`. Here: `diag(2,½)` with `2 = 4^(1/2)`, and `diag(4,¼)` with `4 = 16^(1/2)`. Both give pattern 1 at ±1. | Holds; new §5.3 Check |
| Same, non-geometric | SL₂, `ν = (¼,−¼)`, std | Their `n` is zero (pairings `±¼`, so `2⟨⟩ = ±½`). Here `|q^(1/4)| = q^(i/2)` forces `i = ½`, so the pattern is 0 for every integer `i` and the sum law fails on both sides. | Holds; geometricity matches `IsGeometricPoint` |
| Same, type D | Spin₈, `ν = ½(1,1,1,1)`, even half-spin | `2⟨μ,ν⟩ ∈ {2,0,−2}` with counts 1, 6, 1. `q^ν` has eigenvalues `q, 1 (×6), q⁻¹`, giving degrees 2, 0, −2 with counts 1, 6, 1. | Holds; agrees with that section's Check |
| Same, zero rep | `τ = 0` | Both sides are the zero function. | Holds |
| `q^ν` is its own positive part | SL₂, `ν = (½,−½)`, `q = 4` | `χ(q^ν) = q^⟨χ,ν⟩ > 0`, so `r(diag(2,½)) = diag(|2|,|½|) = diag(2,½)` | Holds |
| §5.5 ⇒ Weyl conjugacy of `ν` | `ν = (½,−½)`, `ν′ = (−½,½)`, `q = 4` | Patterns are equal (1 at ±1). `diag(2,½)` and `diag(½,2)` are conjugate by the Weyl element, and `ν′ = s_α ν`. | Holds |
| Same, negative control | `ν = (½,−½)`, `ν′ = 0` | Patterns are `δ₋₁ + δ₁` and `2δ₀`, which differ. `ν` and `0` are not Weyl-conjugate. | Holds |
| New §5.3 Check: traces | `q = 4`, `16` | `Σ n(i) q^(i/2)` is `4^(1/2) + 4^(−1/2) = 5/2` and `16^(1/2) + 16^(−1/2) = 17/4`; these equal `tr diag(2,½)` and `tr diag(4,¼)`. | Holds |
| New §5.3 Check: wrong normalization by `q^i` | `q = 4`, eigenvalue 2; `q = 16`, eigenvalue 4 | `4^i = 2` and `16^i = 4` each give `i = ½`, which is not an integer, so that model loses every eigenvalue. | Wrong model excluded |
| §5.2 qualified Check | `V(1)`, `V(2)`, `ν(ω) = ½` | Twice the weight values are ±1, and 2, 0, −2. All are integers; both sides true. | Holds |
| Same, outside the lattice | Verma `λ(H) = −½` over `ℚ` | Raising coefficients `−½, −3, −15/2`. `2ν = −½, −5/2, −9/2, …` (none integer); `2ν(λ) = −½`. False ⇔ false. | Holds; new control |
| Same, inside the lattice but infinite-dimensional | Verma `λ(H) = −1`, `ν(ω) = ½` | `λ = −ω ∈ P`. Weights `−ω − kα` have `ν = −½ − k ∈ ½ℤ`, and `ν(λ) = −½`: both true, as the qualified claim predicts. | Holds |
| §5.2 hypothesis implication | `sl₃`, `ν(ω₁) = ν(ω₂) = ½` | `ν(α₁) = 2·½ − ½ = ½` and `ν(α₂) = ½`, both in `½ℤ`. The strengthened hypothesis implies the stated one. | Holds |

## Checks run

- **Elaboration.** `lake env lean packages/LieHighestWeightPartII/Suggested.lean`, run from the content checkout, exited 0. It printed exactly nine `declaration uses 'sorry'` warnings, at lines 78, 95, 109, 126, 149, 176, 196, 215 and 264, and nothing else. No `TauCeti.*` object file was missing.
- **Signatures.** A scratch copy with `#check @name` for all 14 declarations elaborated with exit 0. I read the printed types and compared them with the README; none lost a binder. `forall_weight_halfIntegral_iff_highestWeight` keeps `[CharZero K]`, `IsKilling`, `FiniteDimensional K L`, the Cartan and triangularizability binders, `IsIrreducible`, `IsHighestWeightVector` and the simple-root hypothesis, with no algebraic closure and no finite-dimensionality of `M`, as README §5.2 says. `exists_conj_positiveRealPart_of_weightPattern_eq` keeps `1 < q`, reductivity, both semisimplicity, both geometricity, the pattern equality and both positive-part hypotheses. No Lean text changed, so nothing in the file needed to change.
- **Dependency direction.** `gate --depcheck … --movable` printed `depcheck: 206 roadmaps, 1901 edges, 0 problem(s)` (no UPWARD, CYCLE or moved line), both after the first edit and after the final edit.
- **Citations.** `roadmaps resolve` on the README found no cross-roadmap citation or Lean name unresolved. It notes that it did not check names outside TauCetiRoadmap.
- **House style.** The README has no pull-request numbers, LaTeX delimiters or machine paths. The new backticked names of this roadmap (`weightPattern`, `IsGeometricPoint`) are declared in `Suggested.lean`.
- **Gate failures.** None were listed for this round.

## For the maintainer

- **GlobalShtukasAndFunctionFieldLanglandsPartII §8.0** should import LieHighestWeightPartII §§5.3–5.5 (weight patterns, `IsGeometricPoint`, positive real parts, and recognition via `exists_conj_positiveRealPart_of_weightPattern_eq`) through the bridge `n_(ν,τ)(i) = weightPattern q (τ(q^ν)) i`, and cite this package in its *Needs* line. It should prove only the residue-cardinality normalization, the `W^Fr` refinement and the Aubert identity. Its Scope paragraph currently keeps "the recognition of real Satake classes by weight multiplicities" as its own. This package cannot make that change.
- **SmoothRepresentationsOfLocalGroupsPartII** cites this package by its design-scope ids "N0" to "N5" rather than by README layer and section. Its supplier contracts also ask this package for three items that this README does not state: reductive triple centralizers, the graded open orbit of the centralizer of `s` on the `q`-eigenspace of `Ad(s)`, and the Bala–Carter orbit tables of F₄, E₇ and E₈ with centralizer types. Neither review finding raises this, so nothing here was widened for it. That roadmap's contracts need settling, either by declaring them on its side or by a supplier gap, before it can rely on them.
- **Names.** No names changed. No declaration of `Suggested.lean` was added, removed or renamed.
- **Ownership against open work.** I checked ownership against the open heads with `roadmaps grep` and `roadmaps show`; the results are given under F01.
