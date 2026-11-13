# Repair report: MixedHodgeModulesAndIrregularHodgeTheory

I checked the three findings of REV-PKG-MixedHodgeModulesAndIrregularHodgeTheory~5 against Kash86, Sai90, the README's own conventions and direct computation. All three are correct.

- F01 and F02 are applied as asked.
- F03 is applied with one change to the reviewer's replacement example. Its descent formula is restated for this roadmap's monodromy convention, for the reason given below.

Only `packages/MixedHodgeModulesAndIrregularHodgeTheory/README.md` and two locator/`cited_for` strings in `sources.toml` changed. `Suggested.lean`, `metadata.toml` and `design/plan.json` are unchanged, and no new supplier gap was needed.

## F01 (P2) — applied

§3.3: discs "sending the punctured disc into `S`" → admissibility relative to `(S̄, S)`, testing `φ : Δ → S̄` with `φ(Δ^*) ⊂ S`. A smooth variety uses a compactification `S̄` (Nagata; SNC projective via ResolutionOfSingularitiesCharacteristicZero §6.2), with independence proved. The locality bullet is split, and the `A²` Check and a §5.6 Check are added.

**Evidence.** Kash86 §1.9, p. 994 (Kash86 lines 103–107) defines admissibility for a pair `X* ⊂ X` by maps `D → X` with `D*` sent into `X*`. Kash86 §0.2 (lines 24–26) defines the curve test in `X`. Sai90 Theorem 3.27, p. 312 (Sai90 lines 3080–3086) speaks of admissible variations "on U relative to X". Its Remark, p. 313 (lines 3127–3134), gives the algebraic case for any completion.

I recomputed the reviewer's witness:

- **Interior.** On `A²`, `F⁰ = O(e₀ + x e₁)` gives `∇(e₀ + x e₁) = e₁ dx ∈ F^{−1}`. The graded pieces are `ℚ(1)` and `ℚ(0)`.
- **At infinity.** Along `s ↦ (1/s, 0)` in `P¹ × P¹`, the saturation is `O(s e₀ + e₁)`, with fibre `ℂe₁`. The induced `F⁰` dimensions on (`gr_{−2}`, `gr_0`) are (1, 0), but the constant graded limits need (0, 1). Condition (a) fails.
- **Control.** `F⁰ = O e₀` gives (0, 1) and passes.

Independence of the compactification follows Kash86 Proposition 1.10.1 and its proof, p. 995 (lines 135–146). Two compactifications are dominated by the closure of `S` in their product. A test disc lifts through a proper map that is an isomorphism over `S`. The closure of the graph of `φ|Δ^*` is a curve, proper and of degree one over `Δ`, so it is the graph of a holomorphic map.

The old API bullet said "Admissibility is local on the base". It is now three facts:

- admissibility is local on `S̄`;
- it is Zariski-local on `S` when each `U_i` is tested in its own compactification, because a test disc meets `S̄ ∖ U_i` discretely for some `i`;
- it is not local for the analytic topology of `S`, since on a ball every disc has its centre inside.

## F02 (P1) — applied

§1.4 "only where `N_φ = 0`" → "exactly when `var ∘ N_φ = 0`, in particular when `N_φ = 0`", with the proof. §4.2 "only where `N_φ = 0`" → "exactly when `x ∘ N_φ = 0`". Added an API bullet, a `j_!` Check and a `j_*` value in §1.4, and a `D/D(x∂_x)²` Check and a log-example value in §4.2.

**Evidence.** Write `(exp(2πiu) − 1)/u = 2πi + u·h(u)` with `h(0) = (2πi)²/2`. Then `var_top − 2πi·var = var ∘ N_φ ∘ h(N_φ)`, and `h(N_φ)` is invertible and commutes with `N_φ`.

