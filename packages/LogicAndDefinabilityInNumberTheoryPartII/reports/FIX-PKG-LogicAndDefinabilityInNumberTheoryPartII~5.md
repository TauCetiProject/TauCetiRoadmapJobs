# FIX-PKG-LogicAndDefinabilityInNumberTheoryPartII~5

This round settles the findings of REV-PKG-LogicAndDefinabilityInNumberTheoryPartII~4: six findings, one P1, three P2 and two P3. All six were verified against the cached sources and repaired. Only `packages/LogicAndDefinabilityInNumberTheoryPartII/README.md` and `sources.toml` changed. `Suggested.lean`, `metadata.toml` and `design/plan.json` are unchanged: no headline statement and no supplier gap changed.

## REV-PKG-LogicAndDefinabilityInNumberTheoryPartII~4/F01 (P1) — applied

**Verification.** The finding is correct.

- For `k = 𝔽₂(s)^sep`, the form `X² + sY²` has 2 > 2⁰ = 1 variables. A zero with `Y ≠ 0` would put `√s` in `k`, but `√s` is purely inseparable over `𝔽₂(s)`. So `k` is not `C₀`, and the README's claim "`K` is `C_{r+ε}`" is false for imperfect separably closed `k`.
- Poonen's proof does not make this claim. It first passes to the algebraically closed case by Corollary A.2 (poonen_uniform line 600, p. 13).
- QuadraticFormInvariantsPartII §5.6, read at its open head, states `C_i` ascent from a `C_i` base and nothing more.
- The statement of (c) remains true. `X³ + s` is separable (derivative `X² ≠ 0` at its roots), so `X³ + sY³` is isotropic over `k`.

**Change (old → new).** Old route: "separably closed and finite cases: `K` is `C_{r+ε}` by Tsen–Lang". New route: the finite case uses Tsen–Lang directly. The separably closed case passes to `K′ = K k̄`, which is purely inseparable over `K` and `C_r` over `k̄`, and then descends by (b), citing Poonen, proof of Proposition A.3, p. 13. A negative-control Check for `𝔽₂(s)^sep` was added.

**Pattern.** A grep for `separably closed`, `Tsen`, `C_` and `C₀`/`C₁` found no other use of the false claim. The other consumers of 0.6(c) (0.8, 0.12(b), 0.14(a)) use finite or number-field bases, where the route was already valid.

## REV-PKG-LogicAndDefinabilityInNumberTheoryPartII~4/F02 (P2) — applied

**Verification.** The finding is correct.

- §0.5 requires `k_x/k` finite separable. §0.6(e) is stated for every smooth closed point, and its route ("use the embedding of 0.5") therefore fails at inseparable points.
- The witness is valid. Take `k = 𝔽₂(s)`, `V = 𝔸¹`, `π = u² + s`. Then `k_x = 𝔽₂(r)` with `r² = s`. A lift `z` of `r` with `z² = s` would give `(z + u)² = π`, which is impossible since `v(π) = 1` is odd.
- Poonen's Lemma A.5 proof (poonen_uniform lines 621–627, p. 14) embeds `K` in `k′((t₁))⋯((t_m))` with no coefficient-field discussion, so it has the same gap.

**Change (old → new).** Old route: "(e) use the embedding of 0.5 and (d) inductively". New route: the regular local flag `A_j = O_{V,x}/(t_{j+1},…,t_h)` (Stacks 00TT, 00NP–00NQ); each `(A_j)_{(t_j)}` is a DVR with residue field `Frac(A_{j−1})` (Stacks 00PD); apply (d) up the flag, then pass to the subform. The statement says separability is not needed; the inseparable Check was added.

The theorem was not restricted to separable points. The *Needs:* line drops 0.5 and adds the four Stacks tags.

**Pattern.** Every other use of a smooth-point or Laurent embedding was checked:

- 0.8 in characteristic `p` and 0.12(b) work at closed points over finite fields, so the residue fields are separable.
- 0.8 in characteristic 0 and 2.7 use 0.5 with separable residues (finite residue fields, and `k_ε/k₁` finite separable). 0.5's hypotheses hold there.
- 0.14 works at a closed point over an `L`-rational point of an étale map, so `k_x = L`.

