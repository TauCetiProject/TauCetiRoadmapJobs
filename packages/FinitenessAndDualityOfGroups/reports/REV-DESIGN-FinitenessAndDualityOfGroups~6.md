<!-- from CBirkbeck, https://github.com/TauCetiProject/TauCetiRoadmapJobs/pull/15109#issuecomment-6881404240 -->
Review (claude) of ae7daff

Verdict: needs_changes

**For the human reviewers:** this review raises 2 questions that a human decides (the scope of the roadmap, or a licence). They are in the section of that name at the end and do not change the verdict.

1. **F01** (P3) Two negative controls of 6.6 lack the coefficient qualifier

   **Location.** `design/README.md:1442`: "`S²` is a closed manifold with trivial fundamental group, which is a Poincaré duality group of dimension `0`, not `2`"; line 1447, "`F₂` is not a Poincaré duality group of dimension `1`"; `design/plan.json:1490` and `:1495`.

   **Claim.** Theorem 6.6 is stated "over every `R : Type`", and the two Checks say that its conclusion fails for `S²` and for the doubled-point circle without naming the coefficients.

   **Witness.** `R = 0`: by the 6.1 and 6.4 Checks every group is a Poincaré duality group of every dimension over the zero ring, so the trivial group is one of dimension `2` and `F₂` one of dimension `1`. Same pattern as the previous round's F01.

   **Exact repair.** In both files: "…which over every nonzero `R` is a Poincaré duality group of dimension `0`, not `2` (over the zero ring it is one of every dimension, 6.4)"; and "over `ℤ` (indeed over every nonzero `R`, 6.4) `F₂` is not a Poincaré duality group of dimension `1`".

   **Retest.** `R = ℤ`, `G = 1`: `H⁰(1, ℤ) = ℤ`, `H₂(1, ℤ) = 0`, so dimension `2` fails and dimension `0` holds. `R = ℤ`, `F₂`: `H¹ = ℤ²` against `H₀(F₂, ℤ_w) ∈ {ℤ, ℤ/2}`. `R = 0`: all groups are `0`, both hold; the repaired wording says so.

2. **F02** (P3) The third Check of 2.5 differs between the README and the plan, and the plan's instance does not test 2.5

   **Location.** `design/README.md:847`: "(a) needs directedness: `ℤ²` is the union of its cyclic subgroups, each of `hd_ℤ ≤ 1`, while `hd_ℤ ℤ² = 2`"; `design/plan.json:579`: test `S3`, "`S₃` as union of its cyclic subgroups (not directed): the colimit identification fails."

   **Claim.** The plan's test is offered as the negative control of 2.5(a), `hd_R G = sup_i hd_R G_i`.

   **Witness.** For `S₃` over `ℤ`: `hd_ℤ(ℤ/2) = hd_ℤ(ℤ/3) = ⊤ = hd_ℤ S₃`, so `sup = ⊤ = hd`; over `ℚ` both sides are `0`. The formula of 2.5(a) holds on this non-directed family; the instance tests the supplier's colimit statement (SchemeKTheoryOperations §6.7, which already has it), not 2.5.

   **Exact repair.** Replace the plan test `2.5/S3` by the README's instance: "`ℤ²` is the union of its cyclic subgroups (not directed), each of `hd_ℤ ≤ 1`, while `hd_ℤ ℤ² = 2`."

   **Retest.** `ℤ²`: `sup_i hd_ℤ ⟨v⟩ = 1 < 2 = hd_ℤ ℤ²` (`H₂(ℤ², ℤ) = ℤ`); two cyclic subgroups with independent generators have no cyclic upper bound, so the family is not directed.

3. **F03** (P3) 6.5(c) does not say how `G` acts on `D_N`

   **Location.** `design/README.md:1402`: "`D_G ≅ D_{G⧸N} ⊗_R D_N` with `G` acting diagonally".

   **Claim.** The isomorphism is one of representations of `G`; `D_N = Hⁿ(N, RN)` is defined (6.2, Conventions) only as a representation of `N`.

   **Witness.** BieriEckmann1973 lines 474–477 (after Theorem 3.5) fix it: `G` acts on `Hⁿ(N; ℤN)` diagonally by conjugation on `N` and on the coefficients. The README has this only inside a Check (line 1414, "through conjugation").

   **Exact repair.** Add to the statement: "where `G` acts on `D_{G⧸N}` through `G ⧸ N` and on `D_N = Hⁿ(N, RN)` by conjugation on `N` together with conjugation on the coefficients `RN`; on `N` this is the action of the Conventions (the pair of conjugation by `x ∈ N` and left multiplication by `x` acts trivially on cohomology, leaving right multiplication by `x⁻¹`)."

   **Retest.** Klein bottle group, `N = ⟨a⟩`: `H¹(N, RN) = RN/(a − 1) ≅ R`; conjugation by `t` sends `a ↦ a⁻¹`, and the class of `1` (dual to the generator `[a]`) to minus itself, so `w(t) = −1`, `w(a) = 1`, as the 6.4 Check requires. `N = G`: the stated action is the Conventions action, and `D_{G⧸N} = R`.

