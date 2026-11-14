# FIX-PKG-IgusaVarietiesAndTorsionConcentrationPartII~4

Repair of the one finding of REV-PKG-IgusaVarietiesAndTorsionConcentrationPartII~3. Files changed: `packages/IgusaVarietiesAndTorsionConcentrationPartII/README.md` and `packages/IgusaVarietiesAndTorsionConcentrationPartII/sources.toml`. `Suggested.lean`, `metadata.toml` and `design/plan.json` are unchanged: no Lean statement depends on the PEL datum, and no new supplier gap is needed.

## F01 (P2) — applied differently

**Verified.** The finding is correct. PerfectoidShimuraVarieties §§2.2 and 3.5 assume a Shimura datum of Hodge type in Deligne's setup. PELModuli §M0.12 gives Hodge type only for connected `G` with SV3, and §M4.3 (canonical models) also assumes SV3. The parent's §4.4 is stated for Hodge type, and its §§3.17 and 4.5 use the period map of PerfectoidShimuraVarieties §3.5. For `n ≥ 2`, `G^ad` is `Res_{F⁺/ℚ}` of an absolutely simple group of type `A_{n−1}`, so it is `ℚ`-simple, and SV3 holds exactly when `n = 1` or `d > 0`. The reviewer's Case 1 witness is valid (computed below). The source shows the same gap: [CS17] §5.1 asserts that `(G, {h})` is a Shimura datum (CS17 line 3281, p. 730), but its §2.1 condition (3) (CS17 line 447, p. 660) fails for wholly definite data.

**What changed (old → new).** §8.1 used to say `S_K` "is the disjoint union of the Shimura varieties `Sh(G^{(a)}, X^{(a)})`", and §11.2 said "(a PEL datum of type (A) is of Hodge type)". Now §8.1 defines *wholly definite* data and proves SV3 ⇔ `n = 1` or `d > 0`. It describes `S_K` through PELModuli §M3.4, which does not need SV3, and uses §M4.3 only under SV3. A new target, §8.9, treats data of dimension zero. §§11.2–11.3 and §11.4(1) now assume SV3, and §§11.5, 11.6 and 11.8 have a route for wholly definite data that goes through §8.9.

**Why "differently".** I did not take the reviewer's perfectoid construction (profinite-set tower through PerfectoidSpaces §P6.8, plus a period map to a point). §8.9 does the reduction at finite level and needs no perfectoid object:

- `S_K` is finite étale and `H^{>0} = 0` for every sheaf, so concentration and the integral and twisted forms hold trivially.
- `B(G, μ⁻¹) = {b₀}`, with `b₀` `μ`-ordinary, `d_{b₀} = 0` and `J_{b₀} ≅ G_{ℚ_p}`.
- The finite special fibre is a union of central leaves (parent §§0.12, 0.24). Pulling back along the perfect Igusa varieties `Ig^X ≅ Ig^{b₀}` (parent §§1.1, 1.2, 1.6) gives a `𝕋^{S∪{p}}`-equivariant injection `H^0(S_K) ↪ ⊕ H^0(Ig^{b₀})`.

§11.5 then runs §11.4(2)–(4) at `b₀`. This is legitimate because Shin's Igusa trace formula (EndoscopicTransferAndUnitaryTraceComparison §8.21, "Type A/C PEL data") does not assume SV3: [Shin09] Definition 5.2 (Shin09 lines 570–575, author p. 13) asks only for positivity of `h`.

**Same pattern repaired elsewhere:**
- Opening paragraphs: the parent's compact theorems are now qualified "of Hodge type", and wholly definite data are named in the scope.
- Scope: §8.9 is listed among the owned targets, and the SV3 restriction on the suppliers is stated.
- Conventions: a naming sentence for "Shimura variety".
- Supplier contracts: parent §§0.12, 0.24, 1.1–1.2 and 1.4a added, §§3.17 and 4.5 restricted to SV3; PELModuli §§M0.12 and M3.3 added, §M4.3 restricted to SV3; PerfectoidShimuraVarieties §§2.2 and 3.5 restricted to SV3.
- How to read the build: one sentence on the two routes.
- §8.2: the toroidal argument uses only the moduli compactification. ShimuraCompactifications §7.3 states that compactification without SV3; only its Shimura comparison needs SV3.
- §10.3: Matsushima's formula is applied piece by piece through §M3.4, no longer to "`Sh_{K^{(a)}}` components".
- §11.4(4): a sentence saying why Layers 9–10 apply to `b₀`.
- Needs lines and Dependencies of Layers 8, 10 and 11; the Layer 11 Examples.
- [Shin09] added to References; `sources.toml` gets the Shin09 locator Definition 5.2 (cited for 11.4) and the CS17 locator §2.1.

