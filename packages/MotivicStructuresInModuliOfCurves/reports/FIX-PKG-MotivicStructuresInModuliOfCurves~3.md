# FIX-PKG-MotivicStructuresInModuliOfCurves~3

Repair round for the eight findings of `REV-PKG-MotivicStructuresInModuliOfCurves~2` on `packages/MotivicStructuresInModuliOfCurves`. Files changed: `README.md`, `sources.toml`, and the top-level `gaps` list of `design/plan.json` (destinations and `needs` only; no slug changed, nothing else in the plan touched). `Suggested.lean` and `metadata.toml` are unchanged.

## R01 (P1) — applied

Verified: clp lines 1044–1048 (§7.2 convention 5) count edges only, with unit decorations. Tautological decorations of codimension `c` add `c` twists.

Changed: §11.2 now records the total codimension `c` of the decorations. The morphism is `L^{e+c} S₁₂ → H^{11+2e+2c}`, and a graphical basis requires `e + c = (k − 11)/2`. The first two API bullets and the basis bullet were changed to match. New Check: `aω_i` on the zero-edge graph of type `(1, 12)` has `(e, c) = (0, 1)`, degree 13. Pattern: §4.11 now says "Tate twists from edges and from tautological decorations".

## R02 (P1) — applied

Verified: for `U = 𝔸¹`, `W₀H⁰ = ℚ` but `Gr^W_0 H_c^0 = 0`.

Changed: Conventions now state `Gr^W_k H_c^k(U) ≅ (W_{2d−k}H^{2d−k}(U))^∨(−d)` and the reverse formula, with the `𝔸¹` witness. In §5.4 the compact-support consequence is now derived through the complementary degree `2d − k` (also odd), with a new Check at `(1, 10)` and `(1, 11)`. Pattern: §12.7's vanishing of `Gr^W_{15} H_c^{15}` now cites this duality and adds the duality gaps to its Needs.

## R03 (P2) — applied

Verified: petersen-tavakol-yin lines 597–613 (Remark 3.6) say the transposed label needs the sign-twisted action. Main SchurWeyl §9.7 has the same Sp₂, k = 2 check. CLP (clp lines 412–425) uses the cohomological action.

Changed: §3.1 now states `⊕ V_λ ⊗ T_λ` for the plain permutation action and `⊕ V_λ ⊗ T_{λ^T}` for the action `sgn(σ)·permute`, which is the Koszul action. The Young-symmetrizer definition keeps the plain action. A rank-two Check gives traces `+3` and `−3`. §4.2's route now names the signed action.

## R04 (P2) — applied differently

Verified: the degree-eleven base region is `(2, ≤9), (3, ≤7), (4, ≤5), (5, ≤3)`. CLP-H11 needs Lemma 3.4, odd vanishing through degree nine in all genera, and an injective `β` (§§4.1–4.3; clp-h11 lines 386–388, 395–397, 447–577). The old route also left out §9.8.

Changed: new §10.7 (oriented weight-`k` boundary complex), §10.8 (genus two) and §10.9 (all genera, with the corrected base region). §§4.7–4.8 keep only their genus-one content (CLP-H11 §2; CLP Proposition 2.4). §12.6 becomes the weight-15 row of §10.7. §§4.8, 11.1, 11.10, 12.1 and 12.10 cite §10.9. Layer 10 is renamed.

Why differently: the review proposed moving §5.4 earlier. That alone cannot work, because the route also needs §9.8 (Layer 9). Moving the target is the fix that leaves no forward dependency. The reviewer's other points are applied:
- the base region is corrected and computed in a §10.9 Check;
- `n = 11` in genus two is handled by §4.6 at `(11, 11)`;
- the `2ξ₁^*` sign computation is a §10.8 Check;
- the Needs lines cite the weight spectral sequence, the orientation character, odd vanishing in lower degrees and the cusp restriction maps.

Consumers updated: §§4.8, 11.1, 11.10, 12.1 and 12.10 now cite §10.9 where they use `H¹¹` in genus `≥ 2`. Layer 10 is renamed "Even cohomology, even homology and the eleventh cohomology group", and "How to read the build" says so.

## R05 (P2) — applied differently

Changed: §4.6 now holds for every `k ≥ 2`. CLP's three families together with a named two-cusp space `T^k_n` generate an STE containing `H^k(M̄_{2,n})`, and `T^k_n = 0` for `k ≤ 23`, which is CLP's lemma there. The `k ≤ 23` bound, the enlarged family, "left open" and the consumer argument are gone; Corrections is rewritten.

