# FIX-PKG-MixedHodgeModulesAndIrregularHodgeTheory~8

Repair of the findings of `REV-PKG-MixedHodgeModulesAndIrregularHodgeTheory~7` (one review, two findings, both P3). Files changed: `packages/MixedHodgeModulesAndIrregularHodgeTheory/README.md` (§12.2, the SchemeKTheoryOperations supplier contract, the Summary) and `packages/MixedHodgeModulesAndIrregularHodgeTheory/sources.toml` (the `Yu` locator). `Suggested.lean`, `metadata.toml` and `design/plan.json` are unchanged.

## F01 (P3) — applied

Verified. Yu line 1480: the centre `Ξ` is `x = 0 = z`, of codimension two; Yu line 1506: `E` is a `P¹`-bundle over `Ξ`; Yu lines 1533–1537 (Proposition 4.4 (i), (ii)): every quotient is a sum of the relative `O_{E/Ξ}(−1)`. Yu line 1423 (Proposition 4.3) gives the transverse intersection that makes every centre codimension two. The letter `c` in Yu (line 1611, `c = ν − pr`) is an unrelated integer, and §12.2 never defined its own `c`.

Changes in §12.2:

- Theorem: “quotients are sums of `O_E(−μ)` … with `0 < μ < c`” → “the centre `Ξ` has codimension two (… Yu, Proposition 4.3, p. 27), `E` is a `P¹`-bundle over `Ξ`, and the quotients are sums of `O_E(−1)`, whose derived direct images to `Ξ` vanish”.
- Route: “reduces the quotients to `O_E(−μ)`” → “`O_E(−1)`”; “`R(π|_E)_* O_E(−μ) = 0` for `0 < μ < c`” → “`R(π|_E)_* O_E(−1) = 0` (… case `c = 2`, `μ = 1`, `G = O_Ξ`)”.
- Checks 2–3 are replaced by the review's two Checks, and Check 2 now says that a codimension-three centre does not occur.

Pattern repaired elsewhere:

- §12.2, fourth Check: “`O_E(μ)` … `Sym^μ(I/I²)`” → “`O_E(1)` … the conormal sheaf `I/I²`, of rank two”. `μ` was undefined there too.
- Supplier contract “From TauCetiRoadmap.SchemeKTheoryOperations” (§5.7): “`G = O_Z` supplies the vanishing used in 12.2” → “`G = O_Z` with `c = 2` and `μ = 1` supplies the vanishing `Rp_* O_E(−1) = 0` used in 12.2 and 12.9”. There `c` is defined as the codimension. SchemeKTheoryOperations §5.7 states the vanishing for `1 ≤ i ≤ d − 1`, read at its head.
- `sources.toml`, `Yu` locator: it listed five of the ten results cited in the README's References line. It now lists all ten: Lemma 1.6, Theorem 1.7, Corollary 1.8, Theorem 2.2, Theorem 4.1, Corollary 4.2, Proposition 4.3, Proposition 4.4, Lemma 4.5 and Theorem 4.6. Each was confirmed in the text at Yu lines 378, 473, 558, 711, 1397, 1414, 1423, 1533, 1549 and 1663.
- §12.9 already says `O_E(−1)` (CY blows up intersections of two boundary components, also codimension two). No other occurrence of `O_E(−μ)` or `μ < c` remains in the README.

## F02 (P3) — applied differently

Verified. AS line 100 is Theorem 1.4: the mixed statement with `r` auxiliary Laurent polynomials, non-integral exponents `α_{N+j}` and the complement of `Y = {f₁⋯f_r = 0}`. AS lines 583–590 are Theorem 5.1, the torus dimension statement. The References line, §12.6, the Lean docstring and the manifest cite Theorems 4.13 and 5.1. The Summary was the only place that cited Theorem 1.4 (all AS and Yu locators in the README were checked).

The change is Summary “(AS, Theorem 1.4; …)” → “(AS, Theorems 4.13 and 5.1; …)”. It differs from the suggested repair (Theorem 5.1 alone) because the Summary claims concentration as well as volume. Theorem 5.1 states only the dimension in degree `N + r`. The vanishing outside that degree is Theorem 4.13 (AS lines 569–573, `H^l = 0` for `l < d(f)` or `l > p`, with `d(f) = p = N + r` under full dimension, AS lines 588–589). These are exactly the two theorems §12.6 cites. Theorem 1.4 at `r = 0` is not false, since it reduces to Theorem 5.1, but it is a locator the References do not list.

## Check outcomes