- **`j_! L[1]`, `T = 1 + 2πiB`, `B² = 0 ≠ B`.** Here `can = 1`, `var_top = 2πiB`, `N_φ = B` and `var = B(1 − πiB) = B`. So `var_top = 2πi·var` while `N_φ ≠ 0`, and `var ∘ N_φ = B² = 0`.
- **`Rj_* L[1]`.** Here `var_top = 1`, `can = 2πiB` and `var = (2πi)⁻¹(1 − πiB)`. So `var ∘ N_φ = (2πi)⁻¹B ≠ 0` and `2πi·var ≠ var_top`.
- **D-module side, `D/D(x∂_x)²`.** `x^k m_i` lies in `gr^V_{−k}` and `∂^k m_i` in `gr^V_k`. `can` is an isomorphism, `N_φ(∂m_1) = −∂m_0` and `x ∘ N_φ = 0`.
- **The log example.** `x N_φ(x⁻¹e_1) = −e_0`, and `var_top(x⁻¹e_1) = −2πi e_1 − 2π² e_0`.

## F03 (P3) — applied differently

§3.3, §4.6 Checks with `W_1 = ℚ²` and pure graded pieces → rank-three `V = H ⊕ ℚe`, `H` of weight −1, `J e = a`, `F⁰(z) = span(a + ib, e − z a)`. Condition (a) holds; (b) fails, since `M = W` is forced and `N e ≠ 0`. §4.6 puts it on `G_m` with the parity obstruction.

**Why the finding is right.** `gr^W_1` would be a one-dimensional rational Hodge structure of weight 1. Odd weight forces `h^{p,q} = h^{q,p}` with `p ≠ q`, so the dimension is even. LefschetzPencilsAndVanishingCycles §1.5 uses that example only as filtered linear algebra, which is valid there.

**Why "differently".** The reviewer's formula `F⁰(z) = span(a + ib, e + z a)` with `F⁰(z + 1) = T F⁰(z)` uses Schmid's convention. This README fixes `T` as positive-loop transport of horizontal sections, with `T = exp(−2πi·Res)` (Conventions; ComplexComparisonPartII §C5.6).

- Horizontal sections are `t^{−Res}c`. So a single-valued section's flat coordinates satisfy `c(z + 1) = exp(2πi·Res)c(z) = T⁻¹c(z)`, and the descent condition is `F(z + 1) = T⁻¹F(z)`.
- The example is therefore stated with `e − z a`: `T⁻¹(e − z a) = e − (z + 1)a`.
- In the canonical-extension frame, `exp(zJ)F⁰(z) = span(a + ib, e)` is constant, so (a) holds.

The Check says that ShimuraVarieties §3.5b.1's `Φ̃(z + 1) = T_jΦ̃(z)` has `T_j = T⁻¹`.

**The remaining values check out:**

- the polarization `i·Q(a + ib, a − ib) = 2 > 0`;
- the forced filtration `M_{−2} = 0`, `M_{−1} = H`, `M_0 = V`;
- the Kummer contrast: weights −2 and 0, where `M = W` works.

## Same pattern elsewhere

- **F01, admissibility on a base of dimension > 1.**
  - §4.6 already requires "an admissible variation (3.3)" on a dense open of each support plus extendability at a good compactification; it now reads with the repaired 3.3, and no edit was needed.
  - §5.6 now says the admissibility is tested at the boundary of a compactification of `X`. It gains the one-variable Check `F⁰ = O(e₀ + x e₁)` on `A¹`: the fibre class is `x ∈ ℂ/ℚ`, split at 0 and nonsplit at `i`. The variation is excluded at `∞`.
  - The Layer 3 introduction, the Layer 3 Dependencies, two Scope bullets and the EtaleCohomologyFoundations contract name the compactification inputs.
  - §§3.4 and 4.4 and the Legendre example are curve statements, already tested at the punctures.
- **F02, a necessary condition stated where only a sufficient one holds.**
  - Conventions (line 49) states only `var ∘ can = N`, `can ∘ var = N_φ` and the `gr^V` identifications.
  - §5.3 states only the normalized composites, and §5.4 uses only the image of `var`.
  - No other "only where" or `2πi·var` claim exists.
- **F03, impossible Hodge realizations of linear-algebra examples.** I searched for odd-weight rank-one graded pieces (`W_1 = ℚ²`, `N(e₁) = e₀`, `ℚe₀`). The two Checks were the only occurrences. The remaining relative-monodromy Checks are Kummer (weights −2, 0, ranks 1, 1) and Legendre (weights 0, 2), and both are realizable.

## Check outcomes

