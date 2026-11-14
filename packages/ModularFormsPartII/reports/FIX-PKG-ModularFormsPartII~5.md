# FIX-PKG-ModularFormsPartII~5

This round repairs the findings of `REV-PKG-ModularFormsPartII~4`: two P2 findings and one P3. I checked each one against the roadmap's own definitions (§§1.3, 4.1, 7.3, 7.8, 7.9, 7.11), against the QSeriesPartitionsAndMockModularForms §8.4a contract as the README records it, and by direct computation. All three findings are right, and all three are applied.

Files changed:

- `packages/ModularFormsPartII/README.md`
- `packages/ModularFormsPartII/Suggested.lean` (docstrings only; no declaration, binder or statement changed)

`metadata.toml`, `sources.toml` and `design/plan.json` are unchanged. No new source was needed and no `needs-references.toml` was written. The review text contains no instruction aimed at the worker and nothing suspicious.

## REV-PKG-ModularFormsPartII~4/F01 (P2) — applied

§7.11 API: "`L_j^σ` … has the same singular points" → `L_j` descends to `K(x)`; genuine singularities stay in `{0, 1/16, ∞}`; an apparent point α moves to `σ(α)` with a full holomorphic basis; §7.9 runs over K; §7.1 applies to the traces through the least common left multiple of the `L_j^σ`. New Layer 7 Example (`λ − √2`); Needs adds §7.8.

Verification. `f = λ − √2 = 16x − √2` is the identity component of the form induced from `Γ(2)`. That form has weight 0 and a permutation ρ with `ρ(−I) = 1`. f has period 2 and the expansion `−√2 + 16q − 128q² + ⋯`. f is single-valued on `Y(2)`, so its continuation space is `span{f}` and `L = ∂ − 16/(16x − √2)`. The computed residuals are `L f = 0` and `L^σ f^σ = 0` at `x = 0.01, 0.2, −0.3`, while `L^σ f ≠ 0` (for example 9.81 at `x = 0.2`). The apparent poles are `±0.0883883`, not `1/16 = 0.0625`. So the old sentence is false.

Why the new text holds:
- Being regular singular, having no logarithmic term and having integral or rational exponents are all conditions on the local recursions, which are defined over a number field. So σ carries a full basis of power-series or Puiseux solutions at α to one at `σ(α)`.
- Near any point, the solutions of the least common left multiple are sums of the solutions of the `L_j^σ`. So it has a full meromorphic basis at every point of `ℂ ∖ {0, 1/16}`.
- The traces of the witness are `32x` and `−4`.

Pattern search:
- §6.5 claims only that σ fixes the *branch locus* `{0, 1728, ∞}` of the cover defined by `P^σ`, which is correct. Singular points of the plane model that are not branch points may move, and the text does not say otherwise.
- In §7.9, σ fixes the rational series f, so there `L_j^σ = L_j` holds.
- §8.7 uses the `𝓞_K` form of §7.11, and it still holds.

No other occurrence remains.

## REV-PKG-ModularFormsPartII~4/F02 (P2) — applied

Layer 7 Examples: "An eigenvalue that is not a root of unity gives a nonreal exponent" → "μ is nonreal exactly when `|e| ≠ 1`, since `|exp(2πiμ)| = exp(−2π Im μ)`". The `σ(T)` example is kept. A new example shows an infinite-order eigenvalue on the unit circle with a real exponent, realised by an allowed ρ (`ρ(−I) = 1`, `ρ(T)` semisimple).

Verification:
- With `μ = √2 − 1`, `e^m = 1` would force `m(√2 − 1) ∈ ℤ`, which is impossible since √2 is irrational. Numerically, `min_{m<10⁴} dist(mμ, ℤ) = 6.2·10⁻⁵ > 0`.
- With `s = sin(2πμ) = 0.5132884`, `ρ(R)` has trace −1 and determinant 1, and `ρ(R)³ = I` to machine precision.
- `ρ(T) = ρ(S)ρ(R)` has trace `1.0265768i = 2is` and determinant −1.
- The eigenvalues of `ρ(T)` are `−0.8582162 + 0.5132884i = e` and `0.8582162 + 0.5132884i = −ē`, both of modulus 1.0. Their exponents are `0.4142136` and `0.0857864`, with imaginary part 0.

The "iff" is checked both ways. `σ(T)` has `e₊ = 5.1925824` and `Im μ₊ = −0.2621650`; `e₋ = −0.1925824` gives `Im μ₋ = +0.2621650`; the new example gives `Im μ = 0`. Other uses of "root of unity" in the README (§§7.13 and 8.7) concern invertibility of `σ(T)^(2N) − I`. They are correct and unchanged.

## REV-PKG-ModularFormsPartII~4/F03 (P3) — applied

`nonabelian_ihara` docstring: "that is, of geometric level dividing `N`" → "hence of geometric level dividing `N` (the converse holds when `−I ∈ G`…)". The module summary now states the unsigned conjugate containment. README §1.3 gains the `η²`-character-kernel Check, and §4.1 the converse clause. The signature is unchanged.

Verification. Take `χ(T) = exp(πi/6)` and `χ(S) = −i`:
- χ respects the presentation: `χ(S)⁴ = 1` and `χ(S)² = (χ(S)χ(T))³ = −1`, where `(ST)³ = −I = S²` because ST has trace 1.
- The least m with `χ(T)^m = ±1` is 6, and the least with `χ(T)^m = 1` is 12. So `L(ker χ) = 6` but `T⁶ ∉ ker χ`.