- `lake env lean packages/MixedHodgeModulesAndIrregularHodgeTheory/Suggested.lean`, run from the content checkout, gave one diagnostic: `Suggested.lean:146:8: warning: declaration uses sorry`. No error. The file is unchanged this round, and its only import is `import Mathlib`.
- Mechanical binder check: a scratch copy of the file with `#check @name` for all 13 declarations, elaborated once. The elaborated types are as follows.
  - `LaurentRing : ℕ → Type`, and `eulerDerivation`, `twistedEuler` and `twistedDifferential` as `ℂ`-linear maps.
  - `forms`, `cocycles` and `coboundaries : Submodule ℂ (Finset (Fin n) → LaurentRing n)`.
  - `topCohomology : LaurentRing n → Type`, plus `latticePoint`, `newtonPolytope`, `faceEulerEval` and `IsNewtonNondegenerate`.
  - `twistedDeRham_concentration_finrank : ∀ {n} (φ), affineSpan ℝ (newtonPolytope φ) = ⊤ → IsNewtonNondegenerate φ → (∀ r ≠ n, cocycles φ r ≤ coboundaries φ r) ∧ FiniteDimensional ℂ (topCohomology φ) ∧ finrank = n! · (volume (newtonPolytope φ)).toReal`.

  The file has no section variables, so no binder can have been lost. Every type agrees with §§12.4 and 12.6 of the README. Nothing changed.
- Dependency check (`gate --depcheck … --movable`), full output:

  ```text
  depcheck: 223 roadmaps, 1983 edges, 0 problem(s)
  ```

  There is no UPWARD, CYCLE or `moved:` line.
- `roadmaps resolve` on the README: no unresolved cross-roadmap citation and no Lean name found nowhere.
- Style scan of the added lines: no LaTeX delimiter, process word or machine path.

## Adversarial pass on the changed statements

| Statement | Instances | Values computed | Result | Change |
|---|---|---|---|---|
| §12.2: the centre has codimension two and `E → Ξ` is a `P¹`-bundle | `f = z/x` on a surface; `f = z/x` on `A³` with coordinates `x, y, z`; Yu's later steps, centre `Z′ ∩ E` | point, `E = P¹`; centre the `y`-line, `E = P¹ × A¹`; at Yu's chart `a2`, `Z′ = {ū = 0}` and `E = {x = 0}` are transverse, so codimension two | sound | statement replaced |
| §12.2: quotients are `O_E(−1)` and `R(π|_E)_*` of them vanishes | the point in a surface; the `A¹`-family | `H⁰(P¹, O(−1)) = 0`, `H¹(P¹, O(−1)) = H⁰(P¹, O(−1))^∨ = 0`; fibrewise zero, so `Rp_* = 0` by base change | sound | — |
| Wrong twist (Check 3) | `O_E(−2)` on `P¹` | `H¹(P¹, O(−2)) = H⁰(P¹, O)^∨ = ℂ` | excluded | Check replaced |
| Wrong sign (Check 4) | `O_E(1)` with `E = Proj Sym(I/I²)` over a point of a surface | `p_* O_E(1) = I/I² = ℂ²`, `H⁰(P¹, O(1)) = ℂ²` | excluded; agrees with self-intersection `−1` | `O_E(μ)`, `Sym^μ` → `O_E(1)`, `I/I²` |
| Floor recomputation (Check 1, unchanged; agreement) | `z/x` at `z = x = 0` | chart `z = xz′`: `f = z′`; chart `x = zx′`: `f = 1/x′`, so `e = 1` and `e′ = e − 1 = 0`, matching Yu's `P₂ = eA + e′E + rB` (Yu line 1510) | consistent | — |
| Supplier contract SchemeKTheoryOperations §5.7 | `c = 2`, `μ = 1` | `1 ≤ μ ≤ c − 1 = 1` holds; its own statement is `1 ≤ i ≤ d − 1` with conormal `P(J/J²)`, `O_{X′}(1) = O(−E)` | sound | specialised in the contract |
| §12.9 uses the same vanishing | CY's blow-up of the intersection of two boundary components in `A²` | centre a point, `P¹`, `O(−1)`; same values as above | consistent | — |
| Summary: AS Theorems 4.13 and 5.1 | `x` on `G_m`; `x + x⁻¹`; `n = 0` | `1! · vol[0, 1] = 1`; `1! · vol[−1, 1] = 2`; `0! · vol{0} = 1`. Theorem 4.13 gives `H^l = 0` for `l ≠ n` when `d(f) = p = n` | agrees with §12.6 and the Lean headline | locator replaced |

## Ownership

No new object, target or supplier was introduced this round, so no ownership question arises. The one consumed contract I touched, SchemeKTheoryOperations §5.7, was re-read at its open head with `roadmaps show`; it is earlier in the merge order. Its wording (Koszul-regular immersion of pure codimension `d`, conormal convention, vanishing for `1 ≤ i ≤ d − 1`) supports the specialised contract. No declaration of `Suggested.lean` changed.

## For the maintainer

- No Lean name changed, no section was renumbered, and no id other roadmaps cite was dropped.
- The README's `Yu` References line and the `sources.toml` locator now list the same ten results.
- No source was fetched and no `needs-references.toml` was written: every locator used this round is in a cached text (Yu, AS).
- No text in the review asked for anything outside this job.