Not applied: restoring the printed all-degree lemma as a target, with containment of `T^k_n` as an intermediate target to be proved. Evidence:
- CLP's proof (clp lines 435–437) asserts this containment without an argument, and the review says it has no proof either.
- I computed an obstruction at `(n, k) = (23, 24)`, now §4.6's third Check. There, the only generator that can carry `S₁₂ ⊗ S₁₂ L` is `H^{24}(M̄_{2,22})`.
- Forgetful pullback acts as `π_x^*[A′, α ⊗ β] = [A′ ∪ x, f_x^*α ⊗ β] + [A′, α ⊗ f_x^*β]`.
- In the basis `ω_C, C ∋ p` (CLP-H11 Corollary 2.4), `f_x^*` sends basis vectors to basis vectors, so it keeps the coefficient sum `ε`.
- So `φ[A, α ⊗ β] = (−1)^{|A|} ε(α)ε(β)` vanishes on every such pullback. Because `n` is odd, `φ` agrees with the Koszul sign when the two factors are exchanged. And `φ[A, ω ⊗ ω_C] = 1` at `|A| = 10`.

So the generation argument cannot reach `T^{24}_{23}` unless the pushforwards satisfy a relation that neither source gives. A target must be a true statement, so the README states the strongest form that is proved for every `k`.

## R06 (P2) — applied

Changed: every `MC.*`, `H.*/…` and `§C.0` now cites the current section. These are StableReductionPartII §§0.4, 2.248, 3.1–3.3, 3.5, 3.7, 3.10–3.11, 4.1, 4.14, 5.1, 5.10–5.11 and 7.11; SchemeAndStackFoundations §4.15; MixedHodgeModules §§5.1, 4.5; and MappingClassGroups §2.3. Stable graphs cite StableReduction Layer 1, with a new contract. The plan's gap sections are updated; slugs are unchanged.

## R07 (P2) — applied

Verified: with the binomial λ-structure, the partial sums of `Σ_r ψ_r(t)/r` modulo `t²` are `t, 3t/2, 11t/6`, so they do not converge. With the power action, `Exp(t) = (1 − t)^{−1}` and `Log((1 − t)^{−1}) = t`. This uses `Σ_{r|N} μ(r) = [N = 1]` and `ψ_sψ_r = ψ_{sr}`.

Changed: the `gap:complete-adams-series` contract in both the README and the plan now requires:
- a complete, separated, multiplicative filtration;
- commuting continuous `ψ_r` with `ψ_r(F^a) ⊂ F^{ra}`;
- explicit `Exp` and `Log` as inverse bijections `F^1 → 1 + F^1`.

The completed symmetric functions satisfy this, since `ψ_r` multiplies degree by `r`. The witness is a new §1.4 Check.

## R08 (P3) — applied

Verified: a genus-three graph with two genus-one vertices has `b₁ = 1`, `r + 2` edges and at most `n + 4 − r ≤ 15` flags on them. With three genus-one vertices it is a tree with at most `n + 3 − r ≤ 14` flags on any two. Two cusp vertices need 22.

Changed: the §12.10 Check now gives these bounds and separates what the semiring allows from what occurs. It cites the `(2, 20)` graph (degree `24`) without claiming the pushforward is nonzero. The route cites §10.9 instead of "CLP-H11".

## Checks

- **Elaboration.** `lake env lean packages/MotivicStructuresInModuliOfCurves/Suggested.lean`, run from the content checkout, exited 0 with no output. The file is unchanged: `import Mathlib` only, no `TauCeti.*` import, no declarations. So there was no `#check @name` probe to run and no binder change. The worker's single listed declaration `and : Bool → Bool → Bool` is Mathlib's `and`.
- **Dependency check** (`gate --depcheck … --movable`): `depcheck: 236 roadmaps, 2147 edges, 0 problem(s)`. There was no UPWARD, CYCLE or `moved:` line.
- **`roadmaps resolve`.** The one lead is "MappingClassGroupsAndCanonicalRepresentations §2.3: no roadmap … on main or in an open pull request". This is a false positive: it is a board package in the merge order (line 291, before this roadmap, line 343), and its §2.3 heading is at `packages/MappingClassGroupsAndCanonicalRepresentations/README.md:864`.
- **Gate failures.** None were listed in the brief.
- **Sources.** All locators were read in the cached texts; nothing was fetched and no reference is missing. In `sources.toml`, `clp-h11` has new locators and `cited_for` (4.7, 10.7–10.9, 12.10), and `petersen-tavakol-yin` adds Remark 3.6. The CLP-H11 reference now says arXiv version 2 numbering and pages are cited.
- **Ownership.** New objects: the oriented weight-`k` boundary complex (§10.7) and the degree-eleven theorems (§§10.8–10.9). A search of main, the 438 open heads and the board packages found no other owner. The ℓ-adic `E₁` row for `M̄_{g,n}` is DeligneWeightsAndPurity §8.24 at its head, and §10.7 cites it. This roadmap owns only the explicit clutching description, as §12.6 did before.

## Adversarial pass on changed statements

