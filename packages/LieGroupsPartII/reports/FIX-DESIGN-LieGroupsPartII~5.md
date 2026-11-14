# Repair of LieGroupsPartII design

The review REV-DESIGN-LieGroupsPartII~4 has two findings. Both were checked against:

- RealSemisimpleLieGroups at the head of its open pull request (`9a938c5`, read with `roadmaps show`, README and `Suggested.lean`);
- the cached text of `brown-rodriguezhertz-wang2022`;
- LieGroups on main;
- the pinned Mathlib `1b1ccf4b` and Tau Ceti `2fd255d9`.

Both findings are right. F01 is applied with corrections where the suggested repair would have broken the construction or missed duplications. F02 is applied, and its pattern is repaired in four more places.

Only `packages/LieGroupsPartII/design/README.md`, `packages/LieGroupsPartII/design/plan.json` and `packages/LieGroupsPartII/sources.toml` changed. No acceptance file exists at the design stage, so no Lean command and no `#check` comparison were run. No source was fetched and no request file was written.

## F01 (P2) — applied differently

Old: this roadmap owned 15 sections that RealSemisimpleLieGroups also owns. New: those sections are cited; §1.2, §4.3, §5.1–§5.3, §6.1, §6.3, §7.2 and §9.2 are deleted. A new §3.5 shows that every Iwasawa triple satisfying the component condition is RealSemisimpleLieGroups' "minimal parabolic datum". Kept variants each say how they differ. Layers are renumbered.

Why it differs from the review's repair (each point checked against RealSemisimpleLieGroups at `9a938c5`):

- **§2.3, `N_G(𝔞) = N_K(𝔞)·A` kept.** The review would have kept only the `K⁰` representatives and normality here. But RealSemisimpleLieGroups §3.2 sits in its Layers 3–4, whose standing input is a minimal parabolic datum whose `M` meets every component (its README line 826ff). Here the identity is needed without that condition: §3.2 uses `Z_G(𝔞) = MA` to build `P`, and §4.2 needs it for `O(1,1)`. Citing it would be circular and too narrow, so it stays, with a one-clause comparison.
- **§2.3, `N_{K⁰}(𝔞)/Z_{K⁰}(𝔞) = W(Σ)` cited.** The review would have kept it as owned. It is RealSemisimpleLieGroups §2.3 ("`W_G = W(Σ)` … in particular for connected `G`", for any `G` with an `IwasawaData`) applied to `G⁰`, so it is cited. The restriction to `G⁰` that this needs is now an explicit §1.1 API bullet: `K ∩ G⁰ = K⁰`, with the cover restricted to `G⁰ → H⁰`. The old §4.2 proof already assumed this restriction.
- **§1.2 (old §1.3) compared with RealSemisimpleLieGroups §5.4.** The review did not list this. §5.4 proves the conjugacy of `CartanInvolution` data when `𝔤` is semisimple, by "an inner automorphism of `G`". Conjugacy by `G` already gives conjugacy by `G⁰`: write `g = g₀k` with `k ∈ K`, and `c_k θ c_k⁻¹ = θ`. So the semisimple bullet here is a corollary, now marked as proved there by another route. What stays owned is the reductive case with equal split central parts.
- **§9.1 (new §8.1).** The component condition for `𝐇(ℝ)` is now cited from RealSemisimpleLieGroups §2.3. The axiom (v) route is dropped, and with it the only use of MordellLawrenceVenkatesh §3.10; that supplier is removed. The review offered keeping the route as an alternative, but a second proof of a cited statement would be duplication.
- **§9.3 (new §6.3) kept.** The review left this open. RealSemisimpleLieGroups §4.4 states the criterion with `TauCeti.borelSubalgebra` of `𝔤₀ ⊗ ℂ`, which is defined only for a Killing Lie algebra (`TauCeti/Algebra/Lie/Weights/Borel.lean`). For reductive `𝔤` the centre condition is necessary: the Check with `GL_2(ℝ)` and the trace-zero upper triangular algebra shows it. The section is kept as the reductive form, and its proof now reduces to RealSemisimpleLieGroups §4.4 for `Int([𝔤, 𝔤])`, so it no longer needs §9.2 or ReductiveGroups.
- **§7.3 (ii) (new §6.2) kept as a corollary.** RealSemisimpleLieGroups §4.4 states only `dynamicalParabolic X = Q_{Π'}`. The clauses `N(X) = N_{Π'}`, `Q(X) ∩ Q(−X) = Z_G(X) = L_{Π'}` and `θ(Q(X)) = Q(−X)` are not stated there. They are kept, each derived in one line from its §§4.3–4.4.
- **§7.1 (new §6.1)** stays owned, as the review said.
- **AutomorphicFormsOnReductiveGroups §2.3a, ReductiveGroups Layer 7 and both gaps.** After §9.2 is deleted they had no consumer. The supplier entries and the gaps `minimal-parabolic-orderings` and `real-compactness-criterion` are removed. The review's own note anticipated dropping the gaps.

