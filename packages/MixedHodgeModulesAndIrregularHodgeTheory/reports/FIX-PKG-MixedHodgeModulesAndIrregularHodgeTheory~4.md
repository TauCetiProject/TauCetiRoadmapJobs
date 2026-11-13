# Repair report: MixedHodgeModulesAndIrregularHodgeTheory

I checked each of the four findings of REV-PKG-MixedHodgeModulesAndIrregularHodgeTheory~3 against the sources, the pinned libraries and the named supplier roadmaps. All four are correct, and none is disputed. The changes are in `packages/MixedHodgeModulesAndIrregularHodgeTheory/README.md` and in two locator strings of `sources.toml`. `Suggested.lean`, `metadata.toml` and `design/plan.json` are unchanged. No new supplier gap is needed: the missing relative compactification is a stated target of a roadmap already on main.

## F01 (P2) — applied

§5.2: "`D` exchanges the two" → `D` sends weights `≤ w` to `≥ −w` and weights `≥ w` to `≤ −w`. The Tate twist bound is also made explicit (`w − 2m`). Locators added: Sai88 (0.9), p. 852, lines 138–140 (`M ≅ D M(−w)`), and Sai90 Remark 4.6(1), p. 328, lines 3656–3662. Two Checks added: the Tate lines `ℚ(∓1)`, and `ℚ[−1] ↦ ℚ[1]` for the degree shift.

## F02 (P2) — applied

§1.1: the projective compactification of the graph is replaced by a dense compactification `X ⊂ X̄ → Y` from EtaleCohomologyFoundations §§G.1–G.2 (`Compactification`, `DenseCompactification`, `nagataCompactification`). The statement keeps its generality (separated varieties). In Needs, ResolutionOfSingularities §6.2 → EtaleCohomologyFoundations. The Check `P¹ ⊃ G_m` → `id : A¹ → A¹` (fibres empty over 0, one point elsewhere), with `Hom(P¹, A¹)` constant as a negative control. A supplier contract and a scope bullet were added.

The same pattern occurred in §1.2: `Rf_!` factors `f` as an open immersion followed by a proper map, which is the same Nagata step. §1.2 Needs and the Layer 1 dependency summary now cite EtaleCohomologyFoundations §§G.1–G.2 as well. Other compactification uses were checked and left unchanged. §§5.1–5.2 and 9.2 concern quasi-projective varieties, which embed in `P^N × Y`. §4.6 and §12.1 use ResolutionOfSingularitiesCharacteristicZero §6.2 for a smooth quasi-projective variety, which is within that supplier's contract. §12.8 uses a toric closure.

## F03 (P3) — applied

§6.5: "faithfulness by the Fourier description 6.6" is replaced by the direct argument. Since `ω` is exact, it is enough that `ω E = 0` forces `E = 0`. Rank zero on `G_m` means `FT E = δ₀ ⊗ V` (Kashiwara), so by inversion the underlying module of `E` is `O ⊗ V`, and `RΓ = V[1]` (1.5). The vanishing in 6.1 gives `V = 0`, and faithfulness of rat (4.7) gives `E = 0`.

Needs and the dependency summary gain 6.1, 1.5, 4.7 and Springer §9.2. The constant-object Check now records that `pℚ_{A¹}` lies outside `EMHS`. The same pattern occurred in the §7.3 API bullet, which cited "the Fourier–Laplace twistor triple of 7.4"; it now cites Sab05 §8.4, p. 206, which §7.3 already uses. A scan of the whole README for forward section references found no other one in a proof route or Needs line; the rest are pointers or Checks.

## F04 (P3) — applied

§12.4, Check for `φ = 0`: "`Δ(0) = {0}` is not full dimensional" → qualified by `n ≥ 1`. For `n = 1`, `H⁰ = H¹ = ℂ`, so the cohomology is not concentrated in the top degree. For `n = 0`, `affineSpan ℝ {0} = ⊤`, the complex is `ℂ` in degree 0, and `1 = 0! · vol({0})`. The theorem still includes `n = 0`. The other "not full dimensional" claims (the 12.4 Check for constant `φ` with `n ≥ 1`, the 12.6 Check, and the worked example for `x` on `(G_m)²`) were already correct.

## Check outcomes

- **Elaboration.** `lake env lean packages/MixedHodgeModulesAndIrregularHodgeTheory/Suggested.lean`, run from the content checkout, exited 0. Its only diagnostic was ``Suggested.lean:146:8: warning: declaration uses `sorry` ``. The file is unchanged.
- **Signatures.** I put `#check @name` for all 13 declarations into one scratch copy and elaborated it once. Each elaborated type matches §§12.4 and 12.6. The file has no section `variable`s; the theorem binds `hfull : affineSpan ℝ (newtonPolytope φ) = ⊤` and `hnd : IsNewtonNondegenerate φ` explicitly. Nothing changed.
- **Dependency direction** (full output):

  ```text
  depcheck: 236 roadmaps, 2146 edges, 0 problem(s)
  ```

  There is no UPWARD, CYCLE or moved line. The one new edge is to EtaleCohomologyFoundations, which is on main and at position 43 of the merge order, before this roadmap at 261.