All of these keep their text, and they now invoke the stronger (e) where they cite it.

## REV-PKG-LogicAndDefinabilityInNumberTheoryPartII~4/F03 (P2) — applied

**Verification.** The finding is correct.

- Take `K = 𝔽₂(s)`, `L = K(r)`, `q = X³ + sY²Z` and `P = (r, 1, r)`. Then `q(P) = r³ + sr = 2sr = 0`, and `P` is not proportional to any vector in `K³`. Every `K`-automorphism of an algebraic closure fixes `r`, so there is no distinct conjugate, and the "line `PP̄`" route fails.
- Proposition A.1 (poonen_uniform line 584) has no separability hypothesis. Corollary A.2 (line 588–593) needs exactly this inseparable quadratic case in characteristic 2.

**Change (old → new).** Old route: "`P` and its conjugate `P̄` give a `K`-point on the line `PP̄`". New route: write `P = P₀ + αP₁` and restrict `q` to the `K`-span of `P₀, P₁`; a nonzero restriction is divisible by the homogenized minimal polynomial, and the linear cofactor gives a `K`-zero (dependent and zero cases handled). The statement reads "separable or not"; (b) gets a route; the witness is a Check.

**Pattern.** "conjugate" occurs elsewhere only in 0.8a, where it refers to Galois-conjugate line bundles over a Galois extension, which is valid. The degree-two half of (a) relies on Springer's theorem. QuadraticFormInvariantsPartII §2.5 states it for inseparable odd-degree extensions too, which (b) in odd characteristic needs; the README now says so.

## REV-PKG-LogicAndDefinabilityInNumberTheoryPartII~4/F04 (P2) — applied

**Verification.** The finding is correct.

- `𝔽₄` is a finitely generated domain with no element transcendental over `𝔽₂`, and its subrings have Krull dimension 0.
- AKNS assume infinitude at the start of the Theorem 3.1 argument (akns line 1063–1064, p. 23) and pick `t` there (line 1074).
- The consumers (7.4, 7.6 through 7.4, and 8.4, which handles finite `B` by 8.3) all supply infinite domains.

**Change (old → new).** §7.3 changed from "Let `B` be a finitely generated integral domain" to "Let `B` be an infinite finitely generated integral domain". It now explains why `t` exists (a finitely generated ring integral over `𝔽_p` is finite) and adds the locator "proof of Theorem 3.1, p. 23, which assumes `B` infinite". The `𝔽₄` negative-control Check was added.

**Pattern.** A grep for "finitely generated integral domain" and "finitely generated domain" found the following. 7.2 and 7.4 already say "infinite". 8.4 treats finite `B` separately. Scope line 14 says "infinite".

## REV-PKG-LogicAndDefinabilityInNumberTheoryPartII~4/F05 (P3) — applied

**Verification.** Both locators are wrong.

- akns line 565 opens printed page 13, and Example 2.9(4) is at lines 567–574.
- Dittmann–Pop's bi-interpretability proof starts at dittmann_pop line 770 (p. 17) and ends at line 779–780 (p. 18).

**Change (old → new).** §7.5: "p. 17; AKNS, Examples 2.9(4), p. 12" → "pp. 17–18; AKNS, Examples 2.9(4), p. 13".

**Pattern.** The same page error appears three more times, and all were fixed:

- §7.6 cited "proof pp. 15–17". §5 starts on p. 15 (line 684) and the proof ends on p. 18, so it now reads "pp. 15–18".
- §8.2 and §8.5 cited the "final paragraph, p. 17". That paragraph is at dittmann_pop line 781, on p. 18, so both now read p. 18.

The other Dittmann–Pop p. 16–17 locators (6.5–6.9) were rechecked against the page markers at lines 691, 734 and 778. They are correct.

## REV-PKG-LogicAndDefinabilityInNumberTheoryPartII~4/F06 (P3) — applied

**Verification.** The finding is correct: `δ(ℚ(s)) = 1 + 1 = 2`, while a global field has `δ = 1`.

**Change (old → new).** §0.15 Check: "the global field `ℚ(s)` is not a member" → "the field `ℚ(s)` is not a member". A grep of every "global (sub)field `…`" phrase found no other misapplied adjective. `𝔽₂(s²)` in the next Check has `δ = 1` and is correctly called global.