**Checks added.** §8.1 gets three:
- rank one: SV3 holds vacuously although `d = 0`;
- rank two with signature `(1, 1)`: the adjoint weights `z/z̄` are nontrivial;
- rank two with signature `(2, 0)`: SV3 fails. This Check also gives the explicit Case 1 witness `D ⊗ ℚ(i)` and the odd-rank definite Case 2 data.

§8.9 gets four:
- a finite set of `N` points;
- a Newton point that is fractional over `ℚ_p` while `J_b` is quasi-split;
- `n = 1`, where both routes apply;
- the negative control `d > 0`, where `H^2 ≠ 0`.

## Adversarial pass (new and changed statements)

| Statement | Instances tried | Values computed | Result; change |
|---|---|---|---|
| §8.1 SV3 ⇔ `n = 1` or `d > 0` | `n = 1`; `n = 2` signature (1,1); `n = 2` signature (2,0); `n = 3`, `[F⁺:ℚ] = 2`, signatures (1,2) and (0,3) | `dim G^ad` = 0, then `3[F⁺:ℚ]`, `3[F⁺:ℚ]`, 8·2. Image of `h` in `G^ad`: trivial (no factor), `z/z̄ ≠ 1`, trivial, nontrivial on the PU(1,2) factor. SV3: true, true, false, true. `d` = 0, 1, 0, 2 | Equivalence holds in both directions; stated |
| §8.1 Case 1 witness | `D` ramified at {5, ∞}, `F = ℚ(i)` | `5 = (2+i)(2−i)`; local invariants of `B` are 1/2 and 1/2 at the places above 5, sum ≡ 0, so `B` is division of degree 2. Involution on `M_2(ℂ)` is `b ↦ b†`, and `tr(bb†) = Σ|b_ij|² > 0` | Valid Case 1 datum with `d = 0` that fails SV3; added as Check |
| §8.1 odd-rank Case 2 | `n = 3`, definite at every real place | Odd-dimensional hermitian spaces are quasi-split at every finite place; `G^ad(ℝ)` is compact, hence anisotropic | Wholly definite Case 2 data exist; Check |
| §8.9(1) finiteness | `d = 0` at a good `p` | smooth + proper + relative dimension 0 ⇒ finite étale; §M3.3: compact adjoint real group ⇒ point domain, finite quotient | Holds without SV3 |
| §8.9(2) cohomology | `N` points; integral; local system `L_ξ`; negative control `d = 1` (Harris–Taylor, `n = 2`) | `H^0 = 𝔽_ℓ^N`, `H^i = 0` for `i > 0`; `ℤ_ℓ^N/ℓ = 𝔽_ℓ^N`; `H^0(L_ξ)` free of rank `N·dim ξ`; for `d = 1`, `H^2 = 𝔽_ℓ(−1)^{#π₀} ≠ 0` | Correct only for `d = 0`; negative control added |
| §8.9(3) Kottwitz set and `J_b` | `S_1 = {τ (2,0), τ′ (0,2)}`, `F_{𝔭_1}/ℚ_p` unramified quadratic, `c_1 = 1`; `n = 1` | `μ_1⁻¹ = ((−1,−1),(0,0))`; average `((−1/2,−1/2),(−1/2,−1/2))`; pairing with `2ρ = ((1,−1),(1,−1))` is `0 + 0 = 0`. Shapiro bound is `z`, class `p⁻¹`, translated by `p` to `1`, so `J = Res GL_2` is quasi-split. `n = 1`: one class, `J` the torus | `d_{b₀} = 0 = d`, `μ`-ordinary, `J_{b₀} ≅ G_{ℚ_p}`; "fractional slope ⇒ inner form" excluded by Check |
| §8.9(4) injection into Igusa `H^0` | `n = 1`, `ℚ(i)`, split `p` (one leaf, parent §0.12 Check); general case: `r` leaves | dim `H^0(S_K) = N = Σ_X #C^X`; at Mantovan level `m` the target has dimension `Σ_X #C^X·|Γ_{m,X}| ≥ N`; pullback along a surjective torsor is injective; localization is exact | Holds; no leaf uniqueness needed |
| §11.4(1) for `b₀` | `d_{b₀} = 0` | `H^i(I_m) = 0` for `i > 0`; transitions are finite étale and surjective, so injective on `H^0` | Holds without parent §4.5 |
| §11.5 definite route | `𝔪` with `H^0(S_K)_𝔪 ≠ 0` | §11.1: `M_𝔪` is a localization of `M_{𝔪′}`, so `H^0_{𝔪′} ≠ 0`; §8.9(4) gives `H^0(Ig^{b₀})_{𝔪′} ≠ 0`; then §11.4(2)–(4) with Shin's formula (no SV3) | Route complete |
| §11.6 definite | any `𝔪`, any `ρ_𝔪` | `d = 0`, `H^j = 0` for `j > 0` | Holds without an auxiliary pair |
| §11.8 definite | `L_V`, `L_ξ` | `H^{>0} = 0`; `H^0` is a free summand | Holds |
| §10.3 Matsushima for definite | `n = 2`, (2,0) | `𝔪_G/𝔨 = 0`, `ep(1) = 1`, `q(G) = ½·0 = 0 = d` | Consistent with the stated formula |
| §§11.2–11.3 restricted to SV3 | `n = 1` torus | SV3 holds, PELModuli §M0.12 Siegel embedding with `g = [F⁺:ℚ] > 0` | Torus stays in scope; both routes agree (Check) |
| Shin09 Definition 5.2 | wholly definite datum | requires only that `⟨v, h(√−1)w⟩` is positive definite, which holds for one sign of the form | Layers 9–10 apply to `b₀` |

