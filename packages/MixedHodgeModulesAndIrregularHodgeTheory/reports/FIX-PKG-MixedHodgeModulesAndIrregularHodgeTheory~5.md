# Repair report: MixedHodgeModulesAndIrregularHodgeTheory

I checked the three findings of REV-PKG-MixedHodgeModulesAndIrregularHodgeTheory~4 against the sources, the pinned libraries and the supplier roadmaps. All three are correct. F01 and F02 are applied as asked. F03 is applied differently: the gap is assigned to a different supplier, for the reason given below. The changes are in `packages/MixedHodgeModulesAndIrregularHodgeTheory/README.md`, the top-level `gaps` list of `design/plan.json` (one new entry), and one locator string in `sources.toml`. `Suggested.lean` and `metadata.toml` are unchanged.

## F01 (P2) — applied

§4.2 "up to the factor `−2πi`" → explicit `T = exp(−2πi x∂_x)`, `log T_u = −2πi(x∂_x + α)` and `N = −(x∂_x + α)` on `gr^V_α`. With `can = ∂_x`, the normalized `var : φ_1 → ψ_1(−1)` is `−x`, and `var_top = −x∘(exp(2πiN_φ) − 1)/N_φ`. Added the rank-two Check (`N e_1 = −e_0`), an API bullet, and C5.6 to Needs.

The reviewer's sign is confirmed by direct computation. The horizontal sections of `d + A dx/x` are `x^{−A}s_0`, so transport along the positive loop is `exp(−2πiA)`, which is ComplexComparisonPartII §C5.6 ("Residue `a` has monodromy `exp(−2πia)`"). Hence `N = (2πi)⁻¹ log T_u = −A`. Fixing `can = ∂_x` then forces `var = −x`: on the witness, `var(can e_1) = var(x⁻¹e_0) = −e_0 = N e_1`, and `can(var(x⁻¹e_1)) = −x⁻¹e_0 = −(x∂_x + 1)(x⁻¹e_1)`.

I do not cite Sai88 for the signs. Sai88 (0.2), p. 851 (line 82) states the monodromy as `exp(−2πi t∂_t)` for right modules, and (0.7), p. 852 (line 127) gives `N = −(t∂_t − α)`. Right action satisfies `t∂_t ↦ −(t∂_t + 1)` on left modules, and the OCR of Proposition 3.4.12 (line 2419) is degraded. The README therefore says that the signs come from the residue convention and are not read off Saito's right-module formulas. The (0.2) and (0.7) locators were added to the README and the manifest.

## F02 (P1) — applied

§12.5 proof route: "the Hilbert series … is `n!` times the normalized volume" → freeness over `ℂ[F_1, …, F_n]` gives `H_Q(t) = (1 − t)^n H_gr(t)`, a polynomial in `t^{1/e}` whose value at 1 is `dim Q`. The count `#(kΔ ∩ ℤ^n) = dim Q·k^n/n! + O(k^{n−1})` and Mathlib's lattice count give `n!·vol(Δ)`. Added the `φ = x²` Check.

The witness is inside the theorem's domain. The only face of `Δ = [0, 2]` away from `0` is `{2}`, and `θ(x²) = 2x²` has no zero on `ℂ^×`. `H_gr = Σ_{m≥0} t^{m/2} = 1/(1 − t^{1/2})`, and `(1 − t)H_gr = 1 + t^{1/2}`. Its value at 1 is 2, which equals `dim H¹_dR(G_m, E^{x²})` because `χ = 0 − Irr_∞ = −2` (PadicDifferentialEquationsAndRigidCohomology §RD.6.53).

The counting input is pinned. `ZLattice.covolume.tendsto_card_div_pow` (`Mathlib/Algebra/Module/ZLattice/Covolume.lean:318`) says that for bounded measurable `s` with null frontier, `#(s ∩ k⁻¹L)/k^{#ι} → vol(s)/covol(L)`. `Convex.addHaar_frontier` (`Mathlib/Analysis/Convex/Measure.lean:38`) supplies the null boundary of the convex `Δ`. Both were added to the From Mathlib contract and to the Mathlib scope bullet.