My first draft of the §4.1 clause said "the converse holds only when `−I ∈ G`". That is false: `Γ(N)` for `N ≥ 3` excludes `−I` but contains every conjugate of `T^N`. I corrected it to "holds when `−I ∈ G` and can fail otherwise". The Lean docstrings use the same wording.

## Checks

- `lake env lean packages/ModularFormsPartII/Suggested.lean`, run from the content checkout, exits 0. It gives six warnings, all `declaration uses sorry`, at lines 73, 88, 107, 119, 150 and 165. These lines moved by +2 or +3 because the docstrings grew. There are no errors and no lines over 100 characters. The only import is `import Mathlib`, so no Tau Ceti module needed building.
- I put `#check @name` for all nine declarations in one scratch file and elaborated it once: exit 0. Each elaborated type has the same binders and conclusion as the recorded `signatures.md` and as its README statement. `nonabelian_ihara` still has the unsigned `hlevel : ∀ g, g * T ^ N * g⁻¹ ∈ G`, which the corrected docstring now describes accurately. Nothing changed, because only docstrings were edited.
- Dependency check:

```
depcheck: 237 roadmaps, 2148 edges, 0 problem(s)
```

  There is no UPWARD, CYCLE or `moved:` line.
- `roadmaps resolve packages/ModularFormsPartII/README.md` finds no cross-roadmap citation and no Lean name that is missing everywhere.
- There were no gate failures to repair.

## Adversarial pass on the changed statements

| Statement | Instances | Values computed | Result / change |
|---|---|---|---|
| §7.11 API, conjugate singular set (old) | f = 16x − √2, σ(√2) = −√2 | poles √2/16 = 0.08839 vs −0.08839; `L^σ f = 9.81 ≠ 0` at x = 0.2 | Old claim false; replaced |
| §7.11 API, genuine set fixed by σ | same | {0, 1/16, ∞} rational; apparent points ±0.08839 ∉ {0, 0.0625} | Holds |
| §7.11 API, trace route | integral basis 1, √2 | `f + f^σ = 32x` (0.32 at x = 0.01); `√2 f − √2 f^σ = −4.0`; the least common left multiple has solution space span{1, x}, i.e. it is ∂² | Traces under §7.1; conclusion kept |
| §7.11 API, descent to K(x) | K = ℚ (degenerate) | Gal(K/ℚ) trivial; the bullet reduces to §7.9 with `L_j^σ = L_j` | Consistent with the main statement |
| §7.11 API, finite monodromy at 0 over K | f ∈ 𝓞_K[[x]] | conjugates converge, since `L_j^σ` is regular singular at 0; denominators d_n = 1; exponents rational and fixed by σ | G-function, so §7.9 runs over K; added explicitly |
| Layer 7 example, exponent iff | σ(T); new ρ(T); i (μ = 1/4) | `|e₊| = 5.19258`, Im μ = −0.26216; `|e| = 1.0`, Im μ = 0; `|i| = 1`, μ = 1/4 real | Iff holds in both directions |
| New ρ is allowed by §7.3 | s = 0.5132884 | tr ρ(R) = −1, det 1, ρ(R)³ = I; tr ρ(T) = 1.02658i, det −1; eigenvalues distinct (±0.85822 + 0.51329i), so semisimple; ρ(−I) = 1 through PSL₂(ℤ) | Allowed |
| Infinite order on the unit circle | μ = √2 − 1 | min over m < 10⁴ of dist(mμ, ℤ) = 6.2·10⁻⁵; exponents 0.4142136 and 0.0857864 in [0, 1) | Real irrational exponent |
| §1.3 new Check, signed vs unsigned | ker χ, χ = η² character | χ(S)⁴ = 1; χ(S)² = −1 = (χ(S)χ(T))³; least m: 6 for ±G, 12 for G; χ(T)⁶ = −1 | L(G) = 6, T⁶ ∉ G |
| §4.1 clause, converse | Γ(N), N = 3 (no −I); ker χ, N = 6 | Γ(3): all conjugates of T³ lie in Γ(3) and L = 3, so the converse holds without −I; ker χ: L = 6 but T⁶ ∉ G, so it fails | "holds when −I ∈ G and can fail otherwise" (draft "only when" rejected) |
| Lean docstrings for `nonabelian_ihara` | N = 6, p = 5, G = ker χ | p prime, p ∤ 6, N ≥ 3; L(G) ∣ 6 but `hlevel` fails at g = 1 | Docstring now matches the binder |

## For the maintainer

- No Lean name changed, and no section was renumbered or deleted. The section labels that NoncongruenceModularForms cites on main (Layers 1 and 6) are untouched.
- No new construction or target was added. The changes correct one API bullet, one Example sentence and two docstrings, and add one §1.3 Check and two Layer 7 Examples. Ownership against open pull requests therefore has nothing new to compare. The overlap file lists no conflicting revision and no dropped id.
- `design/plan.json` is unchanged. It still carries the owned node `W7/generalized-expansion`, which an earlier repair turned into an import of QSeriesPartitionsAndMockModularForms §8.4a. A later design revision should align that node.