- **Citations.** `roadmaps resolve` on the README reports no cross-roadmap citation and no Lean name found nowhere. I read EtaleCohomologyFoundations §§G.1–G.3 on main, and checked `Compactification`, `DenseCompactification` and `nagataCompactification` in its `Suggested.lean` on main. The theorem is stated for every quasi-compact quasi-separated `S` and every separated finite-type `f`.
- **Gate failures.** The brief lists none.

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| 5.2 duality bound | point, `ℚ(−1)`; point, `ℚ(1)`; `pℚ_{A¹}` | Weight 2 ↦ `D = ℚ(1)` of weight −2: `≥ −2` holds, `≥ 2` fails. Weight −2 ↦ `ℚ(−1)` of weight 2: `≤ 2` holds. Weight 1 ↦ `pℚ(1)` of weight −1. | Negated bound holds; the old same-`w` reading fails. Checks added. |
| 5.2 duality, derived degrees | `ℚ[−1]` on a point | `H¹ = ℚ`, weight `0 ≤ w + 1`, so `w = −1` is the least bound. `Dℚ[−1] = ℚ[1]`, `H^{−1}` of weight `0 ≥ 1 − 1`. | `H^j D = D H^{−j}` gives `≥ −w + j`; matches. |
| 5.2 Tate bound | `ℚ` of weight 0, `m = 1` | `ℚ(1)` has weight `−2 = 0 − 2·1`. | `≤ w − 2m` stated explicitly. |
| 5.2 polarization source | Sai88 (0.9) | `M → D M(−w)`, so `D M ≅ M(w)` has weight `w − 2w = −w`. On `ℚ(−1)`, `w = 2`: dual weight −2. | Consistent with 5.1 (`D pℚ_X = pℚ_X(d)`). |
| 1.1 relative compactification | `j : G_m → A¹`; proper `f`; `X = ∅` | `Γ(P¹, O) = ℂ`, so maps `P¹ → A¹` are constant, while `j` is `x ↦ x`. `A¹ →id A¹` is proper, with fibre over 0 empty after restriction to `G_m` and one point elsewhere. Proper `f` uses the identity compactification. Empty `X` gives the empty stratification. | The `P¹` claim is false; the Nagata route passes. |
| 1.1 restriction to `X` | `X` open in `X̄`, union of strata | The frontier condition persists because closures in `X` are closures in `X̄` met with `X`. Whitney (b) is local, so it persists. A trivialization of `p` that preserves strata maps `X` onto `X`. | Statement now says this. |
| 1.2 `Rf_!` factoring | `j : G_m → A¹` | `Rj_!` is extension by zero, `H²_c(A¹) = ℚ` as in the 1.2 Check; the factorization `G_m ⊂ A¹ → A¹` is a dense compactification. | Needs now names the supplier of the factorization. |
| 6.5 faithfulness | `E = 0`; `K`; `Π δ_a`, `a ≠ 0`; `pℚ_{A¹}` (outside EMHS) | `ω K = ℂ`, `FT K = O(*0)` of rank 1. `FT Π δ_a = E^{at}(*0)` of rank 1. `FT O = δ₀`, so `V = ℂ` and `RΓ = ℚ[1] ≠ 0`, excluded by 6.1. | The direct route separates the domains; no forward use of 6.6. |
| 6.5 exact ⇒ faithful | `u : A → B` in EMHS with `ω u = 0` | `ω(im u) = im(ω u) = 0`, so `im u = 0` and `u = 0`. | The reduction is valid. |
| 7.3 API bullet | Sab05 table of contents | §8.4, p. 206, is "Partial Fourier–Laplace transform of regular twistor D-modules". | The locator is correct; the reference to 7.4 now names a consumer, not an input. |
| 12.4 `φ = 0` Check | `n = 0, 1, 2` | `n = 0`: `{0} = ℝ⁰`, the complex is `ℂ`, dimension `1 = 0!·1`. `n = 1`: `H⁰ = H¹ = ℂ`, so not concentrated and not full dimensional. `n = 2`: dimensions `C(2,q) = 1, 2, 1`. | The qualification `n ≥ 1` is correct; the point case is retained. |
| 12.6 Lean at `n = 0` | `φ = c` | `LaurentRing 0 = ℂ`, `topCohomology = ℂ/⊥`, `volume {0} = 1` (Dirac on the empty product), nondegeneracy vacuous. | The headline holds; no change. |

## Sources, suppliers and ownership

- **Sources read.** Sai90 lines 3500–3525 ((4.5.1)–(4.5.2), p. 324) and 3641–3662 (Remark 4.6, p. 328); Sai88 lines 128–145 ((0.9), p. 852); the Sab05 table of contents (line 87, §8.4). No new source was needed, no text was requested, and `needs-references.toml` was not written.
- **`sources.toml`.** Sai88's locator gains "(0.9) p. 852" and its `cited_for` becomes "Layers 4, 5". Sai90's locator gains "Remark 4.6(1) p. 328". No key was added or renamed.
- **Ownership.** Relative compactification belongs to EtaleCohomologyFoundations §§G.1–G.3 on main. This roadmap imports it, and the existing `ResolutionOfSingularitiesCharacteristicZero` §6.2 contract is kept for its absolute uses (§§4.6, 12.1). Nothing is planned again, and no declaration of `Suggested.lean` borrows another roadmap's name.
- **Open pull requests.** The overlap file lists no open pull request that changes this roadmap and no dropped id. The new citation is to main, so it adds no dependency on an open revision.

## For the maintainer

- No section, target or Lean name of this roadmap was renamed or removed, so roadmaps that cite §§1.1, 1.2, 5.2, 6.5, 7.3 and 12.4 are unaffected. EllAdicHomotopyTypesAndWeights cites 5.2 for the weight bounds. That statement now carries the explicit sign flip under duality, which is what that consumer needs.
- There is a new supplier edge to EtaleCohomologyFoundations, which is on main.
- No text in the review or the sibling roadmaps asked for anything outside this job.
