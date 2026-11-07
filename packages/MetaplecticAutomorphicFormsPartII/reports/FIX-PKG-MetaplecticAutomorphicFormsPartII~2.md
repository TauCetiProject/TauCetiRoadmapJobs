# FIX-PKG-MetaplecticAutomorphicFormsPartII~2: resolution of REV-PKG-MetaplecticAutomorphicFormsPartII

The review raised one finding, P3, on the module docstring of `packages/MetaplecticAutomorphicFormsPartII/Suggested.lean`. It is settled below. The worker's check of the first submission then reported one problem, the module-header warning on the same file; it is repaired below under "Worker repair". No declaration, README statement, manifest entry or plan gap changed.

## REV-PKG-MetaplecticAutomorphicFormsPartII/F01 (P3) — applied

The finding is correct: in `Suggested.lean` the symbol `ω` is the alternating form in every declaration (the binder `(ω : LinearMap.BilinForm k V)` of `heisenbergFactorSet`, `Heisenberg` and both Stone–von Neumann theorems), while the README writes the normalized Weil representation as `W` (§2.2, `IsNormalizedWeil ψ W`) and the Weil–Heisenberg representation as `Ω_{ψ,V}` (§§2.4, 3.3). The docstring used `ω(g)` and `ω_V` for the latter two objects.

Changed, docstring lines 22 and 32 only:

- `det ω(g) = (det ω(g)|S⁺)²` → `det W(g) = (det W(g)|S⁺)²`.
- `ω_V|_{P ⋉ H(V)} ≅ Ind_{P ⋉ H(I^⊥)}^{P ⋉ H(V)} ((χ ∘ det_I) ⊗ Ω_{I^⊥/I})` → `Ω_{ψ,V}|_{P ⋉ H(V)} ≅ Ind_{P ⋉ H(I^⊥)}^{P ⋉ H(V)} ((χ ∘ det_I) ⊗ Ω_{ψ,I^⊥/I})`.

The second line uses the README's own subscripts `Ω_{ψ,·}` (README §3.3 writes `Ω_{ψ,V}` and `Ω_{ψ,V̄}` with `V̄ = I^⊥/I`) rather than the reviewer's `Ω_V`, `Ω_{I^⊥/I}`, so that the acceptance test and the roadmap use one symbol per object; the content is the reviewer's repair.

**Pattern search.** `grep` for `ω(g)`, `ω_V` and `ω_{` over `Suggested.lean` and `README.md`: the two docstring lines were the only occurrences. Every other `ω` in the file is the bilinear form; the README nowhere uses `ω` for a representation.

## Adversarial pass on the changed text

The change is notation in a docstring; no statement, binder or convention changed. The two renamed formulas were recomputed once each so that the renamed symbols are the objects the README computes with.

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| Docstring line 22, `det W(g) = (det W(g)\|S⁺)²` with `W` the normalized Weil representation of README §2.2 | `k = 𝔽₃`, `n = 1`, `g = J`, `W(J) = κ_J F_ψ` (README §2.3, worked example at §5) | `S⁺ = span(δ₀, δ₁+δ₂)`; `F_ψ δ₀ = 3^{−1/2}(δ₀ + (δ₁+δ₂))`, `F_ψ(δ₁+δ₂) = 3^{−1/2}(2δ₀ − (δ₁+δ₂))`, so `det(F_ψ\|_{S⁺}) = (−1−2)/3 = −1` and `(det F_ψ\|_{S⁺})² = 1`; `det F_ψ = −i` (unitary DFT of order 3); hence `κ_J = det F_ψ/(det F_ψ\|_{S⁺})² = −i` and `W(J) = −iF_ψ`, agreeing with the README's `𝔽₃` worked example | holds; the symbol `W` names the object whose determinant identity the README states | docstring symbol only |
| Docstring line 32, `Ω_{ψ,V}\|_{P ⋉ H(V)} ≅ Ind ((χ ∘ det_I) ⊗ Ω_{ψ,I^⊥/I})` with `Ω_{ψ,·}` the Weil–Heisenberg representation of README §2.4 | `I = 0`; `k = 𝔽₃`, `n = 2`, `dim I = 1` | `I = 0`: `P ⋉ H(I^⊥) = P ⋉ H(V)`, `χ ∘ det_0 = 1`, `Ω_{ψ,0/0}` of the quotient is `Ω_{ψ,V}` itself; `dim I = 1`: index `[P ⋉ H(V) : P ⋉ H(I^⊥)] = \|V/I^⊥\| = 3`, inducing dimension `3^{dim V̄/2} = 3`, `3 · 3 = 9 = 3²` | holds; same dimensions as README §3.3 | docstring symbol only |