## F02 (P3) — applied

Old: §5.3 and plan 5.3 cited Brown–Rodriguez Hertz–Wang §1.2 for the `ad X`-eigenspace description. New: §5.3 is a citation of RealSemisimpleLieGroups §4.1. The paper is cited only for equation (1) (Conventions) and, in plan 7.3f, for the classification. It is removed from the §6.2 (old §7.3) boundedness locator and from plan 7.2, 7.2b and 7.2d (old 8.2, 8.2b, 8.2d).

Evidence: `brown-rodriguezhertz-wang2022` lines 122–169 (§1.2, pp. 3–4) contain the setting (line 124), formula (1) (lines 138–141), the classification with Knapp 7.76/7.73 (lines 142–144), the subgroup correspondence (lines 154–157) and maximal parabolics (lines 165–169). No `ad X`-eigenvalue, boundedness or limit appears. The manifest locator now reads "the root-sum formula … and their classification; preprint p. 3", and `cited_for` is `["conventions", "7.3f", "consumers"]`.

## Section map (old → new)

| Old | New | Status |
| --- | --- | --- |
| 1.1 | 1.1 | kept; API bullet and Check for the restriction to `G⁰` |
| 1.2 | — | cited: RealSemisimpleLieGroups §0.2 (`exists_conj_cartanInvolution`) |
| 1.3 | 1.2 | kept variant; step 1 cites §0.2 there; clause on §5.4 there; new `SL_2` Check |
| 2.1 | 2.1 | narrowed to `Σ_{Π'}` and chamber stabilizers; the rest cited from §1.2 there |
| 2.2 | 2.2 | unchanged |
| 2.3 | 2.3 | narrowed; `N_{K⁰}/Z_{K⁰} = W(Σ)` cited from §2.3 there for `G⁰` |
| 2.4 | 2.4 | the forward implication is cited from §2.3 there; converse and the other equivalences kept |
| 2.5, 2.6 | 2.5, 2.6 | kept; one-clause comparison with §3.1 there |
| 3.1–3.4 | 3.1–3.4 | kept variants (every reductive Cartan datum) |
| — | 3.5 | new: the minimal parabolic datum, with Checks |
| 4.1, 4.2 | 4.1, 4.2 | kept over `W_G`; component-condition clauses cited from §§3.2–3.3 there |
| 4.3 | — | cited: §3.3 there, inside the 4.2 clause |
| 5.1–5.3 | — | cited: §4.1 there; notation moved to Conventions |
| 6.1, 6.3 | — | cited: §§4.2, 4.3 there |
| 6.2 | 5.1 | kept variant; clause on §4.3 there |
| 7.1 | 6.1 | unchanged |
| 7.2 | — | cited: §4.4 there; not consumed here |
| 7.3 | 6.2 | (i) kept; (ii) is `Q(X) = Q_{Π'}` from §4.4 there plus derived clauses |
| 9.3 | 6.3 | kept reductive variant, rerouted through §4.4 there for `Int([𝔤, 𝔤])` |
| 8.1–8.3 | 7.1–7.3 | statements unchanged; routes re-pointed; 7.2 gains the comparison with `dynamicalParabolic` |
| 9.1 | 8.1 | component condition cited from §2.3 there |
| 9.2 | — | not owned: §4.5 there; not consumed |

No roadmap on main or in an open pull request cites LieGroupsPartII (`roadmaps grep 'LieGroupsPartII'`: no match), so the renumbering breaks nothing.

## Other repairs found while rewriting