| Statement | Instances | Values computed | Result / change |
| --- | --- | --- | --- |
| Conventions duality | `𝔸¹`, `k = 0, 2` | same-degree: `W₀H⁰ = ℚ` vs `Gr⁰H_c⁰ = 0`; complementary: `0 = W₂H² = 0`, `Gr²H_c² = ℚ(−1) = (W₀H⁰)^∨(−1)`; reverse: `(Gr²H_c²)^∨(−1) = ℚ = W₀H⁰` | Fixed. |
| §5.4 compact clause | `(1,10)`, `(1,11)` | `2d − k = 9`: `W₉H⁹ = 0`; `2d − k = 11`: `S₁₂^∨(−11) ≅ S₁₂` of rank 2 | Check added. |
| §3.1 signed action | `g = 1`, `n = 2`; `g = 2` | `Sym²V` rank 3: unsigned trace `+3` (`T_{(2)}`), signed `−3` (`T_{(1,1)}`) | Both conventions stated. |
| §11.2 degree/twist | `(e,c) = (0,1)`, `(2,0)`, `(1,0)` | `11+0+2 = 13` with source `L S₁₂`; `11+4 = 15` with `L²S₁₂`; `11+2 = 13` with `L S₁₂` (§11.3, same Hom) | Fixed. |
| §1.4 / Adams gap | `ℚ[[t]]`, binomial vs power | `H_R t = t, 3t/2, 11t/6`; `Exp(t) = 1/(1−t)`; `Σ_N t^N/N Σ_{r\|N} μ(r) = t` | Hypothesis added. |
| §4.6 `T^k_n` vanishing | `k = 23, 24`; `n = 13, k = 15` | two odd degrees `≥ 11` sum `≥ 22`: `T^{23} = 0`; `k = 24` allows only `11 + 11`; landing pairs `(1,15)`, `(1,13)`, `(2,12)`, `(1,14)` | Holds. |
| §4.6 obstruction | `n = 23`, `\|A\| ∈ {10,…,13}` | `φ(π_x^*[A′, α⊗β]) = (−1)^{\|A′\|}εε(−1+1) = 0`; exchanging the factors: `(−1)^{23−\|A\|} = −(−1)^{\|A\|}` matches the Koszul `−1`; `φ[A,ω⊗ω_C] = 1` | Printed family not asserted for `k ≥ 24`. |
| §4.7 boundary rule | `n = 12`, `B^c = {x,y}` | `\|A∩B\| = 9`: 0; `\|A∩B\| = 10`: `pr₁^*ω_{ε(A)}`; ranks `2·binom(11,10) = 22`, `2·binom(12,10) = 132` | Check added. |
| §10.7 complex | `(0,3)`, `(0,4)` with `k = 0`, `(1,2)` | `ker α = ℚ = Gr⁰H_c⁰(pt)`; `ℚ → ℚ³` diagonal, `ker = 0`, coker `ℚ² = Gr⁰H_c¹(ℙ¹ − 3pts)`; two-edge stratum: oriented invariants 0, plain `ℚ` | Holds. |
| §10.8 genus two | `n = 9, 11, ≥12` | `2g−2+n = 11`: §2.3 silent, `9 ≤ c(2) = 10`; `(11,11)`: generators of degrees `11, 9, 9`, all 0; `σ^* = −1`, `det = −1`, so the `β` component is `2ξ₁^*` | Holds. |
| §10.9 base region | `g = 2…6` | `max(2g, 2g−2+n) ≤ 11` gives `n ≤ 9, 7, 5, 3`, and none for `g = 6` (`2g = 12`); CKgP ranges `10, 11, 11, 7` cover them; `(5,3)` boundary has vertex `(4,5)`, which needs §9.8 | Holds. |
| §10.9 induction | `(3,12)` | separating `(2,2)–(1,12)`: `dim H¹¹ = 22`; `Γ′` has vertices `(1,4)`, `(1,12)`, other contraction `(2,14)` with `H¹¹ = 0` | Holds. |
| §10.9 region exhaustive | `n ≤ 1` or `n ≥ 2` outside the region | `2g > 11` or `2g−2+n > 11` satisfies the hypothesis of §2.3 in each case | Holds. |
| §12.10 flag bound | `g = 3`, `n = 11`, `r = 0` | two genus-one vertices `≤ 15`, three `≤ 14`, need `22`; `(2,20)`: `11 + 11` flags, degree 24 | Check corrected. |
| R06 contracts | each new section id | §0.4 (line 338), §2.248 (5615), §3.10 (5981), §7.11 (7298) at the StableReductionPartII head; MixedHodge §4.5 (431), §5.1 (480); MappingClassGroups §2.3 (864); SchurWeyl §9.7 (main) | All resolve. |

## For the maintainer

- Layer 10 is renamed and gains §§10.7–10.9. §4.7 is renamed "The eleventh cohomology group in genus one". §4.8 no longer claims `H¹¹(M̄_{g,n}) ⊂ S_ω` for `g ≥ 2`; that claim is now §10.9. §12.6 is the weight-15 row of §10.7. No other roadmap or board package cites these sections (grep of main, the open heads and `packages/`), so no renumbering table is needed.
- §4.6 does not assert CLP Lemma 3.2's printed generators for `k ≥ 24`. If a human prefers the printed form, the obstruction in §4.6's third Check must first be answered by a relation among the two-cusp pushforwards.
- Ownership against open pull requests was checked with the roadmap tools, which index all 438 open heads.
- The supplier contract for DeligneWeightsAndPurity §8.24 was rechecked at its head, including the `M̄_{g,n}` specialization; it is unchanged.