## F03 (P1) — applied differently

New `gap:normal-semigroup-cohen-macaulay` (Hochster: over any field, `k[S]` is Cohen–Macaulay for finitely generated `S` saturated in its group). Its supplier is GroebnerGeometry §G2, not AnalyticToricGeometryPartII §0.3. It is recorded in the plan's `gaps`, a contract subsection, Scope, §12.5 Needs and the Layer 12 summary, using `TauCeti.Ring.IsCohenMacaulay`. Added a nonsaturated negative-control Check.

The finding is right. AS line 617 only recalls Hochster's theorem for the graded Cayley cone ring of AS §5. No cited supplier states it. Searches by object found no owner:

- `roadmaps grep` for Cohen–Macaulay near semigroup, monoid, toric or normal, on main and every indexed open head;
- the pinned Mathlib (only `RingTheory/Depth`);
- the pinned Tau Ceti. `TauCeti/RingTheory/CohenMacaulay/` has the ring predicate (`Ring.lean:40`) and polynomial-ring and dimension-≤ 2 normal cases, but no semigroup theorem.

DirectSummandsAndBigCohenMacaulay §6.4 is the mixed-characteristic pure-subring theorem. It explicitly excludes the equal-characteristic Hochster–Roberts analogue.

Why the supplier differs from the reviewer's suggestion: GroebnerGeometry is on main and earlier than every open roadmap. Its §G2 already owns the exact carrier and the hypothesis:

- affine semigroups as finitely generated submonoids of a finite free abelian group;
- `AddMonoidAlgebra k S`;
- saturation in `L_S`;
- "normality iff S is saturated" over a field.

Hochster's theorem is the next statement about that object. AnalyticToricGeometryPartII instead limits its scope to "the toric specialization, its character formulas and the comparisons on those actual spaces", with nonarchimedean and perfectoid aims, and its §0.3 is about divisor section modules `S_A(D)`. Assigning the gap there would split ownership of semigroup-algebra normality and Cohen–Macaulayness across two roadmaps. The reviewer's contract wording and the six existing gaps are kept unchanged. The repository already has a gap on a roadmap that is on main (`blowup-exceptional-divisor` on SchemeAndStackFoundations §5.5).

## Same pattern elsewhere

- **F01, unspecified monodromy normalization.**
  - Conventions: now state `T` as positive-loop transport, the `gr^V` equations, the formula for `var` and `can = ∂_x`, `var = −x`.
  - §1.4: "normalize `var` by `log(T)/(T − 1)` … after adjoining the Tate line" → `var = (2πi)⁻¹ var_top ∘ log(T)/(T − 1)`, with `var ∘ can = N`, `can ∘ var = N_φ` and the inverse formula for `var_top`. The API bullet was updated, and a Check with `T = 1 + 2πiB` was added: `var_top ∘ can = 2πiB`, while `var ∘ can = B`.
  - §5.3 proof route: now cites the graph-`V` equations `N = −(t∂_t + α)`, `can = ∂_t`, `var = −t` (4.2).
  - §11.5: "intertwining the nilpotent monodromies after the Fourier sign normalization" was the same kind of unspecified normalization. It now states `(φ_{t,1} FT M, N) ≅ (ψ_{1/τ,1} M, N)`, nearby cycles at infinity along `1/τ`, with each `N` normalized as in 4.2. The kernel sign does not enter, because pullback by `t ↦ −t` preserves the positive loop. This matches MT Lemma A.4, p. 39 (MT lines 2108–2110). A Check with nonzero `N` was added: `M = D/D(τ∂_τ)²`, `FT M = D/D(∂_t t)²`, and `N = τ∂_τ ↦ −(t∂_t + 1)`. Needs and the Layer 11 summary gain 4.2.
  - Other "up to" clauses: §1.5's "up to the normalizing shifts" refers to shifts fixed in Conventions and §9.1 of SpringerResolution, so it was left unchanged. §3.2 already has `N = (2πi)⁻¹ log T_u`. §5.4 uses only the image of `var`, which is sign-independent.
