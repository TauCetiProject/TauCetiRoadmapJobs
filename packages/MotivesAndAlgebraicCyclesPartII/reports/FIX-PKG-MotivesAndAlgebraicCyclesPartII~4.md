# FIX-PKG-MotivesAndAlgebraicCyclesPartII~4

Repair round for the review `REV-PKG-MotivesAndAlgebraicCyclesPartII~3` (seven findings: F02 at P1; F01, F03, F04, F05 at P2; F06, F07 at P3). All seven were checked against the cached Scholze text, PerfectoidSpaces on main (38a5fb2) and the roadmap's own definitions. All seven are correct and were applied, with no change to the suggested repair beyond what is noted. Only `packages/MotivesAndAlgebraicCyclesPartII/README.md` changed. `Suggested.lean`, `metadata.toml`, `sources.toml` and `design/plan.json` are unchanged. No headline became statable at the pins, no gap was added or removed, and no new source was needed.

## REV-PKG-MotivesAndAlgebraicCyclesPartII~3/F01 (P2) — applied

Verified: Scholze Proposition 3.11 (line 708) needs nondiscrete fields. Example 3.4 (lines 658–661) supplies the analytic cover. For a trivially normed algebraically closed `k`, the residue-field product is `k`, which is not analytic.

Changed: §0.3 now defines `A((T))_{1/2}` (sum norm, `|T| = 1/2`), proves it is an analytic arc-cover (with the route for both point types), excludes the zero ring, and adds three Checks. The §0.5 route goes through the analytic cover, then completed algebraic closures, with the zero ring kept separate. Source correction E9 replaces the closing conventions sentence.

## REV-PKG-MotivesAndAlgebraicCyclesPartII~3/F02 (P1) — applied

Verified: in §4.1, `ℕ[Marc(0)] = 0`, so `id = 0` on the zero ring. An additive functor therefore vanishes there and sends `C × C` to `F(C)²`. The constant presheaf `ℤ/ℓ` does neither.

Changed: in the §4.6 Check, "constant presheaf `ℤ/ℓ`, a multiset of `d` maps acts by `d`" → `F(B) = Hom(ℤ[Marc(B)], ℤ/ℓ)`, the locally constant functions on `M(B)`, with transfers by precomposition. Values: `0`, `ℤ/ℓ`, `(ℤ/ℓ)²`. Finitarity and degree-zero ball invariance are justified. The non-additive constant presheaf is now named as a non-example. The Artin–Schreier part is unchanged.

## REV-PKG-MotivesAndAlgebraicCyclesPartII~3/F03 (P2) — applied

Verified: after trivializing `L`, the band `lim_n L` has coordinate ring `colim R[x_n]` (`x_n ↦ m x_{nm}`) `= R[t/n] = R ⊕ tℚ[t]`, with `R = ℤ[1/p]`. `ℤ/2` at `p = 3` is a nonzero representation with `ℤ/2 ⊗ ℚ = 0`.

Changed: §11.6 route, "the band is a rational vector group, so the relevant representations are rational" → the integral Hopf algebra `R ⊕ tℚ[t]`, with an integral underlying object, `N` the degree-one term and `N^d/d!` only in rational positive degrees. New Checks: `(ℤ/2, 0)` at `p = 3`, and Tor amplitude. The same rationalizing phrase in §11.5 was also replaced.

## REV-PKG-MotivesAndAlgebraicCyclesPartII~3/F04 (P2) — applied

Verified: for `T² − 1` over `ℂ₂`, `a₁ = 0`. The printed minimum includes `|a₀|/0`, and total division gives `0` against the true value `1`. Reversing the polynomial gives the smallest root norm as the minimum over `1 ≤ i ≤ n` with `a_i ≠ 0`.

Changed: in the §3.5 route, `max_i`/`min_i` → `n ≥ 1`, `a_n = 1`; largest = `max_{0≤i<n} |a_i|^{1/(n−i)}`; smallest = `min_{1≤i≤n, a_i≠0} (|a₀|/|a_i|)^{1/i}` (nonempty, contains `n`; `a₀ ≠ 0` by the annulus hypothesis). New Checks: `T² − 1` (1, not 0), `n = 1` (`|a₀|`), and the min-versus-max witness.

## REV-PKG-MotivesAndAlgebraicCyclesPartII~3/F05 (P2) — applied

Verified: with `f = g ∘ h`, the unit `ℤ → h_* ℤ` gives `g_* ℤ → f_* ℤ`. For one point included into two, this map is `(a, b) ↦ a`. Scholze line 2453 prints the reverse arrow.

Changed: §11.1 names `h`, proves the pullback `g_* ℤ → f_* ℤ` an equivalence, and defines the augmentation as its inverse followed by evaluation at `1`. The route uses the pullback and `End(ℚ(−1)) = ℚ`; §10.5 joins Needs. Added: a two-point Check and correction E8. §10.3's "identifies" now names the pullback direction.

## REV-PKG-MotivesAndAlgebraicCyclesPartII~3/F06 (P3) — applied

