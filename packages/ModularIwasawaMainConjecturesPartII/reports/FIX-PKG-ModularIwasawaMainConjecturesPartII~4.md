# Repair of ModularIwasawaMainConjecturesPartII (package, round 4)

This round answers the six findings of the review `REV-PKG-ModularIwasawaMainConjecturesPartII~3`. Each one was checked against the cited sources and the supplier roadmaps, and all six are applied. Only `packages/ModularIwasawaMainConjecturesPartII/README.md` changed. `Suggested.lean`, `sources.toml`, `metadata.toml` and `design/plan.json` are unchanged: no new source is cited and no new supplier gap is needed.

## F01 (P1) — applied

Verified. For `p = 5` and `g = (2+T)/ω(2)`, the old operator `(1 − φ/5)·D log g` has constant term `2/5` and translate sum `2`, so it is not a measure. The suppliers use `H((1 − φ)Δ f_u)`: ColemanPowerSeries §§2.37, 2.39, 2.44 and IntegralIwasawaTheory §7.2. NoncommutativeAndEquivariantIwasawa §4.3 extends that normalized map to `Ê`.

Old → new in §5.1:
- The operator `(1 − φ_F/p)D_θ log` becomes `col_θ : U_Φ → Ô[[ℤ_p^×]]`, `col_θ(u) = −x⁻¹·μ_u`, where `μ_u` has Amice transform `(1 − φ_F)D_θ log g_u`. Equivalently the transform of `col_θ(u)` is `−(1 − φ_F/p) log g_u`, which is shown integral.
- A change of `θ` now multiplies the map by a group element, not by `a`.
- The Λ-linearity bullet is rewritten. There is a new normalization Check.
- §5.2 gets the moment formula.
- The supplier contracts, the *Needs:* lines and the Dependencies are updated.

## F02 (P2) — applied

Verified against Rubin91 lines 638–648 (Theorem 5.1(ii)). There `(U_∞)_torsion` means Λ-torsion; see line 600.

Old → new in §5.1:
- "`U(F′)` has `ℤ_p`-torsion" becomes "the `Λ_{F′}`-torsion submodule of `U(F′)`". It is now described as free over `ℤ_p` and killed by `σ − χ_cyc(σ)`. The quotient is by that submodule.
- Pattern: "`U_∞` has no `ℤ_p`-torsion" becomes "its Λ-torsion submodule is zero".
- The negative-control Check adds that the `n = m` component of `u^{5^m}` is `ζ_5 ≠ 1`. Its `κ` is renamed `χ_cyc`.

## F03 (P2) — applied

Verified against JLK lines 590–598 (Definition 3.2, which takes `a` prime to `6p`).

Old → new in §2.4:
- "For general `m` prime to `a`" becomes "fix `p` and `a` prime to `6p`". `r` now satisfies `O_K^× ↪ (O_K/p^r)^×`.
- The text explains why `α ∉ E[a]`. Independence of `r`, the norm relation and the `ζ_m` independence statement (JLK Proposition 3.3(3)) now carry the hypothesis.
- New negative-control Check with `a = (5)` against `a = (7)`.
- Pattern: §3.2 now states `a` prime to `6pf`, `m ≥ 1` and the pair `(E, α_m)` (Kato line 5480). Its weight-two Check is restricted the same way.

## F04 (P2) — applied

Verified against Kato lines 5399, 5402, 5426 and 5434. The last of these pulls back through the quotient isogeny `E → E/aE`.

Old → new in §3.1:
- `ψ(a)⁻¹(η_a^*)^{⊗r} ∘ σ` becomes `ψ(a)⁻¹(J_a^*)^{⊗r} ∘ σ_*`, with `q_a : E → E/aE` and `J_a = η_a ∘ q_a`. This applies in both the étale and the de Rham actions.
- The tensor bases are stated: `K`, `K ⊗ ℚ_p` and `K(f)`.
- New Check: `K = ℚ(i)`, `f = (1+i)³`, `a = (5)`. Then `J_a = [5]`, and the action is `(1/5)·5·σ_* = σ_*`.

## F05 (P3) — applied

In the Layer 2 Examples, "`a = (7)` (split, norm 7)" becomes "the prime `a = (2 + √−3)` above 7, of norm `2² + 3 = 7`". The text adds that `(7) = a·ā` has norm 49, with factor `49 − σ_{(7)}`.

## F06 (P3) — applied

The §1.1 Check is replaced. It now uses `K = ℚ(i)`, `p = 5`, `O = ℤ_5 ∋ i` and an order-four `χ` with `χ(g) = i`. The correct factor is `χ(g)⁻¹ = −i`; the opposite convention gives `+i`, and the two differ by the unit `2i`. The quadratic case is kept, labelled as checking agreement only.

## Checks run

- **Elaboration.** `lake env lean packages/ModularIwasawaMainConjecturesPartII/Suggested.lean`, run from the content checkout: exit 0, no output. No `TauCeti.*` module needed building.
- **`#check` audit.** `Suggested.lean` declares nothing, and its docstring still names the missing carriers, including the two-variable Coleman map. There are no declarations to `#check`, so the audit is empty and changes nothing.
- **Dependency check.** `gate --depcheck … --movable` printed `depcheck: 236 roadmaps, 2151 edges, 0 problem(s)`: no UPWARD, CYCLE or moved line.
- **Citations.** `roadmaps resolve` on the README found no cross-roadmap citation or Lean name missing anywhere.