## Adversarial pass on the new and changed text

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| 0.6(a) cubic route, dependent case | `P = αv`, `v ∈ K^N` | `q(P) = α³ q(v) = 0` ⇒ `q(v) = 0`, `v ≠ 0` | holds |
| 0.6(a) cubic route, `f = 0` | `f ≡ 0` on the span | `q(P₀) = f(1,0) = 0`, `P₀ ≠ 0` by independence | holds |
| 0.6(a) cubic route, `f ≠ 0` | `deg f(1,Y) = 2` and `3` | `f(1,Y) = g·h` with `deg h = 0` or `1`; `H = h₀X` or `h₀X + h₁Y`; zero `(h₁, −h₀) ≠ 0` | holds in both degrees |
| 0.6(a), inseparable witness | `K = 𝔽₂(s)`, `q = X³ + sY²Z`, `P = (r,1,r)` | `q(P) = 2sr = 0`; `f = q(Y,X,Y) = Y(Y² + sX²)`; `G = Y² + sX²`, `H = Y`, `K`-zero `(0,1,0)`, `q(0,1,0) = 0` | Check added |
| 0.6(a), separable control | `K = ℚ`, `L = ℚ(i)`, `q = X³ + XY² − Z³`, `P = (1, i, 0)` | `q(P) = 1 − 1 = 0`; `P₀ = (1,0,0)`, `P₁ = (0,1,0)`; `f = X³ + XY² = X(X² + Y²)`; `H = X`, `K`-zero `(0,1,0)`, `q(0,1,0) = 0` | holds |
| 0.6(b) tower | `p = 3`: degree-3 step, quadratic form; `p = 2`: degree-2 step, cubic form | `[M_{i+1} : M_i] = p`; Springer for odd `p`, cubic case for `p = 2` | holds |
| 0.6(c), separably closed route | `k = 𝔽₂(s)^sep`, `r = n = 0`, `m = 2`, form `⟨1, s⟩₃` | variables `2 > 3⁰ = 1`; root of separable `X³ + s` in `k` | isotropic, as asserted |
| 0.6(c), negative control | `k = 𝔽₂(s)^sep`, `X² + sY²` | variables `2 > 2⁰`; nonzero zeros: 0 (`√s ∉ k`) | `k` not `C₀`; Check added |
| 0.6(c), trdeg of `K′` | `K = k(x₁…x_s)`, trdeg `r` | `trdeg(K′/k̄) = trdeg(K′/k) = trdeg(K/k) = r`; `K′ = k̄(x₁…x_s)` | holds |
| 0.6(c), purely inseparable descent | `K′ = K(k̄)` | each `a ∈ k̄` has `a^{p^e} ∈ k ⊆ K` | `K′/K` purely inseparable; (b) applies |
| 0.6(c), finite case | `k = 𝔽_q`, `n = r + 1`, `m = 2` | `2·n_k^{r+1} > n_k^{r+1}` | holds; sharpness Check unchanged |
| 0.6(e), flag | `h = dim A = 0`, `1`, `2` | `h = 0`: `K = k_x`, trivial. `h = 1`: `A` a DVR, (d) once. `h = 2`: `A₁ = A/(t₂)` regular of dim 1, `(A₂)_{(t₂)}` DVR with residue `Frac(A₁)` | holds |
| 0.6(e), inseparable witness | `k = 𝔽₂(s)`, `π = u² + s`, `q = X³ + sY³` | `k_x = 𝔽₂(r)`; reduction `X³ + r²Y³`; `ord_r(r²) = 2 ≢ 0 mod 3`; block valuations `0, 1, 2 mod 3` | anisotropic; Check added |
| 0.6(e), separable control | `k = 𝔽₃`, `V = 𝔸¹`, `x = 0`, `q = ⟨1,1⟩₂` | `−1` is a nonsquare in `𝔽₃`; `q ⊗ ⟨⟨t⟩⟩ = ⟨1,1,t,t⟩` anisotropic over `𝔽₃(t)` by (d) | holds |
| 0.6(e), failed hypothesis | `x` with `k_x = 𝔽₉`, `q = ⟨1,1⟩₂` | `i ∈ 𝔽₉`, `q(i,1) = 0` | hypothesis fails, (e) does not apply |
| 0.6(e), subform | `m < h` | blocks indexed by `e ∈ {0…n−1}^h`; restricting to `e_i = 0` for `i > m` gives `q ⊗ ⟨⟨t₁…t_m⟩⟩` | anisotropy passes to the subform |
| 7.3, infinite hypothesis | `B = 𝔽₄`; `ℤ`; `ℤ[1/2]`; `𝔽₂[s,t]`; `𝔽₄[t]` | `𝔽₄`: `b⁴ = b`, no `t`, dim 0. Cores: `ℤ`, `ℤ[1/2]`, `𝔽₂[t]`, `𝔽₄[t]`, each of dim 1 | `𝔽₄` excluded (Check); the others are covered |
| 7.3, existence of `t` | infinite `B` of characteristic `p` | all elements algebraic ⇒ integral over `𝔽_p` ⇒ finite `𝔽_p`-module ⇒ `B` finite | contradiction, so `t` exists |
| 7.5 locators | akns line 565/567; dittmann_pop lines 770, 778–780 | p. 13; pp. 17–18 | fixed |
| 7.6, 8.2, 8.5 locators | dittmann_pop lines 684, 778, 781 | §5 runs pp. 15–18; final paragraph on p. 18 | fixed |
| 0.15 Check | `ℚ(s)` inside `ℚ(s,t)` | `δ = 2 ≠ 1` | adjective removed; exclusion unchanged |