Verified: on main, `TauCetiRoadmap/PerfectoidSpaces/README.md` has §P2.3 "rational localisation of perfectoid affinoids" at line 6235 and §P2.13 "completed tensor products of perfectoid pairs" at line 7391. §P2.13 covers perfectoid Tate `A`, `B`, `C` of any characteristic: perfectoid, uniform, pushout, and compatible with tilting.

Changed: in the §0.5 Needs and the Layer 0 Dependencies, §P2.3 → §P2.13. The PerfectoidSpaces contract gains a §P2.13 entry with these hypotheses and conclusions, including the identity instance. §P2.3 stays where rational localization is used (§7.3 and the Layer 7 dependencies).

## REV-PKG-MotivesAndAlgebraicCyclesPartII~3/F07 (P3) — applied

Verified: §4.9 and §7.4 had no API or Checks. §4.9's `X♭` is used again in §8.3, and `E_KH` in §§7.5–7.6.

Changed: §4.9 gains an API (functoriality, fibre products and colimits, `Marc(A)♭ ≃ Marc(A♭)`) and Checks (initial stack, a perfect field its own tilt, `ℂ_p` versus `ℂ_p♭`). §7.4 gains an API (functoriality, unitization independence, `E_K → E_KH`) and Checks (`ℚ_p`, `C`, `C × C′`, the zero ring). The `E_K` comparison is scoped to §7.1's class.

## Checks run

- `lake env lean packages/MotivesAndAlgebraicCyclesPartII/Suggested.lean`, run from the content checkout at the pins: exit 0, no output, no warnings. No `TauCeti.*` import was needed, so nothing was built.
- `#check @name` comparison: `Suggested.lean` declares nothing (one `import Mathlib`, the module docstring and an empty namespace), so there is nothing to elaborate and no binder can drop. The file is unchanged. Its docstring names the same headline families, and none of the repairs touched a carrier it lists as missing.
- Dependency check (`gate --depcheck … --movable`), full output:

```text
depcheck: 236 roadmaps, 2153 edges, 0 problem(s)
```

  It printed no UPWARD, CYCLE or moved line. The edge count went from 2152 to 2153 because the PerfectoidSpaces citation now names §P2.13 as well as §P2.3. Both sections are on main.