- **§4.2 proof step 3.** The old text said "`G = N_K(𝔞)·G⁰ ⊆ ⋃_{n ∈ N_K(𝔞)} P n P`" without proof, and `n` need not normalize `P`. The new step uses the stabilizer `S` of `Σ⁺` in `N_K(𝔞)`, which normalizes `P`. Simple transitivity of `W(Σ)` gives `N_K(𝔞) = N_{K⁰}(𝔞)·S`, so `G = G⁰·S` and `g₀s ∈ P n_w s P`.
- **Checks referring to `Q_∅` without the component condition.** In the §6.2 `Aut(𝔰𝔩_3(ℝ))` Check, `Q_∅` is now `N_G(𝔮_∅)`, because `Q_{Π'}` is RealSemisimpleLieGroups' object and needs the condition. Plan 6.2 tests were changed the same way.

## Adversarial mathematics pass (changed or added statements)

| Statement | Instances | Values computed | Result |
| --- | --- | --- | --- |
| §1.1 restriction to `G⁰` | `O(1,1)`, `ℝ^×`, `GL_2`, connected `G` | `O(1,1)`: `K = {diag(±1,±1)}` (4 elements); `exp(tY) ∈ K` iff `cosh t = ±1` and `sinh t = 0`, i.e. `t = 0`; so `K ∩ G⁰ = {1} = K⁰`. `ℝ^×`: `{±1} ∩ ℝ_{>0} = {1}`. `GL_2`: `O(2) ∩ {det > 0} = SO(2)`. Connected `G`: the identity restriction | holds |
| §1.2 step 1 via RealSemisimpleLieGroups §0.2 | `SL_2`, `h = diag(2,1/2)`; abelian `ℝ^×` | `c_aθc_a⁻¹ = c_{aaᵀ}∘θ`; `θ'θ = c_{diag(4,1/4)} = c_{lieExp(2X)}`, `X = diag(log 2, −log 2)`. `lieExp(2X)` gives `c_{diag(16,1/16)}∘θ`; `lieExp(X/2)` gives `c_{diag(2,1/2)}∘θ`; neither ratio with `diag(4,1/4)` is `±1`. `[𝔤,𝔤] = 0` gives `X = 0` | holds; new Check |
| §1.2 clause vs §5.4 there | any `G` | `G = G⁰K`; for `k ∈ K`, `c_kθc_k⁻¹(x) = kθ(k⁻¹xk)k⁻¹ = θ(x)` | `G`-conjugacy implies `G⁰`-conjugacy, so the difference is the centre only, as the text now says |
| §2.1 `Σ_{Π'}` | `BC₂` with `Π' = {e₂}`, `Π' = ∅`, `Π' = Π`; `BC₁` | `BC₂`: `Σ⁺ = {e₁−e₂, e₂, e₁, e₁+e₂, 2e₂, 2e₁}`, `∩ span(e₂) = {e₂, 2e₂}`; `2e₂ = e₂ + e₂` is not simple; `W = {1, s_{e₂}}`. `Π' = ∅`: `Σ_∅ = ∅`, `W = 1`. `BC₁`: `2λ = λ + λ`, so `Π = {λ}` | holds |
| §2.1 stabilizer | `A₂`, `v` with `α₁(v) = 0 < α₂(v)` | stabilizer `{1, s_{α₁}} = W_{Π'}` for `Π' = {α₁}` (order 2 of 6) | holds |
| §2.3, `N_{K⁰}/Z_{K⁰}` via §2.3 there on `G⁰` | `O(1,1)`, `SL_2`, `GL_2`, compact | orders `1 = |W(∅)|`; `|{±1,±w}/{±1}| = 2 = |W(A₁)|`; `GL_2⁰`: `|N_{SO(2)}(𝔞)/{±1}| = 2 = |S₂|`; compact: `𝔞 = 0`, `1 = 1` | holds |
| §2.3, `N_G(𝔞)` without the condition | `O(1,1)` | `N_G(𝔞) = G = K·A` (4 components = 4 elements of `K` × `A`); `Z_G(𝔞) = ±A`, since `dYd = −Y`; index 2 = `|W_G|` | holds; the statement could not be cited from §3.2 there |
| §2.4, converse | `O(1,1)`, `Aut(𝔰𝔩_3)`, `O(4)`, `GL_n` | `(|W_G|, |W(Σ)|, condition)` = `(2,1,no)`, `(12,6,no)`, `(1,1,yes)`, `(n!, n!, yes)` | both directions agree on all four |
| §3.5 bridge | `SL_2`, `O(1,1)`, `ℝ×S¹`, `GL_2`, compact | `SL_2`: `M = {±1}`, `P` upper triangular. `O(1,1)`: `𝔫 = 0`, `N_G(𝔫) = G` has 4 components and `P = ±A` has 2, so it is not a datum; on `G⁰`, `P ∩ G⁰ = A = G⁰`. `ℝ×S¹`: `P = G` for `θ_0` and `θ_1`, with `𝔭_0 = ℝ(1,0) ≠ 𝔭_1 = ℝ(1,1)`. `GL_2`: `P ∩ G⁰ = {±1}·A·N` = upper triangular with `det > 0`. Compact: `P = M = G` | holds; conjugacy clause correctly limited |
| §4.2 new step 1/3 (`G = G⁰·S`) | `O(1,1)`, `Aut(𝔰𝔩_3)` | `O(1,1)`: `Σ⁺ = ∅`, `S = N_K(𝔞) = K`, `G⁰S = A·K` = all 4 components; cells `P`, `dP`. `Aut(𝔰𝔩_3)`: `S` maps onto `{1, σAd(w₀)}`; `|N_{K⁰}(𝔞)/Z|·|S/M| = 6·2 = 12 = |W_G|` | holds; fills a gap in the old step 5 |
| §4.2 Tits clause (cited §3.3 there) | `GL_n`, `n = 0`; `Aut(𝔰𝔩_3)` | `GL_n`, `n ≥ 1`: `glTitsSystem ℝ (n−1)`, `W = S_n`; `n = 0`: one cell and `0 − 1 = 0` (not used). `Aut(𝔰𝔩_3)`: Weyl group order 12, but 2 simple reflections generate 6 | condition needed, as stated |
| §5.1 comparison with §4.3 there | `GL_3`, `Π' = {α₁}` | `L = GL_2 × GL_1`; `V = 𝔷(𝔩) ∩ 𝔭 = {diag(a,a,b)} = 𝔞_{Π'}`; the sign matrices `diag(−1,1,1)`, `diag(1,1,−1)` meet all 4 components of `L`; `⁰L = {(g,c) : |det g| = 1, c = ±1} = M_{Π'}` | holds |
| §6.2 (ii) derived clauses | `GL_2`, `X = diag(1,0)`; `SL_3`, `X = diag(1,1,−2)`; `X = 0` | `GL_2`: `Q(X) ∩ Q(−X)` = diagonal `= Z_G(X)`; `N(X)` = upper unitriangular. `SL_3`: entry `(i,j)` is scaled by `e^{−t(x_i−x_j)}`; `(3,1), (3,2)` by `e^{3t}`, `(1,3), (2,3)` by `e^{−3t}`; `Q(X)` = block `(2,1)`; `∩ Q(−X)` = `S(GL_2×GL_1) = Z_G(X)`; `N(X) = I + span(E₁₃, E₂₃)`. `X = 0`: `Q = G`, `N = 1`, `L_Π = Z_G(𝔷_𝔭) = G` under the condition | holds |
| §6.3 reroute | `GL_2`, `ℝ^×`, `SU(2)` | `GL_2`: `𝔮_∅ = ℝ·1 ⊕` (trace-zero upper), `1 + 2 = 3`; `ℝ^×`: `[𝔤,𝔤] = 0` forces `𝔮 = 𝔷 = 𝔤 = 𝔮_∅`; `SU(2)`: `Int(𝔰𝔲(2)) = SO(3)` compact, only `𝔤` | holds |
| §7.2 comparison with `dynamicalParabolic` | `GL_2`, `X = diag(1,0)`, `g = I + E₁₂`; `{diag(1/k,1)}`; `O(1,1)`, `g = d` | the family `((1, e^{−t}), (0, 1))` has closure adding only `I`; `det diag(1/k,1) = 1/k → 0` is not constant; `exp(−tY)d exp(tY) = exp(−2tY)d` has entries `cosh 2t` (unbounded) | the two notions agree on conjugate families; new Check |
| §7.3 routes | `SL_3`, `X = diag(1,1,−2)` | `ad X`-eigenvalues on `E₁₂, E₂₁, E₁₃, E₂₃, E₃₁, E₃₂` are `0,0,3,3,−3,−3`; the nonnegative sum has dimension `2 + 2 + 2 = 6`; `X` and `2X` have the same centralizer | holds |
| §8.1 via §2.3 there | `GL_n`, `SO(2,1)`, `O(1,1)`, `𝔾_m × SO(2)` | `GL_n`: `diag(−1,1,…)` has `det < 0`. `SO(2,1)`: `diag(1,−1,−1)` reverses time orientation. `O(1,1)`: disconnected `𝐇`, so excluded. `𝔾_m × SO(2)`: `(x,R) ↦ (x⁻¹, (Rᵀ)⁻¹ = R)`; automorphisms are `(±1, ±1)` on `ℤ ⊕ ℤ(−1)`; only `(−1, +1)` has compact twisted form | holds; new Check |

