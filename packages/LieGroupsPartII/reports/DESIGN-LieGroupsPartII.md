# Design report: DESIGN-LieGroupsPartII

Roadmap `LieGroupsPartII`, Part II of `TauCetiRoadmap/RepresentationTheory/LieGroups`; final folder `TauCetiRoadmap/LieGroupsPartII`. Deliverables: `packages/LieGroupsPartII/design/README.md` (9 layers, 40 targets), `packages/LieGroupsPartII/design/plan.json`, `packages/LieGroupsPartII/sources.toml`, this report. Pins: Mathlib `1b1ccf4b088b32fa3f23f2de1127433254a81e1e`, Tau Ceti `2fd255d997f47c0b5d834ee416c7015d55444ce5` (read from the content repository's `lake-manifest.json` and confirmed with `git rev-parse` in `.lake/packages`).

## What the design covers

All eight final targets of the triaged brief are planned. Several are corrected; see the corrections below and the adversarial table.

| Final target | Where | Form in which it is planned |
|---|---|---|
| 1. Conjugacy of Iwasawa data | §§1.2–1.3, 2.1–2.2, 2.5, 3.4 | Cartan data are `G⁰`-conjugate **iff they have the same split central part `𝔷∩𝔭`**. The unconditional statement is false (`ℝ × S¹`). For fixed `θ`, maximal abelian `𝔞` are `Ad(K⁰)`-conjugate, and `W(Σ)` is simply transitive on positive systems, including non-reduced `Σ` (via `Σ_ind`). Minimal parabolics form one class. |
| 2. Minimal parabolic and Langlands decomposition | §§3.1–3.3 | Every item of the brief and of AutomorphicFormsOnReductiveGroups §2.3a. `P = N_G(𝔫) = N_G(P)` and `P = G ⇔ Σ = ∅` are placed under the component condition (false without it: `O(1,1)`). |
| 3. Tits system and Bruhat | §§4.1–4.3 | Bruhat with cell coordinates `N_w × P ≅ P n_w P` and the open dense big cell, proved by the dynamics of a regular one-parameter subgroup on `G/P ⊂ Gr(𝔤)`. A `TauCeti.TitsSystem` with `B = P`, `N = N_G(𝔞)`, under the component condition. |
| 4. Standard parabolic subalgebras | §§5.1–5.3 | Order isomorphism `Π' ↦ 𝔮_{Π'}` onto the subalgebras containing `𝔮_∅`, and the eigenspace description. |
| 5. Standard parabolic subgroups | §6.1 (plus §7.1) | `Q_{Π'} = N_G(𝔮_{Π'})` equals Tau Ceti's `standardParabolic`. Classification, self-normalization and double cosets are **consumed from Tau Ceti**, not planned (see corrections). |
| 6. Langlands decomposition of `Q_{Π'}` | §§6.2–6.3 | `⁰L` and the split component (§6.2), and the full decomposition. "`N_{Π'}` is the nilradical" is corrected to "`𝔫_{Π'}` is the `B`-orthogonal of `𝔮_{Π'}`", together with the dynamic characterization. |
| 7. Parabolic subgroups and subalgebras | §§7.1–7.3, 9.3 | Type, the Lie bijection, the dynamical description `Q(X) = Q_{Π'}` (§7.3), and the complexification criterion stated with `TauCeti.borelSubalgebra` (§9.3). |
| 8. Comparison with `ℝ`-parabolics | §§9.1–9.2 | Borel–Tits §14.7 route, extended to reductive `𝐇`. It rests on three recorded gaps against ReductiveGroups Layer 7. |

Layer 8 is the self-adjoint matrix model, introduced as the pinned statement form. `Suggested.lean` has a single `import Mathlib` and no sorry'd data. The base's `lieExp`, `lieMap` and `lieSubalgebraOfSubgroup` are sorry'd data, so the abstract statements cannot be pinned. The matrix forms are registered as separate targets with their own hypotheses (§§8.1–8.3), following the base's own convention of matrix shadows.

### `Suggested.lean` declarations the README names

These are the only backticked own names in the README. All definitions have real bodies over Mathlib.

- Definitions: `IsSelfAdjointLinearGroup`, `linearLieAlgebra`, `dynamicParabolic`, `dynamicUnipotent`, `dynamicLevi`, `LinearComponentCondition`.
- Theorems: `dynamicLevi_decomposition` (target 6, matrix form), `minimalParabolic_langlands` (target 2), `bruhat_decomposition_linear` (target 3), `eq_dynamicParabolic_of_le` (target 5), `exists_conj_maximalAbelian` (target 1).

No Lean was run: the brief gives no Lean command for this job.

## Corrections to the triaged brief (verified at the pins and in the sources)

1. **Abstract parabolics of a Tits system are already in Tau Ceti.** The brief says that `P_J = B W_J B` and the classification of overgroups of `B` are "not in the pinned Tau Ceti". At `2fd255d` they are, in `TauCeti/GroupTheory/TitsSystem/Parabolic/`:
   - `Basic.lean`: `standardParabolic`, `mem_standardParabolic_iff`, `coe_standardParabolic`, `standardParabolic_empty`, `standardParabolic_univ`, `subgroupB_eq_top_iff`;
   - `Classification.lean`: `standardParabolic_eq_of_subgroupB_le`, `standardParabolicOrderIso`;
   - `Normalizer.lean`: `normalizer_eq_of_subgroupB_le`, `normalizer_standardParabolic`;
   - `DoubleCoset.lean`: `parabolicDoubleCosetEquiv`;
   - `TitsSystem.lean`: `parabolicTitsSystem`.

   The design consumes them. Only "`g B g⁻¹ ⊆ P_J ⇒ g ∈ P_J`" (conjugate standard parabolics are equal) is absent, and §7.1 plans it for an arbitrary Tits system.
2. **The base `CartanInvolution` is too weak.**
   - `SU(2)` with `θ = Ad(diag(i,−i))` satisfies all its fields (compact fixed `U(1)`, semisimple `𝔤`). But `lieExp(πY) = −1 ∈ K` for `Y = ((0,1),(−1,0)) ∈ 𝔭`, so the polar map is not injective, and `ad 𝔞` has eigenvalues `±2i`.
   - So the base's pinned `cartan_polar_decomposition (D : CartanInvolution I G)` is false as stated, as is any restricted-root statement at that generality. `S¹` with inversion is a second counterexample.
   - §1.1 adds the invariant form and the polar homeomorphism (Knapp's axioms (i)–(iv)). This is a note for the LieGroups author; this roadmap does not edit the base.
3. **"Any two Cartan involution data are `Ad(G)`-conjugate" is false.** On `G = ℝ × S¹`, `θ_c(t,s) = (−t, s − 2ct)` is a reductive Cartan datum for every `c` (computed in §1.3), and `G` is abelian. The true statement (§1.3) assumes equal split central parts. Its proof needs a finite-group cocycle step on `𝔷∩𝔭`, shown necessary by `ℝ ⋊ ℤ/2` (§1.3, Checks). In the algebraic setting (ALS.0.1) only `c = 0` is algebraic (§9.2, Checks).
4. **"`N_{Π'}` is the nilradical of `Q_{Π'}`" is false when `𝔷(𝔤) ≠ 0`.** For `GL_2(ℝ)`, the nilradical of `𝔟` is `ℝE₁₂ ⊕ ℝ·1`. Replaced by `𝔫_{Π'} = 𝔮_{Π'}^{⊥_B}` and `N_{Π'} = N(X)`.
5. **The extra axiom.** The brief asks which of Knapp's axioms are needed. The design uses the **component condition** `G = Z_K(𝔞)·G⁰` (§2.4) rather than Knapp's (v). It is equivalent to `W_G = W(Σ)` and strictly weaker than (v): compact `O(4)` satisfies it and fails (v). It is needed exactly for `P = N_G(P)`, the Tits system, Bruhat, the overgroup classification, `Q(X) = Q_{Π'}` and `Z_G(X) = L_{Π'}`. Negative controls: `O(1,1)` (four components, `M = {±1}`) and `Aut(𝔰𝔩_3(ℝ))` (`|W_G| = 12`). The Langlands decomposition of `P` (items (a)–(e) of §3.3), the restricted-root theory and §8.2 do not need it.
6. **Section numbers of the two Annals preprints.** The manifest recorded "§2" for both. The read texts are Brown–Fisher–Hurtado arXiv v4 **§3.1** (lines 499–534) and Brown–Rodriguez Hertz–Wang arXiv v2 **§1.2** (lines 122–157). The Bradlow et al. passages (lines 72, 196–206) are in the **Introduction**, not §2. `sources.toml` is corrected.
7. **Merge order and AutomorphicFormsOnReductiveGroups.** That roadmap (merge order line 63) is not cited as a supplier. The design's last supplier is ArithmeticLocallySymmetricSpaces (line 62), so the gate places `LieGroupsPartII` before AutomorphicFormsOnReductiveGroups. Its §2.3a is recorded as a consumer contract (see Ownership).

## Adversarial-pass table

"Holds" means the stated value was recomputed and agrees with the README.

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| 1.1 reductive Cartan datum: definiteness | `GL_2(ℝ)`, `B = tr(XY)` | `B(diag(1,−1),diag(1,−1)) = 2`; `B(Y,Y) = tr(Y²) = −2` for `Y = ((0,1),(−1,0))` | holds | sign witness added |
| 1.1 polar field needed | `SU(2)`, `θ = Ad(diag(i,−i))` | `exp(tY) = ((cos t, sin t),(−sin t, cos t))`; at `t = π` this is `−1 ∈ U(1)` | base fields hold, polar fails | non-example added; base defect reported |
| 1.1 polar field needed | `S¹`, `θ(x) = −x` | fixed set `{0, 1/2}`; `lieExp(1) = 0` | polar not injective | non-example |
| 1.1 degenerate | `ℝ^×`, `θ = x⁻¹`; compact `G`, `θ = id` | `(±1,t) ↦ ±e^t` bijective; `𝔭 = 0`, polar = identity | holds | Checks |
| 1.1 maximal compact | `C ⊋ K` compact, `c = k exp X` | `exp(nX) ∈ C` unbounded under the polar homeomorphism | `K` maximal | API bullet |
| 1.2 Lie-algebra conjugacy, formula | `𝔰𝔩_2(ℝ)`, `σ' = Ad(g)σAd(g)⁻¹`, `g = diag(2,1/2)` | `σ'σ = Ad(ggᵀ) = Ad(diag(4,1/4)) = e^{2ad X}`, `X = diag(log 2, −log 2)`, `e^{ad X} = Ad(g)` | holds with `σ'σ = e^{2 ad X}` | first draft had the wrong exponent `−Z/4` of `ω`; corrected, and the `X/2` alternative recorded as failing |
| 1.2 non-Cartan | `𝔰𝔲(2)`, `Ad(diag(i,−i))` | `−κ(X, σX) < 0` on the off-diagonal part | not Cartan | Check |
| 1.3 conjugacy, unconditional | `ℝ × S¹`, `θ_c` | `𝔭_c = {(x,cx)}`; polar `(s,(x,cx)) ↦ (x, s+cx)` is a homeomorphism; abelian, so conjugation is trivial | **false** | hypothesis "equal split central part" added |
| 1.3 cocycle step | `ℝ ⋊ ℤ/2`, `θ_a(t,ε) = (−t+aε, ε)` | hom check: `θ((t,1)(s,1)) = (−t+s,0) = θ(t,1)θ(s,1)`; `K_a = {(0,0),(a/2,1)}`; `c_{(b,0)}(t,1) = (t+2b,1)`, so `b = a/4` | holds; needs `exp(𝔷_𝔭)` | proof step 3 added |
| 1.3 proof step 2 | general | `θ'(k') = k' ⇒ τ(k) = k exp(2Y) ∈ k·Z_G(G⁰) ⇒ e^{2 ad Y} = 1 ⇒ Y ∈ 𝔷_𝔭`; cocycle `Y(k₁k₂) = Ad(k₂⁻¹)Y(k₁) + Y(k₂)` | holds | rewritten explicitly |
| 2.1 `BC₁` base | `{±λ,±2λ}` | coroot of `2λ` is `λ^∨/2 ∉ ℕλ^∨`; support `{2λ}` misses `λ` | no Mathlib `Base` | `Σ_ind` route |
| 2.1 span vs coefficient-one | `BC₂`, `Π' = {e₂}` | `Σ ∩ span = {±e₂, ±2e₂}` | coefficient-one misses `±2e₂` | Check |
| 2.1 stabilizer | `A₂`, `α₁(v) = 0 < α₂(v)` | stabilizer `{1, s_{α₁}}` | holds | Check |
| 2.2 conjugacy of `𝔞` | `Sym_2(ℝ)`, `ℝ·((0,1),(1,0))` | rotation by `π/4` gives `ℝ·diag(1,−1)` | holds | Check |
| 2.3 `W_G` vs `W(Σ)` | `O(1,1)` | `diag(1,−1)·Y·diag(1,−1) = −Y`; `M = {±1}`; `W_G = ℤ/2`, `W(∅) = 1` | differ | negative control |
| 2.3 `N_G(𝔞) = N_K(𝔞)A` | `GL_n(ℝ)` | signed permutations × positive diagonal = monomial; agrees with `TauCeti.unitaryNormalizerPosDiagonalQuotientMulEquivPerm` (`S_n`) | holds | Check |
| 2.4 component condition | `GL_n`; `O(1,1)`; `Aut(𝔰𝔩_3)`; `O(4)`; `O(p,q)` | see the next four rows | holds / fails / fails / holds / holds iff `p ≠ q` | Checks |
| 2.4 `GL_n` | `GL_n(ℝ)` | `diag(−1,1,…,1) ∈ M` | holds | Check |
| 2.4 `Aut(𝔰𝔩_3)` | `σ(X) = −Xᵀ`, `σAd(w₀)` | `σAd(w₀): diag(h₁,h₂,h₃) ↦ −diag(h₃,h₂,h₁)`; swaps `e₁−e₂` and `e₂−e₃`; `σ` is `B_θ`-orthogonal (`tr(XᵀY) = tr(XYᵀ)`) | fails, `|W_G| = 12` | negative control |
| 2.4 `O(4)` | compact `O(4)` | `𝔞 = 0`, `M = G`; a determinant `−1` element is outer on `𝔰𝔬(4,ℂ)` | condition holds, (v) fails | condition chosen over (v) |
| 2.4 `O(p,q)` | `p > q` vs `p = q` | `M ∋ diag(ε,k',ε)`; block determinants `(Πε·det k', Πε)`: four values if `p > q`, two if `p = q` | holds iff `p ≠ q` | Check corrected |
| 2.6 bridge to `IwasawaData` | `SL_2(ℝ)` chamber; `SL_2(ℝ)` with `𝔫` built from all of `Σ`; open chamber; compact `G` | `{diag(t,−t) : t ≥ 0}` spans `𝔞`, while the empty cone violates `chamber_span`; `𝔨 = ℝ(E₋−E₊) ⊆ ℝE₊⊕ℝE₋` and `1+1+2 = 4 > 3`, so `iwasawa_compl` fails; `0 ∉ {β > 0}`, so `chamber_smul` fails at `c = 0`; `𝔞 = 𝔫 = 0`, `A = N = 1`, chamber `{0}` spans `𝔞 = 0`, and the decomposition is `G = K` | holds for `Σ⁺` and the closed chamber; both wrong models are excluded | Checks (non-example, degenerate) |
| 3.2 `M` | `SL_2(ℝ)` | `((−2,3),(0,−1/2)) = (−1)·diag(2,1/2)·((1,−3/2),(0,1))`; `M = Z_{SO(2)}(𝔞) = {±1}` (note `−1 ∈ K⁰`) | holds | a wrong check claiming `Z_{K⁰}(𝔞) = {1}` replaced by "`M⁰ = {1}`" |
| 3.2 positive-dimensional `M` | `SL_2(ℂ)` | `M = {diag(e^{iφ}, e^{−iφ})}`, `dim N = 2` | holds | Check |
| 3.3(c) `P ∩ θP = MA` | `SL_2(ℝ)` | upper ∩ lower triangular = diagonal | holds | Check |
| 3.3(f) `P = N_G(P)` | `O(1,1)` | `P` has index 2, so it is normal and `N_G(P) = G` | false without the condition | hypothesis added |
| 3.3(e) nilradical vs orthogonal | `GL_2(ℝ)` | nilradical of `𝔟` is `ℝE₁₂ ⊕ ℝ·1` (dimension 2); `𝔟^{⊥_{tr}} = ℝE₁₂` | brief's wording false | `B`-orthogonal used |
| 3.3 modulus | `SL_2(ℝ)`, `a = diag(t,1/t)` | `Ad(a)E₁₂ = t²E₁₂`, so `det = t²` | holds | Check |
| 4.1 `𝔭 ∩ 𝔮_∅ = 𝔞` | general | `X = m + a + n ∈ 𝔭 ⇒ 2m + n + dθn = 0 ⇒ m = n = 0` | holds | proof |
| 4.2 cells | `SL_3(ℝ)` | `dim P = 5`, `ℓ(w) ∈ {0,1,1,2,2,3}` gives `5,6,6,7,7,8` | holds | Check |
| 4.2 multiplicity | `SU(2,1)` | `dim P = 1+1+3 = 5`, big cell `5 + 2 + 1 = 8 = dim G`; `m_λ` only gives 7 | holds | Check |
| 4.2 dynamics direction | `u ∈ N`, `t → −∞` | `e^{t ad H₀}Y_β = e^{tβ(H₀)}Y_β → 0`; attracting set of `n_wP` in its chart is `exp(⊕_{γ<0, wγ>0} 𝔤^γ)`, so the cell is `N_w n_w P` | holds | proof sketch |
| 4.2 `GL_2` big cell | `GL_2` | lower-left entry `≠ 0` (`TauCeti.GL2Borel.mem_doubleCoset_weyl_iff`) | holds | Check |
| 4.3 multiplication axiom | general | `P n_s P n_w P = P n_s N_α n_w P`; `w⁻¹α > 0 ⇒ P n_s n_w P`; else `⊆ P N_{−α} n_{sw} P ⊆ P n_{sw} P ∪ P n_s n_{sw} P` using `(sw)⁻¹α > 0` | holds | proof sketch |
| 4.3 generation of `W` | `Aut(𝔰𝔩_3)` | order 12 is not generated by 2 reflections | axiom fails | negative control |
| 5.1 `𝔮_{Π'}` | `SL_3(ℝ)` | 4 subalgebras; `𝔮_{α₁}` adds `E₂₁` (blocks (2,1)); `𝔮_{α₂}` adds `E₃₂` (blocks (1,2)) | holds | Check |
| 5.2 non-subalgebra | `𝔮_∅ ⊕ ℝE₃₁` | `[E₁₂, E₃₁] = −E₃₂ ∉` | not closed | Check |
| 5.2 `𝔪`-action | `SL_2(ℂ)` | `[i·diag(1,−1), zE₂₁] = −2iz E₂₁` | rotation forces `iE₂₁` | Check |
| 5.3 eigenspaces | `X = diag(1,1,−2)` | `α₁(X) = 0`, `α₂(X) = 3` | `𝔮_{α₁}` | Check |
| 6.1 `|W_{Π'}|` | `GL_3(ℝ)` | 1, 2, 2, 6 | holds | Check |
| 6.1 overgroups | `O(1,1)` | `𝔮_∅ = 𝔤`, `N_G(𝔮_∅) = G ≠ P`; overgroups of `P` are `P` and `G` only | needs the condition | a wrong first check ("two intermediate subgroups") corrected |
| 6.1 Sp₄ | `Sp_4(ℝ)`, `𝔞 = diag(a₁,a₂,−a₁,−a₂)` | positive roots `e₁−e₂, e₁+e₂, 2e₁, 2e₂`; Siegel `{((A,B),(0,A⁻ᵀ))}`, Levi `GL_2`; Klingen Levi `ℝ^× × SL_2` | holds | Check |
| 6.2 `⁰L` | `ℝ^×`; `GL_n`; compact; `ℝ×S¹` | `{±1}`; `|det| = 1`; `L`; `{0}×S¹` for every `c`, while `A_L = {(t,ct)}` | holds; `A_L` depends on `c` | Checks |
| 6.2 non-example | `⁰L := K_L` | `diag(2,1/2)` has `|det| = 1` and is not in `O(2)` | false | Check |
| 6.3 `GL_3`, `Π' = {α₁}` | | `𝔞_{Π'} = {diag(x,x,y)}`, `M_{Π'} = {(g,c) : |det g| = 1, c = ±1}` | holds | Check |
| 7.3 sign of dynamics | `GL_2`, `X = diag(1,0)` | `exp(−tX)((a,b),(c,d))exp(tX) = ((a,e^{−t}b),(e^t c,d))`, bounded iff `c = 0` | upper triangular | convention witness |
| 7.3 vs Tau Ceti | `λ(t) = diag(t,1)` | `λ(t)gλ(t)⁻¹ = ((a,tb),(t⁻¹c,d))`, extends iff `c = 0`; `λ(e^{−s}) = lieExp(−sX_λ)` | conventions agree | witness |
| 7.3 `Z_G(X) = L` | `Aut(𝔰𝔩_3)`, `X₀ = diag(1,0,−1)` | `σAd(w₀)X₀ = −diag(−1,0,1) = X₀` | `Z_G(X₀) ⊋ MA` without the condition | negative control |
| 7.3(i) filtration | general | block `E_μ → E_λ` scaled by `e^{t(μ−λ)}`; bounded as `t→+∞` forces blocks with `μ > λ` to vanish | `Q(X) ⊆ N_G(𝔮)` | proof |
| 8.1 finiteness needed | `{diag(2^k,2^{−k})}` | `linearLieAlgebra = 0`; polar image `{1}` | fails | Check |
| 8.1 transpose needed | upper unitriangular `2×2` | `K = {1}`, `𝔭 = 0`, polar image `{1}` | fails | a wrong first check (claimed `ℝE₁₂` non-reductive) replaced |
| 8.2 factor order | `((2,3),(0,5))`, `X = diag(1,0)` | limit `diag(2,5)`; `u = ((1,3/2),(0,1))`; the `u·l` order gives `((1,3/5),(0,1))` | `l·u` | Check |
| 8.2 symmetry needed | `GL_2`, skew `X` | conjugation by rotations is bounded for all `g`; `U = {1}`; `L = {aI+bX}` | factorization fails | a wrong first check (`SO(2)`, where conjugation is trivial) replaced |
| 8.3 classification iff | `O(1,1)` | `Q(0) = G`, `Q(Y) = P`, same centralizer `𝔤` | iff fails without the condition | a wrong first check ("every X gives P") corrected |
| 9.1 `SO(2,1)` | form `x₁²+x₂²−x₃²`, `𝔞 = ℝ(E₂₃+E₃₂)` | `M = {1, diag(1,−1,−1)}`, the latter time-reversing | holds | a wrong first check corrected |
| 9.2 split torus | `SO(2,1)` | `𝐒 = {((1,0,0),(0,a,b),(0,b,a)) : a²−b² = 1}`; `a = −1` gives `diag(1,−1,−1)`; `[𝐒(ℝ) : A] = 2` | holds | Check |
| 9.2 algebraic data | `𝔾_m × SO(2)` | `θ_c` mixes split and anisotropic parts, so it is not algebraic for `c ≠ 0` | ALS.0.1 conjugacy unaffected | Check |
| 9.3 complexification | `SL_2(ℂ)` real | `X⊗z ↦ (zX, zX̄)`: upper triangular maps to a sum of upper triangular Borels | holds | wording corrected |
| Context: standing hypotheses | all theorems | each theorem lists datum and triple; component condition only where used (3.3(f), 4.x, 6.x, 7.2, 7.3(ii), 8.3, 9.3) | checked statement by statement | — |
| Generality: README vs Lean | Layer 8 | abstract theorems are prose only; Lean pins are separately registered matrix targets 8.1–8.3e with their own hypotheses | consistent | — |
| Vacuity | 7.3, 8.2 | dynamic sets are tied to `X ∈ 𝔞` or `X ∈ linearLieAlgebra G` symmetric; no free data | — | — |

## Notions moved down from later roadmaps

- **Positive systems and simple roots of a non-reduced finite root system via its indivisible subsystem** (§2.1). RootSystems (main) works with reduced systems. Mathlib's `RootPairing.Base` admits no base for `BC₁`. The natural owner in the RootSystems direction, RootSystemsPartII, is line 196 of the merge order, later than this roadmap, so the notion moves down here. It is needed by every restricted-root statement.
- **Conjugacy of Cartan involutions of a real semisimple Lie algebra** (§1.2). Nothing on main or in the open pull requests states it at the Lie-algebra level. ALS.0.1 is algebraic and number-field oriented. It sits here as the first input of §1.3.

## Ownership

- Checked by object with `roadmaps grep` over main and the 459 open roadmap pull requests at their heads. Searches covered: minimal parabolic, Langlands decomposition, standard parabolic subalgebra, restricted Weyl, `Z_K(𝔞)`, `N_G(𝔫)`, bounded-as-t, real Bruhat, indivisible / non-reduced roots, maximal solvable / Borel subalgebra conjugacy, Matsumoto, trigonalizable. The board packages (RootSystemsPartII, ReductiveGroupsPartIII, ArithmeticLocallySymmetricSpacesPartII, QuantitativeOrbitMethodAndMicrolocalAnalysisOnLieGroups, LieHighestWeightPartII) were also checked. Nobody else plans standard parabolic subalgebras and subgroups, the real Bruhat decomposition, general real parabolics, the dynamical description or the matrix model.
- **AutomorphicFormsOnReductiveGroups §2.3a** (open pull request, read at its head with `roadmaps show`) plans the minimal parabolic, its Langlands decomposition, conjugacy, rank one and the Borel–Tits comparison, for real points of connected reductive groups. Its §§2.3–2.4 consume general parabolics and standard Levi subgroups, which it does not define. Importing §2.3a would put that roadmap on both sides of this one. So this roadmap owns these objects as the supplier and records §2.3a as the consumer contract. Every §2.3a statement and Check (`SO₀(n,1)`, `SL_2(ℝ)`, `GL_n(ℝ)`, compact, `ℝ^×`, `Z_K(𝔞) = Z_K(A)`, `P` normal iff `P = G` iff `Σ = ∅`, rank one, the algebraic comparison) appears in §§2.5, 3.2–3.4 and 9.2. The `P = G ⇔ Σ = ∅` equivalence is stated under the component condition, which §2.3a's connected `𝐆` satisfies. That roadmap's author needs to be told that §2.3a can become a citation of this roadmap. Until then two documents state the same theorems.
- The abstract Tits-system theory is Tau Ceti's (correction 1). The algebraic parabolics are ReductiveGroups Layer 7's. ALS.F.1 and ALS.0.1–0.3 are consumed in Layer 9 only. No `Suggested.lean` name is the fully qualified name of a declaration in another roadmap.

## Proposed Part IIs and notes for suppliers

- **ReductiveGroups** must provide three facts over `k = ℝ`. They appear as gaps in `plan.json` and are listed in the README under "From TauCetiRoadmap.ReductiveGroups":
  - `gap:minimal-parabolic-orderings`: minimal `k`-parabolics containing a maximal split torus correspond to the open chambers of `Φ(𝐇,𝐒)` (Borel–Tits 4.15, 5.9);
  - `gap:real-compactness-criterion`: Borel–Tits Proposition 9.3;
  - `gap:matsumoto-components`: Borel–Tits Théorème 14.4.

  Layer 7 of ReductiveGroups is the natural home, or a ReductiveGroups Part II on real groups.
- **LieGroups** (note for its author): its pinned `CartanInvolution` lacks the positivity and polar fields its README presupposes. Its `cartan_polar_decomposition` is false as pinned (correction 2). Its README identification of `N_K(𝔞)/Z_K(𝔞)` with the restricted Weyl group needs the component condition (`O(1,1)`).

## Gaps

`minimal-parabolic-orderings`, `real-compactness-criterion` and `matsumoto-components` are all against ReductiveGroups Layer 7 and needed only by Layer 9. Layers 1–8 have no gap. They rest on the base roadmap's own planned targets (Layers 0–4, 7, 9), RootSystems, Tau Ceti and Mathlib.

## Sources

- **Read (certified):**
  - `borel-tits1965`: lines 1480–1500, 1795–1810, 1860–1875, 1920–1960, 2905–2952, 3716–3825. Printed page = PDF page + 53.
  - `brown-fisher-hurtado2022`: lines 495–540, §3.1.
  - `brown-rodriguezhertz-wang2022`: lines 120–160, §1.2.
  - `bradlow-collier-garciaprada-gothen-oliveira2024`: lines 68–74 and 190–206, Introduction.
- **Settled as uncertified and cited by section:** `knapp2002`, `warner1972`, `wallach1988`, `bourbaki-lie4-6`. Section-level locators follow the 2nd-edition chapter structure: Knapp Ch. VI §§2, 4, 5; Ch. VII §§2, 4, 5, 6, 7. The proposition numbers 7.73 and 7.76 are those the two Annals papers cite. These locators were not checked against the text.
- **Sources that could not be read:** none newly needed. `needs-references.toml` was not created. No new keys were added to the manifest. Its `roadmap` field was changed from `RealReductiveGroupsStructure` to `LieGroupsPartII`, and the locators and `cited_for` were updated.

## Untrusted text

No passage in any fetched source, roadmap or pull request asked for an action outside this job.

## Dependency check

```
$ tauceti-roadmap … gate --candidate packages/LieGroupsPartII/design/README.md --only LieGroupsPartII --order merge-order/ORDER.txt --content …/content
candidate: LieGroupsPartII is not in the merge order yet; checked as if placed after ArithmeticLocallySymmetricSpaces (the intake inserts it when its design is accepted)
depcheck: 242 roadmaps, 2366 edges, 0 problem(s)
```

No UPWARD or CYCLE line. `roadmaps resolve` on the README reports no cross-roadmap citation and no Lean name found nowhere. It did not check Mathlib or Tau Ceti names on this host; those were checked by hand at the pins, and one namespace was corrected (`Matrix.GeneralLinearGroup.existsUnique_iwasawa`).