## Checks run

- **Elaboration.** `lake env lean packages/IgusaVarietiesAndTorsionConcentrationPartII/Suggested.lean`, run from the content checkout: exit 0, with only the warnings `declaration uses 'sorry'` at lines 79 and 91. There are no `TauCeti.*` imports, so nothing had to be built first.
- **Signatures.** I put `#check @name` for all four declarations in one scratch file and elaborated it once. The elaborated types of `IsStrongGenericAt`, `IsCompletelySplitStrongGenericPrime`, `infinite_setOf_isCompletelySplitStrongGenericPrime` and `infinite_setOf_isStrongGenericAt_degree_one` are unchanged. They keep every binder (`Field F`, `NumberField F`, `Field L`, `NumberField L`, `Algebra F L`, `IsGalois F L`, `Field k`, `Finite k`, `n`, `r`) and the existential witness, and they agree with §§8.7–8.8. Nothing changed.
- **Dependency check** (`gate --depcheck … --movable`), full output:

  ```text
  depcheck: 236 roadmaps, 2153 edges, 0 problem(s)
  ```

  There is no UPWARD, CYCLE or moved line.
- **Citation resolver** (`roadmaps resolve` on the README): no cross-roadmap citation and no Lean name found nowhere. I checked the newly cited sections by reading them at the open heads: PELModuli §§M0.12, M3.3, M3.4, M4.3; PerfectoidShimuraVarieties §§2.1–2.2, 3.5; parent §§0.12, 0.24, 1.1, 1.2, 1.4a, 1.6, 3.17, 4.5; EndoscopicTransferAndUnitaryTraceComparison §§7.7, 7.10, 8.21; ShimuraCompactifications §7.3.

## Ownership

§8.9 is owned here. I searched by object across main, the open heads and the board packages (wholly definite data, zero-dimensional PEL moduli, definite Igusa varieties). Two near matches exist, and neither states this comparison:

- ShimuraVarieties §8.6 covers zero-dimensional Shimura varieties of tori, a case where SV3 holds.
- EndoscopicTransferAndUnitaryTraceComparison §13.8 treats functions on `G(ℚ)\G(𝔸_f)/K` for its packet switches between unitary groups.

No new supplier gap is needed. PerfectoidSpaces §P6.8 is not cited, because the finite-level route builds no perfectoid space.

## Notes for the maintainer

- **Source issue in CS17.** §5.1 (p. 730, CS17 line 3281) asserts that `(G, {h})` is a Shimura datum in the sense of §2.1. Condition (3) of §2.1 (p. 660, CS17 line 447) fails for wholly definite data of rank `n ≥ 2`, so CS17's argument covers only data satisfying SV3. The README records this in §8.1.
- **No renames.** No Lean name and no section number changed; §8.9 is new and nothing was renumbered. Other roadmaps' citations of this package are unaffected.
- **Untrusted text.** The review contained no instruction aimed at the worker or its tools.