- **Elaboration.** `lake env lean packages/MixedHodgeModulesAndIrregularHodgeTheory/Suggested.lean`, run from the content checkout, exited 0. The only diagnostic was ``Suggested.lean:146:8: warning: declaration uses `sorry` ``. The file is unchanged; it imports only `Mathlib`, so no TauCeti module needed building.
- **Signatures.** I put `#check @name` for all 13 declarations into one scratch copy and elaborated it once (exit 0). The types are as before:
  - `twistedDeRham_concentration_finrank : ∀ {n} (φ : LaurentRing n), affineSpan ℝ (newtonPolytope φ) = ⊤ → IsNewtonNondegenerate φ → (∀ r, r ≠ n → cocycles φ r ≤ coboundaries φ r) ∧ FiniteDimensional ℂ (topCohomology φ) ∧ ↑(finrank …) = ↑n.factorial * (volume (newtonPolytope φ)).toReal`;
  - the 12 definitions have the binders of §12.4.

  No section `variable` exists, and nothing changed.
- **Dependency direction** (full output):

  ```text
  depcheck: 206 roadmaps, 1908 edges, 0 problem(s)
  ```

  There is no UPWARD, CYCLE or moved line. The newly cited inputs, EtaleCohomologyFoundations §§G.1–G.2 and ResolutionOfSingularitiesCharacteristicZero §6.2, are on main and were already suppliers.
- **Citations.** `roadmaps resolve` on the README reports nothing unresolved. I checked the new uses on main:
  - EtaleCohomologyFoundations `Suggested.lean:155` `nagataCompactification` and README §G.2, line 105;
  - ResolutionOfSingularitiesCharacteristicZero README §6.2, line 893 (a smooth quasi-projective `U` has a smooth projective SNC compactification);
  - ShimuraVarieties §3.5b.1, at its open head, states `Φ̃(z+e_j,w) = T_jΦ̃(z,w)` and `N_j = log T_j`.
- **Sources.** The new locators are:
  - Kash86 §0.2, p. 991 (lines 24–26), and Proposition 1.10.1, p. 995 (lines 135–146);
  - Sai90 Theorem 3.27, p. 312 (lines 3080–3086), and its Remark, p. 313 (lines 3127–3134).

  These locators were added to the existing manifest entries, and Sai90's `cited_for` gains Layer 3. Nothing was fetched or requested, and no `needs-references.toml` was written.