4. **F04** (P3) 7.4 cites Brown1974 for a statement the passage makes over the localization, not the completion

   **Location.** `design/README.md:1552`: "`ℤ_p ⊗ P ≅ (ℤ_p G)^m` and `𝔽_p ⊗ P ≅ (𝔽_p G)^m` (Brown1974 Appendix A, lines 1311–1320, the refinement used in the proof of Theorem 7)".

   **Claim.** The locator supports the two displayed isomorphisms, with `ℤ_p` the `p`-adic integers (the route uses `PadicInt` and Tau Ceti's Swan theorem for `ℤ_p[G]`).

   **Witness.** Brown1974 lines 1315–1318: the refinement is for the localization of `ℤ` at a prime ideal (`ℤ_(p)`, and `ℚ` at `0`). That form implies both displayed ones by base change and is not stated in 7.4.

   **Exact repair.** Add a third conclusion and say which form the source states: "and `ℤ_(p) ⊗ P ≅ (ℤ_(p) G)^m` for the localization `ℤ_(p)`, the form of Brown1974 lines 1315–1318; it follows from the `𝔽_p` form because `p` lies in the Jacobson radical of `ℤ_(p)[G]`, so an isomorphism modulo `p` of finitely generated projective modules lifts (Nakayama)." *Needs:* add Mathlib Nakayama's lemma.

   **Retest.** `G = ℤ/2`, `P = ℤG`: `m = 1` in all three forms. `G = 1`, `P = ℤ^m`: `ℤ_(p)^m`. Trivial module `ℤ` over `ℤ/p` (not projective): `ℤ_(p)` has rank `1 < p`, not free over `ℤ_(p)[ℤ/p]`, agreeing with the existing negative control.

5. **F05** (P3) "Downstream consumers" names an id and a dependency the other roadmap does not have

   **Location.** `design/README.md:2054`: "MotivicStructuresInModuliOfCurves (TC.1, the virtual cohomological dimension of mapping class groups) consumes 4.1 … and 4.3".

   **Claim.** That roadmap has a target `TC.1` and takes 4.1 and 4.3 from this one.

   **Witness.** `packages/MotivicStructuresInModuliOfCurves/README.md:337` is "### 2.1 The virtual cohomological dimension"; its `*Needs:*` (line 341) lists MappingClassGroupsAndCanonicalRepresentations §C.0 and StableReductionPartII only. `TC.1` occurs only in that package's `design/README.md:132`.

   **Exact repair.** "MotivicStructuresInModuliOfCurves §2.1 (rational vanishing above the virtual cohomological dimension of mapping class groups) is an instance of 4.1 and 4.3 and can cite them." No supplier edge of this roadmap changes.

   **Retest.** `§2.1` resolves at the package README (line 337); the sentence no longer asserts a `*Needs:*` edge that the cited text lacks.

Five findings, all P3; no P1 and no P2. Each carries a repair, so the verdict asks for changes: a fix round applies R01–R05. The declared supplier gap `gap:simplicial-replacement-dimension` (AlgebraicTopology §8.11a) is precise, minimal and declared in both files; it is not a finding. This is a design: there is no `Suggested.lean`, and elaboration is not available (this lane does not elaborate), so nothing here is a claim about a Lean build. Below, `design/README.md` abbreviates `packages/FinitenessAndDualityOfGroups/design/README.md` and `design/plan.json` abbreviates `packages/FinitenessAndDualityOfGroups/design/plan.json`.

## Verified sound

### The previous finding, and its pattern

The round-5 review has one finding, F01 (its table row "R01" is the same item). The repair report marks nothing `not actionable`.

| Finding | Repaired passage (quoted) | Recomputed | Status |
|---|---|---|---|
| F01, normal closure (1.4) | `design/README.md:596`: "by (b), over every nonzero `R` it is not of type `FP_1`, while `FreeGroup {a, b}` is of type `FL` (1.8) … Over the zero ring both groups are of type `FL` (1.2)" | `N = ⟨⟨b⟩⟩ = ker(a ↦ 1, b ↦ 0)`, free on `aᵏba⁻ᵏ`; `N^ab = ⊕_ℤ ℤ`; `FP_1(N)` false over `ℤ`, `𝔽₂`; `R = 0`: `R[N] = 0`, `FL` | repaired |
| F01, lamplighter (1.7) | line 685: "has no converse over a nonzero `R` … over every nonzero `R` it is not of type `FP_1` (1.4). Over the zero ring both groups are of type `FL`" | `ℤ/2 ≀ ℤ = ⟨δ₀, t⟩`; base `⊕_ℤ ℤ/2` has finite finitely generated subgroups; quotient `ℤ` has ranks `(1, 1)` | repaired |
| F01, plan | `design/plan.json` tests `1.4/infinite_index` and `1.7/lamplighter` carry the same qualifier and zero-ring sentence | same values | repaired |

Passages the repair added or changed (1.4, 1.6, 1.7, 2.5, 8.3 Checks): recomputed in the table below; all correct. The same pattern (a negative claim with no coefficient ring) was searched in every Check and Examples paragraph of the nine layers: the Conventions, 1.2, 1.4, 1.5, 2.1–2.7, 3.1, 4.x, 5.x, 6.1–6.5, 7.x, 8.x, 9.x carry "`R ≠ 0`", "over `ℤ`" or a field. The one remaining occurrence is R01 (6.6).

### Adversarial table (sampled targets, end theorems, repaired passages, findings)

`C_m` is cyclic of order `m`, `F_r` free of rank `r`, `K` the Klein bottle group.

| Statement | Instances and values computed | Result |
|---|---|---|
| 1.3 implications, base change | `ℤ → 𝔽_p`: `0 → ℤ[ℤ] →(t−1) ℤ[ℤ] → ℤ → 0` is split over `ℤ` (free terms), stays exact. `ℤ → ℚ`, `C₂`: `FP` over `ℚ` (`e = (1+s)/2`), not over `ℤ` (`H²(C₂, ℤ) = ℤ/2`, `cd = ⊤`): no descent. `R' = 0`: every group `FL`. `FL ⇒ FP` strict: `ℚ[C₂]`, `1 = 2Σ(−1)ⁱrᵢ` impossible. | retain |
| 1.4 Check (repaired) | values in the previous table; `R = 0` both `FL` | retain |
| 1.6 Check (repaired) | `n = 0`: `FP_0(N)` true, so only `n ≥ 1` is claimed; `FL(F₂)` true, `FP_1(N)` false over `R ≠ 0` | retain |
| 1.7 Check (repaired) | previous table; theorem 1.7(a) over `0`: all three `FL`, consistent | retain |
| 1.8 amalgams, HNN, free groups | `n = 0`: `C` of type `FP_{0−1} = FP_0`, always true; `G/C`-sequence gives `FP_0`. `n = 1`: `C` unconstrained; `A ∗_C B` generated by generators of `A`, `B`. `n = ⊤`: `⊤ − 1 = ⊤`. `C₄ ∗_{C₂} C₆`: all three finite, `FP_∞` over `ℤ`. `BS(1,2)`: `0 → R[G/A] → R[G/H] → R → 0`, `A, H ≅ ℤ` each with a length-1 free resolution; cone has length `2`, so `FL` (Examples). `S = ∅`: `0 → 0 → R → R → 0`. `S = {s, t}`: ranks `(1, 2)`. | retain |
| 1.5 criterion (headline) | `ℚ`, `R ≠ 0`, `n = 1`: (b) at `k = 0` is `0 → R`; (e) at `k = 0` non-injective by `(1 − [1/j!])_j`. `n = 0`: (d) surjectivity of `(∏N_j)_G → ∏(N_j)_G` holds for all `G`. `R = 0`: `0 → 0`. | retain |
| 2.5 Check (repaired) | `F_∞ = ⋃F_n`, `R ≠ 0`: `H₁(F_n, R) = Rⁿ`, `hd = 1`, bound `cd ≤ 2`, value `1` (2.6); `R = 0`: `0, 0`. Plan test `S3`: `sup = ⊤ = hd` | README retain; plan R02 |
| 3.2 Serre | `ℤ² ≤ K`, index `2`: `2 = 2`. `dℤ ≤ ℤ`: `1 = 1`. `ℤ ≤ C₂ × ℤ`: `1 ≠ ⊤`, torsion. `G = H = 1`: `0 = 0`. Route: `cd H = 0` forces `H = 1` (2.7), so the swindle needs only `n ≥ 1`; stabilizers `K` in 3.1(f) inject into `G/core`, finite, hence trivial. `cd H = ⊤`: `cd G = ⊤` by 2.3(a). | retain |
| 4.2 `vcd` | `C₂ ≤ C₂ × ℤ`: `0 ≤ 1`; index-2 `ℤ`: `1 = 1`. Extension `C₂ × ℤ`: `1 ≤ 0 + 1`; `K`: `2 ≤ 1 + 1`; `2ℤ ◁ ℤ`: `1 ≤ 1 + 0`. Infimum over a smaller family gives `vcd H ≥ vcd G` at finite index. Hypothesis: a nonsplit central extension of an infinite simple torsion-free group by `C₂` has no torsion-free finite-index subgroup, `vcd = ⊤` with both factors finite. | retain |
| 5.2 `cd_R ≤ gd`, finite models | point: `0 ≤ 0`; torus: ranks `(1, 2, 1)`, `cd_R ℤ² ≤ 2`, value `2` for `R ≠ 0`, `0` for `R = 0`; `C₂`: `⊤ ≤ ⊤`; infinite rose: dimension `1`, infinitely many `1`-cells, `FP_1` fails | retain |
| 5.3 Eilenberg–Ganea | `G = 1, ℤ², ℤ³`: `gd = 0, 2, 3 ≤ 3`; `C₂`: `⊤ ≤ ⊤`. Indexing: `ker(C_{n−1} → C_{n−2})` is the `n`-th syzygy, projective iff `cd ≤ n`; `n − 1 ≥ 2` keeps `π₁` and gives `π_{n−1}(Ỹ) = H_{n−1}`; new `C_n` maps isomorphically onto the free cycle module. | retain |
| 6.1 duality group | `ℤ`: `k = 0`, `M^ℤ → H₁(ℤ, M) = ker(t − 1)`, identity; `k = 1`: `x ↦ x(t)`; class `2[t]` gives `×2`, not bijective over `ℤ`. `C₂/ℚ`: `M^G → M_G` with inverse averaging. Omitted clause `Hⱼ(G, D ⊗ M) = 0`, `j > n`: follows from `hd ≤ cd ≤ n`. `R = 0`: every dimension. | retain |
| 6.3 criterion (headline) | `ℤⁿ`: `Hᵏ(ℤⁿ, Rℤⁿ) = R·[k = n]`. `ℤ ∗ ℤ²`: `cd = 2`, `H¹ ⊇ ℤG ≠ 0`. `C₂/ℤ`: not `FP`. `R = 0`: both sides true. | retain |
| 6.5 inheritance | (a) `dℤ ≤ ℤ`: transfer `[t] ↦ [t^d]`, generator to generator (corestriction would be `×d`). `1 ≤ C₂` over `ℚ`: transfer `H₀ → H₀` is `×2`, a unit; image `2` is a fundamental class of `1`. (b) `ℤ ≤ C₂ × ℤ`: fails, `cd_ℤ = ⊤`. (c) `ℤⁿ⁺¹`: `R ⊗ R`; `K`: `w(t) = −1`; `N = G`: `D_{G/N} = R`. | retain; R03 |
| 6.6 Checks | `S²`: `π₁ = 1`; over `ℤ` dimension `0` only; over `0` every dimension | R01 |
| 7.3 Swan, rational | `P = (ℤG)²`: `m = 2 = 2|G|/|G|`. `G = 1`: `m = rank P`. Via 7.2 over `ℤ`: `χ_P(g) = |C_G(g)|·r_P([g⁻¹])`, `χ_P(g) = 0` for `g ≠ 1` gives `r_P([g]) = 0` (`ℤ` torsion-free); `Σ_{[g]} r_P = r_P([1]) = rank(ℤ ⊗_{ℤG} P)`. Trivial `ℤ` over `C₂`: character `1` at `s`, `dim_ℚ = 1` odd. | retain |
| 7.4 Swan mod `p` | `P = ℤG`: `m = 1`. `ℤ` over `C_p`: `dim 𝔽_p = 1 < p`. Source form: `ℤ_(p)` | statement retain; R04 |
| 8.1 Wall's lemma | `C = (F →id F)`: `D = 0`. Second part: `M = B_i`, cocycle `D_{i+1} → B_i` splits `B_i` off `D_i`; `M = D_i/B_i`, projection kills `Z_i`, so `H_i(D) = 0` for `i > n`; `D_n/B_n` projective. `k[x₁, x₂, …]`, `k`: `H₀ = k` finitely generated, not finitely presented, no `D`. | retain |
| 8.3 `χ_ℚ`, `χ̃` | `ℤ`: `1 − 1`; `F_r`: `1 − r`; `ℤⁿ`: `Σ(−1)ᵏC(n,k) = 0` (`n ≥ 1`), `1` (`n = 0`); finite `G`: `χ_ℚ = 1`; `C₂`: `χ = 1/2`, no `χ̃`; `ℚ`: `H₁ = ℚ ⊗ ℚ = ℚ`, `H_k = 0` (`k ≥ 2`), `χ_ℚ = 0`. `FL`: `r_{F_i}([1]) = rank F_i`. | retain |
| 8.4 (headline) | `1 ◁ C₂`: `1 = 2·(1/2)`; `C₄ ∗_{C₂} C₆`: kernel of the map to `ℤ/12` (`×3`, `×2`, agree on `C₂`: `6 = 6`), free of rank `2`, `−1 = 12·(−1/12)` | retain |
| 8.6 extensions | `C₂ × ℤ`: `(1/2)·0`; `F₂ × F₃`: `E₂` dims `(1,3;2,6)`, totals `1, 5, 6`, `1 − 5 + 6 = 2 = (−1)(−2)`; `2ℤ ◁ ℤ`: `0 = 0·(1/2)`; finite `G`: `1/|G| = (1/|N|)(|N|/|G|)`. Choice of `Γ`: image of a torsion-free group can have torsion (`ℤ → C₂`), so `Γ` must be chosen as the route says. | retain |
| 8.7 equivariant formula | `C₄ ∗_{C₂} C₆`: `1/4 + 1/6 − 1/2 = −1/12`; `C₂ ∗ C₃`: `−1/6`; `F_r`: `1 − r`; `BS(1,2)`: `0 − 0`. Double cosets: `Σ_{Γ'\G/G_σ} [G_σ : G_σ ∩ g⁻¹Γ'g] = [G : Γ']`. Character: `χ_ℚ(T; ℚ_ε) = χ_ℚ(ker ε) − χ_ℚ(T) = 2χ_ℚ(T) − χ_ℚ(T)`. | retain |
| 8.8 Smith theory | reflection of the 4-vertex circle: `0 + 1·2 = 2·1`; free swap: `0 + 0 = 2·0`, `2 ∣ 0`; point, `C₃`: `1 + 2 = 3`; `E(C₂)`: orbits of size `2`, `χ = 1`, infinite-dimensional; (d) Sylow step: `|P·σ| = |P|/|P ∩ G_σ| ≥ p^e` and a `p`-power; `d = 1` on a point; mod-`p` point: total `≤ 1`, `χ ≡ 1`, nonempty, so `H₀ = 𝔽_p` only. | retain |
| 8.9 denominators (headline) | `C₄ ∗_{C₂} C₆`: `m = 12`, `12χ = −1`, maximum order `6` gives `−1/2`; `C₂ ∗ C₃`: `6χ = −1`; finite `G`: `|G|/|G| = 1`; `d = |Q|/m` divides `|Q|/|stab|` since `|stab| ∣ m ∣ |Q|`. | retain |
| 9.4 comparison (headline) | `C₂`, `n = 0`: `ℤ → ℤ/2` onto, kernel `2ℤ`. `C₂ × ℤ`, `k ≥ 2`: `0 → Hᵏ⁻¹(C₂) → Hᵏ → Hᵏ(C₂) → 0`, one term `ℤ/2`, one `0`. Amalgam, even `k`: kernel of `ℤ/4 ⊕ ℤ/6 → ℤ/2` has order `12`, `(1,1)` of order `12`; odd `k`: `0`. `ℤ`: all `0`. | retain |

Unchanged families not sampled this round (1.1, 2.1–2.4, 2.6–2.8, 3.1, 4.1, 4.3, 4.4, 5.1, 5.4, 6.2, 6.4, 7.1, 7.2, 7.5, 8.2, 8.5, 9.1–9.3, 9.5) rest on the round-5 rows, which carry computed values; I re-derived the proof routes of 2.2(b)–(d), 2.3(b)–(c), 2.5(b), 2.7, 4.4 (both directions of finite-index invariance with the "every torsion-free finite-index subgroup" definition), 5.4(b) (`γf(1) = f(γ) = (γ·f)(1)`), 7.5, 9.1 and 9.2 and found no gap.

### Sources: the seeded sample

| Target | Locator read | Outcome |
|---|---|---|
| 1.3 | BrownGTM87 §VIII.5 | uncertified, not read; statement verified by computation |
| 1.8 | BieriEckmann1973 lines 646–650 (Proposition 5.1 and its proof: nontrivial finitely generated free groups are of type (FF), `cd = 1`) | supports (c); (a), (b) are the roadmap's own route, said so |
| 3.2 | Brown1974 line 354; BieriEckmann1973 lines 396–397; BieriEckmann1974 lines 298–313 (Proposition 3.3(b)) | Serre's Théorème 1 is cited at both places; 3.3(b) is the `FP` corollary as stated |
| 4.2 | BrownGTM87 §VIII.11 | uncertified, not read |
| 5.2 | Serre1971Bourbaki lines 55–58 (1.2, type (FL) from a finite triangulation) | supports the finite-model clause; BrownGTM87 §VIII.7 not read |
| 5.3 | EilenbergGanea1957; BrownGTM87 §VIII.7 | uncertified, not read; route checked step by step |
| 6.1 | BieriEckmann1973 lines 116–135 (Definition 1.1, conventions (i)–(vi)) | definition and right/left convention as stated; the vanishing clause is the roadmap's own and is implied |
| 6.5 | BieriEckmann1973 lines 366–386 (Theorem 3.2), 388–399 (Theorem 3.3, torsion-free, Serre), 255–272 (Proposition 1.8), 468–482 (Theorem 3.5 and the action on `Hⁿ(N; ℤN)`) | all three parts supported over `ℤ`; R03 |
| 7.3 | Brown1974 lines 168–172 | Swan's theorem as stated |
| 7.4 | Brown1974 lines 1311–1320 | the refinement is over the localization; R04 |
| 8.1 | Brown1974 lines 135–164 | noetherian ring, projective terms, both parts; `D_n = D_n/B_n` |
| 8.3 | Brown1974 lines 82–83, 386–387, 402–410 | "naive" characteristic, definition, characterization (i)–(ii) |
| 8.6 | Brown1974 lines 452–463 (Corollary 2) | (VFP), virtually torsion-free, product formula |
| 8.7 | Brown1974 lines 464–479, 509–510, 558–582 | definition, Proposition 2(i), Proposition 4 (virtually torsion-free and finite-dimensional); the monomial form with characters is the roadmap's own, with its route |
| 8.8 | Floyd1952 lines 110, 153, 261–267, 292–297, 331–336; Brown1974 lines 174–185, 243–260, 302, 327–333 | Theorems 2.3, 2.4, 4.2, 4.4, facts (3.4)–(3.6), Theorem 1′, Theorem 2′ and Corollary, normalized chains, Smith theory remark |

Also read while checking neighbours: Brown1974 lines 345–384 (4.1, 4.4), 388–424 (8.4), 425–451 (8.5, 1.4(b)), 603–614 (8.9), 637–651 (5.4), 1284–1310 (7.5). All agree with the README. No locator is flagged by the author as unverified. All eleven cited works are in `sources.toml`; none was fetched or added.

### Pinned libraries

Mathlib `1b1ccf4b…`, Tau Ceti `2fd255d9…`. Opened at the pin this round (file and line): `TauCeti.Huber.IsPseudoCoherentOver` lemmas `mono` (Basic.lean:114), `zero_iff` (:133), `one_iff` (:205), `top_iff` (:320), `prod` (:347), `pi` (:354), `ker_of_projective` (:364), `succ_iff_ker` (:375), `of_isNoetherianRing` (:391), `extension`/`cokernel`/`kernel` (TwoOutOfThree.lean:109/125/143), `isPseudoCoherentOver_restrictScalars_iff` (RestrictScalars.lean:155); `TauCeti.Module.isFPD_iff_hasProjectiveDimensionLE` (FiniteProjectiveDimension.lean:153); `TauCeti.exists_linearEquiv_comp_fst_eq_comp_snd_comp` (Algebra/Module/Projective/Schanuel.lean:82); `TauCeti.groupHomology.transfer` (GroupHomology/Transfer/Basic.lean:79, with `transfer_comp_map_subtype_id` :121); `map_subtype_id_comp_corestriction` (Corestriction.lean:165); `cellularClassifyingSpaceResolution` (PresentedGroupResolution.lean:105, for `PresentedGroup R`), `PresentationComplex.cellOneEquiv`/`cellTwoEquiv` (:304/:317), `cellularChainRepIsoFree` (Cellular/Covering.lean:252), `cellularResolutionOfIsAspherical` (EilenbergMacLane/Resolution.lean:57), `isEilenbergMacLaneSpaceOne_cellularClassifyingSpace` (ClassifyingSpace/Cellular.lean:161), `cwComplexProd` (CWComplex/Classical/Product.lean:194), `cwComplexPreimage` (Covering.lean:398), `groupHomologyPiMultiplicativeIntExteriorPowerEquiv` (Torus.lean:243), `isZero_groupHomology_freeGroup` (WedgeCircles.lean:259), `isZero_groupHomology_of_directed` (DirectedUnion.lean:132); `SSet.eilenbergZilberHomotopyEquiv` (SimplicialSet/EilenbergZilber.lean:761); `trace_ofModule'_eq_zero_of_dvd_orderOf` (ProjectiveTrace.lean:67); `nonempty_linearEquiv_of_projective_of_tensorRat` (Swan.lean:58) and `…_of_not_dvd` (Rational.lean:134); `LinearMap.projectiveTrace_cyclic`/`_baseChange` (Trace/Projective.lean:96/158); `isTotallyAcyclicProjective_splice` (Abelian/Extension.lean:63), `isGorensteinProjective_of_projective` (Abelian.lean:263), `isGorensteinProjective.ext_eq_zero` (Abelian/Ext.lean:93), `exactStructure_isFrobenius` (Abelian/Frobenius.lean:195), `CompleteResolution.nonempty_homotopy_zero_iff` (Comparison.lean:458); `bijective_hurewicz` (Hurewicz/Absolute.lean:161), `contractibleSpace_of_subsingleton_homotopyGroup` (Whitehead.lean:356), `isEilenbergMacLaneSpaceOne_circle` (OneDimensional.lean:105); Mathlib `Representation.ofModule'` (Basic.lean:191), `groupCohomologyIsoEven` (FiniteCyclic.lean:80), `isMulTorsionFree_iff_not_isOfFinOrder` (OrderOfElement.lean:911), `SSet.hasDimensionLE_prod` (FiniteProd.lean:66), `isZero_normalizedChainComplex_X_of_hasDimensionLT` and `isZero_homology_of_hasDimensionLT` (Nondegenerate.lean:182/252), `IsCoveringMap.existsUnique_continuousMap_lifts` (Lifting.lean:489), `ChartedSpace.secondCountable_of_sigmaCompact` (ChartedSpace.lean:236), `TateCohomology.isoGroupCohomology` (TateCohomology/Basic.lean:233). Every name resolves; none is restated as a target. The round-5 table covers the remaining declarations with their hypotheses.

### Duplication, ownership and overlaps

`roadmaps grep` over main and the 473 open heads, by object: "type `FP_`", "finite homological type", "Hattori–Stallings rank", "Eilenberg–Ganea": no match anywhere. "duality group": one line on main, an instance. "virtual cohomological dimension": GeometryOfNumbersAndQuadraticArithmetic (a Galois-cohomological `cd₂` notion under another name), ArithmeticKTheory (a value for `SL₂(ℤ[i])`), PosetHomotopyAndSubgroupComplexes (its Out-of-scope paragraph leaves Brown's theorem to a roadmap with `vcd` and `χ`). "Farrell": no roadmap defines Farrell cohomology. "Smith theory": SheafTheoreticSmithTheory (étale sheaves, prime order), distinct from 8.8. No second owner of any object of this roadmap; main has no folder of this name, so it is not a second copy. `scratch/overlaps.md` lists no dropped id, no revision-only id and no conflicting head; I found none either.

The three leads of `scratch/citations.md`: `BieriEckmann1974, §3.3` and `BrownGTM87, §VIII.6` are source locators, not roadmaps; CohomologyOfGroups is the board package `packages/CohomologyOfGroups` (design accepted; merge order line 318), read at `packages/CohomologyOfGroups/design/README.md`. Its line 74 excludes finiteness, dimension, duality, Euler characteristics and Farrell cohomology, and lines 2126–2129 describe (without naming it) a later roadmap on these as a consumer of its Layers 3–8.

Supplier citations resolved this round:

| Supplier | Where | Resolved |
|---|---|---|
| CohomologyOfGroups §§1.2, 1.4, 1.5, 2.3, 3.2, 3.4, 3.5, 3.6, 4.6, 5.2, 6.1–6.3 | board package design README, lines 620, 663, 687, 800, 900, 959, 978, 1007, 1172, 1339, 1484, 1529, 1569 | headings exist; read §3.2 (monomial complexes with characters), §3.4 (split over `k`), §3.6 (amalgam, HNN with the difference map, free groups), §4.6 (`tr(y ∩ z) = res y ∩ tr z`, adjoint without sign) |
| FreeGroupsAndLimitGroups §§4.5, 4.7, 4.8, 4.9 | main, lines 863, 906, 937, 950 | exist |
| AlgebraicTopology §§4.7, 6.3, 6.4, 8.1, 8.3, 8.5, 8.7, 8.11a | main, lines 1739, 2491, 2873, 3219, 3334, 3413, 3618, 3971 | exist; 8.11a replaces CW n-ads by realizations of abstract simplicial n-ads through skeletal approximation, with no dimension bound stated |
| ClassifyingSpaces Stage 2 item 10, Stage 4 items 16, 17 | main, lines 173, 224, 238 | exist |
| EtaleCohomologyFoundations §F.10.3 | main, line 1295 | exists |
| ProfiniteCohomology Layer 11; FuchsianOrbifolds Layer 5 item 6 | main, lines 2919; 659 and 740 | exist |
| SchemeKTheoryOperations §6.7 | open head | directed-union homology over a commutative ring, with its own `S₃` non-example |
| SpectralSequencesAndConvergence §§3.4, 5.3 | open head, lines 806, 1341 | Euler identity (convergence in every degree, finite filtrations) and its filtered-complex form |
| ArithmeticKTheory §3.2; BianchiModularForms §9.3 | open heads, lines 1071, 2243 | Steinberg-module block; `χ = 0` for Bianchi groups |

Overlap check: read ClassifyingSpaces (main and the open heads that revise it), AlgebraicTopology (main and the same heads), SpectralSequencesAndConvergencePartII and FreeGroupsAndLimitGroups; `K(G, 1)` CW complexes and their cellular resolutions: ClassifyingSpaces; CW replacement, Hurewicz, Whitehead, manifold duality: AlgebraicTopology; Bass–Serre theory: FreeGroupsAndLimitGroups; convergence and Euler identities: SpectralSequencesAndConvergence; nothing of Layers 1–9 is shared. The third list is empty.

### Supplier order

Every `*Needs:*` line and every contract was read; each cross-roadmap edge points to a roadmap on main or earlier in the merge order. The check:

```text
candidate: FinitenessAndDualityOfGroups is not in the merge order yet; checked as if placed after CohomologyOfGroups (the intake inserts it when its design is accepted)
depcheck: 244 roadmaps, 2201 edges, 0 problem(s)
```

No UPWARD or CYCLE line. The "Downstream consumers" section names some roadmaps earlier in the order (ArithmeticKTheory, BianchiModularForms, FuchsianOrbifolds, MappingClassGroupsAndCanonicalRepresentations) only as owners of instances; none is cited as a supplier and none is asked to cite this roadmap.

The declared gap `gap:simplicial-replacement-dimension`: supplier AlgebraicTopology §8.11a (named, not `none`); `needs` is one sentence with its hypothesis (dimension at most `N`) and conclusion (replacement of dimension at most `N`); it asks for nothing main's §8.11a, the pins or this roadmap state; the slug is the same in `design/plan.json` (`gaps`) and `design/README.md:443`. It is used by 5.4 only (and through it 8.9).

### Shape and headline theorems

Nine layers, each with Examples and Dependencies; 51 targets and 159 tests in the plan. The twelve definitions (1.2, 2.1, 4.1, 4.4, 5.1, 6.1, 6.4, 7.1, 8.3, 8.4, 9.2, 9.3) have an API and 3 or 4 Checks each. The layer names are mathematical; no sentence says the roadmap follows a source. No process words, pull-request numbers, dates, anchors or machine paths in the README; no LaTeX delimiters; no algorithm.

Headline theorems of the Summary: 1.5, 3.2, 5.3, 6.3, 8.4 and 8.6, 8.7, 8.9, 9.4. Each is a target with exact hypotheses and a locator. There is no `Suggested.lean` at this stage, so statability, the one-tactic padding probe, `#check @name` binder comparison and the import header are for the package stage; none was run. Backticked names in the README are pinned library declarations (resolved above) or mathematical notation (`cd_R`, `vcd`, `χ_ℚ`); none is presented as a declaration of this roadmap's own.

### Copyright and arrangement

Wording: 26 passages set beside the sources at their locators: Brown1974 (16: lines 136–164, 169–170, 174–185, 251–260, 359–370, 382–384, 386–387, 388–393, 402–424, 441–447, 452–463, 465–479 with 558–582, 603–614, 637–651, 1284–1310, 1311–1320), BieriEckmann1973 (5), BieriEckmann1974 (1), Floyd1952 (3), Serre1971Bourbaki (1). These include a definition (4.4), a remark (8.3), and the proof plans of 8.1, 7.5 and 5.4. The longest shared runs are in theorem statements that the mathematics forces ("the least common multiple of the orders of the finite subgroups of", 8.9; "the fundamental class of `G` to that of `S`", 6.5); no sentence, list or proof plan reproduces or translates a source. No table, figure, exercise list or numerical data is taken over.

Arrangement: Brown1974 has the largest share. Its contents (lines 36–57) are §§1–2 (finite group actions), §§3–7 (Euler characteristics of groups), §§8–9 (applications), Appendices A–B. The roadmap uses §3 in Layers 1, 2 and 4, §6's lemma in 5.4, Appendix A in Layer 7, and §§1, 4, 5, 2, 6 in Layer 8 (8.1–8.2, 8.3–8.6, 8.7, 8.8, 8.9); §§7–9 and Appendix B are not used. Inside Layer 8 the order is forced by the Needs lines (8.2 ← 8.1; 8.4 ← 8.2, 8.3; 8.5 ← 8.4; 8.6 ← 8.4, 8.5; 8.9 ← 8.8, 8.4, 5.4) except the relative position of 8.7 and 8.8, where the roadmap departs from the source. No one-to-one run of layers or sections onto its sections.

Source independence: 26 passages compared with 5 sources, none shared beyond forced statements; largest share Brown1974, 35 of 129 locators; contents compared with Brown1974: independent. BrownGTM87 (22 of 129) could not be read: neither its wording nor its table of contents was compared.

## Not verifiable

- BrownGTM87 (settled uncertified): the locators of the sampled 1.3, 4.2, 5.2 and 5.3, and of 1.6, 1.7(b), 2.3(c), 2.5, 2.6, 3.1, 4.3, 5.1, 7.1, 7.2, 8.3, 9.1–9.5 were not read; the statements were checked mathematically only.
- EilenbergGanea1957, Farrell1977, Wall1961, Serre1971Prospects (settled uncertified): locators not read. Serre1971Prospects is checked only through the citations of it at Brown1974 lines 354, 402, 474, 612, 647.
- Brown1974: the OCR drops parts of lines 349–351, 360, 412 and 562; the surrounding statements are legible and the dropped words were not relied on.
- The two misprints the round-5 review reported in BieriEckmann1974 (lines 334 and 337) were not re-read this round.
- `Suggested.lean`, elaboration, the binder check and the padding probe: no Lean file exists at the design stage, and this lane does not elaborate.
- The package READMEs of other board packages were read in this checkout, which holds one branch; `packages/MotivicStructuresInModuliOfCurves/README.md` may differ at its own head (R05 quotes what is here).

## Source issues

- none

## For the human reviewers

- **Not tested.** BrownGTM87 carries 22 of 129 locators and is settled uncertified in `packages/FinitenessAndDualityOfGroups/sources.toml`; its text and contents were not compared. The largest-share source, Brown1974, was read and both comparisons were made.
- **Licence.** Farrell1977, EilenbergGanea1957, Wall1961 and Serre1971Prospects are settled uncertified in the same manifest; their locators are cited without the text.

<!-- tauceti-roadmap-review {"agent": "claude", "head": "ae7daffbdb8b6003c904e2c87374e792af8bd291", "job": "REV-DESIGN-FinitenessAndDualityOfGroups~6", "model": "fable", "worker": "chris-x52"} -->