## Adversarial mathematics pass (changed statements)

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| `col_θ(u) = −x⁻¹μ_u`; integrality and support | `p = 5`, `G = (2+T)/ω(2)`, `h = (1+T)/(2+T)` | `(1−φ)h(0) = 0`; `ψ((1−φ)h) = h − h = 0`; mass `−(1/5)log 16 ∈ ℤ_5^×` | Integral and supported on `ℤ_5^×` |
| Old operator `(1 − φ/p)h` | same | constant `2/5`; translate sum `4φ(h)`, which is `2` at 0 | Rejected (F01) |
| Equivalence with `−(1 − φ_F/p) log g_u` | `Dφ = pφD` | `D(1 − φ/p)log G = (1 − φ)D log G`; `ψ(log G) = p⁻¹ log G`; `log(1 + 2y)` has `v_2(2ⁿ/n) ≥ 1` | Holds at every `p`, including 2 |
| Moments `∫xʳ dcol = −(1 − p^{r−1}φ)(D_θʳ log g_u)(0)` | `r = 1, 2` on the example | `−(1/2 − 1/2) = 0`; `−(1/4 − 5/4) = 1` | Agrees with the Check |
| Λ-linearity | `σ` with `κ(σ) = 2` | first moments `−4` (unnormalized) against `−2` (`σ·μ_u`); after `x⁻¹`, second moments `4 = 4` | Holds only with `x⁻¹` |
| Dependence on `θ`, `ξ` | `θ ↦ θ∘[a]`, `ξ ↦ [b]ξ` | `G ↦ G∘[a]`, `D_{θ∘[a]} = aD_θ`, so `col ↦ σ_a·col`; `ξ` change gives `σ_{b⁻¹}` | Group elements, units of `Λ_Ô` |
| Case `F = Ĝ_m` against suppliers | CPS §2.37/§2.39 at `p = 3`, `c(2)` | `Col₀(x²) = (1−3)/4 = −1/2`, `Col = +1/2`; our formula gives `+1/2` | Same sign as `Col` |
| `U(F′)` torsion | `u = (ζ_{5^{n+1}})` | `5ᵐ·u` at `n = m` is `ζ_5 ≠ 1`; `(σ − χ_cyc(σ))u = 0`; `N(ζ_25) = ζ_25^{55} = ζ_5` | Λ-torsion, not `ℤ_5`-torsion |
| Two-variable `U_∞` (Γ = `ℤ_p²`) | Rubin91 line 641 | `(U_∞)_torsion = 0` | Statement strengthened to Λ-torsion |
| `a ζ_m` needs `a` prime to `6p` | `ℚ(i)`, `p = 5`, `m = 1`, `r = 1`, `a = (5)` | `α ∈ E[5]`; coefficient `−1`; value `0`, norm `0` | Hypothesis added |
| Same, admissible ideal | `a = (7)` | `E[5] ∩ E[7] = 0`; value in `K^×` | Defined |
| Same, standard unit | `a = (5)`, `f = (3)` | `Ann(α) = (3)`, so `α ∉ E[5]` | Unaffected |
| `μ_4 ↪ (O_K/5)^×` | `i ↦ (i mod 𝔭, i mod 𝔭̄)` | order 4 in `𝔽_5^× × 𝔽_5^×` | `r = 1` allowed |
| §3.2 auxiliary ideal | `g = p^m f₀`, `m ≥ 1` | `α_m ∈ E[a]` iff `g ∣ a`, which is impossible for `a` prime to `p` | Hypothesis added |
| §3.1 action with `J_a` | `ℚ(i)`, `(1+i)³`, `r = 1`, `a = (5)` | `5 − 1 = −(1+i)⁴`, so `5α = α`; `J_a = [5]`, `J_a^* = 5`, `ψ((5)) = 5`; action `1·σ_*` | Matches `a = O_K` |
| §3.1 without `ψ(a)⁻¹` | same | `5σ_*` | Excluded by independence of `a` |
| §3.1 tensor dimensions | Betti over `K` against over `ℚ` | `1` against `2ʳ` | Unchanged |
| Layer 2 split prime | `ℚ(√−3)`, `(2+√−3)` | `4 + 3 = 7`; `(7) = a·ā` of norm 49; `−3 ≡ 4 = 2² (mod 7)`; `−3 ≡ 2 (mod 5)` is a non-residue | 5 inert, 7 split |
| §1.1 twist convention | `χ(g) = i` in `ℤ_5` | correct `−i`, wrong `+i`, difference `2i ∈ ℤ_5^×` | Discriminates |
| §1.1 twist, quadratic case | `χ(g) = −1` | `−1` on both sides | Agreement only, kept as such |

## Ownership and overlaps

The local Coleman map for the height-one formal group of a CM curve, over any `K` and any class number, is already owned by this roadmap (Scope, Layer 5). A search of the open heads found no other owner:

- ColemanPowerSeries and IntegralIwasawaTheory own only the cyclotomic case.
- NoncommutativeAndEquivariantIwasawa §4.3 owns the case of a rational CM curve at `p ≥ 5`, and is cited with the stated difference. Its `Col_𝔣` uses the same normalization as the repaired map.

The newly cited sections were each read at their open-pull-request heads: IntegralIwasawaTheory §§7.1–7.2, ColemanPowerSeries Layer 1 and §§2.37, 2.39, 2.44. PadicMeasuresIwasawaAlgebras §§2.1–2.3, 2.6, 2.8 were read on main. Both open-head roadmaps add new roadmap folders and come earlier in the merge order. The overlap report lists no conflicting head and no dropped id.

## For the maintainer

- No section, target or Lean name of this roadmap was renamed or removed. The new symbols `col_θ` and `U_Φ` are notation inside §5.1, not Lean names.
- The review's "Source issues" list is not a set of findings and needs no edit here.