- **Ownership.** No new object is introduced. Admissibility stays in this roadmap's Layer 3. A `roadmaps grep` for "admissible variation" over main and the open heads, plus the board packages, finds only the consumer TopologicalMirrorSymmetryForHitchinSystems, which cites the former id H.0/mixed-hodge-module (= §4.6, unchanged).
- **Gate failures.** The brief lists none.

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| 1.4: `var_top = 2πi·var` ⇔ `var∘N_φ = 0` | `j_!`, `Rj_*` (rank 2, `B²=0`); `ℚ_{A¹}[1]`; `δ_0V`; `K = 0` | `j_!`: `var_top = 2πiB = 2πi·var`, `var∘N_φ = B² = 0`, `N_φ = B ≠ 0`. `Rj_*`: `var∘N_φ = (2πi)⁻¹B`, `2πi·var = 1 − πiB ≠ 1`. `ℚ[1]`: `φ = 0`. `δ_0V`: `ψ = 0`, `var = 0`. `K = 0`: all zero. | Criterion holds in every case; "only where `N_φ = 0`" fails for `j_!`. |
| 1.4 `j_!` Check, composites | `j_!` above | `var∘can = B = N`, `can∘var = B = N_φ`, `var_top∘can = 2πiB = T − 1` | Consistent with 1.4's identities. |
| 4.2: `−2πi x` ⇔ `x∘N_φ = 0` | log example `Ae_1 = e_0`; `D/D(x∂_x)²`; `O`; `δ_0` | Log: `xN_φ(x⁻¹e_1) = −e_0`, `var_top(x⁻¹e_1) = −2πi e_1 − 2π² e_0`, `var_top(can e_1) = −2πi e_0 = (T−1)e_1`. `D/D(x∂_x)²`: `N_φ∂m_1 = −∂m_0`, `x∘N_φ = 0`, `var_top(can m_1) = −2πi m_0 = (T−1)m_1`. `O`: `gr_1 = 0`. `δ_0`: `gr_0 = 0`, `var = 0`. | Agrees with 1.4 and `var_top∘can = T − 1`. |
| 4.2: `gr^V` of `D/D(x∂_x)²` | `θ = x∂_x` on the basis `x^k m_i`, `∂^k m_i` | `θx^k = x^k(θ + k)` gives index `−k`; `θ∂^k = ∂^k(θ − k)` gives index `k`; `can = ∂` is an isomorphism `gr_0 → gr_1` (the `j_!` criterion); dual `D/D(∂_x x)²` is the `j_*` type. | `j_!` identification correct. |
| 3.3: relative test | disc centred in `S`; `C° ⊂ C`; `A²` example; split `F⁰ = Oe₀`; constant `ℚ(1)` | Centre in `S`: `N = 0`, `M = W`, limit = fibre, passes. `A²` at `s=1/x`: dims (1, 0) vs (0, 1), fails (a). Split: (0, 1), passes. `ℚ(1)`: passes. | Boundary test discriminates; the interior-only definition accepts the bad example. |
| 3.3: independence of `S̄` | `A²` in `P¹×P¹` and in `P²`; `S̄₃ = closure of S in S̄₁×S̄₂` | The line `y = 0` meets infinity at `(∞,0)` in `P¹×P¹` and at `[1:0:0]` in `P²`. The disc lifts and the saturation `O(s e₀ + e₁)` is the same, so it fails in both. `p_i⁻¹(S) ≅ S` because `S̄₂` is separated. | Same verdict in both compactifications. |
| 3.3: locality bullets | ball `B ⊂ A²`; Zariski cover `{x ≠ 0}, {x ≠ 1}` of `A²` | Ball: every test disc is centred in `B`, so the `A²` example passes on each ball. Each Zariski piece has closure `P¹×P¹`, which keeps the disc at `(∞, 0)`, so it fails on each. | Analytic locality on `S` is false; Zariski locality with boundary holds. |
| 3.3/4.6: rank-three example | `J ≠ 0`; `J = 0` with constant `F⁰ = span(a+ib, e)`; Kummer | `i·Q(a+ib, a−ib) = 2`. `T⁻¹(e − za) = e − (z+1)a`. `exp(zJ)F⁰(z) = span(a+ib, e)`. Forced `M_{−2} = 0`, `M_{−1} = H`, `M_0 = V`, but `Ne = (2πi)⁻¹a ≠ 0`. `J = 0`: `M = W`, admissible. Kummer: graded ranks 1, 1 and `NW_0 ⊂ W_{−2}`. Graded ranks 2, 1 versus the impossible 1, 1 in odd weight. | Fails exactly (b); the split control passes. |
| 3.3: descent direction | residue frame | `s = t^{−Res}c`, so transport is `exp(−2πi·Res) = T` and flat coordinates change by `T⁻¹`; SV `Ψ = exp(−zN_SV)Φ̃ = exp(zJ)F`, so `N_SV = −J`. | `T_j = T⁻¹` recorded; the limit filtration agrees. |
| 5.6: new Check | `A¹`, `F⁰ = O(e₀ + x e₁)` at `x = 0, i`, `∞` | Classes `0` (split) and `i ∉ ℚ` (nonsplit), so no `V` restricts isomorphically to every fibre; at `∞`, dims (1, 0) vs (0, 1). | Admissibility at infinity is necessary for the theorem. |

## For the maintainer

- No section, target or Lean name changed. No id cited by another roadmap moved; TopologicalMirrorSymmetryForHitchinSystems cites H.0 ids, which the former-numbering map still resolves.
- **Normalization note, outside this round's findings.** This README's `N = (2πi)⁻¹ log T_u` uses forward transport `T`. ShimuraVarieties §3.5b.1 uses `N_j = log T_j` with `T_j = T⁻¹`, so `N = −(2πi)⁻¹N_SV`.
  - The monodromy filtration and the limit Hodge filtration imported in §3.2 do not see this scalar.
  - The sign convention of "primitive parts polarized by `Q(·, N^k ·)`" in §3.2 depends on it, by a factor `(−1)^k` after removing `2πi`.
  - I left §3.2 unchanged, because no finding concerns it.