- **F02, Hilbert series used as a number.** §12.6 proof route: "the Hilbert series … computes the top Euler characteristic as the normalized volume" → "the dimension …, the value at `t = 1` of its Hilbert series, is the normalized volume". No other occurrence.
- **F03, theorem cited only through a source.** No other place in the README invokes Cohen–Macaulayness of semigroup rings. Kouchnirenko's face comparison (Kou, §2) is part of this roadmap's own target 12.5.

## Check outcomes

- **Elaboration.** `lake env lean` on `packages/MixedHodgeModulesAndIrregularHodgeTheory/Suggested.lean`, run from the content checkout, exited 0. Its only diagnostic was ``Suggested.lean:146:8: warning: declaration uses `sorry` ``. The file is unchanged and imports only `Mathlib`.
- **Signatures.** I put `#check @name` for all 13 declarations into one scratch copy and elaborated it once (exit 0). Each elaborated type matches §§12.4 and 12.6. `twistedDeRham_concentration_finrank` binds `affineSpan ℝ (newtonPolytope φ) = ⊤` and `IsNewtonNondegenerate φ` explicitly. The file has no section `variable`s, and nothing changed.
- **Dependency direction** (full output):

  ```text
  depcheck: 237 roadmaps, 2152 edges, 0 problem(s)
  ```

  There is no UPWARD, CYCLE or moved line. The new supplier edge is GroebnerGeometry, which is on main.
- **Citations.** `roadmaps resolve` on the README reports no cross-roadmap citation and no Lean name found nowhere. I resolved the new library names at the pins myself:
  - `ZLattice.covolume.tendsto_card_div_pow`: `Covolume.lean:318`, in `namespace ZLattice` / `namespace covolume`;
  - `Convex.addHaar_frontier`: `Measure.lean:38`, in `namespace Convex`;
  - `TauCeti.Ring.IsCohenMacaulay`: `TauCeti/RingTheory/CohenMacaulay/Ring.lean:40`, in `namespace TauCeti.Ring`.

  GroebnerGeometry §G2 ("Semigroup presentations, normalization and degree") was read on main. The open-PR index has no pull request that changes GroebnerGeometry.