- `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere.
- Style greps on the README: no `$` or `\(` delimiters, no machine paths, and no job or pull-request references.
- Gate failures listed in the brief: none.

## Adversarial pass on changed statements

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| §0.3 `A → A((T))_{1/2}` is an arc-cover and analytic | trivially normed `k`; `ℂ`; zero ring | `k((T))_{1/2}` has one point (the `T`-adic norm, `|T| = 1/2`), so its residue field is nondiscrete. At an archimedean point, `z` with `|z|^α = 1/2` gives `|Σ f(a_n) zⁿ|^α ≤ Σ |a_n| 2^{−n}`. The zero ring gives `0`. | Holds; the zero ring is excluded and covered by the empty family. |
| §0.3 sum norm is a ring norm | `f = 1 + 2T` over `ℂ` | Sup norm: `|f| = 1`, `|f²| = max(1, 2, 1) = 2`, so not submultiplicative. Sum norm: `|f| = 2`, `|f²| = 4 ≤ 4`. | Sum norm kept; sup-norm control added as a Check. |
| §0.3 residues of `A((T))_{1/2}` nondiscrete | any point `y` | Multiplicativity gives `|T|_y |T⁻¹|_y = 1`; with `|T| ≤ 1/2` and `|T⁻¹| ≤ 2` this forces `|T|_y = 1/2`. | Holds. |
| §0.5 strict cover | zero ring; `k` trivial; `ℝ` | `M(0) = ∅`, so the zero ring is strict. For `k`: closure of `k((T))` gives a one-point algebraically closed nondiscrete field. For `ℝ`: `ℝ((T))_{1/2}` residues are `ℂ`-valued after closure, with nondiscrete norm. | Holds through Proposition 3.11(iv). |
| §4.6 additive `F` | `0`, `C`, `C × C`; multiset of degree `(1, 2)` on `C × C` | `F(0) = 0`, `F(C) = ℤ/ℓ`, `F(C × C) = (ℤ/ℓ)²`; the multiset acts by `(1, 2)` componentwise. The constant presheaf gives `ℤ/ℓ`, `ℤ/ℓ`, `ℤ/ℓ`. | Additive object; constant presheaf named as a non-example. |
| §4.6 ball invariance of `F` in degree 0 | `B = C`; `B = C × C` | The closed discs `M(C⟨T⟩₁)` are connected and the zero section exists, so `F(B⟨T⟩₁) = F(B)`: `ℤ/ℓ` and `(ℤ/ℓ)²`. `H¹` contains the class of `T` on `C⟨T⟩₁` but is `0` on `C`. | Hypotheses hold and the conclusion fails, so primes with `|ℓ| < 1` must be inverted. |
| §3.5 largest and smallest root norms | `T² − 1` over `ℂ₂`; `T + a₀`; `T² + T/2 + 4` | `T² − 1`: max `= max(1, 0) = 1`, min over `{2}` `= 1`. `T + a₀`: both `|a₀|`. Third polynomial: max `= max(1/2, 2) = 2`, min `= min(1/8, 1/2) = 1/8`, and the product `1/4 = |a₀|`. | Formulas with index sets agree with the roots. |
| §3.5 criterion | `T² + T/2 + 4`, `r₁ = 1/4`, `r₂ = 4` | Bound `min(4, 1) = 1 < |a₁| = 2`, so the polynomial is excluded; the root `1/8 < r₁`. | Consistent with E5. |
| §11.1 comparison direction | one point into two points | `g_* ℤ = ℤ² → f_* ℤ = ℤ`, `(a, b) ↦ a`; no map `ℤ → ℤ²` is induced. | Pullback direction stated; inverse used for the augmentation. |
| §11.1 cofibre endomorphism | `End(ℚ(−1)[−1])` over discrete `k` | Equals `K₀(k)_ℚ^{(0)} = ℚ` by §10.5 (`X = Spec k`, `j = 0`); nonzero, hence invertible. | Route closed; §10.5 added to Needs (earlier layer). |
| §11.6 Hopf algebra | colimit of `R[x_n]` | `x_1 = n x_n` gives `R[t/n : n ≥ 1]`: degree 0 is `R`, degree `d ≥ 1` is `ℚ t^d`, so `R ⊕ tℚ[t]`. | Integral constant term confirmed. |
| §11.6 integral object | `ℤ/2`, `p = 3` | `ℤ/2 ⊗ ℚ = 0`, so the coaction is `id ⊕ 0` and the pair is `(ℤ/2, 0) ≠ 0`. | Check added. |
| §11.6 Tor amplitude | counit `R ⊕ tℚ[t] → R` | The ring is torsion-free, hence flat over `ℤ[1/p]`. The ideal `tℚ[t] ≅ ℚ[t] = H ⊗ ℚ` is flat over `H`. | Amplitude `[−1, 0]`, matching AnalyticStacks §1.5. |
| §11.5 cohomology of the band | cobar complex of `R ⊕ tℚ[t]` | Degree 0: `R` (differential `0`). Degrees `≥ 1`: equal to the `ℚ`-cobar complex of `𝔾_a`, giving `ℚ` in degree 1 and `0` above. | `O` in degree 0 and `L^∨ ⊗ ℚ` in degree 1, as stated. |
| §4.9 tilt | initial stack; perfect characteristic-`p` `K`; `ℂ_p` | Initial → initial. `Marc(K)♭ = Marc(K)`, since a characteristic-`p` untilt of `R` is `R`. `Marc(ℂ_p)♭ = Marc(ℂ_p♭)`, while the naive restriction is empty. `μ_n(ℂ_p) ≅ μ_n(ℂ_p♭)` because `|ζ − 1| = 1` for `ζ ≠ 1` of order prime to `p`. | Definition determines its object; naive model excluded. |
| §7.4 `E_KH(ℚ_p)` | `p = 2, 3` | `KH(pℤ_p)` has `π₀ = π₋₁ = 0`, so cofibre `π₀ = ℤ`. Fibre `π₀ = ℚ_p^×/(1 + pℤ_p) = ℤ × 𝔽_p^×` (`= ℤ` for `p = 2`, `ℤ × ℤ/2` for `p = 3`). | Cofibre orientation pinned. |
| §7.4 fields and products | `C`; `C × C′`; zero ring | `π₀ E_KH(C) = ℤ`, rationally `ℚ`. Product: `ℚ²`. Zero ring: `0`. | Holds; finite products preserved. |
| §7.4 `E_K` comparison scope | `ℚ_p` (totally disconnected, outside §7.1) | `E_K(ℚ_p)` is undefined in §7.1, since `I/I² = 𝔽_p`. | Statement restricted to the class of §7.1. |

## Ownership and citations

- PerfectoidSpaces §P2.13 was checked on main at line 7391, with its hypotheses read: complete Huber pairs, perfectoid Tate rings, any characteristic.
- The new APIs for `X♭` and `E_KH`, and the integral Hopf-algebra description in §11.6, belong to objects this roadmap already owns. AnalyticStacks assigns the monodromy identification here, and the comodule carrier stays AnalyticStacks §1.5. No new construction that another roadmap could own was introduced.
- No supplier gap was added.
- The overlap file lists no conflicting heads and no dropped ids.

## Notes for the maintainer

- No Lean name or cross-roadmap-cited id changed. Layer and section numbering is unchanged.
- Source issues are recorded under "Corrections to the source":
  - E8: Scholze line 2453, the arrow `f_* ℤ → g_* ℤ` should be `g_* ℤ → f_* ℤ`.
  - E9: Scholze Example 3.6, line 672, the residue-field product is called totally disconnected without the analytic reduction of Example 3.4.
- No source was fetched and `needs-references.toml` was not written. All locators are in the cached Scholze text, and BLR stays settled as `uncertified`.
- No passage of the review text was treated as an instruction. Nothing suspicious was found in it.