## Check outcomes

Dependency gate, verbatim:

```text
candidate: LieGroupsPartII is not in the merge order yet; checked as if placed after ArithmeticLocallySymmetricSpaces (the intake inserts it when its design is accepted)
depcheck: 206 roadmaps, 1900 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. The last supplier in the merge order is now ArithmeticLocallySymmetricSpaces, because MordellLawrenceVenkatesh is no longer cited. The gate does not see the new RealSemisimpleLieGroups edge, because that roadmap is not in the merge order. I confirmed this with a scratch copy of the old README carrying one RealSemisimpleLieGroups contract line: same output, 0 problems. That is not a defect of this design; see the maintainer notes.

`roadmaps resolve` on the new README (main `8970bf3`, 436 open heads): no cross-roadmap citation and no Lean name found nowhere.

Plan: 32 targets in 8 layers, 74 internal edges, no missing id, no cycle, no prerequisite in a later layer, 121 tests. Every definition has at least 3 tests. Four theorems have 2 tests each, as before the repair (6.1, 7.1c, 7.3b, 7.3d).

Lean: there is no `Suggested.lean` at this stage. Nothing was elaborated and no `#check` comparison was possible.

## Ownership and maintainer notes

- **RealSemisimpleLieGroups is now a supplier.** It is pull request #2229 by another author, adding a new folder, at head `9a938c5` (unchanged between the two indexes of this run). It is not in the merge order and not among the 201 open pull requests listed for this job; I read it with `roadmaps show` because the overlap list names it. When it is ordered, the intake must place LieGroupsPartII after it. If its numbering changes before merge, the citations of §§0.2, 1.2, 2.3, 3.1–3.3, 4.1–4.5 and 5.4 there must follow. The review allowed that a maintainer might prefer the reverse division of ownership; this design cannot be cited by a content pull request, so the repair took the only direction an edit here can settle.
- **Ownership of what stays.** I searched main and the open heads for self-adjoint matrix groups, `linearLieAlgebra`, `⁰L`, "M meets every component", "component condition", `dynamicParabolic`/`dynamicLevi`/`dynamicUnipotent`, the Bruhat decomposition over `N_K(𝔞)/Z_K(𝔞)` and conjugate standard parabolics. Outside RealSemisimpleLieGroups, nothing matched the same objects; the `⁰L` and "component condition" matches are unrelated uses.
- **Suppliers and gaps removed.** AutomorphicFormsOnReductiveGroups (§2.3a), ReductiveGroups (Layer 7) and MordellLawrenceVenkatesh (§3.10) are no longer suppliers. The gaps `minimal-parabolic-orderings` and `real-compactness-criterion` are dropped; they belong to the minimal comparison that RealSemisimpleLieGroups consumes through AutomorphicFormsOnReductiveGroups §2.3a.
- **Names.** No name another roadmap cites changed; none cites this roadmap. The planned Lean names (`dynamicLevi_decomposition`, `bruhat_decomposition_linear`, `exists_eq_nonnegEigenspaces_of_le`, `minimalParabolic_langlands`, `eq_dynamicParabolic_of_le`, `exists_titsSystem_linear` and the four definitions) are unchanged. They do not clash with RealSemisimpleLieGroups' declarations. `exists_titsSystem_linear` is kept because it says more than RealSemisimpleLieGroups' `exists_titsSystem` (disconnected groups, reductive Lie algebra); the README says so in one clause.
- No passage in the review was suspicious; it contains no instruction beyond its repair proposal.