## Checks

- **Elaboration.** `lake env lean` on `packages/MetaplecticAutomorphicFormsPartII/Suggested.lean` from the content checkout: exit 0; exactly seven warnings `declaration uses 'sorry'` (lines 79, 91, 116, 130, 201, 223, 256, each four lines below its position at the reviewed head because the header gained four lines), nothing else; no `module` warning, no error. Run again after the header repair with the same result.
- **Signature check.** A scratch copy of `Suggested.lean` with `#check @TauCetiRoadmap.MetaplecticAutomorphicFormsPartII.<name>` appended for all 13 declarations (`heisenbergFactorSet`, `Heisenberg`, `finite_stoneVonNeumann_exists`, `finite_stoneVonNeumann`, `fullyRamified_exists`, `fullyRamified_unique`, `polarizationForm`, `schrodingerOp`, `evenPart`, `IsNormalizedWeil`, `existsUnique_isNormalizedWeil`, `fullyRamified_isotropicInvariants`, `isNormalizedWeil_lagrangian_fixed`) elaborated with exit 0, once after the docstring change and once more after the header repair (the scratch copy carries the same `module` header). The elaborated types were diffed, whitespace-normalized, against the worker's pre-round signature file and against each other: identical. Every theorem keeps `[Fintype k]`, `[FiniteDimensional k V]`/`[FiniteDimensional k X]`, `ringChar k ≠ 2`, `IsAlt`, `Nondegenerate`, `ψ ≠ 1`, `[Finite J]`, normality, invariance and nondegeneracy in its own signature, as the README states them. Nothing changed.
- **Dependency check.** Output:

  ```
  depcheck: 241 roadmaps, 2408 edges, 0 problem(s)
  ```

  No UPWARD, CYCLE or `moved:` line for MetaplecticAutomorphicFormsPartII.
- **README and Lean agreement.** No Lean name was added or deleted; the README's backticked names are unchanged (13 of 13 declared). The README's statements of the determinant identity (§2.2) and the induction formula (§3.3) now use the same symbols as the docstring.
- **Sources.** No source was fetched or added; `sources.toml` is unchanged; no `needs-references.toml` was created.
- **Gate failures listed in the brief:** none.

## Worker repair

The worker's check of the first submission reported one problem: `Suggested.lean` imports `Mathlib` from package `mathlib`, which is designed for use with the module system, with the advice to add `module`. Repaired in place: the file now opens with `module`, the four imports are `public import Mathlib` and the three `public import TauCeti.…` lines (the same three modules as before), and `@[expose] public section` precedes `namespace TauCetiRoadmap.MetaplecticAutomorphicFormsPartII`. Nothing after the namespace line changed. The README does not describe the import form, so it needed no edit. `lake env lean` and the `#check` scratch both elaborate with exit 0 and the seven `sorry` warnings only, and every elaborated type is unchanged (see Checks).

## For the maintainer

- The changes are two docstring lines and the module-system header (`module`, `public import`, `@[expose] public section`) in `Suggested.lean`; no declaration, README target, Check, manifest entry or `design/plan.json` gap changed, so no other roadmap is affected and no cited name changed.
- Ownership against open pull requests was not re-checked this round: no statement was added or changed, so the reviewer's ownership verdict stands.