- **Gate failures.** The brief lists none.

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| Conventions / 4.2: `T = exp(−2πi x∂_x)` on `gr^V_α` | Kummer `x∂_x e = ae`, `a ∉ ℤ`; `O`; rank-two `A e_1 = e_0` | Kummer: `x^k e` has index `α = −a − k` and `T = exp(2πiα) = exp(−2πia)`, matching C5.6. `O`: `T = 1`. Rank two: `T = 1 − 2πiA`. | Consistent with the existing eigenvalue claim "`gr^V_α` ↔ eigenvalue `exp(2πiα)`". |
| 4.2: `N = −(x∂_x + α)` | rank-two witness; rank one; `M = 0` | Witness: `log T = −2πiA`, `N e_1 = −e_0`, versus `+e_0` for `N = x∂_x` and `−2πi e_0` for `−2πi x∂_x`. Rank one: `N = 0` under every reading. `M = 0`: all maps zero. | Sign fixed; added as a Check. |
| 4.2: `can = ∂_x`, `var = −x` | witness on `gr^V_0` and `gr^V_1`; `δ_0`; `O`; `O(∗0)` | `var can e_1 = −e_0 = N e_1`; `can var(x⁻¹e_1) = −x⁻¹e_0 = −(x∂_x+1)x⁻¹e_1`. `δ_0`: `gr_0 = 0`, `var δ = 0`, `N_φ δ = −(x∂_x+1)δ = 0`. `O`: `gr_1 = 0`. `O(∗0)`: `var(x⁻¹) = −1`, `can(1) = 0`, both composites 0. | Both composite identities hold. With `can` fixed, `var`'s sign is forced wherever `N ≠ 0`. |
| 4.2: `var_top = −x∘(exp(2πiN_φ) − 1)/N_φ` | witness | `N_φ(x⁻¹e_0) = −x⁻¹Ae_0 = 0`, so `var_top(can e_1) = −2πi e_0 = (T − 1)e_1`. | Agrees with `var_top ∘ can = T − 1`. |
| 1.4: `var = (2πi)⁻¹ var_top ∘ log(T)/(T−1)` | `T = 1 + 2πiB`, `B² = 0`, `B ≠ 0` (`Rj_* L[1]`) | `(T−1)·log(T)/(T−1) = log T = 2πiB`, so `var∘can = B = N`; unnormalized `2πiB`. On `pφ`, `T_φ − 1 ≅ 2πiB` via the iso `var_top`, so `log(T_φ)/(T_φ − 1) = 1 − (T_φ−1)/2 ≠ 1`. | Formula consistent with LefschetzPencils §1.7 (`v = a_σ⁻¹ Var(σ)∘P(T_Φ)`, `a_σ ↔ 2πi`). Check added. |
| 1.4: `can ∘ var = N_φ` | same; `T_φ = 1` | `(2πi)⁻¹(T_φ−1)P(T_φ) = (2πi)⁻¹ log T_φ`; for `T_φ = 1`, both sides are 0. | Holds. |
| 5.3: graph `V` equations | `M = O_X`, `g = x` | In coordinates `u = t − x, t`, `i_+O = δ(u) ⊠ O_t` and `δ ∈ gr^V_0` along `t`. `∂_t` changes by `∂_u`, and `t∂_u` acts by zero on `gr^V`, so the index is intrinsic. | Unipotent `ψ` stays at `α = 0`; the equations transfer. |
| 11.5: `N ↔ N` | `M = D/D(τ∂_τ)²`; kernel sign `t ↦ −t`; `O`, `δ_a`, `δ_0` | `τ∂_τ ↦ −∂_t t`, so `FT M = D/D(∂_t t)²`. `gr^V_1 = ⟨e, (t∂_t+1)e⟩`, `N = −(t∂_t+1)`, one block of size 2. At `∞`, `s = 1/τ`, `N = −s∂_s = τ∂_τ ↦ −(t∂_t+1)`. `can(te) = (t∂_t+1)e` has rank 1 and `var` is an iso (`j_*` type). The other three Checks have `N = 0`. | Matches MT Lemma A.4. The kernel sign is irrelevant because `t ↦ −t` preserves the positive loop. Check added. |
| 12.5: `H_Q = (1−t)^n H_gr`, `dim Q = H_Q(1)` | `x²`; `x`; `x + x⁻¹`; `x₁+⋯+x_n`; `n = 0` | `x²`: `1/(1−t^{1/2})`, giving `1 + t^{1/2}`, value 2. `x`: `1/(1−t)`, giving 1. `x+x⁻¹`: `(1+t)/(1−t)`, giving `1 + t`, value 2 = `1!·vol[−1,1]`. Simplex: `1/(1−t)^n`, giving 1 = `n!/n!`. `n = 0`: `H = 1`, value 1 = `0!·1`. | Series ≠ number in the `x²` case; value at 1 correct in every case. |
| 12.5: count `#(kΔ∩ℤ^n) = dim Q·k^n/n! + O(k^{n−1})` | `x²`; `x + y + 1/(xy)` | `x²`: `#{0 ≤ m ≤ 2k} = 2k + 1 = 2k + O(1)`. Triangle: `#(kΔ∩ℤ²) = (3/2)k² + O(k)`, so `dim Q = 2!·3/2 = 3`, matching the 12.8 Check. | Holds. `h(m) ≤ k ⇔ m ∈ kΔ` because `Δ` is closed, convex and contains 0. |
| 12.5: freeness over `ℂ[F]` | `x²`; `x` | `ℂ[x]` is free over `ℂ[x²]` on `1, x`, and over `ℂ[x]` on `1`. | Regular sequence of positive degree in a connected graded ring gives a free module (graded Nakayama). |
| Gap contract (Hochster) | `S = {0}, ℕ, ℤ, ℕ², ℤ×ℕ`; field of characteristic `p` | depth/dim `0/0, 1/1, 1/1, 2/2, 2/2`. Hochster's theorem holds over every field. | Contract consistent. |
| Gap contract, negative control | `S = ⟨(4,0),(3,1),(1,3),(0,4)⟩` | `(2,2) = 2(3,1) − (4,0) ∈ L_S` and `(4,4) ∈ S`, but `(2,2) ∉ S`. `t⁴·s⁶t² = s⁴·s²t⁶` with `(2,6) = 2(1,3)`, while `(6,2) − (4,0) = (2,2) ∉ S`. So `s⁴, t⁴` is not a regular sequence: dimension 2, depth 1. | Saturation is needed. Added as a §12.5 Check. |
| Gap applied to `C_Δ ∩ ℤ^n` | `x² `(cone `ℕ`); `x + x⁻¹` (cone `ℤ`); convenient `φ` | `ℂ[ℕ] = ℂ[x]` and `ℂ[ℤ] = ℂ[x^{±1}]`. For convenient `φ` the cone algebra is the Laurent ring. All are saturated and finitely generated (Gordan). | Within the contract. |