## Checks run

- **Elaboration.** I ran `lake env lean packages/LogicAndDefinabilityInNumberTheoryPartII/Suggested.lean` from the content checkout. Result: exit 0, with exactly eight `declaration uses sorry` warnings (lines 54, 62, 73, 81, 93, 113, 128, 139) and nothing else. There is no `TauCeti.*` import, so no build was needed. The file was not edited.
- **Signatures.** I elaborated the scratch file with `#check @name` for all ten declarations once; its body is identical to `Suggested.lean`. The ten elaborated types are unchanged and match their README statements. No section binder is lost: `[Field.FG K]` and `[CompatibleRing K]` appear where stated, and `ringChar K ≠ 2 ∨ kroneckerDimension K ≤ 3` constrains only `K` in the last theorem. Nothing changed.
- **Dependency direction.** The exact command from the brief gave:

  ```text
  depcheck: 236 roadmaps, 2154 edges, 0 problem(s)
  ```

  There are no UPWARD, CYCLE or moved lines.
- **Package gate on a scratch copy.** All checks were 0 (`tex=0`, `latex=0`, `target-ids=0`, `depcheck=0`, …). The only failure was `git=1`, because the scratch copy is not a git repository.
- **Manifest.** `sources check sources.toml` reported 0 problems. The existing `stacks` key gained the locators Lemmas 10.106.2–10.106.3 (tags 00NP–00NQ), 10.119.7 (00PD) and 10.140.3 (00TT), plus `cited_for` "0.6". To verify these tags, I fetched the Stacks *Commutative Algebra* chapter through the sources service under the same `stacks` key into a scratch copy of the manifest (`stacks`, Commutative Algebra chapter, lines 11920–11931, 13409–13417 and 17618–17624). The fetched metadata of the real entry, from the Varieties chapter, is unchanged, and the work keeps one key. No new work and no `needs-references.toml` request.

## Citations and ownership

- QuadraticFormInvariantsPartII §2.5 (Springer, for every odd-degree extension, inseparable ones included) and §5.6 (`C_i` ascent from a `C_i` base) were re-read at its open head. The new routes use exactly those statements.
- No new cross-roadmap supplier, no new target and no new Lean name. The two supplier gaps (`biinterpretation-homotopy`, `function-field-cyclic-hasse-norm`) are unchanged.
- The overlap report lists no open pull request that changes this roadmap and no dropped id. Ownership against open pull requests outside the indexed heads was not checked.

## Notes for the maintainer

- No Lean name changed, and no section was renumbered. Consumers of 0.6, 7.3 and 7.5 inside and outside this roadmap need no update.
- Source issues to record: Poonen's Lemma A.5 proof (p. 14) silently uses a coefficient field at inseparable residue fields. The regular-local-flag route avoids this.
- Nothing in the review text was treated as an instruction. No suspicious passage was found.