## Sources, suppliers and ownership

- **Sources read.**
  - Sai88 lines 72–90, 120–132 ((0.2), (0.7), pp. 851–852), 2345–2365 (the definitions of `can`, `Var` and `var` before Lemma 3.4.11, p. 922) and 2411–2432 (Proposition 3.4.12);
  - AS lines 395–460 and 560–636 (Theorem 4.1, (4.3), Theorem 4.13, §5);
  - MT lines 2085–2150 (Lemma A.4).

  No new source was needed, no text was requested, and `needs-references.toml` was not written. Kou remains settled as uncertified.
- **`sources.toml`.** Sai88's locator gains "(0.2) p. 851, (0.7) … p. 852". No key was added or renamed.
- **Suppliers read.** ComplexComparisonPartII §C5.6 (`CanonicalLogExtension`, "Residue `a` has monodromy `exp(−2πia)`"). LefschetzPencilsAndVanishingCycles §1.7 (`v = a_σ⁻¹ Var(σ) ∘ P(T_Φ)`, `var ∘ can = N`). GroebnerGeometry §G2 on main. DirectSummandsAndBigCohenMacaulay §6.4. AnalyticToricGeometryPartII §§0.1–0.3 and its Scope.
- **Ownership against open work.** I searched by object (Cohen–Macaulay together with semigroup, monoid, toric or normal; Hochster) with `roadmaps grep` over main and all indexed open heads, and checked the board package index. There is no owner. GroebnerGeometry §G2 owns the carrier and is on main, so the new gap creates no cycle and no upward edge. No declaration of `Suggested.lean` was added or renamed.
- **Open pull requests.** No open pull request changes this roadmap or GroebnerGeometry. All new citations are to main (GroebnerGeometry), to suppliers already cited (ComplexComparisonPartII §C5.6, MT), or to pinned declarations.

## For the maintainer

- **GroebnerGeometry (on main)** now has a pending request, `gap:normal-semigroup-cohen-macaulay`. Hochster's theorem in §G2 belongs to a revision of GroebnerGeometry or to its Part II. The reviewer had suggested AnalyticToricGeometryPartII §0.3; the reason for the change is under F03.
- **No renames.** No section, target or Lean name of this roadmap was renamed or removed. Consumers that cite §§1.4, 4.2, 5.3, 11.5 or 12.5 (KloostermanMomentsAndPotentialAutomorphy, EllAdicHomotopyTypesAndWeights) are unaffected, except that they now get explicit signs: `N = −(x∂_x + α)`, `can = ∂_x`, `var = −x`. A consumer that read `x∂_x` itself as `N` must flip its sign.
- **No suspicious instructions.** No text in the review or the sibling roadmaps asked for anything outside this job.
